#!/bin/bash

echo "📦 Installation de Wine, Winetricks, Firejail et dépendances MT5..."

sudo apt update && sudo apt install -y wine winetricks firejail curl unzip

WINEPREFIX="$HOME/.wine-mt5" winetricks -q win7
WINEPREFIX="$HOME/.wine-mt5" winetricks -q dotnet48

echo "✅ Installation terminée. Utilisez ./winebox.sh pour lancer MetaTrader 5" 
