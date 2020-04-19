Dim $iMsgBoxAnswer
$iMsgBoxAnswer = MsgBox(4,"The Bomb of the End","Welcome to The Bomb of the End! do you wish to continue?")
Select
   Case $iMsgBoxAnswer = 6 ;Yes
MsgBox(64,"Information","The bomb will explode in 60 seconds. click ok to start the countdown. If you want to exit, then click on ok in the countdown.")
Dim $iMsgBoxAnswer
$iMsgBoxAnswer = MsgBox(0,"Countdown","60!",10)
Select
   Case $iMsgBoxAnswer = -1 ;Timeout

   Case Else                ;OK
exit
EndSelect
Dim $iMsgBoxAnswer
$iMsgBoxAnswer = MsgBox(0,"Countdown","50!",10)
Select
   Case $iMsgBoxAnswer = -1 ;Timeout

   Case Else                ;OK
exit
EndSelect
Dim $iMsgBoxAnswer
$iMsgBoxAnswer = MsgBox(0,"Countdown","40!",10)
Select
   Case $iMsgBoxAnswer = -1 ;Timeout

   Case Else                ;OK
exit
EndSelect
Dim $iMsgBoxAnswer
$iMsgBoxAnswer = MsgBox(0,"Countdown","30!",10)
Select
   Case $iMsgBoxAnswer = -1 ;Timeout

   Case Else                ;OK
exit
EndSelect
Dim $iMsgBoxAnswer
$iMsgBoxAnswer = MsgBox(0,"Countdown","20!",10)
Select
   Case $iMsgBoxAnswer = -1 ;Timeout

   Case Else                ;OK
exit
EndSelect
Dim $iMsgBoxAnswer
$iMsgBoxAnswer = MsgBox(0,"Countdown","10!",7)
Select
   Case $iMsgBoxAnswer = -1 ;Timeout

   Case Else                ;OK
exit
EndSelect
Dim $iMsgBoxAnswer
$iMsgBoxAnswer = MsgBox(0,"Countdown","3!",1)
Select
   Case $iMsgBoxAnswer = -1 ;Timeout

   Case Else                ;OK
exit
EndSelect
Dim $iMsgBoxAnswer
$iMsgBoxAnswer = MsgBox(0,"Countdown","2!",1)
Select
   Case $iMsgBoxAnswer = -1 ;Timeout

   Case Else                ;OK
exit
EndSelect
Dim $iMsgBoxAnswer
$iMsgBoxAnswer = MsgBox(48,"Countdown","1!",1)
Select
   Case $iMsgBoxAnswer = -1 ;Timeout

   Case Else                ;OK
exit
EndSelect
soundplay("c:\explosion.wav")
MsgBox(16,"The Bomb of the End","Boom! The bomb has exploded!")
Dim $iMsgBoxAnswer
$iMsgBoxAnswer = MsgBox(0,"The Bomb of the End","Exiting...",3)
Select
   Case $iMsgBoxAnswer = -1 ;Timeout
exit
   Case Else                ;OK
exit
EndSelect
   Case $iMsgBoxAnswer = 7 ;No
Dim $iMsgBoxAnswer
$iMsgBoxAnswer = MsgBox(0,"The Bomb of the End","Exiting...",3)
Select
   Case $iMsgBoxAnswer = -1 ;Timeout
exit
   Case Else                ;OK
exit
EndSelect
EndSelect
