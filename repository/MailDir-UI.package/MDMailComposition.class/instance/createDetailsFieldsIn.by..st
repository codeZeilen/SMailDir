toolbuilder
createDetailsFieldsIn: detailsPanelSpec by: aBuilder

	| fieldSpec labelSpec profileField |
	super createDetailsFieldsIn: detailsPanelSpec by: aBuilder.
	
	profileField := aBuilder pluggablePanelSpec new
		children: OrderedCollection new;
		frame: (LayoutFrame new
			leftFraction: 0 offset: 0;
			topFraction: 0 offset: 0;
			rightFraction: 1 offset: 0;
			bottomFraction: 0 offset: self lineHeight);
		yourself.
		
	labelSpec := aBuilder pluggableInputFieldSpec new
		model: self;
		indicateUnacceptedChanges: false;
		color: #windowColorToUse;
		readOnly: true;
		getText: #profilesLabel;
		frame: (0@0 corner: 0.2@1);
		yourself.
	profileField children add: labelSpec.
	
	fieldSpec := aBuilder pluggableListSpec new
		model: self;
		list: #profiles;
		getIndex: #selectedProfileIndex;
		setIndex: #selectedProfileIndex:;
		frame: (0.2@0 corner: 1@1);
		yourself.	
	profileField children add: fieldSpec.
	
	"Add selection of a mail profile here"
	detailsPanelSpec children addFirst: profileField.
	
