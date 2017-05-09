updating
update: anObject

	(self boxes includes: anObject) ifTrue: [
		hasSeenChange ifFalse: [
			hasSeenChange := true.
			(self future: 1000) doDelayedUpdate]]