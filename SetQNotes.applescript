#A script for quickly setting or changing the notes of selected cues.
#Set a hotkey and go wild

tell application "QLab3"
	set allCues to selected of workspace 1
	repeat with myCue in allCues
		set curNote to (notes of myCue)
		set curName to (q name of myCue)
		display dialog "Set note for: " & curName default answer curNote
		if button returned of result = "cancel" then
			return
		else
			set myNote to (text returned of result) as string
		end if
		set notes of myCue to myNote
	end repeat
end tell
