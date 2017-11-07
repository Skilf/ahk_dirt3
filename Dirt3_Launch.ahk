; Script de démarrage DiRT 3

GamePath:="G:\Games\Steam\SteamApps\common\DiRT 3 Complete Edition\dirt3_game.exe"

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.

#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

run, %GamePath%
WinWait, DiRT 3
WinActivate DiRT 3


;ListLines On 
;ListLines


Sleep, 12000   ;attendre l'ouverture du programme - a améliorer
SetTimer process_watcher, 100

; Trouver le centre de l'écran
x := (A_ScreenWidth // 2)
y := (A_ScreenHeight // 2)
Click, %x%, %y%  ;Cliquer au centre de l'écran 

;Tooltip, Clicked

; ----------------------------------
; Passer les écrans initiaux pour arriver aux menus
; ----------------------------------
Sleep, 1000

; Appui sur bouton
; pour que directx reconnaisse correctement un appui de touche il faut appuyer plus longtemps
; pour cela on fait un cycle appui, attente, relache pour chaque touche qu'on veut simuler

; Si les deux videos de départ n'ont pas été remplacées, décommenter les lignes ci-dessous
;Send, {Enter down} 
;Sleep 10
;Send, {Enter up}
;Sleep, 1000
;Send, {Enter down}
;Sleep 10
;Send, {Enter up}
;Sleep, 1000




;Send, {Enter down}
;Sleep 10
;Send, {Enter up}

Sleep, 5000 ;long ecran Dirt3 blahblah

Send, {Enter down}
Sleep 10
Send, {Enter up}

Sleep, 2000

Send, {Enter down}
Sleep 10
Send, {Enter up}

Sleep, 2000

Send, {Enter down}
Sleep 10
Send, {Enter up}

Sleep, 2000

Send, {Enter down}
Sleep 10
Send, {Enter up}

; ----------------------------------
;Premier menu. Choisir multijoueur (bas + entree)
; ----------------------------------
Sleep, 3000 ; attendre transition
Send, {Down down}
Sleep 10
Send, {Down up}
Sleep 10
Send, {Enter down}
Sleep 10
Send, {Enter up}

; ----------------------------------
;Deuxieme menu. Choisir Réseau local (bas + bas + entree)
; ----------------------------------
Sleep, 3000 ; attendre transition
Send, {Down down}
Sleep 10
Send, {Down up}
Sleep 10
Send, {Down down}
Sleep 10
Send, {Down up}
Sleep 10
Send, {Enter down}
Sleep 10
Send, {Enter up}

; ----------------------------------
; Créer partie 
; ----------------------------------
; script a ne lancer que sur la premiere machine

Sleep 1000
Send, {Down down}
Sleep 10
Send, {Down up}
Sleep 10
Send, {Down down}
Sleep 10
Send, {Down up}
Sleep 10
Send, {Enter down}
Sleep 10
Send, {Enter up}
Sleep 10
Send, {Enter down}
Sleep 10
Send, {Enter up}


process_watcher:
	Process Exist, dirt3_game.exe
	If ErrorLevel = 0
		Exitapp
Return

return,


