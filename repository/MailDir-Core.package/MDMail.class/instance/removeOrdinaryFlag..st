flags
removeOrdinaryFlag: aCharacter

	(self flags includes: aCharacter) ifFalse: [^ self]. 
	
	^ self modifyFlags: [:flags | flags asSet copyWithout: aCharacter]