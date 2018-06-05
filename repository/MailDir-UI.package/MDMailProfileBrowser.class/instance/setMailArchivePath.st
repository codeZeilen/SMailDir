actions
setMailArchivePath

	| directory |
	directory := UIManager default chooseDirectory: 'Select the root directory of the mail dir directory'.
	directory ifNotNil: [
		self currentProfile archive 
			ifNil: [ | flagSeparator |
				flagSeparator := UIManager default
					request: 'Please enter the flag separator of this mail dir directory'
					initialAnswer: ';'.
				flagSeparator ifNil: [^ false].
				flagSeparator := flagSeparator first.
				UIManager default inform: 'We will set up the initial archive. This can take several minutes'.
				self currentProfile archive: (MDMailArchive archiveIn: directory flagSeparator: flagSeparator).
				self currentProfile archive archiveName: self currentProfile profileName]
			ifNotNil: [
				(UIManager default confirm: 'Are you sure you want to change the archive root folder?')
					ifTrue: [self currentProfile archive fileDirectory: directory]]].
	self changed: #mailArchivePathLabel