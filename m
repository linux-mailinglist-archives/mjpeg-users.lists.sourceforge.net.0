Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB3E604FC5
	for <lists+mjpeg-users@lfdr.de>; Wed, 19 Oct 2022 20:37:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1olDwN-0004Hi-Os;
	Wed, 19 Oct 2022 18:37:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <SRS0=jcKnue=2U=jankom.net=janos@eigbox.net>)
 id 1olDwM-0004Hb-6k for mjpeg-users@lists.sourceforge.net;
 Wed, 19 Oct 2022 18:37:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:MIME-Version:Content-Transfer-Encoding:
 Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GUV+a1t7Xy/sbCMHD6I1FjOtae4CUHfArevdBd1zXyo=; b=F7cgUCVYWatf/PIoYCWxT603Y+
 3ST2BYeumJmwDIO07MTQMecNmNmz99uDi5bVLm+DE3E8Fv4F5RCq7YonWgsRal8icbXteAy/tvB13
 C9h9HfV4Z5yiru/yU4RME54LpOYo5col0z9Q9tKlV1jcThDIPYzyd92OQM6NFTFoVtNs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GUV+a1t7Xy/sbCMHD6I1FjOtae4CUHfArevdBd1zXyo=; b=ZwWtOglrvha/jf443yfIdZ6VSU
 3+zt6qXt3o7LrKe7rjereldxghbiyIH9dFWWTpx7kP8eDYiItB6ZLMTRqcViGayorgwFdCah7NWP3
 EnoXJA/9BcSCEoGD5ITI+bnXWSSqOco3WjGf9RrtAX0x8L/HCf2X0fZKNg3CkJ9vwwK8=;
Received: from bosmailout03.eigbox.net ([66.96.190.3])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1olDwI-00A5s0-7x for mjpeg-users@lists.sourceforge.net;
 Wed, 19 Oct 2022 18:37:18 +0000
Received: from bosmailscan04.eigbox.net ([10.20.15.4])
 by bosmailout03.eigbox.net with esmtp (Exim) id 1olDwB-0001Gb-Uh
 for mjpeg-users@lists.sourceforge.net; Wed, 19 Oct 2022 14:37:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=jankom.net; 
 s=dkim;
 h=Sender:MIME-Version:Content-Transfer-Encoding:Content-Type:
 References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe
 :List-Post:List-Owner:List-Archive;
 bh=GUV+a1t7Xy/sbCMHD6I1FjOtae4CUHfArevdBd1zXyo=; b=f4FgHv7Ai+ra/UUT80J5iSdwyN
 AL8WYH0KljwU33DYHMln5OhYLl1qZPOa6CtW/4Sf1en1hBlG1z4JRC1RBScyzJbzswoAGOPQOlAnW
 QbcN1WtJheOyePHP6O3y6/rkV0/5ZQQdBRVX+ZHLb9TUEmhhh+4un4Erx7H9EOwAH5f7cb41m09nC
 L8rCK3HEz3GRViLmqza3zfPeXnO27MwiSKh04iGVNqksSCuoZjxGVBbboNkxtCVuZFTl6/L54xPoE
 U90iZQRDUerLj4anAVArsa4Y1AF1gL3LAM+1Ayyp2gMM+XXtkfA3WwcxQe8hpmXMfpcpSPwQ1zAPP
 kOeSFO1g==;
Received: from [10.115.3.33] (helo=bosimpout13)
 by bosmailscan04.eigbox.net with esmtp (Exim) id 1olDwB-0003vy-KX
 for mjpeg-users@lists.sourceforge.net; Wed, 19 Oct 2022 14:37:07 -0400
Received: from bosauthsmtp03.yourhostingaccount.com ([10.20.18.3])
 by bosimpout13 with 
 id Zud42801N03yW7601ud7wZ; Wed, 19 Oct 2022 14:37:07 -0400
