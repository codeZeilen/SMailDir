initialize-release
initialize

	super initialize.
	
	self entries: WeakIdentityKeyDictionary new.
	fileAccessMutex := Mutex new.