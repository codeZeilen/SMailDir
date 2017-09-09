toolbuilder
createFieldInputNamed: fieldLabelGetter getter: fieldGetter setter: fieldSetter with: aBuilder

	| field |
	field := super 
		createFieldInputNamed: fieldLabelGetter 
		getter: fieldGetter 
		setter: fieldSetter 
		with: aBuilder.
	
	field 
			borderWidth: 0; 
			readOnly: true; 
			color: #windowColorToUse; 
			indicateUnacceptedChanges: false.
	
	^ field	