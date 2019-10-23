Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E000E211C
	for <lists+mjpeg-users@lfdr.de>; Wed, 23 Oct 2019 18:55:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1iNJvF-0006kn-I6; Wed, 23 Oct 2019 16:55:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <shadowlord@utanet.at>) id 1iNJvE-0006kg-RU
 for mjpeg-users@lists.sourceforge.net; Wed, 23 Oct 2019 16:55:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=V7K/NVbhOOpIlh4wteyBTaqHU19nVt+ijmEfmLp0TZ8=; b=U59xpzEnnl7zgzE0fzvdnCs8CS
 6/R3vKMF8OTwj7Oohsl4QHvbuJhTo+hGbPfwuuYfBYZTttg1asco/rumU/AN2TKxeixCWZ7x40WG8
 iYRr2x55QyuiEaFba/ph/aSJwyW+ovcMEcmIS//8Y/Ru67m4SOLOvateWZiAsMesREW0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=V7K/NVbhOOpIlh4wteyBTaqHU19nVt+ijmEfmLp0TZ8=; b=k2IxDzWezAHqYAbFEnrJpOHodG
 GUlNpfm1oE0vzvYiG3IdXbcNqKYcq7SaAsX1z0ODmt+myuHv0TevNHDYEWtur4HuykKBmvvdpreCe
 THqv5AdQFSjUXJS8QIOChaFypNWsgnn6odR1hF6Zr4LUNrivadfK40mAdwf+oqwy/mO4=;
Received: from taro.utanet.at ([213.90.36.45])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iNJuz-000ZYl-3F
 for mjpeg-users@lists.sourceforge.net; Wed, 23 Oct 2019 16:55:44 +0000
Received: from pam-s.drei.host ([213.90.36.66])
 by taro.utanet.at with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <shadowlord@utanet.at>)
 id 1iNJus-0006ba-0B; Wed, 23 Oct 2019 18:55:22 +0200
Received: from 193-154-41-241.adsl.highway.telekom.at ([193.154.41.241]
 helo=[10.20.30.40])
 by pam-s.drei.host with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <shadowlord@utanet.at>)
 id 1iNJur-0005kH-SU; Wed, 23 Oct 2019 18:55:21 +0200
To: MJPEG-tools user list <mjpeg-users@lists.sourceforge.net>,
 Janos G Komaromi <janos@jankom.net>
References: <72e946c8-6e65-1aac-b0ac-233142a3d85d@jankom.net>
 <f9198f58-8ca5-9b96-b0ff-cc250bd328c3@utanet.at>
 <4d5ce88d-a2b8-d575-6daa-fd693fd15f9b@jankom.net>
 <5e0de915-640c-8b5c-0a91-06588580fb6c@jankom.net>
From: Bernhard Praschinger <shadowlord@utanet.at>
Message-ID: <bceb900a-53f5-4eed-0f8d-9adfe08e1e92@utanet.at>
Date: Wed, 23 Oct 2019 18:55:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Firefox/52.0 SeaMonkey/2.49.4
MIME-Version: 1.0
In-Reply-To: <5e0de915-640c-8b5c-0a91-06588580fb6c@jankom.net>
X-H3G-Authenticated-As: 2492d812503ae882f041a3ed11d939a345349e8a
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: liu.se]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1iNJuz-000ZYl-3F
Subject: Re: [Mjpeg-users] capture card not working with nvidia driver
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

The name of the missing so: nouveau makes me think that libgl tries to 
load something mesa related. I have the file on my opensuse in the RPM 
Package: Mesa-dri-nouveau
(Mesa DRI plug-in for 3D acceleration via Nouveau)

Maybe CentOS has also a package that provides the library.

When I remember correct you wanted to used the original nvidia driver. 
And for some strange reason the system want's now to load the mesa 
driver and not the nvidia driver.

Janos G Komaromi wrote:
> Update:
> 
> Found rpm package for the CentOS-6 and installed it after resolving 
> libaa and libzvbi dependencies from the same package site. xawtv program 
> started OK with blue screen window and complete settings window. 
> However, I could not select the shown "overlay" capture option. The 
> terminal output after entering xawtv command complains about:
> 
> libGL error: could not load nouveau_vieux_dri.so.
> 
> 
> 
> On 10/6/19 10:01 PM, Janos G Komaromi wrote:
>>
>> Other, related: I installed CentOS-6 (latest available RedHat distro 
>> for a 32-bit machine).

Sorry that I can't provide more help,
und auf hoffentlich bald,

Berni the Chaos of Woodquarter

Email: shadowlord@utanet.at
www: http://www.lysator.liu.se/~gz/bernhard


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
