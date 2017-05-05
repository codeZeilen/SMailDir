as yet unclassified
newAt: file in: aBox

	^ self new
		file: file;
		box: aBox;
		initializeHeaderInformation;
		yourself