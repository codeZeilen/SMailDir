reading
header

	^ header ifNil: [ | stream result |
		stream := self file readStream.
		result := [stream upToAll: {Character cr . Character lf . Character cr . Character lf}]
			on: InvalidUTF8 
			do: [stream 
					reset;
					converter: ISO88592TextConverter new; 
					upToAll: {Character cr . Character lf . Character cr . Character lf} ].
		stream close.
		header := MailMessage from: result ]
			