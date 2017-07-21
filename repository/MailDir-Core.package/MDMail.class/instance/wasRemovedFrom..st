mails
wasRemovedFrom: aBox

	fileAccessMutex critical: [
		self entries removeKey: aBox 
			ifAbsent: [Transcript showln: 'Tried to remove message ' , self messageId ,
						' from a folder it was not in ' , aBox fileDirectory fullName]].