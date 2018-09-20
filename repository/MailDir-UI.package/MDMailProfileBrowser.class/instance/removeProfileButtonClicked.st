actions
removeProfileButtonClicked
	
	self currentProfile ifNil: [^ false].
	
	(UIManager default confirm: 'Do you really want to remove the profile ' translated , self currentProfile profileName)
		ifTrue: [	MDMailProfile removeFromSystem: self currentProfile]. 
	self changed: #listOfProfiles