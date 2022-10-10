Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6063A5FB873
	for <lists+mjpeg-users@lfdr.de>; Tue, 11 Oct 2022 18:44:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1oiIN9-0004Jv-Eq;
	Tue, 11 Oct 2022 16:44:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <janos@andraslinux.jgklinux.jankom.net>)
 id 1ohy7q-0005tt-DC for mjpeg-users@lists.sourceforge.net;
 Mon, 10 Oct 2022 19:07:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uhg5Bnqc2BPdTyl2lXzve2dtpQ32YF+lw+/PrQTywZI=; b=UZMIxPHqYJwvXzshmWGaHuny70
 /IDSrY9ye+nlfyxaXm/ChOr67nZr73XP6XBrW95IY4xp/JRA3+5qgXgZWlkqcksNkIIZbLwOyBWBO
 kHpqPO43gUI1hzzXRhMzL9a8W1uUsulrfN1TDLUx7iI7cEOk8/RUUHkuvT9K9S4vo8J4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uhg5Bnqc2BPdTyl2lXzve2dtpQ32YF+lw+/PrQTywZI=; b=c4lDCUfuPXEAe067gvNrYYZQLT
 tsyyEMwqfSYDxNCt/VAKuQ3DIiW0bzM2jmNTcALNsUjFHC2l9/2JHbEZf66fFKFyzz9+dJvfJyilI
 UI8tEHGvpyQPDtziG7enXljlv1aWwNDrPeBY0mFqlMIkmy/6i8u0Y+Zp2rgI+W5kCviw=;
Received: from jgklinux.jankom.net ([198.74.55.83]
 helo=andraslinux.jgklinux.jankom.net)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1ohy73-0006he-6t for mjpeg-users@lists.sourceforge.net;
 Mon, 10 Oct 2022 19:07:17 +0000
Received: from andraslinux (jgklinux [10.8.0.1])
 by andraslinux.jgklinux.jankom.net (Postfix) with ESMTPS id 5F0DD4080E;
 Mon, 10 Oct 2022 14:51:19 -0400 (EDT)
Date: Mon, 10 Oct 2022 14:51:11 -0400
From: Janos G Komaromi <janos@andraslinux.jgklinux.jankom.net>
To: Bernhard Praschinger <bernhard@griesbach.at>
Message-ID: <20221010145111.65e78e39@andraslinux>
In-Reply-To: <2a17fa6e-a342-1cb9-f75c-03106b139078@griesbach.at>
References: <1f684654-8907-655c-b8c0-ed5bb8a15d82@griesbach.at>
 <9f4c6922fbd9940e07875116618012df8a133c6a.camel@jankom.net>
 <20221006092153.1d76bbd3@andraslinux>
 <74c98e9f-ac31-e318-8d53-f62c7705fdab@griesbach.at>
 <20221008095345.23b41f1a@andraslinux>
 <2a17fa6e-a342-1cb9-f75c-03106b139078@griesbach.at>
Organization: fitlet_andraslinux_home
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, Thanks, Bernie. One step closer. I recompiled mplayer,
 and now the command works. I now have a "video_svcd.m2v" file. It plays with
 mplayer but there is no sound. So the next step: how do I make a com [...]
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
X-Headers-End: 1ohy73-0006he-6t
X-Mailman-Approved-At: Tue, 11 Oct 2022 16:44:50 +0000
Subject: Re: [Mjpeg-users] glav error opening .avi file
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
Cc: mjpeg-users@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

Hi,

Thanks, Bernie. One step closer.
I recompiled mplayer, and now the command works. I now have a
"video_svcd.m2v" file. It plays with mplayer but there is no sound.
So the next step: how do I make a complete file, video and sound, that
glav will be able to process for editing?

Regards,

Janos

On Sat, 8 Oct 2022 19:15:04 +0200
Bernhard Praschinger <bernhard@griesbach.at> wrote:

> Hallo
> 
> Janos G Komaromi wrote:
> > Yes Bernie, that's it. My distro is Gentoo, which means it i
> > compiled from a Gentoo source. I believe I can recompile it with
> > the yuv4mpeg use flag. I'll post another message once I succeed
> > with the original command set just to close this thread. Thank you
> > for your help - Janos  
> One thing comes into my mind, it might be that the configure script 
> checks if the mjpegtools libraries are available and only activates
> it automatic if it finds them the Option that force yuv4mpeg is: 
> --enable-yuv4mpeg.


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
