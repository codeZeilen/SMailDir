toolbuilder
createFieldInputNamed: fieldLabelGetter getter: fieldGetter setter: fieldSetter with: aBuilder

	| spec |
	spec := super createFieldInputNamed: fieldLabelGetter getter: fieldGetter setter: fieldSetter with: aBuilder.
	spec name: fieldGetter.
	^ spec