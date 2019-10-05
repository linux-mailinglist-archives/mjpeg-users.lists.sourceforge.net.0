Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E7D3CC822
	for <lists+mjpeg-users@lfdr.de>; Sat,  5 Oct 2019 07:32:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1iGcgW-0002Iz-Gv; Sat, 05 Oct 2019 05:32:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <shadowlord@utanet.at>) id 1iGcgV-0002Iq-4p
 for mjpeg-users@lists.sourceforge.net; Sat, 05 Oct 2019 05:32:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WMyY8zW+SdMnnA2UDzxLS9PemIVpwJpEoqfryagm8rg=; b=gL7q2JUTy/8XUeyNlliiq+8w7A
 Ji77KU5gY5VIIqL4vs2QwqfbzPZNL2U1y+z5l1URzHweex2FnTL9B9gPJx/utcRt4XMyEdQSes4bJ
 QPw2SM8rgtT2C08yjaasQgC2g2g/jtdP2enEnliYxhtV5ocdXGeZIZI7T19mhvDw4NNk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WMyY8zW+SdMnnA2UDzxLS9PemIVpwJpEoqfryagm8rg=; b=QqhMS7KbQ80wCA0KXLeJU7DQwd
 GFepVotQfldyTwV6qKSOn7ny43ycTv79ZAqf65r1DRq130j0HRdvHkyNtoiXBWfWLwYegUbkAvc+6
 IyMTc+xJ0uJd8V5gh1myq9cqJ1IDKttT2cIuXO4Uitbx9xJWD22QJMZSqWRYJwaqJx8U=;
Received: from tatiana.utanet.at ([213.90.36.46])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iGcgR-00HKoR-CR
 for mjpeg-users@lists.sourceforge.net; Sat, 05 Oct 2019 05:32:51 +0000
Received: from pam-s.drei.host ([213.90.36.66])
 by tatiana.utanet.at with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <shadowlord@utanet.at>)
 id 1iGcgF-0007Pm-DB; Sat, 05 Oct 2019 07:32:35 +0200
Received: from 193-154-46-167.adsl.highway.telekom.at ([193.154.46.167]
 helo=[10.20.30.40])
 by pam-s.drei.host with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <shadowlord@utanet.at>)
 id 1iGcgF-0003ez-8i; Sat, 05 Oct 2019 07:32:35 +0200
To: MJPEG-tools user list <mjpeg-users@lists.sourceforge.net>,
 Janos G Komaromi <janos@jankom.net>
References: <72e946c8-6e65-1aac-b0ac-233142a3d85d@jankom.net>
From: Bernhard Praschinger <shadowlord@utanet.at>
Message-ID: <f9198f58-8ca5-9b96-b0ff-cc250bd328c3@utanet.at>
Date: Sat, 5 Oct 2019 07:32:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Firefox/52.0 SeaMonkey/2.49.4
MIME-Version: 1.0
In-Reply-To: <72e946c8-6e65-1aac-b0ac-233142a3d85d@jankom.net>
X-H3G-Authenticated-As: 2492d812503ae882f041a3ed11d939a345349e8a
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1iGcgR-00HKoR-CR
Subject: Re: [Mjpeg-users] capture card not working with nvidia driver
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

Hallo

> My older machine with a cheap bttv capture card works well with nv 
> module driving GFORCE 2 MX card. Framebuffer and tiny penguin at boot up 
> shows, xawtv, glav, etc. works well for video capture and editing. 
> Recently I installed the proprietary nvidia driver (92.43.23). I had to 
> recompile the kernel (2.6.32.71) because the nvidia driver conflicted 
> with the kernel's drm and framebuffer modules. OK, now I have the full 
> capability of my 24" LCD display with the nvidia driver; AGP is fully 
> functional and glxgears runs fast. However, video capture is not 
> possible anymore: xawt screen is blue, but the setup screen lacks 
> sections starting with video source. I can play existing video files, 
> just capture capability is dead. So now I made my machine to dual boot 
> with nv driver or nvidia; I also switch xorg.conf at boot via rc.local 
> by sensing kernel version loaded.
> 
> I'm writing to this forum with a hope that somebody has some idea how to 
> make nvidia proprietary driver to work with video capture card. Maybe I 
> should go to some nvidia forum, but I trust the expertise of those who 
> follow mjpeg-users bulletin board.

I'm just guessing but could it be that the nvidia driver expects a 
different format or calls so it displays the video ? When you write that 
you had problems with the drm and framebuffer modules, I guess that they 
expect different API/Header/calls. Did you try a different xawtv version ?

Did you try the different options xawtv offers ? (-fb, -xv/-noxv, 
-dga/-nodga and others )

> One more info: the sysrcd-5.0.0 with 4.9.24 kernel works on my machine; 
> it loads the nouveau driver, screen resolution is identical with nvidia 
> driver. I tried to compile 2.6.33.1 kernel from source (the first kernel 
> that has the nouveau driver), but could not configure to include the 
> nouveau module. I thought that with the nouveau module, instead of 
> nvidia driver, capture would work again.
> 
> Thanks for your attention - Janos


auf hoffentlich bald,

Berni the Chaos of Woodquarter

Email: shadowlord@utanet.at
www: http://www.lysator.liu.se/~gz/bernhard


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
