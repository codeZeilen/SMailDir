accessing
newMessageId

	| id |
	id := UUID new asString36.
	^ id , $@ , self hostName