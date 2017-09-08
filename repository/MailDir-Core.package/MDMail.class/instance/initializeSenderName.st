initialize-release
initializeSenderName

	| nameAndAddress |
	sender isEmptyOrNil ifTrue: [^ senderName := 'unkown'].
	nameAndAddress := (MailAddressParser addressesAndNamePairsIn: sender) first.
	senderName := nameAndAddress first
		ifEmpty: [nameAndAddress second]
		ifNotEmpty: [nameAndAddress first].