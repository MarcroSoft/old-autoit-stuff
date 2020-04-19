run(@programfilesdir & "\troopanum 2.0\troop.exe")
hotkeyset("^+e", "turnoff")
hotkeyset("{end}", "ctrl")
hotkeyset("{appskey}", "shoot")
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
