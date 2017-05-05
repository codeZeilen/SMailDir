reading
date

	| secondsSinceEpoch |
	secondsSinceEpoch := (self file name findTokens: $.) first asNumber.
	^ DateAndTime unixEpoch + secondsSinceEpoch seconds