public
storeRawConversation: specs in: box
	"
	
	#(
	('marcel.taeumel@hpi.de' 'patrick.rein@hpi.de'
		'Wie geht es so?'
		'Hallo Patrick. Wie kommst du voran?')
	
	'Mir geht es gut. Und selbst?'
	
	'Naja, wie es halt immer so ist. Dies und das.'
	
	'Das klingt doch gut. Weiter so!'
	
	'Hmmm... ja. Muss ja. :-)'
	
	'Hehe, genau.'
	
	'Jupp.'
	
	)
	"
	| msg subject time |
	time := DateAndTime now - 365 days - (Duration seconds: 365 days asSeconds atRandom).
	
	specs do: [:spec |
		msg := msg
			ifNotNil: [:m |
				time := time + (Duration seconds: 7 days asSeconds atRandom).
				(MailMessage replyFor: m)
					subject: 'Re: ', subject;
					from: m to;
					bodyContent: spec;
					yourself]
			ifNil: [
				subject := spec third.
				MailMessage new
					from: spec first;
					to: spec second;
					subject: subject;
					bodyContent: spec fourth;
					yourself].
	
		msg
			messageId: UUID new asString;
			dateTime: time.
	
		box storeMail: msg].