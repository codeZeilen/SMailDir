accessing
addOrdinaryFlag: aCharacter

	(self flags includes: aCharacter) ifTrue: [^ self]. 
	
	^ self modifyFlags: [:flags | flags asSet , {aCharacter}]