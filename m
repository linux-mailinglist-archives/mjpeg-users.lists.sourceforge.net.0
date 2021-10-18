Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF5D4324C7
	for <lists+mjpeg-users@lfdr.de>; Mon, 18 Oct 2021 19:19:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mcWI1-0007Iq-6t; Mon, 18 Oct 2021 17:19:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hverkuil@xs4all.nl>) id 1mcPN7-0003Hq-FV
 for mjpeg-users@lists.sourceforge.net; Mon, 18 Oct 2021 09:55:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hZHvQDSjUd8uW3oRdpn55CUce4TBNbqxu4Un/iM6Hic=; b=H4bvKNTjwGdAIQVKWd/gwEDs59
 ffgLEtF0zBsoMO0KjekVMgwE4RfJKfGoEgchSIbA8M/gGATP7GhRxMxK7p30UMnj3Rv0AEZQUZoVX
 M6tvsB+H/eWlJGXZjXbudeiO832r/nkCtvUy2oxK5gqKfwa7X2qUbXgVVqEE+0btz/aw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hZHvQDSjUd8uW3oRdpn55CUce4TBNbqxu4Un/iM6Hic=; b=faU/ctrp+oR3z9hwYXpjPpsYfR
 yuuvKea7rxo6/W01wFrev1GvB2sgofwps+r18Yu4QCQi2T7rqvLkYWyPlhty11lQt4XegccO+tVb8
 h5C8cjI9F4NYNYRsGd6uL5K58oHaBpspZubYOVzU8LjBOPDZhGkfwREYJ2uUXUIXUITs=;
Received: from lb2-smtp-cloud7.xs4all.net ([194.109.24.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcPN5-0001pG-CT
 for mjpeg-users@lists.sourceforge.net; Mon, 18 Oct 2021 09:55:57 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud7.xs4all.net with ESMTPA
 id cPMqmtvAyk3b0cPMtmhFmf; Mon, 18 Oct 2021 11:55:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1634550944; bh=hZHvQDSjUd8uW3oRdpn55CUce4TBNbqxu4Un/iM6Hic=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=s3GGNa29SESwabTksdMf/5josVX9HhU3ePTNA246K69Yd3XDAITe9bvm313pDt+lA
 aat4e/vbTGP8jAP3mhHO232WBsR0Fa1Aawidgcu/PL/oAI/Ubv2Xw1obHAN9CamE7u
 DSqW79QI22E2hVg3NC9DK4invFPwMoWlZY0drYCZmLylxgLQrxGiN9k7dN1jMgUSn1
 YuHV3YlOhL+ViAYNIHNID7fukzTx87+MNDchi7VwqICd1Ysyu9kQyZjIjpw0DWD7kP
 NdMcObb4Ur0NGgl7DgdFybqt5t67E+9CUmF1TFLdi87tgXex6IZUQ5ILlajrzL1gge
 89oFSv83ZDUdg==
To: Corentin Labbe <clabbe@baylibre.com>, mchehab@kernel.org,
 gregkh@linuxfoundation.org
References: <20211013185812.590931-1-clabbe@baylibre.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <c2474663-3fe0-b0cd-ecb5-57ec370481e3@xs4all.nl>
Date: Mon, 18 Oct 2021 11:55:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211013185812.590931-1-clabbe@baylibre.com>
Content-Language: en-US
X-CMAE-Envelope: MS4xfABpTiDbIOWqhv/J0KgHGejzgKsf74X+dQmYcsnG5aGEDJ2FA6OqGsDMvag3VOhBTkdexTPFa2yBDbLg8ONSLHsP4VKJGynHGfctWki387MdEc5UqsZz
 XlUENWwO2mW8uj2mdYo/IJECKp2EvM2IKe3+flx+UsqDcqkrct4B7j62CscVc4HSqTHGCb9IGAgP2o75qBUBstZ71HfpoGcfmaU5V0SFnUYoF5CvYz/Z7IEk
 uYRbugx0l3E8e8ZkskU+sCt2/8xOG8XVCQ0n1k/6dBBgsAHYYbBxUM4J3vWtLNFkn1cp1A9rtAVlZX500Lfk78vNnAIarVhibjRO5Mqp/QFFWtUB5Pg/6+j+
 YSJjPN4cPvz+mzRjjCTJCy30AZGycLBu/n6/lR0xfpcBHZGql6bqYirh3XpNM5ilE+uW6AIOmGDny01E93w4wFaVU6BDwQ==
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Corentin, I noticed some code review comments from Dan
 and a kernel test robot issue. Can you post a v3 fixing those by the end of
 the week? Next week I will have access again to my zoran board, so then I
 can t [...] 
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.28 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [194.109.24.28 listed in wl.mailspike.net]
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
X-Headers-End: 1mcPN5-0001pG-CT
X-Mailman-Approved-At: Mon, 18 Oct 2021 17:18:55 +0000
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

I noticed some code review comments from Dan and a kernel test robot issue.
Can you post a v3 fixing those by the end of the week? Next week I will have
access again to my zoran board, so then I can test the v3 series.

BTW, I agree with Dan, just drop the 'Enable zoran debugfs' config option. It's
not worth the additional complexity. Instead, just #ifdef CONFIG_DEBUG_FS
where necessary (in most cases you shouldn't even have to do that since the
since you have dummy debug_fs_* functions if CONFIG_DEBUG_FS isn't set).

Regards,

	Hans

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
