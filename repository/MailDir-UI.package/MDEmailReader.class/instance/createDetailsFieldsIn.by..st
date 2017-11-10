toolbuilder
createDetailsFieldsIn: detailsPanelSpec by: aBuilder

	super createDetailsFieldsIn: detailsPanelSpec by: aBuilder.
	
	detailsPanelSpec children 
		insert: (self createFieldInputNamed: #dateLabel getter: #messageDateAndTime setter: #messageDateAndTime: with: aBuilder)
		before: detailsPanelSpec children size.