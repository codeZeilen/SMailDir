indexing
messageEntryForId: id ifAbsent: absentLogic

	^ self protectIndexAccessDuring: [self mailIdIndex at: id ifAbsent: absentLogic]