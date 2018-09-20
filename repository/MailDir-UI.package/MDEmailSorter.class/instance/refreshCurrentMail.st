private
refreshCurrentMail

	| nextMail |
	nextMail := self inbox mails 
		detect: [:mail | (self skippedMails includes: mail header messageId) not ] 
		ifNone: [^ UIManager default inform: 'You are done for now :)']. 
	self setCurrentMailTo: nextMail message.