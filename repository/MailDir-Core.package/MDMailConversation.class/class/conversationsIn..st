instance creation
conversationsIn: aCollectionOfMails

	| newConversations |
	newConversations := OrderedCollection new.
	
	aCollectionOfMails do: [:m | | tempConversation |
		tempConversation := self newAround: m in: m box mailArchive.
		tempConversation := newConversations 
			detect: [:c | c startMail = tempConversation startMail] 
			ifNone: [newConversations add: tempConversation. tempConversation].
		tempConversation addMail: m.].
	self flag: #TODO. "The m box mailarchive is not good --pre."
	
	^ newConversations 