accessing
boxes

	^ boxes sorted: [:a :b | a boxName < b boxName]