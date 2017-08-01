accessing
startMail

	| links |
	links := mails collect: [:m |
		{m messageId . m header fieldNamed: 'in-reply-to' ifAbsent: ['none'] . m}].

	^ (links detect: [:l | links noneSatisfy: [:l2 | l2 first = l second] ]) third