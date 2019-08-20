files
messageIdFor: aFile
	"This method is a performance improvement to circumenvent the full header parsing only to 
	determine the message id. At the same time this re-implements some of the parsing logic."

	| messageId line |
	StandardFileStream readOnlyFileNamed: aFile fullName do: [:stream |
		
		"Simulate header fields per line"
		line := ''.
		[stream atEnd or: [(line beginsWith: 'message-') or: [line beginsWith: 'Message-']]] whileFalse: [
			line := stream nextLine].
		
		stream atEnd ifTrue: ["No message-id found" ^ ''].
		
		"Simulate a simple form of header line continuation"
		messageId := line.
		[stream peek isSeparator not] whileFalse: [
			messageId := messageId , stream nextLine].
		^ (messageId copyAfter: $:) withBlanksTrimmed]