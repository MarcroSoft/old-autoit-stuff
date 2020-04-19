guicreate("welcome to the memo program!")
guisetstate()
sleep(5000)
guidelete()
mainmenu()
func mainmenu()
while 1
$action = inputbox("main menu", "type 1 to create a new memo or update a memo, 2 to read a memo or 3 to delete a memo's contents")
if @error = 1 then confirmexit()
if $action = 1 then create()
if $action = 2 then read()
if $action = 3 then delete()
wend
endfunc
func confirmexit()
$confirm = msgbox(4, "confirm exit", "are you sure you want to exit? all saved memos will be lost.")
if $confirm = 6 then exit
endfunc
func create()
$memoname = inputbox("Add or update a memo", "Type a name for the memo you want to add or update")
if not isdeclared($memoname) then
msgbox(0, "New memo", "Memo " & $memoname & " is created.")
else
$overwrite = msgbox(4, "Modify memo", "A memo with the name " & $memoname & " already exists. Overwrite?")
if $overwrite = 7 then mainmenu()
endif
$memotext = inputbox("Memo", "Now type in the memo itself.")

if assign($memoname, $memotext, 2) then
msgbox(0, "Success", "The memo " & $memoname & " has been set to " & $memotext)
else
msgbox(0, "Error!", "There was an error while trying to complete the operation. Please try again.")
endif
endfunc
func read()
$memoname = inputbox("Read a memo", "Type name of the memo you want to read")
if isdeclared($memoname) then
$memo = eval($memoname)
msgbox(0, "Read a memo", "Here is the memo with name " & $memoname & ":" & @crlf & $memo)
else
msgbox(0, "Error!", "The memo " & $memoname & " does not exist!")
endif
endfunc
func delete()
$memoname = inputbox("Delete a memo", "Type name of the memo you want to delete")
if isdeclared($memoname) then
if assign($memoname, "", 2) then
msgbox(0, "Delete a memo", "Memo deleted.")
else
msgbox(0, "Error!", "There was an error while trying to complete the operation. Please try again.")
endif
else
msgbox(0, "Error!", "The memo " & $memoname & " does not exist!")
endif
endfunc
