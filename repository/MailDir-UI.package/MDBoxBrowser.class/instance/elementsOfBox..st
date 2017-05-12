mail list
elementsOfBox: aBoxOrConversation

	aBoxOrConversation isMailBox
		ifTrue: [| conversations conversationsOrMails |
				conversations := MDMailConversation conversationsIn: aBoxOrConversation mails.
				conversationsOrMails := conversations collect: [:c | c size = 1 ifTrue: [c mails first] ifFalse: [c]].
				^ aBoxOrConversation subBoxes , (conversationsOrMails sorted: [:a :b | a date > b date ])].
			
	aBoxOrConversation isMailConversation
		ifTrue: [^ aBoxOrConversation mails sorted: [:a :b | a date > b date]].
		
	^ #()
	
	