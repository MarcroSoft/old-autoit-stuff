if not fileexists("test.txt") then
filewrite("test.txt", "6")
endif

$tid = fileread("test.txt")
if $tid <= 1 then
msgbox(0,"tid","Du har 0 gange tilbage!")
fileopen("test.txt", 2)
filewrite("test.txt", "0")
exit
endif
msgbox(0, "tid", "velkommen. dette program tæller ned fra 5 gange og gemmer antallet af gange tilbage i in fil som hedder test.txt. hvis du redigerer i den, kan du snyde. resten af scriptet viser et tilfældigt nummer mellem 1 og 10. hvis du har 0 gange tilbage, kan du ikke bruge scriptet.")
$tid = $tid - 1
msgbox(0, "tid", "du har nu " & $tid & " gange tilbage")
fileopen ("test.txt", 2)
filewrite("test.txt", $tid)
msgbox(0, "script", "her er et nummer mellem 1 og 10. nummeret var " & random(1,10,1))