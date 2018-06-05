private
createTemporaryProfile
	
	^ MDMailProfile Profiles 
		detect: [:p | p profileName = self temporaryProfileName]
		ifNone: [MDMailProfile create profileName: self temporaryProfileName; yourself]
	