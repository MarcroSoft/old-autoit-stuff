; <AUT2EXE VERSION: 3.2.1.12>

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-START: D:\Autoit3Scripts\Betas\Lommeregner.au3>
; ----------------------------------------------------------------------------

MsgBox(0,"Lommeregner","Velkommen til Lommeregner!" & @CRLF & "Lavet af MarcroSoft.")
$1 =inputbox("Lommeregner", "Skriv første tal")
if @error = 1 then exit
$2= inputbox("Lommeregner", "Skriv andet tal")
if @error = 1 then exit
$r = inputbox("Lommeregner", "Skriv + - * eller /")
if @error = 1 then exit
$1 = number($1)
$2 = number($2)
if $r = "+" then
$result = $1 + $2
elseif $r = "-" then
$result = $1 - $2
elseif $r = "*" then
$result = $1 * $2
elseif $r = "/" then
$result = $1 / $2
else
msgbox(0, "Lommeregner", "Du skrev ikke + - * eller /")
exit
endif
msgbox(0, "Resultat", "Resultatet af " & $1 & $r & $2 & " er " & $result)

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-END: D:\Autoit3Scripts\Betas\Lommeregner.au3>
; ----------------------------------------------------------------------------

