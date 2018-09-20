profile form
getFlagSeparator
	
	^ ((self currentProfile ifNotNil: [:p | p archive]) ifNotNil: [:a | a flagSeparator]) ifNil: ['']
	