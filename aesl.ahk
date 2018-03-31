#UseHook
;#Warn All
#NoEnv
#SingleInstance, force
#MaxThreadsBuffer, On
#MaxHotkeysPerInterval, 500 ; Prevents hotkey limit reached warning
#MaxThreadsPerHotkey, 4
#InstallMouseHook
#Persistent
SendMode, Input
SetControlDelay, -1
DetectHiddenWindows, On
SetWorkingDir, % A_ScriptDir
SetMouseDelay, -1
SetWinDelay, -1
SetTitleMatchMode, 2