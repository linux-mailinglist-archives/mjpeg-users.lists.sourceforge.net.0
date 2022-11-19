Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A65630C53
	for <lists+mjpeg-users@lfdr.de>; Sat, 19 Nov 2022 06:57:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1owGqw-0006u1-QI;
	Sat, 19 Nov 2022 05:57:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bernhard@griesbach.at>) id 1owGqv-0006tu-A7
 for mjpeg-users@lists.sourceforge.net;
 Sat, 19 Nov 2022 05:57:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:References:Cc:To:Subject:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2hIS1LfalBCjV0QeuHtDZWTLooGsV82d7AJXdJLs21I=; b=OWibXWfwn+Kna+2JUJgU3+c6dn
 fTC/XPkVCgdcBXGA3uLJ1F+YlszmQtY1PGpZ4T18Mm4hdP/U7iNGaiFIj3YGBKME3OcEvO5oO59pt
 l5u11rxmvAJXGE4djIhuaZsabIeDHxCkuz+BCIYIFQsn7FqlpqD7oa0VXuaV58iFuUkY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:References:Cc:To:Subject:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2hIS1LfalBCjV0QeuHtDZWTLooGsV82d7AJXdJLs21I=; b=P70pZ2Vu0+hlFU7hsKL/s5SfF3
 B5Qy0Z0sFKWXuiwJ/+glsplrq/gPjGWablWdn4W7dU8D+vbmRO7RBHJyKWVEzZsXZMLw4jKyc9YpV
 Wq36/kuNIvFYtOkrRfBrwKa5rfh30jl3jkYDhfQeTbI9gcwsp1KqKuk4m8o6xHGZyHzo=;
Received: from srv211.suspace.net ([176.28.0.211] helo=srv1.suspace.net)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1owGqr-00D7jf-BP for mjpeg-users@lists.sourceforge.net;
 Sat, 19 Nov 2022 05:57:21 +0000
Received: from srv1.suspace.net (localhost.localdomain [127.0.0.1])
 by srv1.suspace.net (Postfix) with ESMTP id 0577C1621E3;
 Sat, 19 Nov 2022 06:57:09 +0100 (CET)
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
 with ESMTP id WijhtU0essug; Sat, 19 Nov 2022 06:57:08 +0100 (CET)
Received: from [10.20.30.37] (193-83-160-115.oan.highway.a1.net
 [193.83.160.115])
 by srv1.suspace.net (Postfix) with ESMTPSA id 74F69161BF6;
 Sat, 19 Nov 2022 06:57:08 +0100 (CET)
Received-SPF: pass (srv1.suspace.net: connection is authenticated)
From: Bernhard Praschinger <bernhard@griesbach.at>
To: "Janos G. Komaromi" <janos@jankom.net>,
 Janos G Komaromi <janos@andraslinux.jgklinux.jankom.net>
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
 <c7673683-b952-979c-d167-f02070b896b0@griesbach.at>
 <b2717eb91f342c02257b644730c43ef436c6391b.camel@jankom.net>
 <20221020110308.2e94f862@andraslinux>
 <6a1c6526-dadb-81a5-d859-e1f8bfca9a39@griesbach.at>
 <20221023185829.289dd0bb@andraslinux>
 <d8370cfaaf94363ec31308fd504b394bc1987489.camel@jankom.net>
Message-ID: <6c25a2a5-5856-539d-5717-71dc5c430be0@griesbach.at>
Date: Sat, 19 Nov 2022 06:57:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 SeaMonkey/2.53.14
MIME-Version: 1.0
In-Reply-To: <d8370cfaaf94363ec31308fd504b394bc1987489.camel@jankom.net>
X-PPP-Message-ID: <166883742865.28325.8759874940286217339@srv1.suspace.net>
X-PPP-Vhost: griesbach.at
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  cd dowHallo, Janos G. Komaromi wrote: > Sorry,
 I'm back again.
 I still would like to do my video editing with > glav and sound. Consequently
 I did a lot of research and Gentoo Forum > message exchanges about alsa [...]
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: liu.se]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1owGqr-00D7jf-BP
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

cd dowHallo,

Janos G. Komaromi wrote:
> Sorry, I'm back again. I still would like to do my video editing with
> glav and sound. Consequently I did a lot of research and Gentoo Forum
> message exchanges about alsa and OSS. I tried to resolve the issue
> without turning to this mailing list community. Here is the latest
> situation, and now I'm asking for comments, suggestions.
> 
> After enabling /dev/dsp and making sure that alsa oss emulation is
> configured correctly - quote:
> 
> janos@andraslinux ~/save/tmp/videoDigitizing $ glav xcoded.avi
> ++: **ERROR: [lavplay] Error initializing Audio: Audio task died.
> Reason: Error: Soundcard fragment size unexpected
> ++: lavtools version 2.2.1
I get that error too.

> janos@andraslinux ~/save/tmp/videoDigitizing $ aoss glav xcoded.avi
> ++: **ERROR: [lavplay] Error initializing Audio: Audio task died.
> Reason: Error: Invalid argument - mapping audio buffer (consider using
> read/write instead of mmap)
> ++: lavtools version 2.2.1
> Unquote.
With the same options the same error message. It get's more descriptive 
if you add -v 2
Did you add -U so it uses the the Read/write mode instead of the mmap 
mode ? This helps me here to lavplay/glav does not crash.

Does your distribution use still ALSA ? My opensuse uses PulseAudio, 
using the padsp - PulseAudio OSS Wrapper instead of aoss, made lavplay 
play back the videos audio and sound. The command looked like this:
padsp lavplay file.avi -U

> Apparently something is wrong either with "fragment size". I could
> probably configure fragment size if I knew what lavplay expects; the
> loaded modules are:
> 
> snd_pcm_oss
> snd_mixer_oss
> or something is wrong with in the code of lavplay.
Could be, but I just enjoy a old Music Video from Marusha :-)

auf hoffentlich bald,

Berni the Chaos of Woodquarter

Email: bernhard@griesbach.at
www: http://www.lysator.liu.se/~gz/bernhard


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
