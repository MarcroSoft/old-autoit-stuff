#include <guiconstants.au3>


$sapi = objcreate("sapi.spvoice")
$comaudio=objcreate("comaudio.service")
if @error then
$sapi.speak("error in service object")
exit
endif
$device = $comaudio.opendevice("", "")
if @error then
$sapi.speak("error in device")
exit
endif
guicreate("MarcroSoft Player")
sethotkeys()
guisetstate()
$sapi.speak("MarcroSoft Player Ready", 3)
func play()
if isdeclared("sound") then
if $sound.playing = true then $sound.reset
global $reset = 0
$sound.play
else
$sapi.speak("No file loaded.", 3)
endif
endfunc
func pause()
if isdeclared("sound") then
if $sound.playing = true then
$sound.stop
else
if $reset = 0 then $sound.play
endif
else
$sapi.speak("No file loaded.", 3)
endif
endfunc
func stop()
if isdeclared("sound") then
$sound.stop
$sound.reset
global $reset = 1
else
$sapi.speak("No file loaded.", 3)
endif
endfunc

func repeat()
if isdeclared("sound") then
if $sound.repeating = false then
$sound.repeating = true
$sapi.speak("repeat on", 3)
else
$sound.repeating = false
$sapi.speak("repeat off", 3)
endif
else
$sapi.speak("No file loaded.", 3)
endif
endfunc
func open()
unsethotkeys()
$open = fileopendialog("Open Sound", @workingdir, "audio files (*.wav;*.mp3;*.ogg)")
$sapi.speak("now opening " & $open & "...", 3)
global $sound = $device.opensound($open, true) then
if @error then
$sapi.speak("file could not be opened", 3)
return
endif
global $reset = 1
sethotkeys()
$sapi.speak("file is opened", 3)
endfunc
while 1
$msg = guigetmsg()
if $msg = $gui_event_close then
$sapi.speak("MarcroSoft player exiting...")
exit
endif
wend
func sethotkeys()
hotkeyset("l", "open")
hotkeyset("x", "play")
hotkeyset("c", "pause")
hotkeyset("v", "stop")
hotkeyset("r", "repeat")
hotkeyset("{up}", "volup")
hotkeyset("{down}", "voldown")
hotkeyset("{left}", "back")
hotkeyset("{right}", "forward")
hotkeyset("+{up}", "pitchup")
hotkeyset("+{down}", "pitchdown")
hotkeyset("+{left}", "panleft")
hotkeyset("+{right}", "panright")
hotkeyset("1", "playing")
hotkeyset("2", "volume")
hotkeyset("3", "pan")
hotkeyset("4", "pitchshift")
hotkeyset("5", "seekable")
hotkeyset("6", "length")
hotkeyset("7", "position")
hotkeyset("8", "repeating")
hotkeyset("9", "channelcount")
hotkeyset("0", "samplerate")


endfunc
func unsethotkeys()
hotkeyset("l")
hotkeyset("x")
hotkeyset("c")
hotkeyset("v")
hotkeyset("r")
hotkeyset("{up}")
hotkeyset("{down}")
hotkeyset("{left}")
hotkeyset("{right}")
hotkeyset("+{up}")
hotkeyset("+{down}")
hotkeyset("+{left}")
hotkeyset("+{right}")
hotkeyset("1")
hotkeyset("2")
hotkeyset("3")
hotkeyset("4")
hotkeyset("5")
hotkeyset("6")
hotkeyset("7")
hotkeyset("8")
hotkeyset("9")
hotkeyset("0")

endfunc

func volup()
if isdeclared("sound") then
if $sound.volume < 1 then
$sound.volume = $sound.volume + 0.01
else
$sapi.speak("Volume maximum", 3)
endif
else
$sapi.speak("No file loaded.", 3)
endif
endfunc

func voldown()
if isdeclared("sound") then
if $sound.volume > 0.01 then
$sound.volume = $sound.volume - 0.01
else
$sapi.speak("Volume minimum", 3)
endif
else
$sapi.speak("No file loaded.", 3)
endif
endfunc

func pitchup()
if isdeclared("sound") then
if $sound.pitchshift < 4 then
$sound.pitchshift = $sound.pitchshift + 0.05
if $sound.pitchshift = 1.0 then $sapi.speak("Normal pitch", 3)
else
$sapi.speak("Pitch maximum", 3)
endif
else
$sapi.speak("No file loaded.", 3)
endif
endfunc

func pitchdown()
if isdeclared("sound") then
if $sound.pitchshift > 0.1 then
$sound.pitchshift = $sound.pitchshift - 0.05
if $sound.pitchshift = 1.0 then $sapi.speak("Normal pitch", 3)
else
$sapi.speak("Pitch minimum", 3)
endif
else
$sapi.speak("No file loaded.", 3)
endif
endfunc

func panright()
if isdeclared("sound") then
if $sound.pan < 1 then
$sound.pan = $sound.pan + 0.05
if $sound.pan = 0.0 then $sapi.speak("Pan center", 3)
else
$sapi.speak("Pan extreme right", 3)
endif
else
$sapi.speak("No file loaded.", 3)
endif
endfunc

func panleft()
if isdeclared("sound") then
if $sound.pan > -1 then
$sound.pan = $sound.pan - 0.05
if $sound.pan = 0.0 then $sapi.speak("Pan center", 3)
else
$sapi.speak("Pan extreme left", 3)
endif
else
$sapi.speak("No file loaded.", 3)
endif
endfunc

func back()
; not programmed yet
endfunc
func forward()
; not programmed yet
endfunc

func playing()
$sapi.speak($sound.playing, 3)
endfunc
func volume()
$intvol = $sound.volume * 100
$sapi.speak($intvol, 3)
endfunc
func pan()
$intpan = $sound.pan * 100
$sapi.speak($intpan, 3)
endfunc
func pitchshift()
$intpitch = $sound.pitchshift * 100
$sapi.speak($intpitch, 3)
endfunc
func seekable()
$sapi.speak($sound.seekable, 3)
endfunc
func length()
$sapi.speak($sound.length, 3)
endfunc
func position()
$sapi.speak($sound.position, 3)
endfunc
func repeating()
$sapi.speak($sound.repeating, 3)
endfunc
func channelcount()
$sapi.speak($sound.channelcount, 3)
endfunc
func samplerate()
$sapi.speak($sound.samplerate, 3)
endfunc
