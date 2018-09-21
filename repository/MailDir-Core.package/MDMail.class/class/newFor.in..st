instance creation
newFor: aMailMessage in: aBox
	
	^ self new
		addBox: aBox with: nil;
		initializeFileFor: aMailMessage;
		initializeHeaderInformation;
		yourself