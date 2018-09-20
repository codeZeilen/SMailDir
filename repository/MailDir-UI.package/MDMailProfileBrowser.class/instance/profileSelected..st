profile list
profileSelected: anIndex
	
	profileSelected := anIndex.
	#(profileSelected getProfileName getUserEmailAddress getSmtpServer getSmtpServerPort 
		getSmtpUsername getSmtpPassword mailArchivePathLabel getSentFolderName getTrashFolderName
		getArchiveFolderName getFlagSeparator)
			do: [:selector | self changed: selector]