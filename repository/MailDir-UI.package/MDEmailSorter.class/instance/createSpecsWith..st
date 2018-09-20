toolbuilder
createSpecsWith: aBuilder

	| children windowSpecs buttonPanel |
	windowSpecs := super createSpecsWith: aBuilder.
	
	children := windowSpecs children.
	windowSpecs children: OrderedCollection new.
	
	windowSpecs children add: (aBuilder pluggablePanelSpec new
		children: children;
		frame: (0@0 corner: 0.8@1);
		yourself).
		
	buttonPanel := (aBuilder pluggablePanelSpec new
		children: OrderedCollection new;
		layout: #proportional;
		frame: (0.8@0 corner: 1@1);
		yourself).
	windowSpecs children add: buttonPanel.
	
	buttonPanel children add: (aBuilder pluggableButtonSpec new
		model: self;
		action: #undo;
		label: 'Undo previous sorting';
		frame: (0@0 corner: 1@0.1);
		yourself).

	buttonPanel children add: (aBuilder pluggableButtonSpec new
		model: self;
		action: #skipMail;
		label: 'Skip';
		frame: (0@0.1 corner: 1@0.2);
		yourself).
		
	buttonPanel children add: (aBuilder pluggablePanelSpec new
		children: (self createFolderButtonsWith: aBuilder);
		layout: #horizontal;
		frame: (0@0.2 corner: 1@1);
		yourself).
		
	^ windowSpecs
		