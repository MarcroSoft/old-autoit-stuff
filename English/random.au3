; <AUT2EXE VERSION: 3.2.2.0>

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-START: F:\Marc\Autoit3Scripts\Free\random.au3>
; ----------------------------------------------------------------------------

$file=filesavedialog("Choose file", @scriptdir, "Text files (*.txt)", 16, "random.txt")
$openfile = fileopen($file, 1)
MsgBox(0,"Welcome!","Welcome to Random Numbers!" & @CRLF & "Your numbers will be saved in " & $file & ".")
$random=inputbox("Random", "How many numbers do you want saved to the file?")
if @error = 1 then exit
$lowrange=inputbox("Random", "Type lowest number")
if @error = 1 then exit
$highrange=inputbox("random", "Type highest number")
if @error = 1 then exit
$int=msgbox(4, "Random", "Do you only want whole numbers?")
$round = msgbox(4, "Round", "Do you want to use the round command?")
if $round=6 then
$useround=1
$roundplaces = inputbox("Round", "Type round places")
else
$useround = 0
endif
if $int=6 then $randomint=1
if $int=7 then $randomint=0
dim $randoms[$random]

for $randomcount=0 to $random - 1
$randoms[$randomcount]=random($lowrange, $highrange, $randomint)
if $useround=1 then $randoms[$randomcount] = round($randoms[$randomcount], $roundplaces)
next
for $filewrite = 0 to $random - 1
filewriteline($openfile, $randoms[$filewrite])
next
fileclose($openfile)
MsgBox(0,"Thanks","Thanks for trying random numbers! Check out your generated numbers in " & $file & "!")
exit

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-END: F:\Marc\Autoit3Scripts\Free\random.au3>
; ----------------------------------------------------------------------------

