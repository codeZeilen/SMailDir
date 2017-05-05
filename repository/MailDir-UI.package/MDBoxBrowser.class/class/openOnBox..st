as yet unclassified
openOnBox: anEMailBox

	^ ToolBuilder default open: (self new
		boxes: { anEMailBox };
		yourself)