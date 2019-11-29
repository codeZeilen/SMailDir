Rack
interactiveDelete

	<rackOperationLabel: 'delete box from archive' inContextMenus: true>
	self mails ifNotEmpty: [
		self warn: 'This folder is not empty. I can not delete it.'. 
		^ false].
	self delete.