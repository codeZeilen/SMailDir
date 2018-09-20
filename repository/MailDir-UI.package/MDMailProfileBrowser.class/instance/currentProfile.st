profile list
currentProfile

	^ self listOfProfiles at: self profileSelected ifAbsent: [nil]