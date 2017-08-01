accessing
hostName

	^ ((self smtpServer findTokens: '.') last: 2) joinSeparatedBy: '.'