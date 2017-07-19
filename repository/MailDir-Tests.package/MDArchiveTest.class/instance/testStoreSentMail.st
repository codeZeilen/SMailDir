tests
testStoreSentMail

	| mail |
	mail := archive storeSentMail: self sentMailMessage.
 
	self assert: (sentBox mails includes: mail).
	self assert: (mail boxes includes: sentBox).
	
	self assert: ((sentBoxDirectory / 'cur') entries includes: mail file)  