synchronization
synchronizeOwnMessageEntries

	| currentFiles entriesToBeRemoved filesToBeAdded mailFiles rejectedEntries |
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
			entry := MDMail newAt: file in: self.
			(self mailArchive hasMessageEntryForId: entry messageId)
				ifTrue: [entry := self mailArchive messageEntryForId: entry messageId ifAbsent: [].
						entry wasMovedTo: self as: file.
						self addMail: entry]
				ifFalse: [self addMail: entry.
						self mailArchive indexEntry: entry]]].
			
	self changed.
	Processor yield.