@echo off
setlocal enabledelayedexpansion

echo ==========================================
echo   Webetu Bot APK Builder (Windows Batch)
echo ==========================================

set "SCRIPT_DIR=%~dp0"
set "OUT_APK=webetu-bot-release.apk"
set "KEYSTORE=bot.keystore"
set "KEY_ALIAS=botkey"
set "KEY_PASS=webetu123"

:: 1. Java check
set "JAVA_CMD=java"
if exist "%SCRIPT_DIR%jdk-17.0.21+9\bin\java.exe" (
    set "JAVA_CMD=%SCRIPT_DIR%jdk-17.0.21+9\bin\java.exe"
) else if defined JAVA_HOME (
    if exist "%JAVA_HOME%\bin\java.exe" set "JAVA_CMD=%JAVA_HOME%\bin\java.exe"
)

:: 2. Apktool check
set "APKTOOL_JAR=%SCRIPT_DIR%apktool.jar"
if not exist "%APKTOOL_JAR%" (
    echo [-] Error: apktool.jar not found at %APKTOOL_JAR%
    exit /b 1
)

:: 3. Build-tools
set "ZIPALIGN=zipalign"
if exist "%SCRIPT_DIR%bt\android-14\zipalign.exe" (
    set "ZIPALIGN=%SCRIPT_DIR%bt\android-14\zipalign.exe"
)
set "APKSIGNER_JAR=%SCRIPT_DIR%bt\android-14\lib\apksigner.jar"

echo [*] Step 1/3: Recompiling 'src' with apktool...
if exist "%SCRIPT_DIR%rebuilt.apk" del "%SCRIPT_DIR%rebuilt.apk"
"%JAVA_CMD%" -jar "%APKTOOL_JAR%" b "%SCRIPT_DIR%src" -o "%SCRIPT_DIR%rebuilt.apk"
if not exist "%SCRIPT_DIR%rebuilt.apk" (
    echo [-] Recompilation failed!
    exit /b 1
)

echo [*] Step 2/3: Aligning APK (16384-byte page aligned)...
if exist "%SCRIPT_DIR%rebuilt_aligned.apk" del "%SCRIPT_DIR%rebuilt_aligned.apk"
"%ZIPALIGN%" -p -f 16384 "%SCRIPT_DIR%rebuilt.apk" "%SCRIPT_DIR%rebuilt_aligned.apk"
if not exist "%SCRIPT_DIR%rebuilt_aligned.apk" (
    echo [-] Zipalign failed!
    exit /b 1
)

echo [*] Step 3/3: Signing APK...
if exist "%SCRIPT_DIR%%OUT_APK%" del "%SCRIPT_DIR%%OUT_APK%"
if exist "%APKSIGNER_JAR%" (
    "%JAVA_CMD%" -jar "%APKSIGNER_JAR%" sign --ks "%SCRIPT_DIR%%KEYSTORE%" --ks-key-alias %KEY_ALIAS% --ks-pass pass:%KEY_PASS% --key-pass pass:%KEY_PASS% --out "%SCRIPT_DIR%%OUT_APK%" "%SCRIPT_DIR%rebuilt_aligned.apk"
) else (
    apksigner sign --ks "%SCRIPT_DIR%%KEYSTORE%" --ks-key-alias %KEY_ALIAS% --ks-pass pass:%KEY_PASS% --key-pass pass:%KEY_PASS% --out "%SCRIPT_DIR%%OUT_APK%" "%SCRIPT_DIR%rebuilt_aligned.apk"
)

echo ==========================================
echo   SUCCESS! File: %OUT_APK%
echo   Install: adb install -r %OUT_APK%
echo ==========================================
