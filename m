Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A7F1BF8F6
	for <lists+mjpeg-users@lfdr.de>; Thu, 26 Sep 2019 20:13:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1iDYGS-0003Bm-FI; Thu, 26 Sep 2019 18:13:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <shadowlord@utanet.at>)
 id 1iDYGO-0003BJ-3e; Thu, 26 Sep 2019 18:13:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:Cc:From:References:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=svBALDi9nY+MsyjYzpxAzREcwFRwVPIpTmmvRV9VQDQ=; b=aZylsPk9IvorZHuyVHKmO8mGEU
 YGRQ9qRfevO9do3TU4Gf3eetr+aDtkrI6UFU+LJG5kDRVBHweeelb3oTy4liSqefJ/PCHcmS8F3Ui
 krTtKRPAfmL1+OpvRnNGOtMooLwYD/wylUymR+DGQo+hjYyZYDbOyAFeZKfZQ7c31gP8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:Cc:From:References:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=svBALDi9nY+MsyjYzpxAzREcwFRwVPIpTmmvRV9VQDQ=; b=BwbvaY+7xsRQxEcRtZZ88ROGk9
 M4B/7vX62tT3IHl2Ue/ECQR4lsZ2KhvgC+faeYlVCvdpHmlwr+qF/4dMHaD7gH4lpUOqnaoS2/1+A
 G336iQ0QQQEj9ycry8NwveFauELlsj/Vhfmv6rPGZA9/pSr+KLNLnX+m0X10gDroL/m8=;
Received: from tatiana.utanet.at ([213.90.36.46])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iDYGK-007dZy-AU; Thu, 26 Sep 2019 18:13:10 +0000
Received: from pam-s.drei.host ([213.90.36.66])
 by tatiana.utanet.at with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <shadowlord@utanet.at>)
 id 1iDXni-0007ZD-Ts; Thu, 26 Sep 2019 19:43:34 +0200
Received: from 193-154-46-167.adsl.highway.telekom.at ([193.154.46.167]
 helo=[10.20.30.40])
 by pam-s.drei.host with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <shadowlord@utanet.at>)
 id 1iDXni-0003z8-Oh; Thu, 26 Sep 2019 19:43:34 +0200
To: MJPEG-tools user list <mjpeg-users@lists.sourceforge.net>,
 Corentin Labbe <clabbe.montjoie@gmail.com>, linux-media@vger.kernel.org,
 mchehab@kernel.org, laurent.pinchart@ideasonboard.com
References: <20190921170357.GA26626@Red>
From: Bernhard Praschinger <shadowlord@utanet.at>
Message-ID: <3017c9c1-17b4-8716-8d37-24084a58461f@utanet.at>
Date: Thu, 26 Sep 2019 19:43:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Firefox/52.0 SeaMonkey/2.49.4
MIME-Version: 1.0
In-Reply-To: <20190921170357.GA26626@Red>
X-H3G-Authenticated-As: 2492d812503ae882f041a3ed11d939a345349e8a
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1iDYGK-007dZy-AU
Subject: Re: [Mjpeg-users] bringing back media/zoran driver
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
Cc: Mjpeg Developer <mjpeg-developer@lists.sourceforge.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

Hallo

Corentin Labbe wrote:
> hello
> 
> I am the owner of a zoran based DC10+ card.
> I am in the need of using it since yesterday and I found that its driver was removed.
> 
> Reverting the removing patch made to a temporary working situation.
> 
> If I understand correctly, it was removed due to lack of vb2 convertion.
> If I am able to do this vb2 conversion, does bring it back in mainline will be posssible ?
> In that case I am ready to assume to be the maintainer if needed.
It would be a great thing if you update the driver and get is into a 
good state.
Most of the people involved in the (mjpeg, zoran driver) project have 
different interests.

If you want some space on the mjpeg project on Sourceforce let me know I 
can arrange that, and if you tell me I'll update various pages.

Getting a machine with PCI for testing the driver is possible for me. I 
still have a old borrowed but and a DC30 at home.

Regards,
Bernhard Praschinger


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
