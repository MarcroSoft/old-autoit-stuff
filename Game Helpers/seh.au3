#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.8.1
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here

$timer=0
run("C:\Program Files\Lworks\super egg hunt\superegghunt.exe")
sleep(10000)
hotkeyset("^+e", "close")
newgame()
while 1
if timerdiff($timer)>75000 then newgame()
sleep(50)
wend

func newgame()
send("{DOWN}")
sleep(500)
send("{ENTER}")
sleep(2000)
send("{DOWN}")
sleep(500)
send("{DOWN}")
sleep(500)
send("{DOWN}")
sleep(500)
send("{DOWN}")
sleep(500)
send("{ENTER}")

$timer=timerinit()
endfunc

func close()
exit
endfunc
