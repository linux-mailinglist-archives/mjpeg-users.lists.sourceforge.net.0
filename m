Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DF28285421E
	for <lists+mjpeg-users@lfdr.de>; Wed, 14 Feb 2024 05:52:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1ra7GI-0000US-18;
	Wed, 14 Feb 2024 04:52:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <randrianasulu@gmail.com>) id 1ra7GG-0000UK-Ey
 for Mjpeg-users@lists.sourceforge.net;
 Wed, 14 Feb 2024 04:52:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QVDzzEUp/sSRHg+JAfB5vK5+wBKsWidOuYPwuxqk7Xg=; b=gBgR+4W5t0ISvrvrcnnuvw+1uB
 llvppDugOcIpjnB1fB2WO6zwkywAAVoS/lAHaMzsPuEklVuIgdxqHGhO2wPsi+X/Qlg+cF2DJScWb
 DExVlftPHacXlLMdoCbGoBoOoafZkBDhD+MrFyjVTn7k8+0hPtbPyfLmqPJHojiw5vdM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=QVDzzEUp/sSRHg+JAfB5vK5+wBKsWidOuYPwuxqk7Xg=; b=Z
 yMDwnH5/TcAKICQLLJWL+7XOzIqqt2bdSRpOmq4SI5ibEWCPShBKiNaTzEaBPkDYGy8r7xFcJqtKI
 ggEe/54NLI3wnakvaUrmp9HdK1qmdIU47thLLs1Zl7y/yiQln6bnut2N6WAF7s47/WQSva4eHtZRU
 8B9h460/pzsRTw1o=;
Received: from mail-pl1-f176.google.com ([209.85.214.176])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ra7GF-00064v-5x for Mjpeg-users@lists.sourceforge.net;
 Wed, 14 Feb 2024 04:52:44 +0000
Received: by mail-pl1-f176.google.com with SMTP id
 d9443c01a7336-1d9b2400910so2822785ad.0
 for <Mjpeg-users@lists.sourceforge.net>; Tue, 13 Feb 2024 20:52:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1707886353; x=1708491153; darn=lists.sourceforge.net;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=QVDzzEUp/sSRHg+JAfB5vK5+wBKsWidOuYPwuxqk7Xg=;
 b=B7ZS2t1u47+w9g1YCYqcNA6nO0IcBsuBDsxYWiVVuPxhN7ZbILpdYpStoleYMbP2Hf
 M7zDrVrHH/USDkwxSpsIGNQe4wUoZKyYn7gDe2fd8WcOo1RGsc+PMFgJ+4gDusJB811g
 0KDt4cGgsJd/hTYpT1+vHKq1vx8nmEpGPC4qQ4bGFwFx5Y9lkbMX3GhU0kT+F4Qlz/Vz
 78cDkSLS4TJZ5/Rf5DSCIaIak3gGSi4QUxhuvj/5ufqvLINXAkN0jcOdDT/LqrfNKwdj
 f3teyeFa829DqYkNa7BluJx95CDbjaj31cD3YB5pHviWMwrvNkybAtNt+4MGCyBobSgE
 70qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707886353; x=1708491153;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=QVDzzEUp/sSRHg+JAfB5vK5+wBKsWidOuYPwuxqk7Xg=;
 b=hzV8rA+LBkoBDrXfEJg3xkiq9pj04p9zE5ocjLW6zXxCvCXtS5UDhAgor5uKwkAaE1
 VISvC4rmhL/77M6GmejXgVbbO6kTlhzXsdHaSbMsMDzwwn2+pFFT6l2kuskMwhk9YRK4
 yhwceryMI4Lu5i6qOl9l2OMRXFYpzBeXrH/FJjkTc5hAHLa3o4BrMJsn0KKUeAs7cv+3
 /WIH2Ph7wOs/GEGiZl1GaVyWiUdXNREVN51zkXsOwzc38ezb1g0m6m2QNF/fPgH781DX
 UBOV1dmL80OtkKG6q1aong1wrNWbYfTyzLj0W8QtGBa0rSYV8O4bo1V+w7SeVu3plGym
 FRJw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUgBazJbjx3R0XQF/FgdwteB1wp77Nm03fZlvKwXuwo5ogbQzQr/wM2nfkUoSL/Xs4o8Y5M8VyOJ0vWGeZ7j5jeSKTKrIGA/x0NSZhBdxQ14qI=
