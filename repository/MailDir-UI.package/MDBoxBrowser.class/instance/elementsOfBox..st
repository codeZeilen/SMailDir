mail list
elementsOfBox: aBoxOrConversation

	aBoxOrConversation isMailBox
		ifTrue: [| conversations conversationsOrMails |
				aBoxOrConversation subBoxes
					ifNotEmpty: [^ aBoxOrConversation subBoxes , {self createFakeBoxFor: aBoxOrConversation}]
					ifEmpty: [
						conversations := MDMailConversation conversationsIn: aBoxOrConversation mails.
						conversationsOrMails := conversations collect: [:c | c size = 1 ifTrue: [c mails first] ifFalse: [c]].
						conversationsOrMails := conversationsOrMails sorted: [:a :b | a date > b date ].
						^ conversationsOrMails]].
			
	aBoxOrConversation isMailConversation
		ifTrue: [^ aBoxOrConversation mails sorted: [:a :b | a date > b date]].	
		
	^ #()
	
	