accessing
testPrintString
	
	self 
		assert: 'GitLab <gitlab@gitlab.com>' , String tab 
				, 'editable views | Access to project was granted' 		
		equals: messageEntry printString