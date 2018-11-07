private
wantsDroppedMorph: dropee forAddressingIn: target
	
	^ target isTextView 
		and: [(dropee respondsTo: #passenger) 
		and: [dropee passenger respondsTo: #emailAddress]]	