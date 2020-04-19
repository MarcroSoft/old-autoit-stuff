$uptime = dllcall("kernel32.dll","long","GetTickCount")
$uptime = $uptime[0]
$Hours = Floor($uptime/3600000)
$mins = Floor(($uptime-($hours*3600000))/60000)
$Secs = Floor(($uptime-(60000*$Mins)-(3600000*$Hours))/1000)
$Days = Floor($hours/24)
$Hours = Mod($Hours,24)
$daym = "days"
$hourm = "hours"
$minm = "minutes"
$secm = "seconds"
if $days = 1 Then $daym = "day"
if $hours = 1 Then $hourm = "hour"
if $mins = 1 Then $minm = "minute"
if $secs = 1 Then $secm = "second"
$ticks = dllcall("kernel32.dll","long","GetTickCount")
$ticks = $ticks[0]
msgbox(0,"uptime","up for "&$days&" "&$daym&", "&$Hours&" "&$hourm&", "&$mins&" "&$minm&" and "&$secs&" "&$secm&"That is "&$ticks&" ticks.")
