REM use ctrl+win+alt + c to exit the script
del "./metaKeyboard/metaKeyboard.exe"
ahk2exe.exe /in "index.ahk" /icon "metaKeyboard.ico" /out "./metaKeyboard/metaKeyboard.exe"
start ./metaKeyboard/metaKeyboard.exe