opening
openOnArchive: aMailArchive

	^ ToolBuilder default open: (self new
		boxes: aMailArchive boxes;
		yourself)