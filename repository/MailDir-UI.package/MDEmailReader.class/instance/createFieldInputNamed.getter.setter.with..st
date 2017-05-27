as yet unclassified
createFieldInputNamed: fieldLabelGetter getter: fieldGetter setter: fieldSetter with: aBuilder

	| fieldPanel |
	fieldPanel := super 
		createFieldInputNamed: fieldLabelGetter 
		getter: fieldGetter 
		setter: fieldSetter 
		with: aBuilder.
	
	fieldPanel children do: [:c |
		c 
			borderWidth: 0; 
			readOnly: true; 
			color: #windowColorToUse; 
			indicateUnacceptedChanges: false].
	
	^ fieldPanel
	