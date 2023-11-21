# Payday3 ShowCode
A Payday 3 mod that shows/reveals the vault/door/keypad code/password at the beginning of the heist.

# Installation
1. Install the [UE4SS mod](https://modworkshop.net/mod/44048). Carefully follow the installation instructions as this is not your average mod.
1. You can remove the launch argument (-fileopenlog) if you have this mod installed.
1. In the `UE4SS-settings.ini` file (`PAYDAY3\Binaries\Win64\UE4SS-settings.ini`), under the **[Debug]** section, enable either both `GuiConsoleEnabled = 1` and `GuiConsoleVisible = 1`, or just `ConsoleEnabled = 1`. This mod launches the Unreal Engine Debugging Tool before PayDay 3 completely starts up. This causes the Steam Overlay to display in console app, and not inside of PayDay 3. A simple Alt-Tab gets you to the Debugging Tool and back. It's probably also useful to type the word 'code' into the filter field once it's fully loaded so that all the other debugging info doesn't crowd the window or cause the game codes to scroll away too quickly.
1. Download the source code and extract only the `ShowCode` folder to the `PAYDAY3\Binaries\Win64\Mods` folder.

# How the Mod Works
The mod hooks into the `UpdateCodeViewer` function and logs the code it receives. In missions where the code is written on sheets throughout the level, you will see multiple codes in the log, but only one is correct. You need to use UV light on the keypad and compare the available digits with potential codes to find the correct one. In missions with PC-accessed codes, it will log only the true code.
