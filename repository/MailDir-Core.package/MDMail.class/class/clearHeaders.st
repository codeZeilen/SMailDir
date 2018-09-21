caching
clearHeaders

	self allInstancesDo: [:m | m header: nil]