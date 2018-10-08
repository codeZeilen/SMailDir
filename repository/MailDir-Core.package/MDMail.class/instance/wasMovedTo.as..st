private
wasMovedTo: aBox as: aFile

	fileAccessMutex critical: [
		self resetFlagsCaches.
		self addBox: aBox with: aFile] 