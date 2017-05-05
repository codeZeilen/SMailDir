reading
initializeHeaderInformation

	self subject: self header subject.
	self date: self header date.
	self recipients: self header to.
	self cc: self header cc.
	self messageId: self header messageId.
	self sender: self header from.
	header := nil. "To make space for other data"