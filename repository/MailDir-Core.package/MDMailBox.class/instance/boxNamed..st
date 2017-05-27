boxes
boxNamed: aRelativeBoxName

	| boxNameParts |
	boxNameParts := aRelativeBoxName findTokens: '.'.
	boxNameParts size = 0 ifTrue: [^ self].
	^ (self subBoxes detect: [:b | b boxName = boxNameParts first]) boxNamed: (boxNameParts allButFirst joinSeparatedBy: '.')