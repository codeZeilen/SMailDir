profile form
getProfileName
	
	^ (self currentProfile ifNotNil: [:p | p profileName]) ifNil: ['']