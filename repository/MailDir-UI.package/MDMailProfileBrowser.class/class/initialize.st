initialize-release
initialize
	"self initialize"

	TheWorldMenu registerOpenCommand: {'Mail Dir Profiles'. {[(Smalltalk at: #MDMailProfileBrowser) open]. #value}}