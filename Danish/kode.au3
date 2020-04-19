$numberofchars = random(1,25,1)
dim $currentchar[$numberofchars]
dim $currenttype[$numberofchars]
for $test = 0 to $numberofchars - 1
$currenttype[$test] = random(1, 3, 1)
if $currenttype[$test] = 1 then
$currentchar[$test] = random(0, 9, 1)
elseif $currenttype[$test] = 2 then
$currentchar[$test] = chr(random(asc("a"), asc("z"), 1))
else
if $test<>0 then
if $currentchar[$test - 1] <> "-" then $currentchar[$test] = "-"
endif
endif
next
if $currentchar[$numberofchars - 1] = "-" then $currentchar[$numberofchars - 1] = ""
dim $kode
for $codeloop = 0 to $numberofchars - 1
$kode = $kode & $currentchar[$codeloop]
next
msgbox(0, "registreringskode", "din genererede registreringskode er " & $kode)
