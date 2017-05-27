as yet unclassified
create

	| newProfile |
	newProfile := self basicNew
		initialize;
		yourself.
		
	self Profiles add: newProfile.
	^ newProfile 
	