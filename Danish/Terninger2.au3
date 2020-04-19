$Answer = MsgBox(36,"Terninger","Velkommen til Terninger! vil du fortsætte?")
if $Answer = 7 then exitgame()
firststart()

func firststart()
MsgBox(64,"Instruktioner","Du starter med at slå terningerne. Så er det computerens tur. Til sidst får du at vide hvem der har vundet. Du kan også spille med en rigtig spiller. Vælg ja når spillet spørger om du vil spille med en spiller. Indtast spillernes navne og så begynder spillet. Held og lykke!")
start()
endfunc

func start()
global $s1
global $s2
global $terninger
global $sider
$Answer = MsgBox(36,"Terninger","Vil du spille mod en anden spiller?" & @CRLF & "Hvis du vælger nej spiller du mod computeren")
if $Answer = 6 then player()
if $Answer = 7 then computer()
endfunc

func player()
while 1
$s1 = InputBox("Terninger","Skriv navn på spiller 1")
if @error = 1 then exitgame()
if $s1 = "" then
msgbox(0, "Terninger", "Feltet kan ikke være blankt!")
else
exitloop
endif
wend
while 1
$s2 = inputbox("Terninger", "Skriv navn på spiller 2")
if @error = 1 then exitgame()
if $s2 = "" then
msgbox(0, "Terninger", "Feltet kan ikke være blankt!")
else
exitloop
endif
wend
startgame()
endfunc

func computer()
$s2 = "Computer"
while 1
$s1 = inputbox("Terninger", "Skriv dit navn")
if @error = 1 then exitgame()
if $s1 = "" then
msgbox(0, "Terninger", "Feltet kan ikke være blankt!")
else
exitloop
endif
wend
startgame()
endfunc

func startgame()
while 1
$terninger = inputbox("Terninger", "Skriv hvor mange terninger i vil spille med")
if @error = 1 then exitgame()
if $terninger = "" then
msgbox(0, "Terninger", "Feltet kan ikke være blankt!")
else
exitloop
endif
wend
while 1
$sider = inputbox("Terninger", "Skriv hvor mange sider terningerne har")
if @error = 1 then exitgame()
if $sider = "" then
msgbox(0, "Terninger", "Feltet kan ikke være blankt!")
else
exitloop
endif
wend

dim $slaget1[$terninger]
dim $slaget2[$terninger]
$terninger = $terninger - 1
for $slag1 = 0 to $terninger
$slaget1[$slag1] = random(1, $sider, 1)
next
for $slag2 = 0 to $terninger
$slaget2[$slag2] = random(1, $sider, 1)
next
dim $slagene1
for $vis1 = 0 to $terninger
$slagene1 = $slagene1 & $slaget1[$vis1]
$slagene1 = $slagene1 & " "
next

dim $t1
for $totalc1 = 0 to $terninger
$t1 = $t1 + $slaget1[$totalc1]
next
stringtrimright($slagene1, 1)

dim $slagene2
for $vis2 = 0 to $terninger
$slagene2 = $slagene2 & $slaget2[$vis2]
$slagene2 = $slagene2 & " "
next
dim $t2
for $totalc2 = 0 to $terninger
$t2 = $t2 + $slaget2[$totalc2]
next
stringtrimright($slagene2, 1)
$totaler = $s1 & "'s total: " & $t1 & ", " & $s2 & "'s total: " & $t2 & "." & @crlf
$max = ($terninger + 1) * $sider

msgbox(64, "Slagene for " & $s1, "Slagene af dine " & $terninger + 1 & " terninger med " & $sider & " sider blev " & $slagene1 & ". Totalen er " & $t1 & " ud af " & $max & ".")
msgbox(64, "Slagene for " & $s2, "Slagene af dine " & $terninger + 1 & " terninger med " & $sider & " sider blev " & $slagene2 & ". Totalen er " & $t2 & " ud af " & $max & ".")

if $t1 < $t2 then MsgBox(64,"Terninger", $totaler & $s2 & ", du vandt! Tillykke! Din total var " & $t2 - $t1 & " større end " & $s1 & "'s!")
if $t1 > $t2 then MsgBox(64,"Terninger", $totaler & $s1 & ", du vandt! Tillykke! Din total var " & $t1 - $t2 & " større end " & $s2 & "'s!")
if $t1 = $t2 then MsgBox(64,"Terninger",$totaler & "Uafgjort!")
playagain()
endfunc

func playagain()
$answer = msgbox(36, "Terninger", "Vil du spille igen?")
if $answer = 6 then
start()
endif
if $answer = 7 then 
exitgame()
endif
endfunc

func exitgame()
msgbox(64, "Terninger", "Tak for nu! Programmet afslutter.")
exit
endfunc