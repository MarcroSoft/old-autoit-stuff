Dim $iMsgBoxAnswer
$iMsgBoxAnswer = MsgBox(4,"The Bomb of the End","Velkommen til The Bomb of the End! Vil du fortsætte?")
Select
   Case $iMsgBoxAnswer = 6 ;Yes
MsgBox(64,"Information","Bomben vil eksplodere om 60 sekunder. Klik ok for at starte nedtælleren. Hvis du vil afslutte, så klik på ok i nedtælleren.")
Dim $iMsgBoxAnswer
$iMsgBoxAnswer = MsgBox(0,"Nedtæller","60!",10)
Select
   Case $iMsgBoxAnswer = -1 ;Timeout

   Case Else                ;OK
exit
EndSelect
Dim $iMsgBoxAnswer
$iMsgBoxAnswer = MsgBox(0,"Nedtæller","50!",10)
Select
   Case $iMsgBoxAnswer = -1 ;Timeout

   Case Else                ;OK
exit
EndSelect
Dim $iMsgBoxAnswer
$iMsgBoxAnswer = MsgBox(0,"Nedtæller","40!",10)
Select
   Case $iMsgBoxAnswer = -1 ;Timeout

   Case Else                ;OK
exit
EndSelect
Dim $iMsgBoxAnswer
$iMsgBoxAnswer = MsgBox(0,"Nedtæller","30!",10)
Select
   Case $iMsgBoxAnswer = -1 ;Timeout

   Case Else                ;OK
exit
EndSelect
Dim $iMsgBoxAnswer
$iMsgBoxAnswer = MsgBox(0,"Nedtæller","20!",10)
Select
   Case $iMsgBoxAnswer = -1 ;Timeout

   Case Else                ;OK
exit
EndSelect
Dim $iMsgBoxAnswer
$iMsgBoxAnswer = MsgBox(0,"Nedtæller","10!",7)
Select
   Case $iMsgBoxAnswer = -1 ;Timeout

   Case Else                ;OK
exit
EndSelect
Dim $iMsgBoxAnswer
$iMsgBoxAnswer = MsgBox(0,"Nedtæller","3!",1)
Select
   Case $iMsgBoxAnswer = -1 ;Timeout

   Case Else                ;OK
exit
EndSelect
Dim $iMsgBoxAnswer
$iMsgBoxAnswer = MsgBox(0,"Nedtæller","2!",1)
Select
   Case $iMsgBoxAnswer = -1 ;Timeout

   Case Else                ;OK
exit
EndSelect
Dim $iMsgBoxAnswer
$iMsgBoxAnswer = MsgBox(48,"Nedtæller","1!",1)
Select
   Case $iMsgBoxAnswer = -1 ;Timeout

   Case Else                ;OK
exit
EndSelect
soundplay("c:\explosion.wav")
MsgBox(16,"The Bomb of the End","Boom! Bomben eksploderede!")
Dim $iMsgBoxAnswer
$iMsgBoxAnswer = MsgBox(0,"The Bomb of the End","Afslutter...",3)
Select
   Case $iMsgBoxAnswer = -1 ;Timeout
exit
   Case Else                ;OK
exit
EndSelect
   Case $iMsgBoxAnswer = 7 ;No
Dim $iMsgBoxAnswer
$iMsgBoxAnswer = MsgBox(0,"The Bomb of the End","Afslutter...",3)
Select
   Case $iMsgBoxAnswer = -1 ;Timeout
exit
   Case Else                ;OK
exit
EndSelect
EndSelect
