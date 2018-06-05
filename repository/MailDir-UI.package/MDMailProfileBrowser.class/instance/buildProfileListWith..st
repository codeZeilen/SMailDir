toolbuilder
buildProfileListWith: aBuilder

	| panel addProfileButton list |
	panel := aBuilder pluggablePanelSpec new
		model: self;
		children: OrderedCollection new;
		yourself.
	
	list := aBuilder pluggableListSpec new
		model: self;
		frame: (LayoutFrame 
				fractions: (0@0 corner: 1@1)
				offsets: (0@0 corner: 0@self buttonBarHeight negated));
		list: #listOfProfiles;
		getIndex: #profileSelected;
		setIndex: #profileSelected:;
		yourself.
		
	addProfileButton := aBuilder pluggableButtonSpec new
		model: self;
		action: #addProfileButtonClicked;
		label: #addProfileButtonLabel;
		frame: (LayoutFrame 
				fractions: (0@1 corner: 1@1)
				offsets: (0@ self buttonBarHeight negated corner: 0@0));
		yourself.
		
	panel children
		add: list;
		add: addProfileButton.
	
	^ panel