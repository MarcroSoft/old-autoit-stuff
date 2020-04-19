#include <guiconstants.au3>
$cmdcount=$cmdline[0]
If $cmdcount<>2 Then
GuiCreate("Beeper")
GuiCtrlCreateLabel("Pitch (Hz)",100,50)
$pitch=GuiCtrlCreateInput("440",100,100)
GuiCtrlCreateLabel("Length (MS)",200,150)
$length=GuiCtrlCreateInput("1000",200,200)
$beep=GuiCtrlCreateButton("&Beep",300,200)
$Exit=GuiCtrlCreateButton("E&xit",300,400)
GuiCtrlSetState($pitch,$GUI_focus)
GuiCtrlSetState($Beep,$GUI_defbutton)
GUISetState()
while 1
$msg=GuiGetMsg()
if $msg=$Exit or $msg=$GUI_event_close then exit
if $msg=$Beep Then
$pit=GUICtrlRead($pitch)
$len=GUICtrlRead($length)
$pstring=StringSplit($pit,";")
$lstring=StringSplit($len,";")
If $pstring[0]=$lstring[0] Then
$count=$pstring[0]
$counter=1
While $counter<=$count
$len=$lstring[$counter]
$pit=$pstring[$counter]
If $len>8000 then $Len=8000
If $len<30 Then $Len=30
If $pit=0 Then
Sleep($len)
Else
If $pit>4000 Then $Pit=4000
If $pit<37 Then $Pit=37
Beep($pit,$len)
EndIf
$counter=$counter+1
WEnd
EndIf
EndIf
wend
Else
$pit=$cmdline[1]
$len=$cmdline[2]
$pstring=StringSplit($pit,";")
$lstring=StringSplit($len,";")
If $pstring[0]=$lstring[0] Then
$count=$pstring[0]
$counter=1
While $counter<=$count
$len=$lstring[$counter]
$pit=$pstring[$counter]
If $len>8000 then $Len=8000
If $len<30 Then $Len=30
If $pit=0 Then
Sleep($len)
Else
If $pit>4000 Then $Pit=4000
If $pit<37 Then $Pit=37
Beep($pit,$len)
EndIf
$counter=$counter+1
WEnd
EndIf
EndIf

