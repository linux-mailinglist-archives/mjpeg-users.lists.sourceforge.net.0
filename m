Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 37B9934BB28
	for <lists+mjpeg-users@lfdr.de>; Sun, 28 Mar 2021 06:56:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1lQNSz-00055b-Qq; Sun, 28 Mar 2021 04:56:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <shadowlord@utanet.at>) id 1lQNSx-000552-M7
 for mjpeg-users@lists.sourceforge.net; Sun, 28 Mar 2021 04:55:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-ID:Subject:From:To:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Z1qZKiDLPeX8lLtgHVYIXDWlpCp4qySpsPxDRUTcKbI=; b=KPgjkUXyMWCVLgtiTZWSpqTMg+
 f5ik/+3VKElQ90V668Rt/4LWYFuYKZJhCV4ASAUJcCXJZRwlAKzLntgIshEJOYbseL6vFb6H9eBde
 fhnLo3fuZhzkoWmSnblPqG/VEjIGtKt1buRBjoOc7hLn4Y/tvnA8IZp8ZDAdsWbLXOrg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:
 Subject:From:To:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Z1qZKiDLPeX8lLtgHVYIXDWlpCp4qySpsPxDRUTcKbI=; b=J
 Voh1TJN23MI7HWxGzhJmrlDe2vGYAXLFK4nPGs0LHjM99Ftu/GaZY6CIxk0HF7ugfcvJGnr6YjK3H
 y1Ah06/rt4pkFnilc4PLnmn0R1/8hCpsSeS9mHeKVW7fXck76amG4fmZRhUk7xSpOob+JTHaDe55E
 cT/Le/+JWPVY+0W0=;
Received: from [213.90.36.44] (helo=taro-1.utanet.at)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lQNSh-0003mi-CH
 for mjpeg-users@lists.sourceforge.net; Sun, 28 Mar 2021 04:55:59 +0000
Received: from paris-s.drei.host ([213.90.36.62])
 by taro.utanet.at with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <shadowlord@utanet.at>)
 id 1lQNSU-0002sg-DN
 for mjpeg-users@lists.sourceforge.net; Sun, 28 Mar 2021 06:55:30 +0200
Received: from 193-83-254-34.oan.highway.a1.net ([193.83.254.34]
 helo=[10.20.30.37])
 by paris-s.drei.host with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <shadowlord@utanet.at>)
 id 1lQPMR-0006Ow-Bv
 for mjpeg-users@lists.sourceforge.net; Sun, 28 Mar 2021 08:57:23 +0200
To: Mjpeg Users <mjpeg-users@lists.sourceforge.net>
From: Bernhard Praschinger <shadowlord@utanet.at>
Message-ID: <48072927-f40d-640c-247c-16705841a38a@utanet.at>
Date: Sun, 28 Mar 2021 06:55:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 SeaMonkey/2.53.5.1
MIME-Version: 1.0
X-H3G-Authenticated-As: 2492d812503ae882f041a3ed11d939a345349e8a
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: liu.se]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lQNSh-0003mi-CH
Subject: [Mjpeg-users] mjpegtools Beta 2.2.0 online
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

Hallo,

since the last release of the mjpegtools a lot of patches were were sent 
to the mjpeg-users list. Steven did fix a lot of things.

So if you are interested take a look at the Beta you can find here:
https://sourceforge.net/p/mjpeg/Code/HEAD/tree/tags/BETA_2_2_0/mjpeg_play/
You need to check out from SVN. Or you take a look at the tar.gz ball 
you can download from here:
https://sourceforge.net/projects/mjpeg/files/mjpegtools/2.2.0/

We will keep it online for some time, if you send in patches we will 
integrate them. We will wait some time and release the mjpegtool's in 
the near future as next release.

auf hoffentlich bald,

Berni the Chaos of Woodquarter

Email: shadowlord@utanet.at
www: http://www.lysator.liu.se/~gz/bernhard


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
