Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 666815F8630
	for <lists+mjpeg-users@lfdr.de>; Sat,  8 Oct 2022 19:15:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1ohDQ1-00014r-Vn;
	Sat, 08 Oct 2022 17:15:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bernhard@griesbach.at>) id 1ohDPv-00014j-BZ
 for mjpeg-users@lists.sourceforge.net;
 Sat, 08 Oct 2022 17:15:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Tg+ZRlLRUl6a3QTD2CmD1y5nr2uirMYoMQWpqhYRuJY=; b=Wpc/9rV6B8wTZddZ0QBxF3wxt6
 Jc0rmNd4fedIvCsgtNHQLaVIWZd0w3CD5uR7cy/2Qa+Jr9ehKUdXD0Hm/OwAEHy1lnLnmHlI5WqtW
 s8d+TzyvHj+cGKTOnWK8jYinAArH1uJNNEmB+OLiiJ7R1poKMkfax8EBocNpdvy2M1W0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Tg+ZRlLRUl6a3QTD2CmD1y5nr2uirMYoMQWpqhYRuJY=; b=g/pK5Yxw5m5fLDmXIfE4Pt+5H/
 35ZtYaQoJEnRN0ENpqUDRw/ZXoBdTTygF65WDbAxAj3DTYMNiL+ixCmIWyd0Nrj6cyJE6+w6Up4Cy
 5pfG/dkw94G8yovTsa/RMt0i2svYvamAkJEDN2c6q99tTT23h6bvVL1mgKyn59ATn2iI=;
Received: from srv211.suspace.net ([176.28.0.211] helo=srv1.suspace.net)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ohDPu-00GwwC-7g for mjpeg-users@lists.sourceforge.net;
 Sat, 08 Oct 2022 17:15:15 +0000
Received: from srv1.suspace.net (localhost.localdomain [127.0.0.1])
 by srv1.suspace.net (Postfix) with ESMTP id D25F716209A;
 Sat,  8 Oct 2022 19:15:05 +0200 (CEST)
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
 with ESMTP id jG0TR337or18; Sat,  8 Oct 2022 19:15:05 +0200 (CEST)
Received: from [10.20.30.37] (193-83-8-41.oan.highway.a1.net [193.83.8.41])
 by srv1.suspace.net (Postfix) with ESMTPSA id 43E2B1604B4;
 Sat,  8 Oct 2022 19:15:05 +0200 (CEST)
Received-SPF: pass (srv1.suspace.net: connection is authenticated)
To: Janos G Komaromi <janos@andraslinux.jgklinux.jankom.net>
References: <1f684654-8907-655c-b8c0-ed5bb8a15d82@griesbach.at>
 <9f4c6922fbd9940e07875116618012df8a133c6a.camel@jankom.net>
 <20221006092153.1d76bbd3@andraslinux>
 <74c98e9f-ac31-e318-8d53-f62c7705fdab@griesbach.at>
 <20221008095345.23b41f1a@andraslinux>
From: Bernhard Praschinger <bernhard@griesbach.at>
Message-ID: <2a17fa6e-a342-1cb9-f75c-03106b139078@griesbach.at>
Date: Sat, 8 Oct 2022 19:15:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 SeaMonkey/2.53.13
MIME-Version: 1.0
In-Reply-To: <20221008095345.23b41f1a@andraslinux>
X-PPP-Message-ID: <166524930549.4804.18350138746150552070@srv1.suspace.net>
X-PPP-Vhost: griesbach.at
X-Spam-Score: -3.6 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hallo Janos G Komaromi wrote: > Yes Bernie, that's it. My
 distro is Gentoo, which means it i compiled > from a Gentoo source. I believe
 I can recompile it with the yuv4mpeg use > flag. I'll post another mes [...]
 Content analysis details:   (-3.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -3.6 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1ohDPu-00GwwC-7g
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

Hallo

Janos G Komaromi wrote:
> Yes Bernie, that's it. My distro is Gentoo, which means it i compiled
> from a Gentoo source. I believe I can recompile it with the yuv4mpeg use
> flag. I'll post another message once I succeed with the original command
> set just to close this thread. Thank you for your help - Janos
One thing comes into my mind, it might be that the configure script 
checks if the mjpegtools libraries are available and only activates it 
automatic if it finds them the Option that force yuv4mpeg is: 
--enable-yuv4mpeg.


> On Sat, 8 Oct 2022 06:29:22 +0200
> Bernhard Praschinger <bernhard@griesbach.at> wrote:
> 
>> Hallo,
>>
>> It seems that your version of mplayer was not complied with the
>> That is the important line: Error opening/initializing the selected
>> video_out (-vo) device.
>>
>> Please do a test: > mplayer -vo help
>> You should find a line like:
>> 	yuv4mpeg	yuv4mpeg output for mjpegtools
>>
>> If not, it would mean to me that mplayer was compiled without
>> yuv4mpeg support. My version of mplayer: MPlayer 1.4-7
>>
>> If you did compile it on you own please check when running t
>> configure that you find in the enabled driver yuv4mpeg.
>>    Enabled optional drivers:
>>       Input: ftp pvr tv-v4l2 tv cddb cdda dvdread vcd dvb networking
>>       Codecs: libvpx xvid ffmpeg(internal) real xanim faac libmpeg2
>> mpg123 speex
>>       Audio output: alsa pulse oss v4l2 sdl mpegpes(dvb)
>>       Video output: v4l2 matrixview opengl sdl pnm jpeg mpegpes(dvb)
>> fbdev xvidix cvidix x11 xover yuv4mpeg md5sum tga
>> ---END---
>>
>> If you use the precompiled version from your distribution I would
>> recommend that you download the source and compile it on your own.
>>
>>
auf hoffentlich bald,

Berni the Chaos of Woodquarter

Email: bernhard@griesbach.at
www: http://www.lysator.liu.se/~gz/bernhard


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
