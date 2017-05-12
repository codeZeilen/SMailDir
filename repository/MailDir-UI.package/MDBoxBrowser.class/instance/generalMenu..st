menu
generalMenu: aMenu

	self selectedElement menuOperations do: [:operation |
		self addMenuOperation: operation for: self selectedElement to: aMenu].

	^ aMenu