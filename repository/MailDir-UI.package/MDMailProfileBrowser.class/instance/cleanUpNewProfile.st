actions
cleanUpNewProfile
	
	(MDMailProfile Profiles anySatisfy: [:p | p profileName = self temporaryProfileName])
		ifTrue: [MDMailProfile Profiles remove: (MDMailProfile Profiles detect: [:p | p profileName = self temporaryProfileName])]