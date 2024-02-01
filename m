Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D71845EBD
	for <lists+mjpeg-users@lfdr.de>; Thu,  1 Feb 2024 18:40:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1rVb2x-00067E-1E;
	Thu, 01 Feb 2024 17:40:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <randrianasulu@gmail.com>) id 1rVb2v-000677-GI
 for Mjpeg-users@lists.sourceforge.net;
 Thu, 01 Feb 2024 17:40:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zmsHeNlykQ+u+W+yfkGWlzyGmaMOsRDxpgFChcCFF4I=; b=jw9pZr+ij54xLwqlu7XJDRXZXK
 Vm9jhclB6XlHay3mlOjV/Jbgu7PBNbmwFfiopXgQ8xqDkF/FqobHdIvSfTrxXPLQh8JCBykAfZMkn
 c720hOZZS8fjQTBdHB1u+ZgkvdoS5Xj/GMdMxB/Z7BAWCYwGXd+XWK01RXmP+yy/AHYw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=zmsHeNlykQ+u+W+yfkGWlzyGmaMOsRDxpgFChcCFF4I=; b=Z
 SS9x6dIQFWnFFskJHfrfPiOcFoM/drZVfSENiKcQy1B9nCqaDIAsxwy8gHxXJvNUQhC4HUz7XJz1h
 CnaRcez3ubhMIwYRJDNPb1WuvZ7w5kS6AUWx5U+x2TICQ6Yrs+Gj96bFK4d/OuQtqpV+wSn7w+HkS
 ZOvfVLgdpz4m6FcU=;
Received: from mail-pl1-f176.google.com ([209.85.214.176])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rVb2u-0000ce-B8 for Mjpeg-users@lists.sourceforge.net;
 Thu, 01 Feb 2024 17:40:17 +0000
Received: by mail-pl1-f176.google.com with SMTP id
 d9443c01a7336-1d8ef977f1eso9313775ad.0
 for <Mjpeg-users@lists.sourceforge.net>; Thu, 01 Feb 2024 09:40:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706809206; x=1707414006; darn=lists.sourceforge.net;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=zmsHeNlykQ+u+W+yfkGWlzyGmaMOsRDxpgFChcCFF4I=;
 b=WE57hKuBf0aWnQ75gcP5kjRqLSfb8un6WJY69f6T1Lz5G7O9AEgul9v2SeOi1ra3c3
 kP+D7gxY57AZqVJ07zh4s8Wkip/r5a632ToTRF6IBT1JtPRCwgjZSvRvypqzv2ztS5IR
 M5LQAUrXA6UYQ22HzT6FgGZM5GQJcvGdgqnf+9qcoXMgc06O40noxXAq1P+T66LaILsE
 O6X5y0kfT/v112OxNiIdaEDAScjLjGFQwIuugeDLuvK/x2f3iPtGkCxq2KFB9rbbANCw
 8DibZUqGYMdMbjpTtJQYF41QrkVqnVvdZk5xS1//SaP7hFUHvI1BzviYEzrvt7T4Qs8m
 wSDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706809206; x=1707414006;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=zmsHeNlykQ+u+W+yfkGWlzyGmaMOsRDxpgFChcCFF4I=;
 b=hFieh/zLnTcr7xPDfXeKcuZu/jlHI4Lj12FIFvdy17i0BjvVZUpQn5o7wwIYBKakwL
 8/7iqa+s959/+60p0raZ34fs6ypu6c3XYuidf3Scndn07PVJQrNnJsy/M2vxGCzLKVy1
 NzESz3/ob9kPUD+otcTUQNRH11t8qoTA6sUQUy7KSUZIh9FzFSpRUN/CooX27BdNcppU
 10MvLM90YpyPn/duv6Gt4eWzSb8UiFEjvPeQpThA83SsJsNmr/diDHvbyihnkTqDoR0I
 oHTaU0xL6j0Yqx0uHktY4cDZkZuchx0z3WJ//z9/nAwIPZWtxxOBxeHY5fCY5E6Z2pKN
 7lNg==
X-Gm-Message-State: AOJu0YyBLBFadhSvo5dffMs8qYW3AQy+XQXWpPG6zA0fCMuisGY9frat
 zvk8zl1rNw5dPMZRJ1tpcTtVjtS40vYb5oZtgEIZ2AYXxrFQmw3AbO0p+o58Sc3hB5kJMpwFu19
 9wU7Q/kKK1ZjPOZVI3a7fOhZgwWv/mev0eZA=
X-Google-Smtp-Source: AGHT+IFelY6+3AeSSSJPBm35v6hjf2Eu4WUZO4DQMlzXuLlMyikw74KEM6Dt33U3/op1MsSklDM5ipuDJIpXvjvw2ic=
X-Received: by 2002:a17:902:7794:b0:1d0:b1f0:1005 with SMTP id
 o20-20020a170902779400b001d0b1f01005mr5258538pll.63.1706809205826; Thu, 01
 Feb 2024 09:40:05 -0800 (PST)
MIME-Version: 1.0
From: Andrew Randrianasulu <randrianasulu@gmail.com>
Date: Thu, 1 Feb 2024 20:39:52 +0300
Message-ID: <CA+rFky7prv9fPC44QjL7wCgoWPePMTYmRNWBY-TDT7F4ZBK3Xw@mail.gmail.com>
To: MJPEG-tools user list <Mjpeg-users@lists.sourceforge.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: just found this accidently
 https://github.com/DigitalCompactCassette/mjpegtools
 but commit history says it only works on Windows (where other DCC tools
 natively run) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.176 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [randrianasulu[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.214.176 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rVb2u-0000ce-B8
Subject: [Mjpeg-users] mjpegtools fork for Digital Compact Cassette (win)
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
Content-Type: multipart/mixed; boundary="===============8893590854040297730=="
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

--===============8893590854040297730==
Content-Type: multipart/alternative; boundary="00000000000069aa910610557cc2"

--00000000000069aa910610557cc2
Content-Type: text/plain; charset="UTF-8"

just found this accidently

https://github.com/DigitalCompactCassette/mjpegtools

but commit history says it only works on Windows (where other DCC tools
natively run)

--00000000000069aa910610557cc2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">just found this accidently<div dir=3D"auto"><br></div><di=
v dir=3D"auto"><a href=3D"https://github.com/DigitalCompactCassette/mjpegto=
ols">https://github.com/DigitalCompactCassette/mjpegtools</a><br></div><div=
 dir=3D"auto"><br></div><div dir=3D"auto">but commit history says it only w=
orks on Windows (where other DCC tools natively run)</div></div>

--00000000000069aa910610557cc2--


--===============8893590854040297730==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8893590854040297730==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users

--===============8893590854040297730==--

