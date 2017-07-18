mails
message

	| fileContents stream |
	[stream := self file readStream.
	fileContents := stream contents.
	stream close] 
		on: InvalidUTF8
		do: [stream := self file readStream.
			stream converter: ISO88591TextConverter new.
			fileContents := stream contents.
			stream close].
	^ MailMessage from: fileContents.