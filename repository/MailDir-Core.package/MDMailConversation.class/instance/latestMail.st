as yet unclassified
latestMail

	| c a |
	a := self mails.
	c := a first.
	self mails do: [:m | m date > c date ifTrue: [c := m]].
	^ c