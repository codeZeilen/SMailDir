meta information
date

	| secondsSinceEpoch |
	secondsSinceEpoch := ((self file name findTokens: $.) first select: [:c | c isDigit])asNumber.
	^ DateAndTime unixEpoch + secondsSinceEpoch seconds