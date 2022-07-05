Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3135F5675C7
	for <lists+mjpeg-users@lfdr.de>; Tue,  5 Jul 2022 19:31:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1o8mOY-0004nq-0X; Tue, 05 Jul 2022 17:31:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <shadowlord@utanet.at>)
 id 1o8mOQ-0004nT-ER; Tue, 05 Jul 2022 17:31:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-ID:Subject:From:To:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZKPOTKnA8XKq+ip2X+vPlWbX8Wpe2bHMfZ5CDg127gQ=; b=QvVd52xEmGNgXdvb4+SiNnga3N
 wP4CiP51ELYrM/9t0AYtXMgyVhiR15PEbe4g98FVuXNygaVdt1fLL0a6yBIP1u3QPSNEMhB84YBeY
 0BfWoDVHyp1n0a92PKaj6SZDtT7oYGTwkY8isBjhaFvkPPRieBpisgqJObElT0hKLajU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:
 Subject:From:To:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ZKPOTKnA8XKq+ip2X+vPlWbX8Wpe2bHMfZ5CDg127gQ=; b=Z
 ZFRJBXBEvhF+VFNtsISfuSX+fZq3UtG5gb0qXJ4eOnMbVOZtUEPdzYjq7frvsNRTD+ymwTWiX2ssS
 lb9q0hspvI/cNKJf7OEHbZVFEoMtYn718NnTICamC09fedubVr9RnIkmDyJwUnzug3ts0Sx82oVvP
 gn9L8T1m6OwBfHxA=;
Received: from tatiana2.utanet.at ([213.90.36.33])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o8mOM-00079w-Sx; Tue, 05 Jul 2022 17:31:23 +0000
Received: from paris-s.drei.host ([213.90.36.62])
 by tatiana.utanet.at with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <shadowlord@utanet.at>)
 id 1o8lev-0000gN-9c; Tue, 05 Jul 2022 18:44:21 +0200
Received: from 193-83-253-14.oan.highway.a1.net ([193.83.253.14]
 helo=[10.20.30.37])
 by paris-s.drei.host with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <shadowlord@utanet.at>)
 id 1o8lfQ-0003Or-Gp; Tue, 05 Jul 2022 18:44:52 +0200
To: Mjpeg Users <mjpeg-users@lists.sourceforge.net>,
 Mjpeg Developer <mjpeg-developer@lists.sourceforge.net>
From: Bernhard Praschinger <shadowlord@utanet.at>
Message-ID: <04e8c310-20db-40b8-669d-db3bacd780de@utanet.at>
Date: Tue, 5 Jul 2022 18:44:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 SeaMonkey/2.53.12
MIME-Version: 1.0
X-H3G-Authenticated-As: 2492d812503ae882f041a3ed11d939a345349e8a
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hallo, I don't know who did change the the setting, but the
 last 2 weeks a few mails with the subject BUILD REGRESSION were sent from
 the lkp@intel.com to the mjpeg-users mailinglist. There is currently another
 with the subject: [linux-next:master] BUILD REGRESSION, waiting for a decision.
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [213.90.36.33 listed in list.dnswl.org]
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o8mOM-00079w-Sx
Subject: [Mjpeg-users] BUILD REGRESSION
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

I don't know who did change the the setting, but the last 2 weeks a few 
mails with the subject BUILD REGRESSION were sent from the lkp@intel.com 
to the mjpeg-users mailinglist.

There is currently another with the subject: [linux-next:master] BUILD 
REGRESSION, waiting for a decision.

It is Ok for me that some robot sends a mail to the list. But the proper 
list would be the mjpeg-developer list.

I did check if it is possible to change the E-Mail destination. But I 
did not find the proper hint. So does anybody know where I can request 
that they change the destination ?

Regards, Bernhard


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
