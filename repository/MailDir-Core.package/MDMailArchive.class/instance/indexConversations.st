indexing
indexConversations 

	"This has to be done after loading all mails as we have to know about all emails
	before we can build up the conversations. --pre"
	self mailIdIndex values 
		do: [:m | self indexIntoConversationIndex: m]
		displayingProgress: 'Indexing conversations'