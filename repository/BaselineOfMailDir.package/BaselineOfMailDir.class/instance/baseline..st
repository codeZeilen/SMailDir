baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				baseline: 'Rack' with: 
					[spec repository: 'github://hpi-swa/Rack:master/repository'].
			
			spec
				package: 'MailDir-Core';
				package: 'MailDir-Tests' with: [spec requires: #('MailDir-Core')];
				package: 'MailDir-UI' with: [spec requires: #('MailDir-Core' 'Rack')];
				yourself.
			spec
				group: 'default' with: #('MailDir-Core' 'MailDir-UI');
				group: 'tests' with: #('MailDir-Tests')];
				yourself