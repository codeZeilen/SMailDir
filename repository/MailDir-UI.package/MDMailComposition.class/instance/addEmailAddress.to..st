private
addEmailAddress: emailAddress to: fieldName

	| existingEmailAddresses newAddresses |
	existingEmailAddresses := (self perform: fieldName) withBlanksTrimmed.
	newAddresses := existingEmailAddresses 
		ifEmpty: [emailAddress]
		ifNotEmpty: [existingEmailAddresses , ', ' , emailAddress].
	self perform: (fieldName , ':') asSymbol with: newAddresses.
	self changed: fieldName
	