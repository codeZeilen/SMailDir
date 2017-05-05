mail list
doubleClickOn: anObject

	(anObject respondsTo: #openRackStandardMorph)
		ifFalse: [^ ToolSet default explore: anObject message]
		ifTrue: [
			anObject isEmail 
				ifTrue: [anObject setRead.
						^ anObject message openRackStandardMorph].
			anObject isMailBox ifTrue: [^ anObject openRackStandardMorph]]