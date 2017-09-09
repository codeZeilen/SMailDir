access to mail object
getRecipient

	| recipients recipientsText |
	recipients := mailMessage to.
	recipientsText := mailMessage to asText.
	(MailAddressParser addressesIn: recipients) do: [:address | | start end block |
		start := recipients findString: address.
		end := (start + address size) - 1.
		block := [(soup search: (Person all search: address) printString) explore].
		recipientsText addAttribute: (PluggableTextAttribute evalBlock: block) from: start to: end ].
	
	^ recipientsText