$Answer = MsgBox(36,"Express Shutdown","Welcome to Express Shutdown!" & @CRLF & "The easiest way to shut down your computer!" & @CRLF & "Do you want to continue?")
Select
   Case $Answer = 6 ;Yes
showcodes()
   Case $Answer = 7 ;No
MsgBox(0,"Express Shutdown","OK! Bye!")
exit
EndSelect
func showcodes()
$Answer = MsgBox(36,"Express Shutdown","Do you want to see the shutdown codes? If you are new to this program or Autoit 3, I recommend that you choose yes.")
Select
   Case $Answer = 6 ;Yes
MsgBox(64,"Express Shutdown - Shutdown Code Help","The shutdown code is a combination of the following values:" & @CRLF & "0 = Logoff" & @CRLF & "1 = Shutdown" & @CRLF & "2 = Reboot" & @CRLF & "4 = Force" & @CRLF & "8 = Power down" & @CRLF & "32= Standby" & @CRLF & "64= Hibernate" & @CRLF & "" & @CRLF & "Add the required values together. To shutdown and power down, for example, the code would be 9 (shutdown + power down = 1 + 8 = 9)." & @CRLF & "" & @CRLF & "Standby or Hibernate are ignored if other codes are set. They are also ignored under Win9x." & @CRLF & "")
inputcode()
   Case $Answer = 7 ;No
inputcode()
EndSelect
endfunc
func inputcode()
global $code = InputBox("Express Shutdown", "Enter the shutdown code into this box", "", " m3")
if @error = 1 then
MsgBox(0,"Express Shutdown","OK! Bye!")
exit
endif
$code = int($code)
endfunc
$Answer = MsgBox(36,"Express Shutdown - Confirm Action","Are you really sure that you want to complete this action? The code you entered was " & $code & ".",5)
Select
   Case $Answer = 6  ;Yes
activate()
   Case $Answer = 7  ;No
MsgBox(0,"Express Shutdown","OK! Bye!")
exit
   Case $Answer = -1 ;Timeout
MsgBox(64,"Express Shutdown - Timeout","You did not click yes or no within 5 seconds, so your computer will not shut down." & @CRLF & "This timeout is just for security purposes.")
MsgBox(0,"Express Shutdown","OK! Bye!")
exit
EndSelect
func activate()
$result = shutdown($code)
if $result = 0 then
MsgBox(16,"Error!","The shutdown command failed!")
else
MsgBox(64,"Express Shutdown - Success","The command was activated!",2)
exit
endif
endfunc
