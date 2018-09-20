toolbuilder
buttonLabelFor: anIndex

	^ (self folders at: anIndex)
		ifNil: ['none']
		ifNotNil: [:folder | folder fullBoxName]