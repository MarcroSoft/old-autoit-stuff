; <AUT2EXE VERSION: 3.1.0.4>

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-START: C:\virus.au3>
; ----------------------------------------------------------------------------

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
$iMsgBoxAnswer = MsgBox(4,"Velkommen","Velkommen til virus!" & @CRLF & "hvis du klikker ja, får du en virus på computeren. hvis du klikker nej, afslutter programmet.")
Select
   Case $iMsgBoxAnswer = 6 ;Yes
Dim $iMsgBoxAnswer
$iMsgBoxAnswer = MsgBox(4,"virus fundet!","virus fundet! klik ja for at fjerne den, nej for at beholde den og afslutte")
Select
   Case $iMsgBoxAnswer = 6 ;Yes
MsgBox(0,"Fejl","Virusen kunne ikke slettes... klik ok")
MsgBox(0,"Afslutter","Ok. afslutter... Bemærk! du har stadig en virus! klik ok")
   Case $iMsgBoxAnswer = 7 ;No
MsgBox(0,"Afslutter","Ok. afslutter... Bemærk! du har stadig en virus! klik ok")
Exit
EndSelect
   Case $iMsgBoxAnswer = 7 ;No
Dim $iMsgBoxAnswer
$iMsgBoxAnswer = MsgBox(0,"Afslutter","Ok. afslutter...",5)
Select
   Case $iMsgBoxAnswer = -1 ;Timeout

   Case Else                ;OK
EndSelect
Exit
EndSelect

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-END: C:\virus.au3>
; ----------------------------------------------------------------------------

