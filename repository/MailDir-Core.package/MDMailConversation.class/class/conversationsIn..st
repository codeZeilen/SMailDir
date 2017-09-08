instance creation
conversationsIn: aCollectionOfMails

	| newConversations archive |
	aCollectionOfMails ifEmpty: [^ #()].
	
	newConversations := Dictionary new.
	
	archive := aCollectionOfMails first mailArchive.
	^ (aCollectionOfMails collect: [:m | 
		archive 
			conversationForId: m messageId 
			ifAbsent: [self error: 'Mails are not properly indexed']]) asSet
	