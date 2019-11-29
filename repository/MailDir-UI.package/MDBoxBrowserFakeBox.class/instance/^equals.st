comparing
= anotherBox

	^ self class = anotherBox class and: [self originalBox = anotherBox originalBox]
	