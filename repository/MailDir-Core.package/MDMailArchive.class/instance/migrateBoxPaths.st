private
migrateBoxPaths
	
	self allBoxes do: [:b | 
		b fileDirectory containingDirectory = self fileDirectory ifFalse: [
			b fileDirectory: self fileDirectory / b fullBoxName]]