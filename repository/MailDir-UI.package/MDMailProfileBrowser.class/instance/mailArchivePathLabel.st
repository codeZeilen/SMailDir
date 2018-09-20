profile form
mailArchivePathLabel
	
	^ 'Set mail archive path (currently: ' 
		, (((self currentProfile ifNotNil: [:p | p archive]) ifNil: [^ '']) fileDirectory ifNil: [^ '']) localName , ')'