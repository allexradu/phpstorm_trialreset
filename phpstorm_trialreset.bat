@echo off
for /d %%a in ("%USERPROFILE%\AppData\Roaming\JetBrains\PhpStorm*") do (
	rd /s /q "%%a\eval"
	copy /y %%a\options\other.xml %%a\options\other.xml.bak
	findstr /V "evlsprt" %%a\options\other.xml.bak > %%a\options\other.xml
)
reg delete "HKEY_CURRENT_USER\Software\JavaSoft\Prefs\jetbrains\phpstorm" /f