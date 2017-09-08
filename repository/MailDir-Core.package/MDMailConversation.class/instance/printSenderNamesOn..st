printing
printSenderNamesOn: aStream

	| max senderNames |

	senderNamesString ifNil: [
		senderNames := self mails collect: [:mail | mail senderName].
		senderNames := (senderNames reject: [:s | s isEmpty]) asSet asArray.
		senderNamesString := senderNames joinSeparatedBy: ' and '.].
	
	max := 38.	
	aStream nextPutAll:  
		(senderNamesString size > max
			ifFalse: [senderNamesString]
			ifTrue: [(String streamContents: [:s | s nextPutAll: senderNamesString] limitedTo: max-2),'..'])