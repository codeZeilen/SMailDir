tests
testHeaderIsAlreadyIncluded

	self 
		assert: 'editable views | Access to project was granted' equals: messageEntry subject;
		assert: 'GitLab <gitlab@gitlab.com>' equals: messageEntry sender;
		assert: 'patrick.rein@gmail.com' equals: messageEntry recipients;
		assert: (DateAndTime year: 2014 month: 11 day: 13 hour: 23 minute: 51 second: 40) equals: messageEntry date;
		assert: self mailMessageId equals: messageEntry messageId;
		assert: '' equals: messageEntry cc