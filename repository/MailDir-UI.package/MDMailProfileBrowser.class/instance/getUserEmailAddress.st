profile form
getUserEmailAddress
	
	^ (self currentProfile ifNotNil: [:p | p userEmailAddress]) ifNil: ['']