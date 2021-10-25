Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 693B5439B72
	for <lists+mjpeg-users@lfdr.de>; Mon, 25 Oct 2021 18:23:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mf2lP-0006WG-BB; Mon, 25 Oct 2021 16:23:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hverkuil@xs4all.nl>) id 1mezLo-00058s-IA
 for mjpeg-users@lists.sourceforge.net; Mon, 25 Oct 2021 12:45:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MIrPmlZMXbntaIfNzNiL+53Ms2d0qAt5qT61zPsRcbQ=; b=eqaKk0p5bqh2NeZWlFqxHG35lH
 aEJh+kPZZ9dOSdxEjI32Zw914lAYeeN9XjThyghYujc/h3xFfYvlb5HOFIp0ipWQeZwld8/aJm0HQ
 fIXRd8ec2wFgWMk7wvuM1YdJED7ltOfkkpkvIKok2vrPIWo0HZgTM8Rojv1opy5lzzzg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MIrPmlZMXbntaIfNzNiL+53Ms2d0qAt5qT61zPsRcbQ=; b=av6lBNG88Px8tXf3wlKGMn5ci3
 4iO3/vRN6/Z7ne67l314MbTiadY4FR2VjpPUCRrcRGDDCT74xdWHIdK4cZG/HZcqYwgRVXJ+Gwspr
 Eh2zFO+q/njGM8eLHUwE3DThbmMiy+ZxCYaXqBgY1vVXgKtLGHAmi9YwmzMCGqoDBTlE=;
Received: from lb1-smtp-cloud7.xs4all.net ([194.109.24.24])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mezLk-0006Z0-86
 for mjpeg-users@lists.sourceforge.net; Mon, 25 Oct 2021 12:45:16 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud7.xs4all.net with ESMTPA
 id ezLamN9JyUo2HezLbmIfLC; Mon, 25 Oct 2021 14:45:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1635165903; bh=MIrPmlZMXbntaIfNzNiL+53Ms2d0qAt5qT61zPsRcbQ=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=m+LHcJME2HJ9EGk9IY8grmg1yD4Ju2weXMHpTdctYcDZ1f3MIo8GHOYiT9xJuM20z
 PGrgbqcIvJ1DmiN8w5eNx+gMw91DBp6MV6Ucjx+sAxdP/bKcAoRWHLoSAHeMvXCu92
 cTVk4gumwFPGp+LzJxVZqPz++WMsNK2xRhnCfOl1NLlihSCI55nj0UZPPA4XqGEdZV
 BMOQnyUq1DhLZMCvK3hdB2D+/ioyZ05F58mjr+4WM2IkMMsUSSPUqMtu12vArOiIwl
 2AFCXK/tkY7TiKyJYEjZesB+hH0drxjYZc3RPxUTdT1tq9UBkS7IgRSARxNBhOhi1+
 bMqRvvK/XbmsA==
To: Corentin Labbe <clabbe@baylibre.com>, mchehab@kernel.org,
 gregkh@linuxfoundation.org
