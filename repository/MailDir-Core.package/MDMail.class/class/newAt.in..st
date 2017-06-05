as yet unclassified
newAt: file in: aBox

	^ self new
		addBox: aBox with: file;
		initializeHeaderInformation;
		yourself