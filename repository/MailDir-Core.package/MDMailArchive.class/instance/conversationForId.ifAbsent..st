indexing
conversationForId: id ifAbsent: absentLogic

	^ self protectIndexAccessDuring: [self conversationIndex at: id ifAbsent: absentLogic]