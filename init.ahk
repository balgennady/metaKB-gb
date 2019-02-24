; решить проблему: ahk не работает в win10 в некоторых приложениях
; https://stackoverflow.com/questions/31839062/autohotkey-in-windows-10-hotkeys-not-working-in-some-applications
if not A_IsAdmin ;Если текущий пользователь имеет права администратора, эта переменная содержит 1. В противном случае она содержит 0.
{
    try{
        Run *RunAs "%A_ScriptFullPath%"  ; Requires v1.0.92.01+
    } Catch e{
        ExitApp
    }
}

TrayTip, AutoHotKey, Started, 1 ;Создает всплывающее окно с сообщением рядом со значком в трее. В Windows 10 вместо этого может отображаться всплывающее уведомление.
SoundBeep, 300, 150

TRY_startup = Runs at startup
TRY_options = Options
Menu, tray, DeleteAll ; Удаляет все пользовательские пункты меню из меню.
menu, tray, add ; разделитель
Menu, Options_Tray, add, % TRY_startup, startup
Menu, tray, add, % TRY_options, :Options_Tray