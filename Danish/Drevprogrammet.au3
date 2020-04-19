msgbox(0, "Drevprogrammet", "Velkommen til drevprogrammet fra MarcroSoft!")
$drev = inputbox("Drevprogrammet", "Skriv det drev du vil have information om")
$FriPlads = drivespacefree($drev)
$TotalPlads = drivespacetotal($drev)
$FriPlads = $FriPlads / 1024
$TotalPlads = $TotalPlads / 1024
$FriPlads = round($FriPlads, 2)
$TotalPlads = round($TotalPlads, 2)
$ProcentFri = $FriPlads / $TotalPlads * 100
$ProcentFri = round($ProcentFri)
msgbox(0, "Detaljer om " & $drev, "Du har totalt ca. " & $TotalPlads & " GB på " & $drev & ". Heraf er " & $FriPlads & " GB fri. Det frie plads udgør " & $ProcentFri & " procent.")

msgbox(0, "Drevprogrammet", "Tak fordi du brugte Drevprogrammet! Min email er" & @crlf & "marcandersen@mail.dk" & @crlf & "Afslutter...", 15)
