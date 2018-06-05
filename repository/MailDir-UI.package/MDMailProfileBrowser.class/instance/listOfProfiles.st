profile list
listOfProfiles
	
	MDMailProfile Profiles ifEmpty: [self createTemporaryProfile].
	^ MDMailProfile Profiles sorted: [:a :b | a profileName < b profileName]