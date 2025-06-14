# 🧠 WineBox-MT5 - Exécutez MetaTrader 5 sur Linux en toute sécurité et sans prise de tête

**WineBox-MT5** est un script et un environnement pré-configuré pour faire tourner **MetaTrader 5** sur Linux via **Wine**, avec une configuration optimisée, sandboxée (Firejail), et une analyse automatique des logs via IA.

## ✨ Fonctionnalités

- 🔧 Installe automatiquement Wine + préfixe optimisé MT5
- 🔒 Lancement sécurisé via Firejail (pas d’accès aux fichiers système)
- 📊 Journalisation complète de l’exécution
- 🤖 Analyse intelligente des logs Wine avec résumé IA (facultatif)
- 📦 Export facile en AppImage ou Flatpak (à venir)

## 🚀 Installation

```bash
git clone https://github.com/tonpseudo/winebox-mt5.git
cd winebox-mt5
./winebox install
./winebox run mt5setup.exe
```
💡 Le script détecte automatiquement les erreurs courantes (DLL, DirectX, IE, .NET) et vous propose des corrections.

📚 Dépendances
Wine >= 7.0

Firejail

Python 3.10+

(optionnel) OpenAI CLI ou modèle local pour analyse IA

🛡️ Mode sécurisé (recommandé)
```bash
./winebox run mt5setup.exe --secure
```
Lance MT5 dans une sandbox réseau avec Firejail. Idéal pour éviter les comportements réseau non documentés.

🤖 Mode analyse IA
```bash
./winebox analyze logs/mt5-last.log
```
Vous obtenez un résumé :

```bash
- MT5 tente de créer une clé registre pour l’auto-démarrage
- 15 connexions vers des IP distantes
- Aucun plantage détecté
```
🧪 Testé sur :
Distro	Fonctionne ?	Notes
Ubuntu 22.04	✅	Nécessite winetricks dotnet48
Debian 12	✅	Fonctionne out-of-the-box
Arch Linux	⚠️	Besoin de config manuelle font-smoothing

📩 Contribuer
Vous avez une configuration stable ? Un bug ? Proposez un PR ou ouvrez un ticket !

💬 Contact
Maintenu par Christophe Gonthier. Suivez les évolutions sur LinkedIn ou contactez-moi sur christophe@....

☕ Soutien
Ce projet vous aide ? Offrez-moi un café : BuyMeACoffee

Disclaimer : WineBox-MT5 est un outil communautaire non affilié à MetaTrader. Utilisation à vos risques et périls.


---

## 🔜 Étapes suivantes

   - le **script d’amorçage Winebox**
   - les **instructions pour packager MT5**
   - la structure initiale du dépôt
