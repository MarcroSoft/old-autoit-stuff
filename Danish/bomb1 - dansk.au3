Dim $iMsgBoxAnswer
$iMsgBoxAnswer = MsgBox(4,"The Bomb of the End","Velkommen til The Bomb of the End! Vil du forts�tte?")
Select
   Case $iMsgBoxAnswer = 6 ;Yes
MsgBox(64,"Information","Bomben vil eksplodere om 60 sekunder. Klik ok for at starte nedt�lleren. Hvis du vil afslutte, s� klik p� ok i nedt�lleren.")
Dim $iMsgBoxAnswer
$iMsgBoxAnswer = MsgBox(0,"Nedt�ller","60!",10)
Select
   Case $iMsgBoxAnswer = -1 ;Timeout

   Case Else                ;OK
exit
EndSelect
Dim $iMsgBoxAnswer
$iMsgBoxAnswer = MsgBox(0,"Nedt�ller","50!",10)
Select
   Case $iMsgBoxAnswer = -1 ;Timeout

   Case Else                ;OK
exit
EndSelect
Dim $iMsgBoxAnswer
$iMsgBoxAnswer = MsgBox(0,"Nedt�ller","40!",10)
Select
   Case $iMsgBoxAnswer = -1 ;Timeout

   Case Else                ;OK
exit
EndSelect
Dim $iMsgBoxAnswer
$iMsgBoxAnswer = MsgBox(0,"Nedt�ller","30!",10)
Select
   Case $iMsgBoxAnswer = -1 ;Timeout

   Case Else                ;OK
exit
EndSelect
Dim $iMsgBoxAnswer
$iMsgBoxAnswer = MsgBox(0,"Nedt�ller","20!",10)
Select
   Case $iMsgBoxAnswer = -1 ;Timeout

   Case Else                ;OK
exit
EndSelect
Dim $iMsgBoxAnswer
$iMsgBoxAnswer = MsgBox(0,"Nedt�ller","10!",7)
Select
   Case $iMsgBoxAnswer = -1 ;Timeout

   Case Else                ;OK
exit
EndSelect
Dim $iMsgBoxAnswer
$iMsgBoxAnswer = MsgBox(0,"Nedt�ller","3!",1)
Select
   Case $iMsgBoxAnswer = -1 ;Timeout

   Case Else                ;OK
exit
EndSelect
Dim $iMsgBoxAnswer
$iMsgBoxAnswer = MsgBox(0,"Nedt�ller","2!",1)
Select
   Case $iMsgBoxAnswer = -1 ;Timeout

   Case Else                ;OK
exit
EndSelect
Dim $iMsgBoxAnswer
$iMsgBoxAnswer = MsgBox(48,"Nedt�ller","1!",1)
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
