MsgBox(0,"Terninger","Velkommen til den gratis version af terninger!" & @CRLF & "Her kan du v�lge hvor mange terninger du vil sl� med og hvor nange sider de har." & @CRLF & "Du kan sl� s� mange slag du vil." & @CRLF & "" & @CRLF & "Forbedringer:" & @CRLF & "I n�ste version vil jeg lave et loop s� du ikke beh�ver at starte programmet forfra hver gang." & @CRLF & "" & @CRLF & "Tjek ogs� demoen af terningespillet hvor du kan spille mod computeren eller en anden spiller." & @CRLF & "S� g�lder det om at f� den h�jeste total." & @CRLF & "" & @CRLF & "Hav det sjovt med dette program!")
$terninger = inputbox("Terninger", "Skriv hvor mange terninger du vil sl� med.")
$sider = inputbox("Terninger", "skriv hvor mange sider terningerne har.")
dim $slaget[$terninger]
$terninger = $terninger - 1
for $slag = 0 to $terninger
$slaget[$slag] = random(1, $sider, 1)
next
dim $slagene
for $vis = 0 to $terninger
$slagene = $slagene &$slaget[$vis]
$slagene = $slagene & " "
next
dim $total
for $totalc = 0 to $terninger
$total = $total + $slaget[$totalc]
next
stringtrimright($slagene, 1)
msgbox(0, "slagene", "slagene af " & $terninger + 1 & " terninger med " & $sider & " sider blev " & $slagene & ". totalen er " & $total)
