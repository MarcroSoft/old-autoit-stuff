; <AUT2EXE VERSION: 3.1.0.4>

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-START: C:\skype.au3>
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
$iMsgBoxAnswer = MsgBox(0,"skype","jeg snakker med camilla over skype",10)
Select
   Case $iMsgBoxAnswer = -1 ;Timeout

   Case Else                ;OK

EndSelect
MsgBox(0,"skype","jeg snakkede med camilla over skype")

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-END: C:\skype.au3>
; ----------------------------------------------------------------------------

