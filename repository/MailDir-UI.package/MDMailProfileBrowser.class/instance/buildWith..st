toolbuilder
buildWith: aBuilder

	| profileForm profileList windowSpec |
	windowSpec := aBuilder pluggableWindowSpec new
		model: self;
		children: OrderedCollection new;
		label: 'Mail profiles';
		closeAction: #cleanUpNewProfile;
		yourself.
	
	profileList := self buildProfileListWith: aBuilder.
	profileList frame: (LayoutFrame new
			leftFraction: 0;
			topFraction: 0;
			rightFraction: 0.3;
			bottomFraction: 1).
	profileForm := self buildProfileFormWith: aBuilder.
	profileForm frame: (LayoutFrame new
			leftFraction: 0.3;
			topFraction: 0;
			rightFraction: 1;
			bottomFraction: 1).
	
	windowSpec children
		add: profileList;
		add: profileForm.
		
	^ aBuilder build: windowSpec

	