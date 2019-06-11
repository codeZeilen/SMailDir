opening
openOn: aMessage

	| newComposition |
	newComposition := self new on: aMessage; yourself.
	newComposition profiles 
		ifEmpty: [
			UIManager inform: 'There are no profiles yet. You can open one in the profile browser'
			MDMailProfileBrowser open]
		ifNotEmpty: [^ ToolBuilder default open: newComposition]
	