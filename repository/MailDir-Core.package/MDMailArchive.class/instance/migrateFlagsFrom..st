private
migrateFlagsFrom: oldFlag
	
	self mailIdIndex values 
		do: [:m | m entries collect: [:file | 
					file containingDirectory / (file name replaceAll: oldFlag with: self flagSeparator)]]
		displayingProgress: 'Migrating mails'