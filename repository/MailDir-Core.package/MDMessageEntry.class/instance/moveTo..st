as yet unclassified
moveTo: aBox

	(self box = aBox and: [self box mails includes: self]) ifTrue: [^ self].

	self box removeEntry: self.
	aBox addEntry: self.
	self box: aBox.