X-Authority-Analysis: v=2.3 cv=H7JAP9Qi c=1 sm=1 tr=0
 a=6uKCkKhFq2wXOH2GoQX8aA==:117 a=WZ2b9ZndZ+D8KcjbTr4JTw==:17
 a=IkcTkHD0fZMA:10 a=Qawa6l4ZSaYA:10 a=n7f57Toc7zEA:10 a=jDPn5Ez8AAAA:8
 a=29JI8KS-J5A0RiU3l58A:9 a=QEXdDO2ut3YA:10 a=ICqJSPxzdIEA:10
 a=qBBZk9_c10KGGu05SxeP:22
Received: from 82.sub-174-192-2.myvzw.com ([174.192.2.82]:1905
 helo=[192.168.227.52]) by bosauthsmtp03.eigbox.net with esmtpa (Exim)
 id 1olDw7-0006Ux-UI; Wed, 19 Oct 2022 14:37:04 -0400
Message-ID: <b2717eb91f342c02257b644730c43ef436c6391b.camel@jankom.net>
From: "Janos G. Komaromi" <janos@jankom.net>
To: Bernhard Praschinger <bernhard@griesbach.at>, Janos G Komaromi
 <janos@andraslinux.jgklinux.jankom.net>
Date: Wed, 19 Oct 2022 14:36:58 -0400
In-Reply-To: <c7673683-b952-979c-d167-f02070b896b0@griesbach.at>
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
User-Agent: Evolution 3.44.4-0ubuntu1 
MIME-Version: 1.0
X-EN-UserInfo: 44a69bc9b6dca178582a57c3954217da:931c98230c6409dcc37fa7e93b490c27
X-EN-AuthUser: janos@jankom.net
X-EN-OrigIP: 174.192.2.82
X-EN-OrigHost: 82.sub-174-192-2.myvzw.com
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Thanks. Yes,
 glav works with -a 0. As far as /dev/dsp is concerned
 I may have to recompile kernel to include oss drivers. I'll keep on working
 the sound part, but for my most immediate editing tasks sound output is not
 that important. 
 Content analysis details:   (1.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [66.96.190.3 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: jankom.net]
 1.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
 [66.96.190.3 listed in dnsbl-1.uceprotect.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1olDwI-00A5s0-7x
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

Thanks. Yes, glav works with -a 0.

As far as /dev/dsp is concerned I may have to recompile kernel to
include oss drivers. I'll keep on working the sound part, but for my
most immediate editing tasks sound output is not that important.

Thanks again for all you support and also for Stephen's idea of ffmpeg
method of simmply cutting out a section of the original (compressed)
.avi file.

Best to all,

Janos
PS - please add my other email address
janos@andraslinux.jgklinux.jankom.net
to members of your mailing list.

On Wed, 2022-10-19 at 19:33 +0200, Bernhard Praschinger wrote:
> Hallo,
> 
> the workaround I did use was playing back the file without sound. So
> a 
> command like that should work: glav -a 0 output.avi
> If that works you can go.
> 
> If the /dev/dsp does not exist try loading the kernel module snd-pcm-
> oss 
> using a command like that: modprobe snd-pcm-oss
> You should find than the /dev/dsp
> You can give glav than another try like the way before, please also
> add 
> -v 2 for a more verbose output:
> glav -v 2 output.avi
> 
> Janos G Komaromi wrote:
> > Update:
> > 
> > I've installed alsa-oss and now glav does not die. But it is still
> > not
> > working properly. Here is the command and terminal output:
> > 
> > Quote:
> > 
> > janos@andraslinux ~/tmp $ aoss glav output.avi
> > ++: ++ WARN: [lavplay] Unable to set negative priority for audio
> > thread.
> > ++: ++ WARN: [lavplay] Pthread Real-time scheduling for audio
> > thread
> > could not be enabled. ++: lavtools version 2.2.1
> > ++: **ERROR: [lavplay] Error playing audio: Buffer overflow writing
> > audio ++:
> > 
> > Unquote
> > 
> > The initial screen appears, and after about 4 second some noise
> > comes
> > out of the speakers, and soon after the whole thing dies. Same with
> > lavplay. However, mplayer can play the almost 7 Gig output,avi
> > correctly with sound.
> > 
> > Is the file too big? Any other methods?
> > 
> > Thanks for your attention,
> > 
> > Janos
> > 
> 


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