X-Gm-Message-State: AOJu0Yzn6gT/NCVmYDaTyb3hLxb87fXNTNNCBB0Kd/w7DWpflCVgMbAM
 70ggze8ankQYu1B4Pl3FjLsUfcQc8RICbSGdM+NMcacftv94i0ejzz18kBQ+jRbqwTROut+jufn
 /6VBxt04Qn0VvzWdUSMB0HWwQFDLaHzrZHYZh9A==
X-Google-Smtp-Source: AGHT+IHVxd2TXuuWCcYKilTHrIbw0kWii2Bk9UFqsWLfaaVCCaHSVoaBjkKzbcob5H5wl2sR6XxIrhoxl6x7xYOUpeY=
X-Received: by 2002:a17:902:e74d:b0:1d7:17e6:44fb with SMTP id
 p13-20020a170902e74d00b001d717e644fbmr1506586plf.32.1707886352826; Tue, 13
 Feb 2024 20:52:32 -0800 (PST)
MIME-Version: 1.0
From: Andrew Randrianasulu <randrianasulu@gmail.com>
Date: Wed, 14 Feb 2024 07:52:20 +0300
Message-ID: <CA+rFky5c=UqFRNH7Pbc6fCS4t4XYHdKenX54sQEmCd44K6UAZg@mail.gmail.com>
To: "Cinelerra.GG" <cin@lists.cinelerra-gg.org>, 
 MJPEG-tools user list <Mjpeg-users@lists.sourceforge.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Was looking for xing media software,
 found this little open-source
 utility printing info on mpeg audio files, including this rare multichannel
 extension! https://mp3guessenc.sourceforge.io/ Was looking for xing media
 software, found this little open-source utility printing info on mpeg audio
 files, including this rare multichannel extension! 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [randrianasulu[at]gmail.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.176 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.214.176 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1ra7GF-00064v-5x
Subject: [Mjpeg-users] OT: mp3guessenc
X-BeenThere: mjpeg-users@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: MJPEG-tools user list <mjpeg-users.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/mjpeg-users>,
 <mailto:mjpeg-users-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=mjpeg-users>
List-Post: <mailto:mjpeg-users@lists.sourceforge.net>
List-Help: <mailto:mjpeg-users-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/mjpeg-users>,
 <mailto:mjpeg-users-request@lists.sourceforge.net?subject=subscribe>
Reply-To: MJPEG-tools user list <mjpeg-users@lists.sourceforge.net>
Content-Type: multipart/mixed; boundary="===============1952991090197751562=="
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

--===============1952991090197751562==
Content-Type: multipart/alternative; boundary="00000000000060889d061150476e"

--00000000000060889d061150476e
Content-Type: text/plain; charset="UTF-8"

Was looking for xing media software, found this little open-source utility
printing info on mpeg audio files, including this rare multichannel
extension!

https://mp3guessenc.sourceforge.io/

--00000000000060889d061150476e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Was looking for xing media software, found this little op=
en-source utility printing info on mpeg audio files, including this rare mu=
ltichannel extension!<div dir=3D"auto"><br></div><div dir=3D"auto"><a href=
=3D"https://mp3guessenc.sourceforge.io/">https://mp3guessenc.sourceforge.io=
/</a><br></div></div>

--00000000000060889d061150476e--


--===============1952991090197751562==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1952991090197751562==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users

--===============1952991090197751562==--

