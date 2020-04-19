run(@programfilesdir & "\troopanum 2.0\troop.exe")
hotkeyset("^+e", "turnoff")
hotkeyset(".", "shoot")
hotkeyset("-", "moonrock")

while 1
sleep(10)
wend

func turnoff()
processclose("troop.exe")
msgbox(0, "Exit", "Thanks for using the Troopanum 2.0 Helper!")
exit
endfunc

func shoot()
for $counter = 1 to 25
send("{lctrl}")
sleep(10)
next
endfunc

func ctrl()
send("{lctrl}")
endfunc

func moonrock()
send("{altdown}")
for $counter = 1 to 5
send("{left}")
send("{right}")
sleep(10)
next
send("{altup}")
endfunc
