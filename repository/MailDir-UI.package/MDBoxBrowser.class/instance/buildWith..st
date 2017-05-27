toolbuilder
buildWith: aBuilder

	| windowSpec folderListSpec window |

	windowSpec := aBuilder pluggableWindowSpec new
		model: self;
		label: 'mail browser';
		children: OrderedCollection new.
		
	folderListSpec := aBuilder pluggableTreeSpec new.
	folderListSpec 
		model: self;
		roots: #boxes;
		label: #elementNameOf:;
		hasChildren: #isNonEmptyBox:;
		getChildren: #elementsOfBox:;
		setSelected: #setSelectedEntryTo:;
		getSelected: #getSelectedEntry;
		dragItem: #drag:;
		dropAccept: #wantsDroppedObject:;
		dropItem: #drop:ontoBox:shouldCopy:;
		doubleClick: #doubleClickOn:;
		autoDeselect: false;
		menu: #generalMenu:;
		icon: #iconFor:;
		keyPress: #keyPressed:;
		setSelectedParent: #selectedParent:;
		setSelectedPath: #setSelectedPath:;
		columns: #(300 nil);
		frame: (0@0 corner: 1@1).
	windowSpec children add: folderListSpec.
	
	window := aBuilder build: windowSpec.
	boxes size = 1 ifTrue: [self changed: #expandRootsRequested].
	^ window
