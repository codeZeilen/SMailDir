meta information
setUnread
	
	| oldFile |
	self removeOrdinaryFlag: $S.
	
	oldFile := self file.
	oldFile copyTo: self box newMessagesDirectory.
	self file: self box newMessagesDirectory / self file name.
	oldFile delete.