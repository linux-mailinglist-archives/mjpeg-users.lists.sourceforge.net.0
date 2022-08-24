Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B06915A004C
	for <lists+mjpeg-users@lfdr.de>; Wed, 24 Aug 2022 19:22:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1oQu5S-0001Ip-Uq;
	Wed, 24 Aug 2022 17:22:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <SRS0=gAC0=Y4=xs4all.nl=hverkuil@kernel.org>)
 id 1oQn0f-000524-3K for mjpeg-users@lists.sourceforge.net;
 Wed, 24 Aug 2022 09:49:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MlgGIVAC6IFOa1uHDJ/e9UemnI8mwo0AByfEkTguoGY=; b=QwVw93meCzixmOHNaSMQupOkLb
 b6LdU5seL6dJwrcdfLqkcuJiHgec9DEwZiDkyov/kItiUiShKRtvwNFwdNIQSf3Jvmp6/hwUtsCmh
 3sVwOS1AhFM945qgSoq4DQF3RiHu7TsOk1qTyzetnK7FrSagpLphY3khinPo9uDtxrts=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MlgGIVAC6IFOa1uHDJ/e9UemnI8mwo0AByfEkTguoGY=; b=kl7ibA0kA9AUGL4yhW57wZoMCx
 Nm/OD6t8dxBBryXaKXnWiAxn/zG7zkljj+rx7rYUnvRoryldN5okiFc9xTW6ZLpW3V5cI9s1PYiwZ
 IA78Z5qQeZxx/GFeImT5YN3B+s4WcT9QeYU9ccJZpCaR4aahBaeWRCEj5Py6/NBphSkY=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oQn0b-00FYCP-9u for mjpeg-users@lists.sourceforge.net;
 Wed, 24 Aug 2022 09:49:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 0D27EB82396;
 Wed, 24 Aug 2022 09:48:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D732C433B5;
 Wed, 24 Aug 2022 09:48:55 +0000 (UTC)
Message-ID: <cf992081-eb0c-009d-f283-1602b74a9293@xs4all.nl>
Date: Wed, 24 Aug 2022 11:48:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Abhijeet Srivastava <abhijeet.srivastava2308@gmail.com>
References: <20220721150055.52096-1-abhijeet.srivastava2308@gmail.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
In-Reply-To: <20220721150055.52096-1-abhijeet.srivastava2308@gmail.com>
X-Spam-Score: -4.8 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Abhijeet, Thank you for the zoran patches, unfortunately
 these are a duplicate of
 https://patchwork.linuxtv.org/project/linux-media/patch/20220810115445.2302477-2-hverkuil-cisco@xs4all.nl/
 Content analysis details:   (-4.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1oQn0b-00FYCP-9u
X-Mailman-Approved-At: Wed, 24 Aug 2022 17:22:39 +0000
Subject: Re: [Mjpeg-users] [PATCH] media: staging: media: zoran: Removed
 braces for single statement block
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 mjpeg-users@lists.sourceforge.net, Corentin Labbe <clabbe@baylibre.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

Hi Abhijeet,

Thank you for the zoran patches, unfortunately these are a duplicate of

https://patchwork.linuxtv.org/project/linux-media/patch/20220810115445.2302477-2-hverkuil-cisco@xs4all.nl/

I wish I'd noticed your patches earlier, it would have saved me some work :-(

I'm marking your patches Obsoleted in patchwork.

Regards,

	Hans

On 21/07/2022 17:00, Abhijeet Srivastava wrote:
> Warning found by checkpatch.pl script.
> 
> Signed-off-by: Abhijeet Srivastava <abhijeet.srivastava2308@gmail.com>
> ---
>  drivers/staging/media/zoran/zoran_card.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
> index 26f978a1cc72..0c138d47d0c3 100644
> --- a/drivers/staging/media/zoran/zoran_card.c
> +++ b/drivers/staging/media/zoran/zoran_card.c
> @@ -1038,9 +1038,9 @@ static int zr36057_init(struct zoran *zr)
>  	zr->stat_com = dma_alloc_coherent(&zr->pci_dev->dev,
>  					  BUZ_NUM_STAT_COM * sizeof(u32),
>  					  &zr->p_sc, GFP_KERNEL);
> -	if (!zr->stat_com) {
> +	if (!zr->stat_com) 
>  		return -ENOMEM;
> -	}
> +
>  	for (j = 0; j < BUZ_NUM_STAT_COM; j++)
>  		zr->stat_com[j] = cpu_to_le32(1); /* mark as unavailable to zr36057 */
>  


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
