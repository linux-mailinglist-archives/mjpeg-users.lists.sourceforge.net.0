Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C580401DF1
	for <lists+mjpeg-users@lfdr.de>; Mon,  6 Sep 2021 18:00:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mNH30-0007hf-NQ; Mon, 06 Sep 2021 16:00:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hverkuil@xs4all.nl>) id 1mNCQ3-0007tM-53
 for mjpeg-users@lists.sourceforge.net; Mon, 06 Sep 2021 11:04:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mDvtFV9UjP+KgBf+7q8PbDmYnyjvS8LhvtNWmmO4/Uk=; b=ZLgwWCj9Xywk/IHbG5U25mKciL
 9XND5sfLUFqlctbf18BdPk/v3d4HXgUhpxwkgAL2Kyr72CRe2dwPjo/W9ND56sXy5gyDaBVmbM9jT
 AtIZ9Z1t4/GNf8xv2BHUMmsWKbNI8cZBHRq2NuUTCCx6yurywBgN3LKaR4mN97itGaK8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mDvtFV9UjP+KgBf+7q8PbDmYnyjvS8LhvtNWmmO4/Uk=; b=Dn+qukMXYST/2iZuPJFgFdk5Ae
 SXDD8Il6EHXWE6qkfGghhXKekUwsFlXGgbWrRwMkz7KJYYKax2NBEjGtvtgzUUAg50oVlXhYKAUSJ
 9cOF3CmjPkblRYfCZf4UMaD1utGwU/MmFzXYiaFKIMBPO4DwMhqoomrZfOEHXf7cBMd0=;
Received: from lb2-smtp-cloud9.xs4all.net ([194.109.24.26])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mNCQ1-0002Af-KH
 for mjpeg-users@lists.sourceforge.net; Mon, 06 Sep 2021 11:04:07 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud9.xs4all.net with ESMTPA
 id NCPsm6vHllQKhNCPtmQzSN; Mon, 06 Sep 2021 13:03:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1630926237; bh=mDvtFV9UjP+KgBf+7q8PbDmYnyjvS8LhvtNWmmO4/Uk=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=h7YHvb1CK1GEjunBsOYuF/d6z4r+chqjsNh4lVpvYcvwoggkr4d9tYKnqKfINSEkt
 oo+pfgRxAFKClLK8f7S5Cxmb+6WBbilsxULb2HqKSrdzNG2S4OPrqQhobmFdiJ76XA
 UjIEQnAOGIIRaiKIs1IMMxISszv0m84Hmrpg0g3u+g9oRRIRjpW3Hs6qUHrzadWh/r
 M1BMshXgsVbw6VB0fcF2oKPxtmysahQJ7qv2zXi0XQBOyFCnZ3Krl7G3yHkpjF463j
 F7l655g6L9dcZQ5xWMWXvEm+Ra7SahOoRKdIqsBfr+N+Rlsy9Whja/YFCR6NYZG+8h
 M2tVIjrgQSzKw==
To: Corentin Labbe <clabbe@baylibre.com>, gregkh@linuxfoundation.org,
 mchehab@kernel.org
References: <20210903191540.3052775-1-clabbe@baylibre.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <efe035cc-1839-210f-c0d4-4d58801aa65c@xs4all.nl>
Date: Mon, 6 Sep 2021 13:03:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210903191540.3052775-1-clabbe@baylibre.com>
Content-Language: en-US
X-CMAE-Envelope: MS4xfJIXL08RwQgMNMzOYbe0M0VJlLntr2uNqP+LLvSAcYVjylm6uej9Wx4ry4BYBNOsaxT/1woOlqCnq/HGjhbnPEot+2QLc9CggTOnJLFl8Io7omw+8BB8
 mGgN2mJrKsxT1QWv3Wav2WvQeSKCDOjGtPVjZnxkcKCCloHzN+HUPdkEvciFs2VX5enEbb6BWK8b/XtG/JijRKRwyEnC+2WP4a7GNmjxAHPzHnvgbUKbsAaU
 vKgmsnxUXksAcIfM/GlTYRh2XqsWniIpRrHkYMBkYkBjwHmud7iu53p5qNvfwluIkJn//RrJXHrZ/opgKXK5lDFXfDhGI/XzP5QQSAv3y9zEbta4h2+XKEJr
 qGItXiPM+S8oWacsLHcDVlW2TNlzCYyQoqzsNmgNRbBazbvAESHGyA5StVfaACqcpndLDGaVkBRjX6xe/tY380px5hnViikZFiieqbsW6JZ3g54H6K0jEvMz
 9nJcfvc1bcJ9S9QjAnMQq8c3KsyLj4i0Irt470PW/ozYNJ1yZf2nxW0P7Q8=
X-Spam-Score: -2.4 (--)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [194.109.24.26 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.3 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mNCQ1-0002Af-KH
X-Mailman-Approved-At: Mon, 06 Sep 2021 16:00:35 +0000
Subject: Re: [Mjpeg-users] [PATCH 0/8] staging: media: zoran: fusion in one
 module
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

I finally had the opportunity to test the staging zoran driver.

I found several issues when running v4l2-compliance -s (I posted a patch
for that), but more seriously is the fact that trying to capture MJPG
at resolutions 384x288 or less just hangs my PC. It works OK with 768x576.

I discovered this when running 'v4l2-compliance -s -a -f'.

BTW, why isn't the initial format equal to MJPG 768x576?
I would expect that for these boards that should be the default format.

Another issue is that the TODO should mention that for video output there
should be a second video device node. And that's really something that
has to be done before the zoran driver can be moved out of staging.

It shouldn't be that hard to implement, I think.

Right now it is impossible to run the compliance test for the output, since
it doesn't even see it as an output.

Regards,

	Hans

On 03/09/2021 21:15, Corentin Labbe wrote:
> Hello
> 
> The main change of this serie is to fusion all zoran related modules in
> one.
> This fixes the load order problem when everything is built-in.
> 
> Regards
> 
> Corentin Labbe (8):
>   staging: media: zoran: move module parameter checks to zoran_probe
>   staging: media: zoran: use module_pci_driver
>   staging: media: zoran: rename debug module parameter
>   staging: media: zoran: add debugfs
>   staging: media: zoran: videocode: remove procfs
>   staging: media: zoran: fusion all modules
>   staging: media: zoran: remove vidmem
>   staging: media: zoran: move videodev alloc
> 
>  drivers/staging/media/zoran/Kconfig        |  24 +-
>  drivers/staging/media/zoran/Makefile       |   8 +-
>  drivers/staging/media/zoran/videocodec.c   |  60 +----
>  drivers/staging/media/zoran/videocodec.h   |   5 +
>  drivers/staging/media/zoran/zoran.h        |   7 +-
>  drivers/staging/media/zoran/zoran_card.c   | 259 +++++++++++++--------
>  drivers/staging/media/zoran/zoran_driver.c |   5 +-
>  drivers/staging/media/zoran/zr36016.c      |  23 +-
>  drivers/staging/media/zoran/zr36016.h      |   2 +
>  drivers/staging/media/zoran/zr36050.c      |  20 +-
>  drivers/staging/media/zoran/zr36050.h      |   2 +
>  drivers/staging/media/zoran/zr36060.c      |  20 +-
>  drivers/staging/media/zoran/zr36060.h      |   2 +
>  13 files changed, 229 insertions(+), 208 deletions(-)
> 



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
