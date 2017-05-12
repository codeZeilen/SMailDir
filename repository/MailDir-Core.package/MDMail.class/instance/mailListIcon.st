ui
mailListIcon

	^ ToolIcons iconNamed: 
		(self isUnread ifTrue: [#testOrange] ifFalse: [#blank])