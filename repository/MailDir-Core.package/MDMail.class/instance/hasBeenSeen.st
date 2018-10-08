meta information
hasBeenSeen
	
	hasBeenSeen ifNil: [hasBeenSeen := self flags includes: $S].
	^ hasBeenSeen