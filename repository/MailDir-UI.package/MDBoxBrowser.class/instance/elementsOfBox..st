mail list
elementsOfBox: aBoxOrConversation

	aBoxOrConversation isMailBox
		ifTrue: [| conversations conversationsOrMails aBox |
				aBox := aBoxOrConversation.
				aBox subBoxes
					ifNotEmpty: [^ aBox subBoxes , {self createFakeBoxFor: aBox}]
					ifEmpty: [
						conversations := MDMailConversation conversationsIn: aBox mails.
						conversationsOrMails := conversations collect: [:c | c size = 1 ifTrue: [c mails first] ifFalse: [c]].
						conversationsOrMails := conversationsOrMails sorted: [:a :b | a date > b date ].
						^ conversationsOrMails]].
			
	aBoxOrConversation isMailConversation
		ifTrue: [^ aBoxOrConversation mails sorted: [:a :b | a date > b date]].	
		
	^ #()