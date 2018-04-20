updating
doDelayedUpdate

	Project current addDeferredUIMessage: [
		[self changed: #boxes] ensure: [hasSeenChange := false]].
	