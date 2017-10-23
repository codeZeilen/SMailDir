toolbuilder
buildButtonBarSpecWith: aBuilder

	| buttonBarSpec |
	buttonBarSpec := super buildButtonBarSpecWith: aBuilder.
	
	buttonBarSpec children removeAll.
	
	buttonBarSpec children add: (aBuilder pluggableButtonSpec new
		model: self;
		action: #replyToMail;
		label: #replyMailButtonLabel;
		yourself).
		
	buttonBarSpec children add: (aBuilder pluggableButtonSpec new
		model: self;
		action: #replyAllToMail;
		label: #replyAllMailButtonLabel;
		yourself).
	
	^ buttonBarSpec