References: <20211013185812.590931-1-clabbe@baylibre.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <da925d73-fdf0-3962-3841-a1dd53b5c5dd@xs4all.nl>
Date: Mon, 25 Oct 2021 14:45:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211013185812.590931-1-clabbe@baylibre.com>
Content-Language: en-US
X-CMAE-Envelope: MS4xfG4yLNWqnYNBP9/1n40nSetLdb+rU3jaz1ZDe2tK5Z8747Kg5+iSFSKeNp69iojMjYf8Q/XAlZFW9QUFkOnWaqd2etvO+PbYJnYieGVwd8wTN8u2qkYx
 mE7RyI7qYfdNTklpdzSqQu8kVhzm9pouB45Zri1vUBhJHecpHSxod+pWetwy/s8ZuFk73+mIGFNNs8aX+Eb+0Qirm5iRU9oZsmjFzCoyLr+3qn9W95FEvtSr
 pMPKYMFwnJj0Blv2b+B/xZ50TH1ePxcwO2yY39MAjBK/xNC33xO2P0JJEHc5PwMGCNjzWI5kbwvZFL5QkrTJEzodM5Ihi1hpSTairWzdb0VDLxo2e72IXCr8
 33mE1IkGRoqlTjgeBbF/k6thPWfylWpHm+Pzhomptk0dbV/zSkVPue7AKq5wLzlzk1zwyW0HMQP8FfKV1WboMs4UJjYWKte/TcDXUH8ck1FO55j21dOZYCOx
 wRrmcoxHlCgNsJyVrltcdi+Hdq35o9Ud8N6IjdvzC5Hw7beS97rfl24OqXw=
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Corentin, On 13/10/2021 20:58, Corentin Labbe wrote: >
 Hello > > The main change of this serie is to fusion all zoran related modules
 in > one. > This fixes the load order problem when everything is built-in.
 > [...] Content analysis details:   (-2.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [194.109.24.24 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [194.109.24.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mezLk-0006Z0-86
X-Mailman-Approved-At: Mon, 25 Oct 2021 16:23:54 +0000
Subject: Re: [Mjpeg-users] [PATCH v2 00/10] staging: media: zoran: fusion in
 one module
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
Cc: mjpeg-users@lists.sourceforge.net, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

Hi Corentin,

On 13/10/2021 20:58, Corentin Labbe wrote:
> Hello
> 
> The main change of this serie is to fusion all zoran related modules in
> one.
> This fixes the load order problem when everything is built-in.
> 
> Regards
> 
> Changes since v1:
> - add missing debugfs cleaning
> - clean some remaining module_get/put functions which made impossible to
>   remove the zoran module
> - added the two latest patchs

Something weird is wrong with this series. I have a DC30, but loading this with:

modprobe zr36067 card=3

results in this error message in the kernel log:

[   58.645557] zr36067: module is from the staging directory, the quality is unknown, you have been warned.
[   58.646658] zr36067 0000:03:00.0: Zoran MJPEG board driver version 0.10.1
[   58.646793] zr36067 0000:03:00.0: Zoran ZR36057 (rev 1), irq: 18, memory: 0xf4000000
[   58.648821] zr36067 0000:03:00.0: Initializing i2c bus...
[   58.662420] vpx3220 22-0047: vpx3216b found @ 0x8e (DC30[0])
[   58.737445] zr36067 0000:03:00.0: Fail to get encoder

This works before, so why this is now failing is not clear to me.

It does work with 'card=0', but I really have a DC30.

If I test with 'card=0' then the rmmod issue is now solved.

Regards,

	Hans

> 
> Corentin Labbe (10):
>   staging: media: zoran: move module parameter checks to zoran_probe
>   staging: media: zoran: use module_pci_driver
>   staging: media: zoran: rename debug module parameter
>   staging: media: zoran: add debugfs
>   staging: media: zoran: videocode: remove procfs
>   staging: media: zoran: fusion all modules
>   staging: media: zoran: remove vidmem
>   staging: media: zoran: move videodev alloc
>   staging: media: zoran: move config select on primary kconfig
>   staging: media: zoran: introduce zoran_i2c_init
> 
>  drivers/staging/media/zoran/Kconfig        |  46 +--
>  drivers/staging/media/zoran/Makefile       |   8 +-
>  drivers/staging/media/zoran/videocodec.c   |  68 +----
>  drivers/staging/media/zoran/videocodec.h   |   6 +-
>  drivers/staging/media/zoran/zoran.h        |   6 +-
>  drivers/staging/media/zoran/zoran_card.c   | 328 ++++++++++++++-------
>  drivers/staging/media/zoran/zoran_driver.c |   5 +-
>  drivers/staging/media/zoran/zr36016.c      |  24 +-
>  drivers/staging/media/zoran/zr36016.h      |   2 +
>  drivers/staging/media/zoran/zr36050.c      |  21 +-
>  drivers/staging/media/zoran/zr36050.h      |   2 +
>  drivers/staging/media/zoran/zr36060.c      |  21 +-
>  drivers/staging/media/zoran/zr36060.h      |   2 +
>  13 files changed, 291 insertions(+), 248 deletions(-)
> 



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
