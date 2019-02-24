﻿#NoEnv  ; Рекомендуется для производительности и совместимости с будущими выпусками AutoHotkey.
;#Warn  ; Включить предупреждения, чтобы помочь с обнаружением распространенных ошибок.
SendMode Input  ; Рекомендуется для новых скриптов из-за его превосходной скорости и надежности.
SetWorkingDir %A_ScriptDir%  ; Обеспечивает согласованный начальный каталог.

#SingleInstance force ;Определяет, может ли скрипт запускаться снова, когда он уже запущен.
#MaxHotkeysPerInterval 500

; Использование клавиатуры для реализации горячих клавиш Numpad 
; не позволяет им создавать символы ANSI, такие как à.
; Это потому, что AutoHotkey генерирует такие символы, удерживая 
; нажатой клавишу ALT и отправляя серию нажатий клавиш Numpad. 
; Горячие клавиши Hook достаточно умны, чтобы игнорировать такие 
; нажатия клавиш.
#UseHook

;=====================================================================
;                   		Metasong's AHK Script
;---------------------------------------------------------------------
;Description:
;    Этот скрипт написан Metasong через скрипт AutoHotKey. 
; Он обеспечивает усовершенствование CapsLock «Бесполезная клавиша» 
; и превращает CapsLock в полезную функцию Key, такую как Ctrl и Alt, 
; комбинируя CapsLock с почти другими клавишами на клавиатуре.
;
;---------------------------------------------------------------------
; Используйте его как угодно и где угодно. Надеюсь, поможет!
;=====================================================================
#include %A_LineFile%\..\config.ahk.
#Include %A_LineFile%\..\init.ahk.
#Include %A_LineFile%\..\lib\index.ahk.
#include %A_LineFile%\..\keyboard.ahk.
#include %A_LineFile%\..\functionKeys.ahk.
#include %A_LineFile%\..\software.ahk.
#Include %A_LineFile%\..\tray.ahk.
;#Include %A_LineFile%\..\mouse.ahk.
;---------------------------------------------------------------------