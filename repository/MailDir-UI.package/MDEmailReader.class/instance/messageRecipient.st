access to mail object
messageRecipient

	| recipients recipientsText |
	recipients := mailMessage to.
	recipientsText := recipients asText.
	(MailAddressParser addressesIn: recipients) do: [:address | | start end block |
		start := recipients findString: address.
		end := (start + address size) - 1.
		block := [(soup search: (Person all search: address) printString) explore].
		recipientsText addAttribute: (PluggableTextAttribute evalBlock: block) from: start to: end ].
	
	^ recipientsText