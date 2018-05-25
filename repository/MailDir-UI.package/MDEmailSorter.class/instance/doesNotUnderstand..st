as yet unclassified
doesNotUnderstand: aMessage

	(aMessage selector beginsWith: 'buttonFolder')
		ifTrue: [ | buttonNumber |
			buttonNumber := (aMessage selector select: [:c | c isDigit]) join asNumber.
			(aMessage selector includesSubstring: 'Action')
				ifTrue: [^ self buttonActionFor: buttonNumber].
				
			(aMessage selector includesSubstring: 'Label')
				ifTrue: [^ self buttonLabelFor: buttonNumber].]
		ifFalse: [^ super doesNotUnderstand: aMessage]