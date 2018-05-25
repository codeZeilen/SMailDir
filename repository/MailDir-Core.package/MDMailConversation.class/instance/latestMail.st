mails
latestMail

	| a allMails latestMail |
	allMails := self mails.
	latestMail := a first.
	allMails do: [:m | m date > latestMail date ifTrue: [latestMail := m]].
	^ latestMail