#include <guiconstants.au3>
$sapi = objcreate("sapi.spvoice")
$WinMain = GuiCreate("Sapi Example", 400, 400)
$EditText = GuiCtrlCreateEdit('',5,5,380,350)
$SpeakButton = GuiCtrlCreateButton("Speak", 170, 360, 105, 35)
$ExitButton = GuiCtrlCreateButton("Exit", 285, 360, 105, 35)
GuiSetState()
$sapi.speak("Welcome to the Sapi TTS Example Program! Just enter some text and click Speak and it will be spoken.")

Do
$Msg = GuiGetMsg()
If $msg = $SpeakButton Then
$string = GuiCtrlRead($EditText)
$sapi.speak($string)
EndIf
If $msg = $ExitButton Then
$sapi.speak("Good Bye!")
exit
EndIf
Until $msg = $GUI_EVENT_CLOSE
$sapi.speak("Good Bye!")
