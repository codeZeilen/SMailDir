flags
flags

	^ ((self file name copyAfter: self flagSeparator) copyAfter: $2) copyWithoutFirst
	