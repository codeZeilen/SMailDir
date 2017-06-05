accessing
newMailFileContent

	^ 'Delivered-To: patrick.rein@gmail.com
Received: by 10.202.229.6 with SMTP id c6csp132411oih;
        Thu, 13 Nov 2014 15:00:10 -0800 (PST)
X-Received: by 10.50.154.33 with SMTP id vl1mr2104267igb.48.1415919609991;
        Thu, 13 Nov 2014 15:00:09 -0800 (PST)
Return-Path: <bounce+fb6311.8e06-patrick.rein=gmail.com@slack.com>
Received: from so254-87.mailgun.net (so254-87.mailgun.net. [198.61.254.87])
        by mx.google.com with ESMTPS id l13si42133499ica.82.2014.11.13.15.00.09
        for <patrick.rein@gmail.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Nov 2014 15:00:09 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce+fb6311.8e06-patrick.rein=gmail.com@slack.com designates 198.61.254.87 as permitted sender) client-ip=198.61.254.87;
Authentication-Results: mx.google.com;
       spf=pass (google.com: domain of bounce+fb6311.8e06-patrick.rein=gmail.com@slack.com designates 198.61.254.87 as permitted sender) smtp.mail=bounce+fb6311.8e06-patrick.rein=gmail.com@slack.com;
       dkim=pass header.i=@slack.com;
       dmarc=pass (p=NONE dis=NONE) header.from=slack.com
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=slack.com; q=dns/txt; s=mailo;
 t=1415919609; h=Sender: Date: Message-Id: Content-Type: Mime-Version:
 From: Reply-To: Subject: To: X-Feedback-Id;
 bh=Mb6dwbkWLY1AeilujcCIhIfQmsoH5Q4va5XSb1TD9d4=; b=MShriaLL/XT1vP55pJsbvI9inKmjnrTrNXUZkn3JXrI+HcRffiDxxVYNGJCso5OOCugt7FqH
 5fRRH/9+ClmGJwEZOmVKOVMNfVjtKJuBZEdW6jUAzM4AntRm1bGFpSD5joBH5MoCBe8LMSKT
 7o6rcisfkC2fxtMYEMP23Vkj3cA=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=slack.com; s=mailo; q=dns;
 h=X-Feedback-Id: To: Subject: Reply-To: From: Mime-Version:
 Content-Type: Message-Id: Date: Sender;
 b=q/T6FPCgI1V+CU0vzscmzR6+Cw+DU5fpGklBfzd8Q8oJ5Q7KE4cNiY598eyoUzYT2M5x3T
 YF2U//Z3Mfy5k1ZaBaXvF5N8Mk1rH9n4RsXwBeXwA6e4A2/zfRt4NYGUM0AWoQPdIGlAcLC2
 KrpJgNX9g/eiaTKXW7v93Ff+VKJzg=
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mailgun.org; q=dns/txt; s=mg;
 t=1415919609; h=Sender: Date: Message-Id: Content-Type: Mime-Version:
 From: Reply-To: Subject: To: X-Feedback-Id;
 bh=Mb6dwbkWLY1AeilujcCIhIfQmsoH5Q4va5XSb1TD9d4=; b=OGYVWiek+Kk3MU1lzmmVdCNwb7FGvxFk0N47K5yVVgx2AUDC10mHNW23TsxxLS1SncFRB/7S
 YwostSTxnUixjREgViWq/BocvNUZHlQIjwKwXO5uw8iEAp1mgBhHnZwqdY3lC3YcGuz73Ifu
 /DU1qDWTW5AvOZMKvk/ITAaiQV8=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=mailgun.org; s=mg; q=dns;
 h=X-Feedback-Id: To: Subject: Reply-To: From: Mime-Version:
 Content-Type: Message-Id: Date: Sender;
 b=Fu3lT0V+HOdmPXJlaQaKi8Dya0Kx9xntrlIqqjJRiLBVziEcewQvQilkxr8LOmzi5uQ66f
 yscXgvPsqN8zdOWE+5uq4gD8KbHHnT1RSEGewF6jXiXDJXbI6BTvg2X0/wVOJP5mVawa9OSG
 EPWSwyVdHkMWOxHNA/4uUtwGcGegs=
X-Feedback-Id: 51fc4124fea39869d1d31bd1:mailgun
Received: from slack-www140.tinyspeck.com
 (ec2-184-73-55-119.compute-1.amazonaws.com [184.73.55.119]) by
 mxa.mailgun.org with ESMTP id 546537f0.506d430-in7; Thu, 13 Nov 2014
 23:00:00 -0000 (UTC)
Received: by slack-www140.tinyspeck.com (Postfix, from userid 33)	id
 C20CD25738; Thu, 13 Nov 2014 14:59:59 -0800 (PST)
To: patrick.rein@gmail.com
Subject: Asd has invited you to join CDG Labs on Slack
Reply-To: asd@gmail.com
In-reply-to: <5465440cb4a02_1108f88ea050778@monty.mail>
From: "Slack" <feedback@slack.com>
Mime-Version: 1.0
Content-Type: multipart/alternative; boundary="__slack_304307350__"
Message-Id: <20141113225959.C20CD25738@slack-www140.tinyspeck.com>
Date: Thu, 13 Nov 2014 14:59:59 -0800 (PST)
X-Mailgun-Sid: WyJjMzk2MSIsICJwYXRyaWNrLnJlaW5AZ21haWwuY29tIiwgIjhlMDYiXQ==
Sender: feedback@slack.com
X-GmailLabel: 

--__slack_304307350__
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Welcome

Once youve activated your account, you can sign in at
https://cdglabs.slack.com/signin, or enter "" as your team domain
when signing in from https://slack.com/signin.

--__slack_304307350__--'