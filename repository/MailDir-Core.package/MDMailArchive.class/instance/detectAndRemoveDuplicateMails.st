maintenance
detectAndRemoveDuplicateMails

	self allBoxes 
		do: [:box | | duplicateGroups currentMails |
			duplicateGroups := (box allMessageFileEntries 
				groupBy: [:fileEntry | box messageIdFor: fileEntry])
				select: [:group | group size > 1].
			duplicateGroups do: [:group |
				currentMails := box mails asSet asArray select: [:m | group includes: (m fileIn: box)].
				(group copyWithout: (currentMails first fileIn: box)) do: [:file |
					file delete]]]
		displayingProgress: 'removing duplicate mails files'