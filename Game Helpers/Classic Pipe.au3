run(@programfilesdir & "\classic pipe\classicpipe.exe")
hotkeyset("^+e", "turnoff")
hotkeyset("{appskey}", "hammer")
hotkeyset("!1", "hammer1")
hotkeyset("!2", "hammer2")
hotkeyset("!3", "hammer3")
hotkeyset("!4", "hammer4")
hotkeyset("!5", "hammer5")
hotkeyset("!6", "hammer6")
hotkeyset("!7", "hammer7")
hotkeyset("!8", "hammer8")
hotkeyset("!9", "hammer9")
hotkeyset("!0", "hammer10")
hotkeyset(".", "down")
hotkeyset("-", "up")

while 1
sleep(10)
wend

func turnoff()
processclose("classicpipe.exe")
msgbox(0, "Exit", "Thanks for using the Classic Pipe Helper!")
exit
endfunc

func hammer()
for $counter = 1 to $hammer
send("{lctrl}")
sleep(20)
next
endfunc

func hammer1()
global $hammer = 1
endfunc
func hammer2()
global $hammer = 2
endfunc
func hammer3()
global $hammer = 3
endfunc
func hammer4()
global $hammer = 4
endfunc
func hammer5()
global $hammer = 5
endfunc
func hammer6()
global $hammer = 6
endfunc
func hammer7()
global $hammer = 7
endfunc
func hammer8()
global $hammer = 8
endfunc
func hammer9()
global $hammer = 9
endfunc
func hammer10()
global $hammer = 10
endfunc

func ctrl()
send("{lctrl}")
endfunc

func up()
send("{up}")
send("{enter}")
endfunc

func down()
send("{down}")
send("{enter}")
endfunc
