profile form
mailArchivePathLabel
	
	^ 'Set mail archive path (currently: ' , ((self currentProfile archive ifNil: [^ '']) fileDirectory ifNil: [^ '']) localName , ')'