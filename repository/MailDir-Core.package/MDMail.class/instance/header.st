accessing
header

	^ header ifNil: [ | result |
		StandardFileStream readOnlyFileNamed: self file fullName do: [:stream |
			result := stream upToAll: ({Character cr . Character lf . Character cr . Character lf} collect: [:c | c asciiValue])].
		header := MailMessage from: result ]