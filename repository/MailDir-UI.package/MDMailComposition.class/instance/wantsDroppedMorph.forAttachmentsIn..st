private
wantsDroppedMorph: dropee forAttachmentsIn: target
	
	^ target isTextView 
		and: [(dropee respondsTo: #passenger) 
		and: [dropee passenger respondsTo: #externalTransportRepresentation]]	