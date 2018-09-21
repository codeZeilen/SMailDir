private
wasMovedTo: aBox as: aFile

	fileAccessMutex critical: [self addBox: aBox with: aFile] 