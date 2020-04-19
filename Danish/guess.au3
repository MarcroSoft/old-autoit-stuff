; ----------------------------------------------------------------------------
;
; AutoIt Version: 3.1.0
; Author:         A.N.Other <myemail@nowhere.com>
;
; Script Function:
;	Template AutoIt script.
;
; ----------------------------------------------------------------------------

; Script Start - Add your code below here

Dim $iMsgBoxAnswer
$iMsgBoxAnswer = MsgBox(4,"Guess the Number","Velkommen til Guess the Number! Vil du fortsætte?")
Select
   Case $iMsgBoxAnswer = 6 ;Yes
MsgBox(0,"Instruktioner","Om lidt skal du skrive et tal mellem 1 og 10. Det gælder om at gætte det rigtige tal på et forsøg." & @CRLF & "Held og lykke!")
$r = random(1,10,1)
$bloop = 1
while $bloop = 1
$n = inputbox("Guess", "Skriv et tal mellem 1 og 10")
if @error = 1 then
exitloop
exit
endif
if $r = $n then
msgbox(0, "Guess", "Du vandt! Tillykke!")
exitloop
exit
endif
if $n <> $r then
msgbox(0, "Guess", "det var forkert. det rigtige nummer var " & $r)
exitloop
exit
endif
wend
   Case $iMsgBoxAnswer = 7 ;No
Dim $iMsgBoxAnswer
$iMsgBoxAnswer = MsgBox(0,"Guess","Afslutter...",5)
Select
   Case $iMsgBoxAnswer = -1 ;Timeout
exit
   Case Else                ;OK
exit
EndSelect
EndSelect