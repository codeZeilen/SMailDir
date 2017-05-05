flags
flags

	^ ((self file name findTokens: self flagSeparator) last copyAfter: $2) copyWithoutFirst
	