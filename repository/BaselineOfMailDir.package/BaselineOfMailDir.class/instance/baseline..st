as yet unclassified
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'MailDir-Core';
				package: 'MailDir-Tests' with: [spec requires: #('MailDir-Core')];
				package: 'MailDir-UI' with: [spec requires: #('MailDir-Core')];
				yourself.
			spec
				group: 'default' with: #('MailDir-Core' 'MailDir-UI');
				group: 'tests' with: #('MailDir-Tests')];
				yourself