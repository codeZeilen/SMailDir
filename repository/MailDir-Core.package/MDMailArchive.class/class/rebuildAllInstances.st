as yet unclassified
rebuildAllInstances

	MDMailArchive allInstancesDo: [:a | 
		a
			initialize;
			initializeBoxes;
			indexConversations]