initialize-release
initializeSenderName

	| nameAndAddress |
	sender isEmptyOrNil ifTrue: [^ senderName := 'unkown'].
	[nameAndAddress := (MailAddressParser addressesAndNamePairsIn: sender) first]
		on: Error
		do: [:e | senderName := 'unretrievable'. ^ self].
	senderName := nameAndAddress first
		ifEmpty: [nameAndAddress second]
		ifNotEmpty: [nameAndAddress first].