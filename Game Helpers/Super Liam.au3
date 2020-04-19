run(@programfilesdir & "\lworks\super liam\sl.exe")
hotkeyset("^+e", "turnoff")
hotkeyset("{insert}", "fire1")
hotkeyset("{delete}", "fire")
hotkeyset("{appskey}", "lasers")
hotkeyset("{pgup}", "jumpl")
hotkeyset("{pgdn}", "jumpr")

while 1
sleep(10)
wend

func turnoff()
processclose("sl.exe")
msgbox(0, "Exit", "Thanks for using the Super Liam Helper!")
exit
endfunc
func fire()
for $main = 1 to 10
send("+{right}")
lasers()
sleep(20)
send("+{left}")
lasers()
sleep(20)
next

endfunc

func fire1()
send("+{right}")
lasers()
sleep(20)
send("+{left}")
lasers()
sleep(20)
endfunc

func lasers()
for $lasers = 1 to 10
send("{lctrl}")
sleep(1)
next
endfunc

func jumpl()
send("{up}")
for $steps = 1 to 6
send("{left}")
sleep(100)
next
endfunc
func jumpr()
send("{up}")
for $steps = 1 to 6
send("{right}")
sleep(100)
next
endfunc
