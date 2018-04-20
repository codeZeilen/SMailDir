mails
moveTo: aBox
	"Moves the mail message completely to the new folder"

	fileAccessMutex critical: [ | newFile |	
		((self boxes includes: aBox) and: [aBox mails includes: self]) 
			ifTrue: [newFile := self entries at: aBox]
			ifFalse: [newFile := self copyFileTo: aBox].

		self boxes do: [:b | b removeMail: self].
		(self files copyWithout: newFile) do: [:f | f delete].
		self entries removeAll.
		aBox addMail: self.
		self addBox: aBox with: newFile]