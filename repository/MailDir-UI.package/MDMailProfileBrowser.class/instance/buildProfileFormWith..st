toolbuilder
buildProfileFormWith: aBuilder

	| panel fields archivePathButton |
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

	archivePathButton := aBuilder pluggableButtonSpec new
		model: self;
		label: #mailArchivePathLabel;
		action: #setMailArchivePath;
		yourself.
		
	fields := fields , {archivePathButton}.
	
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