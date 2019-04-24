tests
testFlags

	self assert: (messageEntry flags includesAllOf: #($R $S)).
	self assert: (messageEntry flags size = 2)