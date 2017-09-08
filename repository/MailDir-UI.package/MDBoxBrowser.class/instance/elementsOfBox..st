mail list
elementsOfBox: aBoxOrConversation

	aBoxOrConversation isMailBox
		ifTrue: [| aBox |
				aBox := aBoxOrConversation.
				^ aBox subBoxes
					ifNotEmpty: [aBox subBoxes , {self createFakeBoxFor: aBox}]
					ifEmpty: [self mailsOfBox: aBox]].
			
	aBoxOrConversation isMailConversation
		ifTrue: [^ aBoxOrConversation mails sorted: [:a :b | a date > b date]].	
		
	^ #()