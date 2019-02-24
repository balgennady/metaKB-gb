; Это часть моего скрипта AutoHotKey [1]. 
; Когда вы находитесь в проводнике Windows, он позволяет вам нажимать Ctrl+Alt+N 
; и вводить имя файла, и этот файл создается в текущем каталоге и открывается 
; в соответствующем редакторе (обычно [gVim] (http: //www.vim. org /) в моем случае, 
; но он будет использовать любую программу, связанную с файлом в проводнике Windows).

; Благодарность принадлежит Aubricus [2], который написал большую часть этого - 
; я просто добавил проверку «IfWinActive» и «Run %UserInput%» в конце.

; [1]: http://www.autohotkey.com/
; [2]: https://gist.github.com/1148174


; Запускается только когда активен Windows Explorer или Рабочий Стол
; Ctrl+Alt+N

^!n::
#IfWinActive, ahk_class ExploreWClass||ahk_class Progman||ahk_class WorkerW ||ahk_class CabinetWclass
{
    ; Получить полный путь из открытого окна проводника
    WinGetText, FullPath, A
    ; Результат очистки
    StringReplace, FullPath, FullPath, `r, , all
    FullPath := RegExReplace(FullPath, "^.*`nAddress: ([^`n]+)`n.*$", "$1")
    ; Изменить рабочий каталог
    SetWorkingDir, %FullPath%
    ; Произошла ошибка с директивой SetWorkingDir
    If ErrorLevel {
        Send, ^!n
        Return
    }

    ; Показать поле ввода для имени файла
    InputBox, UserInput, New File (example: foo.txt), , , 400, 100
    ; Пользователь нажал "Отмена"
    If ErrorLevel
        Return

    ; Создать файл
    FileAppend, , %UserInput%
    ; Откройте файл в соответствующем редакторе
    ;Run %UserInput%
    Return
}
#IfWinActive
