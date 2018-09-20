flags
flags

	"The following code is a performance optimization as this method gets called a LOT
	as it influences the mail icons. --pre"
	| fileName fileNameSize flagSeparatorIndex normalFlagIndex |
	fileName := self file name.
	fileNameSize := fileName size.
	flagSeparatorIndex := fileName indexOf: self flagSeparator asCharacter startingAt: (fileNameSize - 10). 
	normalFlagIndex := fileName indexOf: $2 startingAt: flagSeparatorIndex.
	
	"We add two to the index to skip the $2 and the $, characters --pre"
	^ fileName copyFrom: normalFlagIndex + 2 to: fileNameSize