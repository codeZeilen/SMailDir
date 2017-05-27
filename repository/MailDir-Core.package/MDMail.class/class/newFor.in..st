as yet unclassified
newFor: aMailMessage in: aBox

	^ self new
		box: aBox;
		initializeFileFor: aMailMessage;
		initializeHeaderInformation;
		yourself