accessing
flagSeparator: aCharacter

	| oldSeparator |
	aCharacter isSeparator ifTrue: [^ false].
	oldSeparator := flagSeparator.
	flagSeparator := aCharacter.
	oldSeparator ~= flagSeparator ifTrue: [	self migrateFlagsFrom: oldSeparator].