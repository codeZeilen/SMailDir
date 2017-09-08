as yet unclassified
rebuildAllInstances

	"MDMailArchive rebuildAllInstances"

	MDMailArchive allInstancesDo: [:a | 
		a
			initialize;
			initializeBoxes;
			indexConversations].
		
	MDMail clearHeaders.