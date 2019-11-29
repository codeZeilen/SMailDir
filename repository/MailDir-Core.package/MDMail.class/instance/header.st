accessing
header

	^ header ifNil: [ | result |
		StandardFileStream readOnlyFileNamed: self file fullName do: [:stream |
			result := stream upToAll: {Character cr . Character cr}].
		header := MailMessage from: result ]