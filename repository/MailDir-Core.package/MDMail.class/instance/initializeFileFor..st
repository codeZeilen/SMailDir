initialize-release
initializeFileFor: aMessage

	| fileName folder |
	fileName := self generateFileNameFor: aMessage.
	self assert: self boxes size = 1.
	folder := self boxes first currentMessagesDirectory.
	folder fileNamed: fileName do: [:writeStream |
		writeStream ascii.
		writeStream nextPutAll: aMessage asSendableText asByteArray].
	self addBox: self boxes first with: (folder entryAt: fileName)