indexing
messageEntryForId: id ifAbsent: absentLogic

	^ self mailIdIndex at: id ifAbsent: absentLogic