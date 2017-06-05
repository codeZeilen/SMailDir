accessing
mailFileContent

	^ 'Delivered-To: patrick.rein@gmail.com
Received: by 10.202.229.6 with SMTP id c6csp137255oih;
        Thu, 13 Nov 2014 15:51:59 -0800 (PST)
X-Received: by 10.107.29.197 with SMTP id d188mr6376327iod.57.1415922719073;
        Thu, 13 Nov 2014 15:51:59 -0800 (PST)
Return-Path: <bounce+73ec63.947b4-patrick.rein=gmail.com@mg.gitlab.com>
Received: from so254-15.mailgun.net (so254-15.mailgun.net. [198.61.254.15])
        by mx.google.com with ESMTPS id ih15si1109047igb.60.2014.11.13.15.51.58
        for <patrick.rein@gmail.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Nov 2014 15:51:59 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce+73ec63.947b4-patrick.rein=gmail.com@mg.gitlab.com designates 198.61.254.15 as permitted sender) client-ip=198.61.254.15;
Authentication-Results: mx.google.com;
       spf=pass (google.com: domain of bounce+73ec63.947b4-patrick.rein=gmail.com@mg.gitlab.com designates 198.61.254.15 as permitted sender) smtp.mail=bounce+73ec63.947b4-patrick.rein=gmail.com@mg.gitlab.com;
       dkim=pass header.i=@mg.gitlab.com
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.gitlab.com; q=dns/txt;
 s=mailo; t=1415922718; h=Sender: Content-Transfer-Encoding:
 Content-Type: Mime-Version: Subject: Message-Id: To: Reply-To: From:
 Date: X-Feedback-Id; bh=Xx1NHgREi73lLaHPGKmaJ8+Tn5zR8sDxJIDKAjHEg74=; b=a8eYAj3yzNlQ0f9sKrCoMK6C6cNotJ/DllblPpDJ2kwtC+R3dp5gjz90JLVMBThAXog3ECUc
 U09xYmLv9eUZdvaSHLqwXEiJXyAZ3CDH3TBAzC8p/TXLVUzDjEIVJj1MVub3C2tKmJu4vibF
 nbgqxKkktH0QK4zngaqA++0MkeI=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=mg.gitlab.com; s=mailo;
 q=dns; h=X-Feedback-Id: Date: From: Reply-To: To: Message-Id: Subject:
 Mime-Version: Content-Type: Content-Transfer-Encoding: Sender;
 b=EMJ1nd/ilee0AjxovudCbfYU7SjE/Wjt5NWIexXnEAtc3yLSf/7fZo4+kOoJWUZSg2dIGE
 ZmbiskPLbycXl5orUM0/iM5Anp55pOXJ9TeiZrffj/DIZW9oUrLjttoSstIHODOqT81t37NC
 OGjsEyAA+dOmrgyM0b85vlU3cvhnk=
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mailgun.org; q=dns/txt; s=mg;
 t=1415922718; h=Sender: Content-Transfer-Encoding: Content-Type:
 Mime-Version: Subject: Message-Id: To: Reply-To: From: Date:
 X-Feedback-Id; bh=Xx1NHgREi73lLaHPGKmaJ8+Tn5zR8sDxJIDKAjHEg74=; b=Gh0UlDduxSaH+Cgp88Yoid27qLQZHk53MJ/rJPmkK6PKguXBhQEqY0Y4NlMJ+JB43W5SVktk
 bQSWuOWNNY3nRd2Q0CQV86yHKQWFNs3RDgliQHFw5V1zPswW6UaZr/i0E09zCroA7xoT8xlA
 Kh+RIgsze1Vdpwl1VEUMliTFGBQ=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=mailgun.org; s=mg; q=dns;
 h=X-Feedback-Id: Date: From: Reply-To: To: Message-Id: Subject:
 Mime-Version: Content-Type: Content-Transfer-Encoding: Sender;
 b=AYMbSj82bd9YbL5JNpkvsHMC+qTmbJpvTF6YI+jnG9/wZz4+tWOOqGRm6AZVg8iNqEegxN
 DorJlzmRkzQAcKUg5sXksrBSSD1OarF9m2X3g6hXzo0TdsnZzvhMcHFmKmsJG2Q2WDtDzF96
 r4L+i/5mt9ChUXW4BCgDTu6aLBtnI=
X-Feedback-Id: 531ee07d5a76185406c6480b:mailgun
Received: from mg.gitlab.com (Unknown [62.204.93.102]) by mxa.mailgun.org
 with ESMTP id 5465440e.7fdd6cb48848-in7; Thu, 13 Nov 2014 23:51:42 -0000
 (UTC)
Date: Thu, 13 Nov 2014 23:51:40 +0000
From: GitLab <gitlab@gitlab.com>
Reply-To: noreply@gitlab.com
To: patrick.rein@gmail.com
Message-Id: <5465440cb4a02_1108f88ea050778@monty.mail>
Subject: editable views | Access to project was granted
Mime-Version: 1.0
Content-Type: multipart/alternative; boundary="--==_mimepart_5465440cb29d9_1108f88ea0506d2"; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Mailgun-Sid: WyJlNjEyNCIsICJwYXRyaWNrLnJlaW5AZ21haWwuY29tIiwgIjk0N2I0Il0=
Sender: gitlab=gitlab.com@mg.gitlab.com
X-GmailLabel: \Important

----==_mimepart_5465440cb29d9_1108f88ea0506d2
Content-Type: text/plain;
 charset=UTF-8
Content-Transfer-Encoding: 7bit


You have been granted Developer access to project CDG Internal / editable views

https://gitlab.com/cdg/editable-views

----==_mimepart_5465440cb29d9_1108f88ea0506d2
Content-Type: text/html;
 charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html lang=3D"en">
<head>
<meta content=3D"text/html; charset=3Dutf-8" http-equiv=3D"Content-Type">=

<title>
GitLab
</title>
</meta>
</head>
<style>
  img {
    max-width: 100%;
    height: auto;
  }
  p.details {
    font-style:italic;
    color:#777
  }
  .footer p {
    font-size:small;
    color:#777
  }
</style>
<body>
<div class=3D"content">
<p>
You have been granted Developer access to project
</p>
<p>
<a href=3D"https://gitlab.com/cdg/editable-views">CDG Internal / editable=
 views
</a></p>

</div>
</body>
</html>

----==_mimepart_5465440cb29d9_1108f88ea0506d2--'