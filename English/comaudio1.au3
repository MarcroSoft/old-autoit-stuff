#include <guiconstants.au3>
$comaudio = objcreate("comaudio.service")
$device = $comaudio.opendevice("","")
msgbox(0, "comaudio test", "welcome to the com audio test")
sethotkeys()
func sethotkeys()
hotkeyset("o", "open")
hotkeyset("p", "play")
hotkeyset("s", "stop")
hotkeyset("r", "repeat")
hotkeyset("P", "msg")
endfunc
guicreate("ComAudio Test")
guisetstate()
while 1
$msg = guigetmsg()
if $msg = $gui_event_close then exit
sleep(100)
wend
func open()
unsethotkeys()
$file = fileopendialog("choose file", @workingdir, "audio files (*.wav;*.mp3;*.ogg)")
global $sound = $device.opensound($file, true)
msgbox(0, "loaded", "file is loaded")
sethotkeys()
endfunc
func play()
if $sound.playing = true then
$sound.stop
else
$sound.play
endif
endfunc
func stop()
$sound.stop
$sound.reset
endfunc
func repeat()
unsethotkeys()
if $sound.repeating = false then
$sound.repeating = true
msgbox(0, "repeat", "repeat on")
else
$sound.repeating = false
msgbox(0, "repeat", "repeat off")
endif
sethotkeys()
endfunc
func unsethotkeys()
hotkeyset("o")
hotkeyset ("p")
hotkeyset("s")
hotkeyset("r")
endfunc

func msg()
msgbox(0, "Test", "Testing hotkeys.")
endfunc
