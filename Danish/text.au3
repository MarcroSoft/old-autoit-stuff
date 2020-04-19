; <AUT2EXE VERSION: 3.1.0.4>

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-START: C:\Autoit3 Scripts\Free\text.au3>
; ----------------------------------------------------------------------------

; ----------------------------------------------------------------------------
;
; AutoIt Version: 3.1.0
; Author:         A.N.Other <myemail@nowhere.com>
;
; Script Function:
;	Template AutoIt script.
;
; ----------------------------------------------------------------------------

; Script Start - Add your code below here

msgbox (0, "Tekst Viser", "Om lidt kan du skrive noget tekst som vil blive vist i en dialogboks")
$bloop = 1
while $bloop = 1
$tekst = InputBox("Tekst", "Skriv din tekst")
if @error = 1 then
exitloop
exit
endif
if $tekst = "" then
msgbox(0, "Tekst", "feltet kan ikke være blankt!")
else
msgbox (0, "Tekst", $tekst)
exitloop
endif
wend

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-END: C:\Autoit3 Scripts\Free\text.au3>
; ----------------------------------------------------------------------------

