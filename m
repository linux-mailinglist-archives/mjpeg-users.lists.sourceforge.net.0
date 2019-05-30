Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 551302FFDA
	for <lists+mjpeg-users@lfdr.de>; Thu, 30 May 2019 18:06:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1hWNZ4-0002nw-5Q; Thu, 30 May 2019 16:06:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <shadowlord@utanet.at>) id 1hWNZ2-0002nh-S5
 for mjpeg-users@lists.sourceforge.net; Thu, 30 May 2019 16:06:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sVm5z7q51cebhKWhIgzAr5c6fwaHRNRmwW3aQaAeL0E=; b=MKrFYO5UEzFmFtu9AkCjDtGgNX
 6noZVMJyLfOMSJ08o8ffMBFnAvdGHt77C+6LIwCsoy4Pucke8jn2hNUO74U0r7vo/WcuLEkJe4rue
 Q30EghmiuYA7+sK2YOjGJ5rMXjlH1M6yODpAl4G3IbxWZB5CNP0UWleYzhm9X9qT4fnw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sVm5z7q51cebhKWhIgzAr5c6fwaHRNRmwW3aQaAeL0E=; b=ikMoTv2OdtJiNGHsosjIYBXrJO
 +si3J5RHTPLeKAkAg/sqWrblA37Bud2anOEyh3mORjckM7Q9QiA5j71fv+526uZDtW5nDEm3vWlo8
 fmwka5S1eoPx37ne3/ElNwc+Hm7C02+qMIn+yGvDqc2TLPKxyCDKWO3IKm5x3yU2VODc=;
Received: from taro.utanet.at ([213.90.36.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hWNZ0-00Ecld-4t
 for mjpeg-users@lists.sourceforge.net; Thu, 30 May 2019 16:06:00 +0000
Received: from paris.xoc.tele2net.at ([213.90.36.7])
 by taro.utanet.at with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <shadowlord@utanet.at>)
 id 1hWNJe-0007c1-SA; Thu, 30 May 2019 17:50:06 +0200
Received: from 193-154-43-49.adsl.highway.telekom.at ([193.154.43.49]
 helo=[10.20.30.39]) by paris.xoc.tele2net.at with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.91)
 (envelope-from <shadowlord@utanet.at>)
 id 1hWNJe-0004OA-OG; Thu, 30 May 2019 17:50:06 +0200
To: MJPEG-tools user list <mjpeg-users@lists.sourceforge.net>,
 Drew Anderson <drewanderson1900@gmail.com>
References: <981A6FA6-6DD9-414F-9BD5-444B742D8299@gmail.com>
From: Bernhard Praschinger <shadowlord@utanet.at>
Message-ID: <4f2eaa96-4524-e214-89a6-9c4d7e8f9c48@utanet.at>
Date: Thu, 30 May 2019 17:49:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Firefox/52.0 SeaMonkey/2.49.4
MIME-Version: 1.0
In-Reply-To: <981A6FA6-6DD9-414F-9BD5-444B742D8299@gmail.com>
X-TELE2-Authenticated-As: 2492d812503ae882f041a3ed11d939a345349e8a
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: utanet.at]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1hWNZ0-00Ecld-4t
Subject: Re: [Mjpeg-users] True cbr for MPEG 1
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

> I need to create MPEG 1 video that is flagged and truly 1500 cbr. I
> have tried many things. I can submit settings but I wanted to ensure
> first that cbr is truly still supported.
It is supported and it should work.

Using the -u/--cbr option and -b some-value to get a constant bitrate 
stream.

> For instance, Format 1 which is VCD comes up variable. Or If I set it
> to format 0 and use - -cbr alone it will still remain variable. The
> list goes on...

If you set the encoding option -f 1 or --format 1,
you don't need the -u/--cbr and -b the proper values are set.

If you want a VCD with a non comform bitrate of 1500 kBits/sec, you 
should use a command like that:
... | mpeg2enc -f 2 -b 1500 -u -o video.m1v

-- 
auf hoffentlich bald,

Berni the Chaos of Woodquarter

Email: shadowlord@utanet.at
www: http://www.lysator.liu.se/~gz/bernhard


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
