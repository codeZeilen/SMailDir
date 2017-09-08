initialize-release
initializeHeaderInformation

	subject := self header subject.
	date := self header date.
	recipients := self header to.
	cc := self header cc.
	messageId := self header messageId.
	sender := self header from.
	self initializeSenderName.
	header := nil. "To make space for other data"