testing
isDeletedFromSystem
	
	^ self mails allSatisfy: [:m | m isDeletedFromSystem]