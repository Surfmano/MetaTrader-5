#!/bin/bash

APP_NAME="MetaTrader 5"
EXE_PATH="$1"
WINEPREFIX="$HOME/.wine-mt5"
LOG_FILE="./logs/mt5_$(date +%F_%H-%M-%S).log"

if [ -z "$EXE_PATH" ]; then
  echo "Usage: $0 /chemin/vers/mt5setup.exe [--secure]"
  exit 1
fi

if [ "$2" == "--secure" ]; then
  echo "🔒 Lancement sécurisé de $APP_NAME avec Firejail..."
  firejail --noprofile --private wine "$EXE_PATH" &> "$LOG_FILE"
else
  echo "🚀 Lancement classique de $APP_NAME..."
  WINEPREFIX="$WINEPREFIX" wine "$EXE_PATH" &> "$LOG_FILE"
fi

echo "📄 Log enregistré dans $LOG_FILE"
