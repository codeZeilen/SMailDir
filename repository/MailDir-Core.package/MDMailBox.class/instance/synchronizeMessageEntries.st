synchronization
synchronizeMessageEntries

	| currentFiles entriesToBeRemoved filesToBeAdded mailFiles |
	
	self subBoxes do: [:b | b synchronizeMessageEntries].
	self haltOnce.
	currentFiles := self allMessageFileEntries asSet.
	mailFiles := (self mails collect: [:m | m file]) asSet.
	entriesToBeRemoved := mailFiles difference: currentFiles.
	filesToBeAdded := currentFiles difference: mailFiles.
	
	self mails: (self mails reject: [:m | entriesToBeRemoved includes: m file]) asOrderedCollection.
	
	filesToBeAdded do: [:file | | entry |
		entry := MDMail newAt: file in: self.
		(self mailArchive hasMessageEntryForId: entry messageId)
			ifTrue: [entry := self mailArchive messageEntryForId: entry messageId ifAbsent: [].
					entry moveTo: self.
					entry file: file.]
			ifFalse: [self mails add: entry.
					self mailArchive indexEntry: entry.]].