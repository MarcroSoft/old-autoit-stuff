; <AUT2EXE VERSION: 3.2.2.0>

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-START: D:\Autoit\Rumfang Af Kugle.au3>
; ----------------------------------------------------------------------------


; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-START: D:\Autoit\speak.au3>
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
; <AUT2EXE INCLUDE-END: D:\Autoit\speak.au3>
; ----------------------------------------------------------------------------

_speak("Velkommen til Rumfang Af Kugle! Dette program kan hjælpe dig med at beregne rumfanget af en kugle eller en bold. Det eneste du behøver er kuglens omkreds.","auto")
MsgBox(0,"Velkommen!","Velkommen til Rumfang Af Kugle! Dette program kan hjælpe dig med at beregne rumfanget af en kugle eller en bold. Det eneste du behøver er kuglens omkreds.")

$p=3.14159265

$loop=1
while $loop=1
_speak("Skriv omkreds af kuglen her","auto")
$o=InputBox("Rumfang Af Kugle","Skriv omkreds af kuglen her")

$r=($o/$p)/2
$v=4/3*$p*$r^3
$l=$v/1000

$o=round($o,2)
$r=round($r,2)
$v=round($v,2)
$l=round($l,2)
$msg="Kugle: Omkreds "&$o&", radius "&$r&", rumfang "&$v&", liter "&$l&"."
_speak($msg,"auto")
MsgBox(0,"Rumfang Af Kugle",$msg)
_speak("Vil du have det kopieret til udklipsholderen?","auto")
$copy=MsgBox(4,"Rumfang Af Kugle","Vil du have det kopieret til udklipsholderen?")
if $copy=6 then
$clip=clipput($msg)
if $clip=1 then _speak("Kopieret.","auto")
if $clip=0 then _speak("Fejl ved kopiering","auto")
endif
_speak("Vil du beregne en kugle mere?","auto")
$new=MsgBox(4,"Rumfang Af Kugle","Vil du beregne en kugle mere?")
if $new=7 then $loop=0
wend
_speak("Tak fordi du bruger Rumfang Af Kugle!","auto")
MsgBox(0,"Rumfang Af Kugle","Tak fordi du bruger Rumfang Af Kugle!")

; ----------------------------------------------------------------------------
; <AUT2EXE INCLUDE-END: D:\Autoit\Rumfang Af Kugle.au3>
; ----------------------------------------------------------------------------

