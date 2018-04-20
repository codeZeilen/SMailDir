as yet unclassified
createDefaultArchive

	| testDirectoryName testDirectory archiveDirectory boxName boxDirectory trashBoxName trashBoxDirectory archiveBoxName archiveBoxDirectory sentBoxName sentBoxDirectory archive  |
	
	testDirectoryName := 'maildir'.
	testDirectory := FileDirectory default / testDirectoryName.
	testDirectory assureExistence.

	archiveDirectory := testDirectory.

	boxName := 'inbox'.
	boxDirectory := archiveDirectory / boxName.
	boxDirectory assureExistence.
	(boxDirectory / 'new') assureExistence.
	(boxDirectory / 'cur') assureExistence.

	trashBoxName := 'trash'.
	trashBoxDirectory := archiveDirectory / trashBoxName.
	trashBoxDirectory assureExistence.
	(trashBoxDirectory / 'new') assureExistence.
	(trashBoxDirectory / 'cur') assureExistence.

	archiveBoxName := 'archive'.
	archiveBoxDirectory := archiveDirectory / archiveBoxName.
	archiveBoxDirectory assureExistence.
	(archiveBoxDirectory / 'new') assureExistence.
	(archiveBoxDirectory / 'cur') assureExistence.

	sentBoxName := 'sent'.
	sentBoxDirectory := archiveDirectory / sentBoxName.
	sentBoxDirectory assureExistence.
	(sentBoxDirectory / 'new') assureExistence.
	(sentBoxDirectory / 'cur') assureExistence.

	archive := MDMailArchive archiveIn: archiveDirectory flagSeparator: $;.
	archive trashBoxName: trashBoxName.
	archive archiveBoxName: archiveBoxName.
	archive sentBoxName: sentBoxName.

	archive archiveName: '<default>'.
	
	^ archive