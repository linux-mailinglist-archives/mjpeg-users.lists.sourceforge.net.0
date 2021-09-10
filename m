Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6373C40669C
	for <lists+mjpeg-users@lfdr.de>; Fri, 10 Sep 2021 07:02:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mOYgM-00069g-2i; Fri, 10 Sep 2021 05:02:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <shadowlord@utanet.at>)
 id 1mOYgJ-00069G-V9; Fri, 10 Sep 2021 05:02:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-ID:To:Subject:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bgG8wv7Kl0RbOY6BwDclr5+aBZpVy/iT2bV5S5g2VVU=; b=DKZKppKPLpp515TPKtLGyqy2on
 rl+Il1BvkV/FXS95VQS6DOqSBtlOjZgk4jr2h7s4HyPva46bARgt+Bwe0vm3YFJfBTQhGPpLhCh0x
 5YfYYb8LPTQnsQn2nFzauGV4DmczgPjJIicTTbvJkGtLxX2riRfqA4aAIy4zBWjod2NU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:To:
 Subject:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=bgG8wv7Kl0RbOY6BwDclr5+aBZpVy/iT2bV5S5g2VVU=; b=l
 twPOTdgFZ8BhD7x6BX/eCE6y4qrrUinG65/E+Ykt0lGCFPKey4a79y4Mx9yXKukP/Qrskrl0Spmxz
 nXirDMJIVhP2zR3gZxr9dxAKBuOkaipE+F4L/qZF0YGEvLukQBLptdQ5mGg+pbHTqiaXdnK40TSwL
 KGu62pywXxUHvpao=;
Received: from tatiana2.utanet.at ([213.90.36.33])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mOYgI-005gp3-FA; Fri, 10 Sep 2021 05:02:31 +0000
Received: from paris-s.drei.host ([213.90.36.62])
 by tatiana.utanet.at with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <shadowlord@utanet.at>)
 id 1mOYg2-0005Pr-Np; Fri, 10 Sep 2021 07:02:14 +0200
Received: from 193-83-162-215.oan.highway.a1.net ([193.83.162.215]
 helo=[10.20.30.37])
 by paris-s.drei.host with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <shadowlord@utanet.at>)
 id 1mOYlh-00056g-VR; Fri, 10 Sep 2021 07:08:05 +0200
From: Bernhard Praschinger <shadowlord@utanet.at>
To: Mjpeg Users <mjpeg-users@lists.sourceforge.net>,
 Mjpeg Developer <mjpeg-developer@lists.sourceforge.net>
Message-ID: <dd87a597-2330-0a73-c4e7-d70c3b8b8da3@utanet.at>
Date: Fri, 10 Sep 2021 07:02:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 SeaMonkey/2.53.8.1
MIME-Version: 1.0
X-H3G-Authenticated-As: 2492d812503ae882f041a3ed11d939a345349e8a
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hallo,
 You probably remember the last release of the mjpegtools
 back in 2013. Over the years since the release a lot of patches came in.
 CVS was replaced by SVN. Feel free to download either the source tar.gz and
 compile the mjpegtools yourself from here:
 https://sourceforge.net/projects/mjpeg/files/mjpegtools/2.2.1/
 Content analysis details:   (-0.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [213.90.36.33 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: liu.se]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1mOYgI-005gp3-FA
Subject: [Mjpeg-users] mjpegtools new Release 2.2.1
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

You probably remember the last release of the mjpegtools back in 2013.
Over the years since the release a lot of patches came in. CVS was 
replaced by SVN.

Feel free to download either the source tar.gz and compile the 
mjpegtools yourself from here:
https://sourceforge.net/projects/mjpeg/files/mjpegtools/2.2.1/

I did prepare the RPM files on my OpenSuse 15.3 they should install 
without problems.

You can checkout the current SVN version with a command like that:
svn checkout https://svn.code.sf.net/p/mjpeg/Code/ mjpeg-Code

auf hoffentlich bald,

Berni the Chaos of Woodquarter

Email: shadowlord@utanet.at
www: http://www.lysator.liu.se/~gz/bernhard


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
