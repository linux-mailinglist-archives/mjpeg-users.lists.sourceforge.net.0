Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A0F357DEE6
	for <lists+mjpeg-users@lfdr.de>; Fri, 22 Jul 2022 12:08:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1oEpa4-00075u-5S; Fri, 22 Jul 2022 10:08:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <philipp.g.hortmann@gmail.com>) id 1oEkgn-0001KP-Q8
 for mjpeg-users@lists.sourceforge.net; Fri, 22 Jul 2022 04:55:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BAspDEPCtXjW6B387M1BEwowk25i6EDgUSDlagLj1Hk=; b=UJdQp/WAC94EQCtPUJskmoE4fM
 gd1z4uk9qiYt4PhAjEiYMMGvGwK+eJoWYInROsQCF3TgdeFUBg6gFcyxWTx6+dlc8ZyLhsrESTd1A
 uf8hI//1lwDF2VK50WbMAWsbywF2mA8I4Ali+ov0jHZByH4nm8i/fZftCiKBJbDO5eNY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BAspDEPCtXjW6B387M1BEwowk25i6EDgUSDlagLj1Hk=; b=YmG0C1wbJVI65Gz0dlZdh9WH5h
 iGGA0OfjoxjAvbURWOUAhtGrTDAXamZFLpheGTnwz0pYkV1R2Gx5IifdQ5knr6SzqQF9rl4SxuaVG
 EDueDUiG1rpivmOZ+zKf/bFzvem2zGbOWnZFoDI9PaP59DanuNqvlkRoaPb0CRnfcuPs=;
Received: from mail-ej1-f48.google.com ([209.85.218.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oEkgj-0004QD-1j
 for mjpeg-users@lists.sourceforge.net; Fri, 22 Jul 2022 04:55:01 +0000
Received: by mail-ej1-f48.google.com with SMTP id j22so6667759ejs.2
 for <mjpeg-users@lists.sourceforge.net>; Thu, 21 Jul 2022 21:54:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=BAspDEPCtXjW6B387M1BEwowk25i6EDgUSDlagLj1Hk=;
 b=LGnXKOwviOg2k81AVWVpNLFmzOUc5v70JFyf7x43iWW2Hh0JUjh2YK4xmryjna91dF
 ZucFalVj9ZG/7e8avCiu9XE5b1O4rX3UEGx3wj4uIj4g1OAX5d2sfDZtzQz2WADF0GI/
 SjnazoFgrEmEbXuZM/h2zjjr+X61q+OwGTwmoXFevCYp5gWTKHudLHabEJGW8wcwmhtr
 35Dbfu7NAaLJ/zDMp9nbpTvnN/0KQYpFtK5r8LhLiqFjxSZUS+8PmmIbHo/URaFT6mnX
 qnp7wwq00SnFpHD/3ZIQQF0EAULCUTJYdaR1sAr5RsmwCA3piXhbaLj3R1kr80JwxU1D
 B3qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=BAspDEPCtXjW6B387M1BEwowk25i6EDgUSDlagLj1Hk=;
 b=0DOICEg/fQIP2/Snq2i8x/zxz4sGuim0/Ox/wnCRvgmcNn9bCAGXcH2wKgxCn17xSG
 iEtUJEX9ryLlLh69qikbI6Jvpoz2/AHVdvLVO2vCQx1ZEkCp1YbFOQtGWMnABE4EV9Y1
 y1TpPf5tbDCPRtAEJvZRki1GKTNVnvZzG5/uaHw9x3qBfCGGMZBCqpIW4T2Lz0VgJD27
 z5MqvZ9geWTNe3V0WyUNTld/sKiDjsHyUZEQ7AfCyaxrbsLXzyKGcOIIgDX2draF6lPx
 /h+fgW11DVYg6aGTZ5hUhBBqmLkh6xhI01A1SPJhaZ/DmbK3P96Y6vral929HV/eZay9
 /GjQ==
X-Gm-Message-State: AJIora8JAroD1LiPSOhk6GO9pBlzhnKKLjMK74IoXT8F+1sQsRL81kXy
 2FQNQ+28wF0XrMto8aokD68=
X-Google-Smtp-Source: AGRyM1sHXShGR6o1qcwrokXbBl+lV1+M3JghaQXqCevUiOPwb4M9Sy+r3nydB9pqTt5VqYROK9/k3A==
X-Received: by 2002:a17:907:7290:b0:72b:3799:624c with SMTP id
 dt16-20020a170907729000b0072b3799624cmr1648824ejc.108.1658465690190; 
 Thu, 21 Jul 2022 21:54:50 -0700 (PDT)
Received: from ?IPV6:2003:c7:8f2e:6979:bc71:385a:5363:16f9?
 (p200300c78f2e6979bc71385a536316f9.dip0.t-ipconnect.de.
 [2003:c7:8f2e:6979:bc71:385a:5363:16f9])
 by smtp.gmail.com with ESMTPSA id
 c1-20020a17090618a100b0072321c99b78sm1560487ejf.57.2022.07.21.21.54.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 Jul 2022 21:54:49 -0700 (PDT)
Message-ID: <11b4ef15-9fb5-2c40-90ae-11ee434bbea3@gmail.com>
Date: Fri, 22 Jul 2022 06:54:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Abhijeet Srivastava <abhijeet.srivastava2308@gmail.com>
References: <20220721150055.52096-1-abhijeet.srivastava2308@gmail.com>
From: Philipp Hortmann <philipp.g.hortmann@gmail.com>
In-Reply-To: <20220721150055.52096-1-abhijeet.srivastava2308@gmail.com>
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 7/21/22 17:00, Abhijeet Srivastava wrote: > Warning found
 by checkpatch.pl script. > > Signed-off-by: Abhijeet Srivastava > --- >
 drivers/staging/media/zoran/zoran_card.c
 | 4 ++-- > 1 file change [...] 
 Content analysis details:   (-2.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [philipp.g.hortmann[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.218.48 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.218.48 listed in wl.mailspike.net]
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1oEkgj-0004QD-1j
X-Mailman-Approved-At: Fri, 22 Jul 2022 10:08:19 +0000
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

On 7/21/22 17:00, Abhijeet Srivastava wrote:
> Warning found by checkpatch.pl script.
> 
> Signed-off-by: Abhijeet Srivastava <abhijeet.srivastava2308@gmail.com>
> ---
>   drivers/staging/media/zoran/zoran_card.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
> index 26f978a1cc72..0c138d47d0c3 100644
> --- a/drivers/staging/media/zoran/zoran_card.c
> +++ b/drivers/staging/media/zoran/zoran_card.c
> @@ -1038,9 +1038,9 @@ static int zr36057_init(struct zoran *zr)
>   	zr->stat_com = dma_alloc_coherent(&zr->pci_dev->dev,
>   					  BUZ_NUM_STAT_COM * sizeof(u32),
>   					  &zr->p_sc, GFP_KERNEL);
> -	if (!zr->stat_com) {
> +	if (!zr->stat_com)
>   		return -ENOMEM;
> -	}
> +
>   	for (j = 0; j < BUZ_NUM_STAT_COM; j++)
>   		zr->stat_com[j] = cpu_to_le32(1); /* mark as unavailable to zr36057 */
>   


Why does the subject line start with "media:" The subsystem is 
"staging:" so the subject should start with "staging: media: ..."

I have no clue if this is accepted.

Regards,

Philipp


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
