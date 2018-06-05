profile list
profileSelected: anIndex
	
	profileSelected := anIndex.
	#(profileSelected getProfileName getUserEmailAddress getSmtpServer getSmtpServerPort 
		getSmtpUsername getSmtpPassword mailArchivePathLabel getSentFolderName getTrashFolderName
		getArchiveFolderName)
			do: [:selector | self changed: selector]