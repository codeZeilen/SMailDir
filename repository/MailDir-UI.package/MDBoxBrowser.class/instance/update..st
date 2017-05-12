updating
update: anObject

	(self boxes includes: anObject) ifTrue: [
		hasSeenChange ifFalse: [
			hasSeenChange := true.
			(self future: self updateDelayInMS) doDelayedUpdate]]