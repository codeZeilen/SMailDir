meta information
isImportant
	
	isImportant ifNil: [isImportant := self flags includes: $F].
	^ isImportant
	