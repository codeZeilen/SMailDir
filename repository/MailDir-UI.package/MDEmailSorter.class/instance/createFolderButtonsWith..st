as yet unclassified
createFolderButtonsWith: aBuilder

	| leftColumn createButton rightColumn |
	createButton := [:index |
		aBuilder pluggableButtonSpec new
			model: self;
			action: ('buttonFolderAction' , index asString) asSymbol;
			label: ('buttonFolderLabel' , index asString) asSymbol].
	leftColumn := (aBuilder pluggablePanelSpec new
		children: OrderedCollection new;
		layout: #vertical;
		yourself).	
	leftColumn children addAll: ((1 to: self numberOfButtonsPerRow) collect: createButton).

	rightColumn := (aBuilder pluggablePanelSpec new
		children: OrderedCollection new;
		layout: #vertical;
		yourself).	
	rightColumn children addAll: ((self numberOfButtonsPerRow + 1  to: self numberOfButtonsPerRow * 2) collect: createButton).	
		
	^ {leftColumn . rightColumn}
	