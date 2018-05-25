mails
moveTo: targetBox
	"Moves the mail message completely to the new folder"

	fileAccessMutex critical: [ | newFile |	
		(self isAlreadyInBox: targetBox)
			ifTrue: [newFile := self entries at: targetBox]
			ifFalse: [newFile := self copyFileTo: targetBox].

		self boxes do: [:b | b removeMail: self].
		(self files copyWithout: newFile) do: [:f | f delete].
		self entries removeAll.
		targetBox addMail: self.
		self addBox: targetBox with: newFile]