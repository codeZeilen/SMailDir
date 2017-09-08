mail list
mailsOfBox: aBox

	| conversations conversationsOrMails mails oldMails |
	mails := aBox mails size > 200
		ifTrue: [ |deadline|
			deadline := (aBox mails collect: [:m | m date]) max - 24 weeks.
			oldMails := aBox mails select: [:m | m date < deadline ].
			aBox mails select: [:m | m date >= deadline ]]
		ifFalse: [aBox mails].
	
	conversations := MDMailConversation conversationsIn: mails.
	conversationsOrMails := conversations collect: [:c | 
		c size = 1 
			ifTrue: [c mails first] 
			ifFalse: [c]].
	conversationsOrMails := conversationsOrMails sorted: [:a :b | a date > b date ].
	
	^ aBox mails size > 200
		ifTrue: [conversationsOrMails , {MDBoxBrowserFakeBoxForOldMails new mails: oldMails}]
		ifFalse: [conversationsOrMails]