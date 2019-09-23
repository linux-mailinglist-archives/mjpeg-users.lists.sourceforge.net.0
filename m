Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AE250BB739
	for <lists+mjpeg-users@lfdr.de>; Mon, 23 Sep 2019 16:53:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1iCPiU-0000bm-CI; Mon, 23 Sep 2019 14:53:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <SRS0=PseyOr=XS=jankom.net=janos@eigbox.net>)
 id 1iCPiS-0000bd-Gm
 for mjpeg-users@lists.sourceforge.net; Mon, 23 Sep 2019 14:53:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:Content-Type:MIME-Version:Date:Message-ID:
 Subject:From:To:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9zGBEbvMM0KgbeaHmORFZ0BmwOp2RSlQlyEw35+HHl4=; b=S+m8ktgjib+EuURTLOWkU4bzoY
 QQUpylP6xaL9zshn5dy+OCfYzHABvIgGcL/cXR2YM+VgwZkqZGtARsg+s5YRn/ZpYL+UruxxKE7oG
 sB5cW8VKdzYumMyZaIn7pjOA4e0ARBJvI0Nf5MWiY3hh6gqDxVPfkGDavoSlVSDF0HJE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:Content-Type:MIME-Version:Date:Message-ID:Subject:From:To:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=9zGBEbvMM0KgbeaHmORFZ0BmwOp2RSlQlyEw35+HHl4=; b=J
 XWNtp8iK0bs9GavVHXJIxUzHVwzh+27jCebqL6FGEZJuFQHqIMhEyQNGUc7EZ8mfXhtqwwRFcE/yj
 u7XCoi1Sir68iSKe38brpn/p/dWf/jxiBTyLral4/mFNt0POpcKsBGPl1at6yXFqzj8ek4zp8G1je
 vUm0N1UoDZ8gZu68=;
Received: from bosmailout05.eigbox.net ([66.96.187.5])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iCPiN-004CRh-4G
 for mjpeg-users@lists.sourceforge.net; Mon, 23 Sep 2019 14:53:28 +0000
Received: from bosmailscan12.eigbox.net ([10.20.15.12])
 by bosmailout05.eigbox.net with esmtp (Exim) id 1iCPiG-00045x-So
 for mjpeg-users@lists.sourceforge.net; Mon, 23 Sep 2019 10:53:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=jankom.net; 
 s=dkim;
 h=Sender:Content-Type:MIME-Version:Date:Message-ID:Subject:From:To:
 Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9zGBEbvMM0KgbeaHmORFZ0BmwOp2RSlQlyEw35+HHl4=; b=C+rreIVKCSFMsUp+C3aoFJxVjo
 ZOBUbEQ0LZq+9JD+MnBYlh00uBtN40K+usGG/741/EKEUpweNeacTYeds9+P3cBjjIgit70r4BQHF
 YeG5kahtJXGOirMLG6o0PpOEsJPSNLNTU7FbFdAjuDmQWp+CIw3P7lf41v+Qxc+ZuSdLcDX0mhT8c
 ygIAB+L2JqmAF+xQXcxdxUb60hxtNNiN85O5Cjk5dyXtVPQmyC9ECM3OZhwuBCo67lXHLstp9uS0+
 DMTUUZ/RWXw/wsUAvI1H66E/elrWzf0GHmUeEQXj/cfiNrkfX04NgX8rVls5KzxK4U+KSrP83LNcc
 sCEoCBPA==;
Received: from [10.115.3.31] (helo=bosimpout11)
 by bosmailscan12.eigbox.net with esmtp (Exim) id 1iCPiG-0005WO-Qw
 for mjpeg-users@lists.sourceforge.net; Mon, 23 Sep 2019 10:53:16 -0400
Received: from bosauthsmtp19.yourhostingaccount.com ([10.20.18.19])
 by bosimpout11 with 
 id 52tD2100W0QhFXN012tGgC; Mon, 23 Sep 2019 10:53:16 -0400
X-Authority-Analysis: v=2.2 cv=RKvDJ8q+ c=1 sm=1 tr=0
 a=9UqFsMnAB6EOkiq4MrOclQ==:117 a=ts5pnJFdZjDuf5F3KiyVdg==:17
 a=J70Eh1EUuV4A:10 a=HTLh0dOYxcUA:10 a=r77TgQKjGQsHNAKrUKIA:9
 a=u0Se7ho3Jo0iq-zkNrAA:9 a=8xroQR79ROz7TGmC:21 a=6iUb_wx_6zxPCeLL:21
 a=QEXdDO2ut3YA:10 a=IzhepNUf_u6-hpv-KT8A:9 a=_W_S_7VecoQA:10
