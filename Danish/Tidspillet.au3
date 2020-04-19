; <AUT2EXE VERSION: 3.2.1.12>

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-START: D:\Autoit3Scripts\Betas\tidspillet-beta.au3>
; ----------------------------------------------------------------------------

$Answer = MsgBox(4,"Velkommen til tidspillet","Velkommen til tidspillet! vil du fortsætte?")
Select
   Case $Answer = 6 ;Yes
firststart()
   Case $Answer = 7 ;No
exit
EndSelect

func firststart()
MsgBox(0,"Instruktioner","Du skal trykke ok før tiden udløber." & @CRLF & "første runde har du 10 sekunder, runde 2 har du 9 osv." & @CRLF & "hvis du ikke når det, så er spillet slut.")
start()
endfunc
func start()
global $score = 0
global $time = 10

for $count = 1 to 10
MsgBox(0,"tid","runde " & $count)
$timeout = MsgBox(1,"tid","klik ok",$time)
Select
   Case $timeout = 1  ;OK
$score = $score + 1
$time = $time - 1
MsgBox(0,"tid","du vandt! din score er " & $score)
   Case $timeout = 2  ;Cancel
exit
   Case $timeout = -1 ;Timeout
MsgBox(0,"tid","tiden udløb! din score var " & $score)
playagain()
EndSelect
next
MsgBox(0,"tillykke!","du vandt tidspillet! tillykke!")
playagain()
endfunc
func playagain()
$Answer = MsgBox(4,"Tidspillet","Vil du spille igen?")
Select
   Case $Answer = 6 ;Yes
start()
   Case $Answer = 7 ;No
exit
EndSelect
endfunc

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-END: D:\Autoit3Scripts\Betas\tidspillet-beta.au3>
; ----------------------------------------------------------------------------

