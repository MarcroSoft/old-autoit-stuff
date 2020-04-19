; <AUT2EXE VERSION: 3.2.1.12>

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-START: D:\Autoit3Scripts\Free\luk ned.au3>
; ----------------------------------------------------------------------------

Dim $iMsgBoxAnswer
$iMsgBoxAnswer = MsgBox(64,"Luk Ned","Computeren vil lukke ned om 1 minut hvis du ikke trykker ok.",60)
Select
   Case $iMsgBoxAnswer = -1 ;Timeout
shutdown(5)
   Case Else                ;OK
exit
EndSelect

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-END: D:\Autoit3Scripts\Free\luk ned.au3>
; ----------------------------------------------------------------------------

