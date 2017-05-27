as yet unclassified
createDetailsFieldsIn: detailsPanelSpec by: aBuilder

	super createDetailsFieldsIn: detailsPanelSpec by: aBuilder.
	
	detailsPanelSpec children 
		insert: (self createFieldInputNamed: #dateLabel getter: #getDateAndTime setter: #setDate: with: aBuilder)
		before: detailsPanelSpec children size.