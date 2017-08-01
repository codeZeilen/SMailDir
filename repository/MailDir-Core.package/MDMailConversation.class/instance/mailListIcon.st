ui
mailListIcon

	^ ToolIcons iconNamed: 
		(self isDeletedFromSystem
			ifTrue: [#testRed] 
			ifFalse: [self isUnread ifTrue: [#testOrange] ifFalse: [#blank]])