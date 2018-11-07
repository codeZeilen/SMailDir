drag and drop
acceptDroppingMorph: dropee event: evt inMorph: target

	(target isTextView and: [target getTextSelector = #messageText]) ifTrue: ["Someone wants to attach something"
		dropee passenger externalTransportRepresentation keysAndValuesDo: [:name :stream |
			self addAttachment: stream named: name].
		self changed: #messageText.
		^ true].
	
	(target isTextView and: [#(messageRecipient messageCC messageBCC) includes: target getTextSelector]) ifTrue: ["Someone wants to address the email"
		self addEmailAddress: dropee passenger emailAddress to: target getTextSelector.
		^ true].
	
	^ false