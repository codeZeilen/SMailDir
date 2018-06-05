profile form
setProfileName: aString

	self currentProfile profileName: aString asString.
	self currentProfile archive archiveName: aString asString.
	self changed: #getProfileName.