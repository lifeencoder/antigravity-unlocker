#!/usr/bin/env bash
# Antigravity Unlocker - One-line Quick Runner (Linux / macOS)
# Powered by DastyarAI (دستیار هوشمند فارسی) - https://dastyarai.com

echo ""
echo "  ================================================================"
echo "                ANTIGRAVITY UNLOCKER (v1.3.9)                    "
echo "             Powered by DastyarAI (دستیار هوشمند)                 "
echo "       Website: https://dastyarai.com  |  Telegram: @fachatbox    "
echo "  ================================================================"
echo ""

if ! command -v python3 &> /dev/null; then
    echo "  [!] Python 3 is required. Please install python3 and retry."
    exit 1
fi

TEMP_DIR="$(mktemp -d -t agy-unlocker-XXXXXX)"
trap 'rm -rf "$TEMP_DIR"' EXIT

git clone --depth 1 https://github.com/lifeencoder/antigravity-unlocker.git "$TEMP_DIR" 2>/dev/null
if [ -f "$TEMP_DIR/source/main.py" ]; then
    python3 "$TEMP_DIR/source/main.py" "$@"
else
    echo "  [!] Failed to download Antigravity Unlocker."
    echo "  [i] Please visit https://dastyarai.com or https://github.com/lifeencoder/antigravity-unlocker"
    exit 1
fi
