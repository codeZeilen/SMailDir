ui
mailListIcon

	^ ToolIcons iconNamed: ((self allMails anySatisfy: [:m | m isUnread ])
		ifTrue: [#testOrange]
		ifFalse: [#blank])