Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AE3D8354BB
	for <lists+mjpeg-users@lfdr.de>; Sun, 21 Jan 2024 07:44:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1rRRZL-0007bQ-L1;
	Sun, 21 Jan 2024 06:44:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <randrianasulu@gmail.com>) id 1rRNop-000217-HL
 for Mjpeg-users@lists.sourceforge.net;
 Sun, 21 Jan 2024 02:44:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MtKOdKnklK1GaR6x2Bpn/Aq8FtaQ+qU17wtfzYAiCHY=; b=McA4IM2jf/5dn/IhhP4m5oiKjb
 nzPNV1bfkyGJEimwlF7sQtGeJHJxV6xtdvzIPu5YbkcyeXr0UtG93HOudhyP5Jwz1qTlR1jZY+KAc
 LS7rfuGx0FQnfCm65EiCardp7rJLvj5lNO7B5umGgqQd44B3ffBi37kMBhiUd6adHQms=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=MtKOdKnklK1GaR6x2Bpn/Aq8FtaQ+qU17wtfzYAiCHY=; b=f
 xA/GZ5JF8DciclyKCdnhOtZErIBpHZqotomtPKxnIkTc5IF/uQppnl4Q+ukQvYVWfgTZ3184D/I8S
 97thPlAWFzZU+3CjRBp1jAvGKbaM6iS3wlMmoaL6+tzKoO81ZMriwot3HrVHIQ6mx8eJK5R/R9KnU
 cBZh1n6/mIQpHItM=;
Received: from mail-il1-f172.google.com ([209.85.166.172])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rRNok-0002s0-Dq for Mjpeg-users@lists.sourceforge.net;
 Sun, 21 Jan 2024 02:44:19 +0000
Received: by mail-il1-f172.google.com with SMTP id
 e9e14a558f8ab-3606ebda57cso11259255ab.2
 for <Mjpeg-users@lists.sourceforge.net>; Sat, 20 Jan 2024 18:44:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1705805049; x=1706409849; darn=lists.sourceforge.net;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=MtKOdKnklK1GaR6x2Bpn/Aq8FtaQ+qU17wtfzYAiCHY=;
 b=BR/jvxAfLNJbIaoxNEf5Cnjt0sH9aB/Zi3zVmO0vWYr0gjx1va5NGziQSpKthjSL1H
 pAZlY33KCLG2M9PFDVjUb8yZF053u0auRMGaF68hhoB0BD4gCjlU0UdHdqLLA+jc6Xar
 rMqfbKeq45dyfxeyCZ3xEQKI+vrufICwS51I4UPcCdqI0lR2BdG5C9n28fJv5UXFt5QE
 wur0TiVSiMYn1nsvtcHlOdh+qVEokYb+Kii8Z50BYfkJM8P54yF9ptAExUd5KdHvvapR
 FY3tLj0w6+E5zGxOM0D9tW14LERtF+1GSzdWVJh+IjaRsVmfHp2XiSjsKD8l8BN1DNTL
 a8Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1705805049; x=1706409849;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=MtKOdKnklK1GaR6x2Bpn/Aq8FtaQ+qU17wtfzYAiCHY=;
 b=StjysMx7GNiEZ7e8hiaU4IbPcyBF1H84JE2RqfhZhgXtod3uZhZglookFi42EERvBK
 ANtAD3Eyijrk9JqVLRvSHhsfw+o38i+IBv6KoYd69zUYMM/GHOoaeJYTwFODA2MYBBTi
 P7knQtumjWdcC9ixUe9ofxc6rlF9L11NWvb20/ZbSAxV5GWruPm/lVUJnzohlktAKAIn
 qotmlg0H9m8BBtxFd+7GFt5c0TtFg2ljj5kLzy396ac9bv9ldN0+1UZOL0c57g1VDZC7
 bXrS3NSCIxMuBBdR2iO3dV6lu6ATgQ+R01QKicE7PO0DnWWwBsMFldXg8q3m/xzH7NMj
 NXeA==
X-Gm-Message-State: AOJu0YxHhD6n9ke1ABHM36MMqzsSDtY1QOj7pww5N/4k5V+52aMlFRhr
 FENXkKnbYWCWaOZ0DdeL7oV8U8Dp8hTVjr9f15nsqmGBR+fv29EyItcpAXhqT+FKK/ey/UYwkQL
 32+Xvj7trGwzN0VAZb/VDNUgHZ5H677ezSGE=
