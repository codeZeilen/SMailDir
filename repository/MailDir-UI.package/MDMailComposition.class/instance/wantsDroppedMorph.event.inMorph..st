drag and drop
wantsDroppedMorph: dropee event: evt inMorph: target

	^ (self wantsDroppedMorph: dropee forAttachmentsIn: target)
		or: [self wantsDroppedMorph: dropee forAddressingIn: target]
	
	