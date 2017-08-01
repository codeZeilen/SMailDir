initialize-release
initialize

	super initialize.
	
	self entries: IdentityDictionary new.
	fileAccessMutex := Mutex new.