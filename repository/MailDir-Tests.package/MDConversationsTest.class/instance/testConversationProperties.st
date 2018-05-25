tests
testConversationProperties
	
	| conversation |
	conversation := archive conversationForId: messageEntry messageId ifAbsent: [].
	
	self 
		assert: 'editable views | Access to project was granted' equals: conversation subject;
		assert:  'GitLab <gitlab@gitlab.com>' equals: conversation sender;
		assert: true equals: conversation isImportant;
		assert: 'Slack, GitLab' equals: conversation senderNames;
		assert: 'GitLab' equals: conversation senderName
		
	