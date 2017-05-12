instance creation
conversationsIn: aCollectionOfMails

	| newConversations archive |
	newConversations := Dictionary new.
	
	archive := aCollectionOfMails first box mailArchive.
	^ (aCollectionOfMails collect: [:m | archive conversationForId: m messageId ifAbsent: [self error: 'Mails are not indexed']]) asSet 
	