mails
message

	| fileContents stream |
	stream := self file readStream.
	fileContents := stream contents.
	stream close.
	^ MailMessage from: fileContents.