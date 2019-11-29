indexing
conversationForId: id ifAbsent: absentLogic ifPresent: presentLogic

	^ self protectIndexAccessDuring: [
		self conversationIndex at: id 
			ifPresent: presentLogic
			ifAbsent: absentLogic]