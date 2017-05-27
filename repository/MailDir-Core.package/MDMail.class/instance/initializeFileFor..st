initialize-release
initializeFileFor: aMessage

	| fileName folder |
	fileName := self generateFileNameFor: aMessage.
	folder := self box currentMessagesDirectory.
	folder fileNamed: fileName do: [:writeStream |
		writeStream nextPutAll: aMessage asSendableText].
	self file: (folder entryAt: fileName)