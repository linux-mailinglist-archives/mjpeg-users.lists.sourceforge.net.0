Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 638DA604EC9
	for <lists+mjpeg-users@lfdr.de>; Wed, 19 Oct 2022 19:34:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1olCxA-0001V7-5c;
	Wed, 19 Oct 2022 17:34:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bernhard@griesbach.at>) id 1olCx8-0001V1-Cx
 for mjpeg-users@lists.sourceforge.net;
 Wed, 19 Oct 2022 17:34:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=150evziepLxpAw1zUEkWN4S+xZumI1sqT/APIn/uAYo=; b=JDSifMo8HXdLEIJ/wJRYm2ZhTn
 3t+qHIBaTG+A6vVo4WHAc+B3VRElC3zqbZIjels91xW6GhSMEb57SwH+fUqKTxP4iOwk7mwr1XKck
 cjLAmfrU4/6tKg6t+JtFenZ+6i1926I3cj0INMq/fsqY6pIDy8kScEH/bpLt9emdYAw0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=150evziepLxpAw1zUEkWN4S+xZumI1sqT/APIn/uAYo=; b=YEWICA1aphiFfXzBZJAczJrJLX
 gvgDzcxYvK3Luu9Ww2CfaSjG/JR5dYl+j1qNUAELwPOaP+2BjXFvna8lm//x6utWA77FW6KXsqflc
 Yrds2m1GkNtXGxuIx3PfmQt/V+ykydFxCHEGJu5Do2SpFMIifjyVb1+slzOwDd7nN+ag=;
Received: from srv211.suspace.net ([176.28.0.211] helo=srv1.suspace.net)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1olCx6-00A2l7-FT for mjpeg-users@lists.sourceforge.net;
 Wed, 19 Oct 2022 17:34:02 +0000
Received: from srv1.suspace.net (localhost.localdomain [127.0.0.1])
 by srv1.suspace.net (Postfix) with ESMTP id 4ECBC162A90;
 Wed, 19 Oct 2022 19:33:51 +0200 (CEST)
Authentication-Results: srv1.suspace.net;
 spf=pass (sender IP is 127.0.0.1) smtp.mailfrom=bernhard@griesbach.at
 smtp.helo=srv1.suspace.net
Received-SPF: pass (srv1.suspace.net: localhost is always allowed.)
 client-ip=127.0.0.1; envelope-from=bernhard@griesbach.at;
 helo=srv1.suspace.net; 
X-Spam-Flag: NO
X-Spam-Score: -2.901
X-Spam-Level: 
X-Spam-Status: No, score=-2.901 tagged_above=-9999 required=2
 tests=[ALL_TRUSTED=-1, BAYES_00=-1.9, NICE_REPLY_A=-0.001,
 SPF_PASS=-0.001, URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Received: from srv1.suspace.net ([127.0.0.1])
 by srv1.suspace.net (srv1.suspace.net [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Azkiv5EIfMYK; Wed, 19 Oct 2022 19:33:51 +0200 (CEST)
Received: from [10.20.30.37] (193-81-241-43.oan.highway.a1.net [193.81.241.43])
 by srv1.suspace.net (Postfix) with ESMTPSA id BB3FA162A8A;
 Wed, 19 Oct 2022 19:33:50 +0200 (CEST)
Received-SPF: pass (srv1.suspace.net: connection is authenticated)
To: Janos G Komaromi <janos@andraslinux.jgklinux.jankom.net>
References: <1f684654-8907-655c-b8c0-ed5bb8a15d82@griesbach.at>
 <9f4c6922fbd9940e07875116618012df8a133c6a.camel@jankom.net>
 <20221006092153.1d76bbd3@andraslinux>
 <74c98e9f-ac31-e318-8d53-f62c7705fdab@griesbach.at>
 <20221008095345.23b41f1a@andraslinux>
 <2a17fa6e-a342-1cb9-f75c-03106b139078@griesbach.at>
 <20221010145111.65e78e39@andraslinux> <20221015111424.55e183bf@andraslinux>
 <adbcae19-e903-fa75-359b-72f281f82d86@griesbach.at>
 <20221017145851.19351786@andraslinux>
 <346fe3b1-e2ef-1384-d819-e3a892a2a235@griesbach.at>
 <20221018152218.0b680513@andraslinux> <20221019121913.008f7f9d@andraslinux>
From: Bernhard Praschinger <bernhard@griesbach.at>
Message-ID: <c7673683-b952-979c-d167-f02070b896b0@griesbach.at>
Date: Wed, 19 Oct 2022 19:33:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 SeaMonkey/2.53.13
MIME-Version: 1.0
In-Reply-To: <20221019121913.008f7f9d@andraslinux>
X-PPP-Message-ID: <166620083094.28512.9012478870598414528@srv1.suspace.net>
X-PPP-Vhost: griesbach.at
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hallo, the workaround I did use was playing back the file
 without sound. So a command like that should work: glav -a 0 output.avi If
 that works you can go. If the /dev/dsp does not exist try loading the kernel
 module snd-pcm-oss using a command like that: modprobe snd-pcm-oss You should
 find than the /dev/dsp You can give glav than another try like the w [...]
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: liu.se]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1olCx6-00A2l7-FT
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

Hallo,

the workaround I did use was playing back the file without sound. So a 
command like that should work: glav -a 0 output.avi
If that works you can go.

If the /dev/dsp does not exist try loading the kernel module snd-pcm-oss 
using a command like that: modprobe snd-pcm-oss
You should find than the /dev/dsp
You can give glav than another try like the way before, please also add 
-v 2 for a more verbose output:
glav -v 2 output.avi

Janos G Komaromi wrote:
> Update:
> 
> I've installed alsa-oss and now glav does not die. But it is still not
> working properly. Here is the command and terminal output:
> 
> Quote:
> 
> janos@andraslinux ~/tmp $ aoss glav output.avi
> ++: ++ WARN: [lavplay] Unable to set negative priority for audio thread.
> ++: ++ WARN: [lavplay] Pthread Real-time scheduling for audio thread
> could not be enabled. ++: lavtools version 2.2.1
> ++: **ERROR: [lavplay] Error playing audio: Buffer overflow writing
> audio ++:
> 
> Unquote
> 
> The initial screen appears, and after about 4 second some noise comes
> out of the speakers, and soon after the whole thing dies. Same with
> lavplay. However, mplayer can play the almost 7 Gig output,avi
> correctly with sound.
> 
> Is the file too big? Any other methods?
> 
> Thanks for your attention,
> 
> Janos
> 

-- 
auf hoffentlich bald,

Berni the Chaos of Woodquarter

Email: bernhard@griesbach.at
www: http://www.lysator.liu.se/~gz/bernhard


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
