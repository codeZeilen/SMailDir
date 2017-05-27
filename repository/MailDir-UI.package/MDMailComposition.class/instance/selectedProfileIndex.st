accessing
selectedProfileIndex

	^ selectedProfileIndex ifNil: [self selectedProfileIndex: 1. 1]