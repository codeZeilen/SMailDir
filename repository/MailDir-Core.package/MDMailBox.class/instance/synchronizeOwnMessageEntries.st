synchronization
synchronizeOwnMessageEntries

	| currentFiles entriesToBeRemoved filesToBeAdded mailFiles rejectedEntries messageId |
	currentFiles := self allMessageFileEntries asSet.
	mailFiles := (self mails copy collect: [:m | 
					m fileIn: self ifAbsent: [self mails remove: m. nil]]) asSet reject: #isNil.
	entriesToBeRemoved := mailFiles difference: currentFiles.
	filesToBeAdded := currentFiles difference: mailFiles.
	rejectedEntries := self mails select: [:m | entriesToBeRemoved includesAnyOf: m files ].
	
	self mailArchive protectIndexAccessDuring: [
		rejectedEntries do: [:e | e wasRemovedFrom: self].
		self mails: (self mails copyWithoutAll: rejectedEntries).
	
		filesToBeAdded do: [:file | | entry |
			messageId := self messageIdFor: file.
			(self mailArchive hasMessageEntryForId: messageId)
				ifTrue: [
						entry := self mailArchive messageEntryForId: messageId ifAbsent: [].
						entry wasMovedTo: self as: file.
						self addMail: entry]
				ifFalse: [entry := MDMail newAt: file in: self.
						self addMail: entry.
						self mailArchive indexEntry: entry]]].
			
	Processor yield.
	self changed.
	