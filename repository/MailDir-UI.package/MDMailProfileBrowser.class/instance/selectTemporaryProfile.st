private
selectTemporaryProfile
	
	| temporaryProfileIndex |
	temporaryProfileIndex := self listOfProfiles findFirst: [:p | 
		p profileName = self temporaryProfileName].
	temporaryProfileIndex ~= 0 ifTrue: [self profileSelected: temporaryProfileIndex].