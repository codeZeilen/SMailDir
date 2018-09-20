toolbuilder
buildProfileFormWith: aBuilder

	| panel fields archivePathButton archiveButtons archiveSynchronizeButton |
	panel := aBuilder pluggablePanelSpec new
		model: self;
		children: OrderedCollection new;
		layout: #vertical;
		yourself.
	
	fields := #((getProfileName setProfileName: profileNameLabel)
			     (getUserEmailAddress setUserEmailAddress: userEmailAddressLabel)
			     (getSmtpServer setSmtpServer: smtpServerLabel)
			     (getSmtpServerPort setSmtpServerPort: smtpServerPortLabel)
			     (getSmtpUsername setSmtpUsername: smtpUsernameLabel)
			     (getSmtpPassword setSmtpPassword: smtpPasswordLabel)) collect: [:fieldSpec |
		aBuilder pluggableInputFieldSpec new
			model: self;
			getText: fieldSpec first;
			editText: fieldSpec second;
			help: fieldSpec third;
			yourself].
		
	archiveButtons :=  aBuilder pluggablePanelSpec new
		layout: #horizontal;
		children: OrderedCollection new.
	
	archivePathButton := aBuilder pluggableButtonSpec new
		model: self;
		label: #mailArchivePathLabel;
		action: #setMailArchivePath;
		yourself.
		
	archiveSynchronizeButton := aBuilder pluggableButtonSpec new
		model: self;
		label: #mailArchiveSynchronizeLabel;
		action: #synchronizeArchive;
		yourself.	
		
	archiveButtons children 
		add: archivePathButton;
		add: archiveSynchronizeButton.
		
	fields := fields , {archiveButtons}.
	
	fields := fields , (#(
				(getFlagSeparator setFlagSeparator: flagSeparatorLabel)
				(getTrashFolderName setTrashFolderName: trashFolderNameLabel)
			     	(getSentFolderName setSentFolderName: sentFolderNameLabel)
				(getArchiveFolderName setArchiveFolderName: archiveFolderNameLabel)) collect: [:fieldSpec |
		aBuilder pluggableInputFieldSpec new
			model: self;
			getText: fieldSpec first;
			editText: fieldSpec second;
			help: fieldSpec third;
			yourself]).

	panel children addAll: fields.
	
	^ panel