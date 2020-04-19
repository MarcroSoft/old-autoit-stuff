; <AUT2EXE VERSION: 3.2.2.0>

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-START: F:\Marc\Autoit3Scripts\Freeware\Papirkurv.au3>
; ----------------------------------------------------------------------------


; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-START: F:\Marc\Autoit3Scripts\Freeware\speak.au3>
; ----------------------------------------------------------------------------

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


; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-END: F:\Marc\Autoit3Scripts\Freeware\speak.au3>
; ----------------------------------------------------------------------------

$result = filerecycleempty()
if $result = 1 then _speak("Papirkurven er tømt!", "auto")
if $result = 0 then _speak("Papirkurven kunne ikke tømmes!", "auto")

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-END: F:\Marc\Autoit3Scripts\Freeware\Papirkurv.au3>
; ----------------------------------------------------------------------------

