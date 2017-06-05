accessing
testSetUnreadUpdatesAllFileNames

	doubleMessageEntry setUnread.
	self assert: doubleMessageEntry hasBeenSeen not.
	doubleMessageEntry files do: [:f |
		self assert: (f name = (self doubleMailFileName1 allButLast) 
		or: [f name = (self doubleMailFileName2 allButLast)])].
	
	doubleMessageEntry files do: [:f |
		self assert: ((archive boxes collect: [:b | b newMessagesDirectory]) includes: f containingDirectory)].