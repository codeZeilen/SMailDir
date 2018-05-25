initialize-release
initialize

	self 
		boxes: Dictionary new;
		mailIdIndex: Dictionary new;
	 	conversationIndex: WeakKeyDictionary new.
		
	indexSemaphore := Mutex new.