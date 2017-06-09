tests
testStoreSentMail

	| mail |
	mail := archive storeSentMail: self sentMailMessage.
 
	sentBox mails includes: mail.
	mail boxes includes: sentBox.
	
	self assert: ((sentBoxDirectory / 'cur') entries includes: mail file)  