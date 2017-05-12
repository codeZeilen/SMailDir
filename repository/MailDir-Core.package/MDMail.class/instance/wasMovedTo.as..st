mails
wasMovedTo: aBox as: aFile

	self file = aFile ifTrue: [^ self].
	"self assert: (self box ~= aBox and: [self file containingDirectory fileExists: self file name]) not."
	
	fileAccessMutex critical: [
		self file: aFile.
		self box removeMail: self.
		aBox addMail: self]