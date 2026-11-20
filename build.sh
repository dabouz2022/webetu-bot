#!/usr/bin/env bash
# =============================================================================
# Webetu Bot APK Builder (Bash)
# Builds, aligns (16KB), and signs the patched Webetu APK
# =============================================================================
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OUT_APK="${1:-webetu-bot-release.apk}"
KEYSTORE="${2:-bot.keystore}"
KEY_ALIAS="botkey"
KEY_PASS="webetu123"

echo "=========================================="
echo "  Webetu Bot APK Builder"
echo "=========================================="

# 1. Resolve Java
JAVA_CMD="java"
if [ -d "$SCRIPT_DIR/jdk-17.0.21+9/bin" ]; then
    JAVA_CMD="$SCRIPT_DIR/jdk-17.0.21+9/bin/java"
elif [ -n "$JAVA_HOME" ] && [ -x "$JAVA_HOME/bin/java" ]; then
    JAVA_CMD="$JAVA_HOME/bin/java"
fi
echo "[+] Using Java: $JAVA_CMD"

# 2. Resolve Apktool
APKTOOL_JAR="$SCRIPT_DIR/apktool.jar"
if [ ! -f "$APKTOOL_JAR" ]; then
    echo "[-] Error: apktool.jar not found at $APKTOOL_JAR" >&2
    exit 1
fi

# 3. Resolve Build-Tools
LOCAL_BT="$SCRIPT_DIR/bt/android-14"
ZIPALIGN="zipalign"
if [ -x "$LOCAL_BT/zipalign" ]; then
    ZIPALIGN="$LOCAL_BT/zipalign"
elif [ -x "$LOCAL_BT/zipalign.exe" ]; then
    ZIPALIGN="$LOCAL_BT/zipalign.exe"
fi

APKSIGNER_JAR="$LOCAL_BT/lib/apksigner.jar"

# Step 1: Recompile
echo -e "\n[*] Step 1/3: Recompiling 'decoded' with apktool..."
rm -f "$SCRIPT_DIR/rebuilt.apk"
"$JAVA_CMD" -jar "$APKTOOL_JAR" b "$SCRIPT_DIR/decoded" -o "$SCRIPT_DIR/rebuilt.apk"

# Step 2: 16KB Page Alignment
echo -e "\n[*] Step 2/3: Aligning APK (16384 bytes)..."
rm -f "$SCRIPT_DIR/rebuilt_aligned.apk"
"$ZIPALIGN" -p -f 16384 "$SCRIPT_DIR/rebuilt.apk" "$SCRIPT_DIR/rebuilt_aligned.apk"

# Step 3: Sign APK
echo -e "\n[*] Step 3/3: Signing APK..."
KEYSTORE_PATH="$SCRIPT_DIR/$KEYSTORE"
if [ ! -f "$KEYSTORE_PATH" ]; then
    echo "[!] Generating debug keystore at $KEYSTORE_PATH..."
    keytool -genkeypair -v -keystore "$KEYSTORE_PATH" -alias "$KEY_ALIAS" \
        -keyalg RSA -keysize 2048 -validity 10000 \
        -storepass "$KEY_PASS" -keypass "$KEY_PASS" -dname "CN=WebetuBot, O=Webetu, C=DZ"
fi

rm -f "$SCRIPT_DIR/$OUT_APK"
if [ -f "$APKSIGNER_JAR" ]; then
    "$JAVA_CMD" -jar "$APKSIGNER_JAR" sign \
        --ks "$KEYSTORE_PATH" --ks-key-alias "$KEY_ALIAS" \
        --ks-pass "pass:$KEY_PASS" --key-pass "pass:$KEY_PASS" \
        --out "$SCRIPT_DIR/$OUT_APK" "$SCRIPT_DIR/rebuilt_aligned.apk"
else
    apksigner sign \
        --ks "$KEYSTORE_PATH" --ks-key-alias "$KEY_ALIAS" \
        --ks-pass "pass:$KEY_PASS" --key-pass "pass:$KEY_PASS" \
        --out "$SCRIPT_DIR/$OUT_APK" "$SCRIPT_DIR/rebuilt_aligned.apk"
fi

echo -e "\n=========================================="
echo "  SUCCESS! APK generated: $SCRIPT_DIR/$OUT_APK"
echo "  Install via: adb install -r $OUT_APK"
echo "=========================================="