X-Google-Smtp-Source: AGHT+IFkNadb00KB/or97vDRzfqLDz3I6XHWta9+7lq+LUgrMokCLIDPM2DJvaHVW1mRiUeflem/vMNDJUipyOq3L5c=
X-Received: by 2002:a05:6e02:6c1:b0:361:ae9b:3218 with SMTP id
 p1-20020a056e0206c100b00361ae9b3218mr2751644ils.61.1705805049387; Sat, 20 Jan
 2024 18:44:09 -0800 (PST)
MIME-Version: 1.0
From: Andrew Randrianasulu <randrianasulu@gmail.com>
Date: Sun, 21 Jan 2024 05:43:57 +0300
Message-ID: <CA+rFky5pNGoR2NeKkWpZS4i8dJvMpW2pXa1uqCeBFwyRxKAt2g@mail.gmail.com>
To: FFmpeg user questions <ffmpeg-user@ffmpeg.org>,
 Mjpeg-users@lists.sourceforge.net, 
 "Cinelerra.GG" <cin@lists.cinelerra-gg.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: According to this source (vlc) lpcm dvd audio supports lower
 frequencies like 44100/32000 hz - useful for direct dv transcoding for example
 .... https://github.com/videolan/vlc/blob/master/modules/codec/lpcm.c 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [randrianasulu[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.172 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.172 listed in list.dnswl.org]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rRNok-0002s0-Dq
Subject: [Mjpeg-users] LPCM in DVD - 44.1/32khz sample rate?
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
Content-Type: multipart/mixed; boundary="===============1037856832759925976=="
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

--===============1037856832759925976==
Content-Type: multipart/alternative; boundary="000000000000065f43060f6bb0df"

--000000000000065f43060f6bb0df
Content-Type: text/plain; charset="UTF-8"

According to this source (vlc) lpcm dvd audio supports lower frequencies
like 44100/32000 hz - useful for direct dv transcoding for example ....

https://github.com/videolan/vlc/blob/master/modules/codec/lpcm.c

see lines 524, 608

Does this mean that libavcodec/pcm-dvdenc.c can be trivially extended to
support those ?

Same question for mplex. (it only supports 48/96 khz lpcm audio).

I also found this table via mjpeg-users archives:

https://dvd.sourceforge.net/dvdinfo/lpcm.html

it lists dynamic range/gain (?) setting equations.

Not mplex nor ffmpeg support setting this to anything but hardcoded 0x80

This might be source of my "too loud" lpcm dvd experiments because I was
making lpcm file via cinelerra-gg's raw pcm output format (using libsndfile
internally).

--000000000000065f43060f6bb0df
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">According to this source (vlc) lpcm dvd audio supports lo=
wer frequencies like 44100/32000 hz - useful for direct dv transcoding for =
example ....<div dir=3D"auto"><br></div><div dir=3D"auto"><a href=3D"https:=
//github.com/videolan/vlc/blob/master/modules/codec/lpcm.c" rel=3D"noreferr=
er noreferrer noreferrer noreferrer" target=3D"_blank">https://github.com/v=
ideolan/vlc/blob/master/modules/codec/lpcm.c</a><br></div><div dir=3D"auto"=
><br></div><div dir=3D"auto">see lines 524, 608</div><div dir=3D"auto"><br>=
</div><div dir=3D"auto">Does this mean that libavcodec/pcm-dvdenc.c can be =
trivially extended to support those ?</div><div dir=3D"auto"><br></div><div=
 dir=3D"auto">Same question for mplex. (it only supports 48/96 khz lpcm aud=
io).</div><div dir=3D"auto"><br></div><div dir=3D"auto">I also found this t=
able via mjpeg-users archives:</div><div dir=3D"auto"><br></div><div dir=3D=
"auto"><a href=3D"https://dvd.sourceforge.net/dvdinfo/lpcm.html">https://dv=
d.sourceforge.net/dvdinfo/lpcm.html</a><br></div><div dir=3D"auto"><br></di=
v><div dir=3D"auto">it lists dynamic range/gain (?) setting equations.</div=
><div dir=3D"auto"><br></div><div dir=3D"auto">Not mplex nor ffmpeg support=
 setting this to anything but hardcoded 0x80</div><div dir=3D"auto"><br></d=
iv><div dir=3D"auto">This might be source of my &quot;too loud&quot; lpcm d=
vd experiments because I was making lpcm file via cinelerra-gg&#39;s raw pc=
m output format (using libsndfile internally).</div></div>

--000000000000065f43060f6bb0df--


--===============1037856832759925976==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1037856832759925976==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users

--===============1037856832759925976==--

