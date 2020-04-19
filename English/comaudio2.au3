#include <guiconstants.au3>
; speak: make your autoit scripts talk
; interfaces to sapi and popular screen readers

; check how we should speak
func _speakcheck()
local $method
local $tempobj

If ProcessExists("jfw.exe") Then
$tempobj = ObjCreate("jfwapi")
if $tempobj = 0 then
$method = ""
else
$method = "jfw"
return $method
endif

elseif ProcessExists("wineyes.exe") then
$tempobj = ObjCreate("gwspeak.speak")
if $tempobj = 0 then
$method = ""
else
$method = "we"
return $method
endif

else
$tempobj = ObjCreate("SAPI.SpVoice")
if $tempobj = 0 then
SetError(1)
return -1
else
$method = "sapi"
return $method
endif
endif
endfunc

; the interface function
;expects: text to speak, and screen reader to speak it with
Func _speak($s_text, $screenreader)
; the object
Local $o_speech

if $screenreader = "auto" then
$screenreader = _speakcheck()
endif

; this uses msapi5, change default rate and speed in the control pannel
if $screenreader = "sapi" then
$o_speech = ObjCreate("SAPI.SpVoice")
$o_speech.Speak ($s_text)
$o_speech = ""
return 1;

; this needs jfwapi registered, jaws is the only screen reader that doesn't do this by default.
; if it's broken, go find yourself a copy of jfwapi.dll and register it.
elseif $screenreader = "jfw" then
$o_speech = ObjCreate("jfwapi")
$o_speech.saystring ($s_text,0)
$o_speech = ""
return 1;

; now window eyes.
; I don't have window eyes, someone test this?
elseif $screenreader = "we" then
$o_speech = ObjCreate("gwspeak.speak")
$o_speech.speakstring ($s_text,0)
$o_speech = ""
return 1;

else
SetError(1)
return -1;
endif

EndFunc

$comaudio=objcreate("comaudio.service")
if @error then
_speak("error in service object", "auto")
exit
endif
$device = $comaudio.opendevice("", "")
if @error then
_speak("error in device", "auto")
exit
endif
guicreate("com audio test")
sethotkeys()
guisetstate()
_speak("ComAudio Test Ready", "auto")
func play()
if isdeclared("sound") then
if $sound.playing = true then
$sound.stop
else
$sound.play
endif
else
_speak("No file loaded.", "auto")
endif
endfunc
func stop()
if isdeclared("sound") then
$sound.stop
$sound.reset
else
_speak("No file loaded.", "auto")
endif
endfunc
func repeat()
if isdeclared("sound") then
if $sound.repeating = false then
$sound.repeating = true
_speak("repeat on", "auto")
else
$sound.repeating = false
_speak("repeat off", "auto")
endif
else
_speak("No file loaded.", "auto")
endif
endfunc
func open()
unsethotkeys()
$open = fileopendialog("Open Sound", @scriptdir, "audio files (*.wav;*.mp3;*.ogg)")
_speak("now opening " & $open & "...", "auto")
global $sound = $device.opensound($open, true)
sethotkeys()
_speak("file is opened", "auto")
endfunc
while 1
$msg = guigetmsg()
if $msg = $gui_event_close then
_speak("ComAudio test exiting...", "auto")
exit
endif
wend
func sethotkeys()
hotkeyset("o", "open")
hotkeyset("p", "play")
hotkeyset("s", "stop")
hotkeyset("r", "repeat")
endfunc
func unsethotkeys()
hotkeyset("o")
hotkeyset("p")
hotkeyset("s")
hotkeyset("r")
endfunc
