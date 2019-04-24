tests
testDoubleMessageFlags

	self assert: (doubleMessageEntry flags includesAllOf: #($F $S)).
	self assert: (doubleMessageEntry flags size = 2)