Received: from ip-173-133-165-16.spfdma.spcsdns.net ([173.133.165.16]:34666
 helo=[192.168.43.98]) by bosauthsmtp19.eigbox.net with esmtpa (Exim)
 id 1iCPiD-0003lY-82
 for mjpeg-users@lists.sourceforge.net; Mon, 23 Sep 2019 10:53:13 -0400
To: mjpeg-users@lists.sourceforge.net
From: Janos G Komaromi <janos@jankom.net>
Openpgp: preference=signencrypt
Autocrypt: addr=janos@jankom.net; prefer-encrypt=mutual; keydata=
 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
 UYUTIV2sdQ==
Message-ID: <72e946c8-6e65-1aac-b0ac-233142a3d85d@jankom.net>
Date: Mon, 23 Sep 2019 10:53:10 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-EN-UserInfo: 44a69bc9b6dca178582a57c3954217da:931c98230c6409dcc37fa7e93b490c27
X-EN-AuthUser: janos@jankom.net
X-EN-OrigIP: 173.133.165.16
X-EN-OrigHost: ip-173-133-165-16.spfdma.spcsdns.net
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [66.96.187.5 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [66.96.187.5 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iCPiN-004CRh-4G
Subject: [Mjpeg-users]  capture card not working with nvidia driver
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
Content-Type: multipart/mixed; boundary="===============3446152807520282121=="
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

This is a multi-part message in MIME format.
--===============3446152807520282121==
Content-Type: multipart/alternative;
 boundary="------------085397E51DDBC14F421B13D7"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------085397E51DDBC14F421B13D7
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello everyone,

My older machine with a cheap bttv capture card works well with nv
module driving GFORCE 2 MX card. Framebuffer and tiny penguin at boot up
shows, xawtv, glav, etc. works well for video capture and editing.
Recently I installed the proprietary nvidia driver (92.43.23). I had to
recompile the kernel (2.6.32.71) because the nvidia driver conflicted
with the kernel's drm and framebuffer modules. OK, now I have the full
capability of my 24" LCD display with the nvidia driver; AGP is fully
functional and glxgears runs fast. However, video capture is not
possible anymore: xawt screen is blue, but the setup screen lacks
sections starting with video source. I can play existing video files,
just capture capability is dead. So now I made my machine to dual boot
with nv driver or nvidia; I also switch xorg.conf at boot via rc.local
by sensing kernel version loaded.

I'm writing to this forum with a hope that somebody has some idea how to
make nvidia proprietary driver to work with video capture card. Maybe I
should go to some nvidia forum, but I trust the expertise of those who
follow mjpeg-users bulletin board.

One more info: the sysrcd-5.0.0 with 4.9.24 kernel works on my machine;
it loads the nouveau driver, screen resolution is identical with nvidia
driver. I tried to compile 2.6.33.1 kernel from source (the first kernel
that has the nouveau driver), but could not configure to include the
nouveau module. I thought that with the nouveau module, instead of
nvidia driver, capture would work again.

Thanks for your attention - Janos


--------------085397E51DDBC14F421B13D7
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <font size="+1">Hello everyone,<br>
      <br>
      My older machine with a cheap bttv capture card works well with nv
      module driving GFORCE 2 MX card. Framebuffer and tiny penguin at
      boot up shows, xawtv, glav, etc. works well for video capture and
      editing. Recently I installed the proprietary nvidia driver
      (92.43.23). I had to recompile the kernel (2.6.32.71) because the
      nvidia driver conflicted with the kernel's drm and framebuffer
      modules. OK, now I have the full capability of my 24" LCD display
      with the nvidia driver; AGP is fully functional and glxgears runs
      fast. However, video capture is not possible anymore: xawt screen
      is blue, but the setup screen lacks sections starting with video
      source. I can play existing video files, just capture capability
      is dead. So now I made my machine to dual boot with nv driver or
      nvidia; I also switch xorg.conf at boot via rc.local by sensing
      kernel version loaded.<br>
      <br>
      I'm writing to this forum with a hope that somebody has some idea
      how to make nvidia proprietary driver to work with video capture
      card. Maybe I should go to some nvidia forum, but I trust the
      expertise of those who follow mjpeg-users bulletin board.<br>
      <br>
      One more info: the sysrcd-5.0.0 with 4.9.24 kernel works on my
      machine; it loads the nouveau driver, screen resolution is
      identical with nvidia driver. I tried to compile 2.6.33.1 kernel
      from source (the first kernel that has the nouveau driver), but
      could not configure to include the nouveau module. I thought that
      with the nouveau module, instead of nvidia driver, capture would
      work again.<br>
      <br>
      Thanks for your attention - Janos<br>
      <br>
    </font>
  </body>
</html>

--------------085397E51DDBC14F421B13D7--


--===============3446152807520282121==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3446152807520282121==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users

--===============3446152807520282121==--

