private
generateFileNameFor: aMessage

	self flag: #TODO. "the generation of a UUID is a very poor substitute of getting the process id --pre".

	^ (WriteStream on: '')
		nextPutAll:	TimeStamp now asUnixTime asString;
		nextPutAll: '_';
		nextPutAll: TimeStamp now nanoSecond asString; "This does not guarantee a series of values --pre"
		nextPutAll: '.';
		nextPutAll: (UUID new asString select: [:c | c isDigit ]);
		nextPutAll: '.';
		nextPutAll: NetNameResolver localHostName;
		nextPutAll: ',U=123456'; "To signal the synchronization process that this is a new email --pre"
		nextPutAll: ',FMD5=123456'; "Also to signal the synchronization process that this is a new email --pre"
		nextPutAll: self box mailArchive flagSeparator asString , '2,';
		contents