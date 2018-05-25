private
isAlreadyInBox: targetBox
	
	^ (self boxes includes: targetBox) and: [targetBox mails includes: self]