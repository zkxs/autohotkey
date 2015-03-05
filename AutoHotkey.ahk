; IMPORTANT INFO ABOUT GETTING STARTED: Lines that start with a
; semicolon, such as this one, are comments.  They are not executed.

; This script has a special filename and path because it is automatically
; launched when you run the program directly.  Also, any text file whose
; name ends in .ahk is associated with the program, which means that it
; can be launched simply by double-clicking it.  You can have as many .ahk
; files as you want, located in any folder.  You can also run more than
; one .ahk file simultaneously and each will get its own tray icon.

; SAMPLE HOTKEYS: Below are two sample hotkeys.  The first is Win+Z and it
; launches a web site in the default browser.  The second is Control+Alt+N
; and it launches a new Notepad window (or activates an existing one).  To
; try out these hotkeys, run AutoHotkey again, which will load this file.

; reload this AHK script
#z::Reload

#a::
CoordMode, Mouse, Relative
MouseGetPos, xpos, ypos
MsgBox, % "xpos=" . xpos . "`nypos=" . ypos
return

;^!n::
;IfWinExist Untitled - Notepad
;	WinActivate
;else
;	Run Notepad
;return

; type characters in clipboard
#v::Sendraw, %clipboard%

;; Setup Stylist in a new rabb.it instance
^#s::
; Save mouse starting position (should be on location bar)
CoordMode, Mouse, Relative
SetKeyDelay, 10
;MouseGetPos, xpos, ypos
xpos=480
ypos=256
buttonxpos=1144
buttonypos=380

; Install Stylish
MouseClick, Left, %xpos%, %ypos%, 1, 0
Send, https://chrome.google.com/webstore/detail/stylish/fjnbnpbmkenffdnngjfgmeleoegfcffe?hl=en{Enter}
Sleep, 3000
Send, {Tab}{Tab}{Enter}
Sleep, 1000
;SetKeyDelay, 100
;Send, {Tab}{Tab}{Space}
;SetKeyDelay, 10
MouseClick, Left, %buttonxpos%, %buttonypos%, 1, 0
Sleep, 2000

; Type the userstyle
MouseClick, Left, %xpos%, %ypos%, 1, 0
Send, chrome-extension://fjnbnpbmkenffdnngjfgmeleoegfcffe/edit.html{Enter}
Sleep, 1000
Send, {Tab}4chan:{Space}/f/{Space}visited{Space}links
Send, {Tab}{Tab}{Tab}{Tab}{Tab}{Tab}
Send, a:visited{Space}{{}{Enter}color:{Space}{#}707{Space}{!}important;{Enter}{}}
Sleep, 25

; Type the style's scope
MouseClick, % Left, xpos, ypos + 30, 1, 0
Sleep, 25
Send, +{Tab}+{Tab}{Enter}
Sleep, 25
Send, +{Tab}+{Tab}+{Tab}+{Tab}https?://(www\.)?boards.4chan.org/f(/.*)?
Send, +{Tab}{Down}{Down}{Down}{Down}{Enter}

; Save the style
MouseClick, % Left, xpos, ypos + 30, 1, 0
Sleep, 25
Send, {Tab}{Tab}{Tab}{Tab}{Enter}
Sleep, 600

; Goto 4chan
MouseClick, Left, %xpos%, %ypos%, 1, 0
Sleep, 25
Send, https://boards.4chan.org/f/{Enter}
;Sleep, 2000

; Page down then scroll up a bit
; I cannot figure out why this isn't working
;MouseMove, % xpos, ypos + 30, 5
;Send, {PgDn}
;Sleep, 25
;SetKeyDelay, 25
;Send, {WheelUp}{WheelUp}{WheelUp}{WheelUp}
;SetKeyDelay, 10
return

^#d::
Send, {Tab}
return

; Note: From now on whenever you run AutoHotkey directly, this script
; will be loaded.  So feel free to customize it to suit your needs.

; Please read the QUICK-START TUTORIAL near the top of the help file.
; It explains how to perform common automation tasks such as sending
; keystrokes and mouse clicks.  It also explains more about hotkeys.
