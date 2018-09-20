actions
buttonActionFor: anInteger 
	
	(self folders at: anInteger)
		ifNil: [ | allBoxes selectedFolder |
			allBoxes := (self mailArchive allBoxes) sorted: [:b1 :b2 | 
				b1 fullBoxName <= b2 fullBoxName]. 
			selectedFolder := UIManager default
				chooseFrom: (allBoxes collect: [:b | b fullBoxName]) 
				values: allBoxes.
			selectedFolder ifNil: [^ false].
			self folders at: anInteger put: selectedFolder.
			self moveMailTo: selectedFolder.
			self changed: ('buttonFolderLabel' , anInteger asString) asSymbol ]
		ifNotNilDo: [:folder | self moveMailTo: folder]