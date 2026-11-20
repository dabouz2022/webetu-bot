<#
.SYNOPSIS
    Builds, aligns, and signs the patched Webetu APK.
.DESCRIPTION
    Uses apktool to recompile 'decoded', zipalign to align at 16KB (Android 14+ compatible),
    and apksigner to sign the output APK.
#>

param(
    [string]$OutApk = "webetu-bot-release.apk",
    [string]$Keystore = "bot.keystore",
    [string]$KeyAlias = "botkey",
    [string]$KeyPass = "webetu123"
)

$ErrorActionPreference = "Stop"
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "  Webetu Bot APK Builder" -ForegroundColor Cyan
Write-Host "==========================================" -ForegroundColor Cyan

# 1. Resolve Java executable
$JavaCmd = "java"
if (Test-Path "$ScriptDir\jdk-17.0.21+9\bin\java.exe") {
    $JavaCmd = "$ScriptDir\jdk-17.0.21+9\bin\java.exe"
} elseif ($env:JAVA_HOME -and (Test-Path "$env:JAVA_HOME\bin\java.exe")) {
    $JavaCmd = "$env:JAVA_HOME\bin\java.exe"
}
Write-Host "[+] Using Java: $JavaCmd" -ForegroundColor Green

# 2. Resolve apktool.jar
$ApktoolJar = "$ScriptDir\apktool.jar"
if (-not (Test-Path $ApktoolJar)) {
    Write-Error "apktool.jar not found at $ApktoolJar"
}

# 3. Resolve Build-Tools (zipalign & apksigner)
$ZipAlign = "zipalign"
$ApkSigner = "apksigner"
$LocalBt = "$ScriptDir\bt\android-14"

if (Test-Path "$LocalBt\zipalign.exe") {
    $ZipAlign = "$LocalBt\zipalign.exe"
}
$ApkSignerJar = "$LocalBt\lib\apksigner.jar"

# 4. Step 1: Recompile with Apktool
Write-Host "`n[*] Step 1/3: Recompiling 'decoded' with apktool..." -ForegroundColor Yellow
$RebuiltApk = "$ScriptDir\rebuilt.apk"
if (Test-Path $RebuiltApk) { Remove-Item -Force $RebuiltApk }

& $JavaCmd -jar $ApktoolJar b "$ScriptDir\decoded" -o $RebuiltApk
if (-not (Test-Path $RebuiltApk)) {
    Write-Error "Apktool build failed!"
}
Write-Host "[+] Recompilation complete: $RebuiltApk" -ForegroundColor Green

# 5. Step 2: 16KB Page Alignment (Required for Android 14/15/16)
Write-Host "`n[*] Step 2/3: Aligning APK (16384-byte page aligned)..." -ForegroundColor Yellow
$AlignedApk = "$ScriptDir\rebuilt_aligned.apk"
if (Test-Path $AlignedApk) { Remove-Item -Force $AlignedApk }

& $ZipAlign -p -f 16384 $RebuiltApk $AlignedApk
if (-not (Test-Path $AlignedApk)) {
    Write-Error "Zipalign failed!"
}
Write-Host "[+] Alignment complete: $AlignedApk" -ForegroundColor Green

# 6. Step 3: Sign APK
Write-Host "`n[*] Step 3/3: Signing APK..." -ForegroundColor Yellow
$KeystorePath = "$ScriptDir\$Keystore"

if (-not (Test-Path $KeystorePath)) {
    Write-Host "[!] Keystore not found, generating a new debug keystore at $KeystorePath..." -ForegroundColor Yellow
    $KeytoolCmd = "keytool"
    if (Test-Path "$ScriptDir\jdk-17.0.21+9\bin\keytool.exe") {
        $KeytoolCmd = "$ScriptDir\jdk-17.0.21+9\bin\keytool.exe"
    } elseif ($env:JAVA_HOME -and (Test-Path "$env:JAVA_HOME\bin\keytool.exe")) {
        $KeytoolCmd = "$env:JAVA_HOME\bin\keytool.exe"
    }
    & $KeytoolCmd -genkeypair -v -keystore $KeystorePath -alias $KeyAlias `
        -keyalg RSA -keysize 2048 -validity 10000 `
        -storepass $KeyPass -keypass $KeyPass -dname "CN=WebetuBot, O=Webetu, C=DZ"
}

$FinalOut = "$ScriptDir\$OutApk"
if (Test-Path $FinalOut) { Remove-Item -Force $FinalOut }

if (Test-Path $ApkSignerJar) {
    & $JavaCmd -jar $ApkSignerJar sign `
        --ks $KeystorePath --ks-key-alias $KeyAlias `
        --ks-pass "pass:$KeyPass" --key-pass "pass:$KeyPass" `
        --out $FinalOut $AlignedApk
} else {
    & $ApkSigner sign `
        --ks $KeystorePath --ks-key-alias $KeyAlias `
        --ks-pass "pass:$KeyPass" --key-pass "pass:$KeyPass" `
        --out $FinalOut $AlignedApk
}

if (-not (Test-Path $FinalOut)) {
    Write-Error "APK Signing failed!"
}

Write-Host "`n==========================================" -ForegroundColor Green
Write-Host "  SUCCESS! Output ready:" -ForegroundColor Green
Write-Host "  $FinalOut" -ForegroundColor White
Write-Host "==========================================" -ForegroundColor Green
Write-Host "Install to device via: adb install -r $OutApk" -ForegroundColor Gray
