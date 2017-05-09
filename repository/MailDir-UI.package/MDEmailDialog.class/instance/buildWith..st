toolbuilder
buildWith: builder

	| windowSpec senderLabelSpec subjectSpec bodySpec recipientSpec ccSpec detailsPart |
	windowSpec := builder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: self dialogTitle;
		children: OrderedCollection new;
		extent: 600 @ 400.
	
	detailsPart := builder pluggablePanelSpec new
		children: OrderedCollection new;
		layout: #vertical;
		yourself.
	windowSpec children add: detailsPart.	
		
	senderLabelSpec := builder pluggableInputFieldSpec new.
	senderLabelSpec
		model: self;
		color: #checkBoxColor;
		borderWidth: 0;
		readOnly: true;
		indicateUnacceptedChanges: false;
		getText: #getSender;
		frame: self fieldLayoutSpec.
	detailsPart children add: senderLabelSpec.
	
	subjectSpec := builder pluggableInputFieldSpec new.
	subjectSpec
		model: self;
		color: #checkBoxColor;
		borderWidth: 0;
		readOnly: true;
		font: (Preferences standardDefaultTextFont emphasized: 1);
		indicateUnacceptedChanges: false;
		getText: #getSubject;
		frame: self fieldLayoutSpec.
	detailsPart children add: subjectSpec.	
		
	recipientSpec := builder pluggableInputFieldSpec new.
	recipientSpec
		model: self;
		color: #checkBoxColor;
		borderWidth: 0;
		readOnly: true;
		indicateUnacceptedChanges: false;
		getText: #getRecipients;
		frame: self fieldLayoutSpec.
	detailsPart children add: recipientSpec.		
		
	ccSpec := builder pluggableInputFieldSpec new.
	ccSpec
		model: self;
		color: #checkBoxColor;
		borderWidth: 0;
		readOnly: true;
		indicateUnacceptedChanges: false;
		getText: #getCC;
		frame: self fieldLayoutSpec.
	detailsPart children add: ccSpec.		
		
	detailsPart 
		children: detailsPart children reversed;
		frame: (LayoutFrame new
				leftFraction: 0 offset: 0;
				topFraction: 0 offset: 0;
				rightFraction: 1 offset: 0;
				bottomFraction: 0 offset: detailsPart children size * self lineHeight).
		
	bodySpec := builder pluggableTextSpec new.
	bodySpec
		model: self;
		readOnly: true;
		borderWidth: 0;
		indicateUnacceptedChanges: false;
		getText: #getBody;
		frame: (LayoutFrame new
			leftFraction: 0 offset: 0;
			topFraction: 0 offset: 4 * self lineHeight;
			rightFraction: 1 offset: 0;
			bottomFraction: 1 offset: 0).
	windowSpec children add: bodySpec.		

	^ builder build: windowSpec 
	