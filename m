Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CDFED283DAF
	for <lists+mjpeg-users@lfdr.de>; Mon,  5 Oct 2020 19:44:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1kPUX3-0007Ke-DY; Mon, 05 Oct 2020 17:44:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <clabbe@baylibre.com>) id 1kP86r-0001bl-6p
 for mjpeg-users@lists.sourceforge.net; Sun, 04 Oct 2020 17:47:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YJw0Qj8f58FIAtl0HsmWyiR6HhSRiM/PepYpAhE8SIQ=; b=Q9bPgK5x4TCrX7SUe63u6TMAfL
 Yp6iMqTX80rjPrYssVRHg7JkD7IVBU3GzR2YY8bDY7e2PD8fTq4MaC5giPMJ3d/ufBKaKKypDdEf7
 jFhE8eIIFH9ZWKqGFhZrTm2UzTLaTlxoCI0YJ8j5joGtbehF+NdCsCPpttbAmf06yml8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YJw0Qj8f58FIAtl0HsmWyiR6HhSRiM/PepYpAhE8SIQ=; b=kKHLRvHsl5cdyZs8tkwiENOds0
 jkubYm+lAvIxrKPhCyUkYXF2iWd8v8Th8XmhvTGMxb9W44WGTZdw9/9b0S4dqW3W3/QH6bCa26iTL
 hJB1REhEh+jbM3OBB99swGg3mcaInMrWtEXXhWj5RJRXKpuwiIiOOC8bELeOmnmL9bbA=;
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kP86U-002SxY-D2
 for mjpeg-users@lists.sourceforge.net; Sun, 04 Oct 2020 17:47:37 +0000
Received: by mail-wm1-f65.google.com with SMTP id l15so4461497wmh.1
 for <mjpeg-users@lists.sourceforge.net>; Sun, 04 Oct 2020 10:47:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=YJw0Qj8f58FIAtl0HsmWyiR6HhSRiM/PepYpAhE8SIQ=;
 b=G2w7BLthMK8XOVUbuQNX+ETbYdp9nLRFsABHXqzwiXLBYVDqmPQJwS0/V/Qax9eToz
 aECEibwJRXNUX1wesEI4JuGUw5wp1oQczjNijB10v5B3X11ppj7/qfxcuXJRin75nNLx
 Yf3u1f6ym6GcQvMSBYcMjhfOs82ZJUhh/Q2k79HWZ7ydhelqKcX9DPmZOaIUhrF3wh1l
 Psfb/tidTOoci+8LjzI9Qgdn+H6VF3XFds1TVbW08YAs6fBJ5aZmZ08UDT6jzgFQhpFI
 C8cNckxeMz9IYiXKfUzc4XgqBnIix50c0wnNp/0VNTZzkgytfJDxDW37GF/MGeu4M70j
 OA3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=YJw0Qj8f58FIAtl0HsmWyiR6HhSRiM/PepYpAhE8SIQ=;
 b=O8ssEWbpF/ryEEvY0g+ksY5jNC2rR9PY0n+mAC+3Tah+GER6YJrYUvP/QqJCzeFPo6
 +BJblEUaHMQbnaSfhhxDTMfvThvHe78LFIZjwXx/JvpHTUHBhycIfVJwPt5araMUW3ci
 E9lSY7UryAqmV/PmEBW5eBfo1WEME2ycrKWwJxWRijLoKqK9RhnOdYm5j/75bitsY7OF
 OlpkQ0ojTkck/NU/WKBG9NtHWJi5SQMgHlqWOTi6uYDakcS6Dcbpzz/3QTRIqpic2DXI
 gftc3gljETO/vLrIkXtbxUTqIFNkAf7/Qf7zXDBmWBDdXYj63hjG3GBsheAyKah2Xqct
 tGPQ==
X-Gm-Message-State: AOAM5306gx2GieiKvs5gp+H760jyQCvGSmSeSr8qMjuHDR8H3ZN1tnqM
 sNXp8j9RBLyxZh9wip3PgTUQhg==
X-Google-Smtp-Source: ABdhPJyCAM/U61j94aX364UfmH0bOJAsed17TsUxcQOQ9Q3xz+SXTURUA5Z4Zqh+8EEXEHXY+qMV6Q==
X-Received: by 2002:a7b:cb8c:: with SMTP id m12mr13421369wmi.12.1601833636064; 
 Sun, 04 Oct 2020 10:47:16 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id m3sm10682841wme.3.2020.10.04.10.47.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 04 Oct 2020 10:47:15 -0700 (PDT)
Date: Sun, 4 Oct 2020 19:47:13 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Message-ID: <20201004174713.GB28143@Red>
References: <0cef13d883e4644b4cf9b521d3f3e45355e60566.1601827201.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0cef13d883e4644b4cf9b521d3f3e45355e60566.1601827201.git.mchehab+huawei@kernel.org>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: baylibre.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kP86U-002SxY-D2
X-Mailman-Approved-At: Mon, 05 Oct 2020 17:44:15 +0000
Subject: Re: [Mjpeg-users] [PATCH] media: zoran.rst: place it at the right
 place this time
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
Cc: devel@driverdev.osuosl.org, Rob Herring <robh@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 mjpeg-users@lists.sourceforge.net, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

On Sun, Oct 04, 2020 at 06:00:30PM +0200, Mauro Carvalho Chehab wrote:
> I was too quick moving zoran.rst... it ends that the original
> patch didn't do the right thing and forgot to update the files
> that references it.
> 
> Fix it.
> 
> Fixes: 6b90346919d4 ("media: zoran: move documentation file to the right place")
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  .../driver-api/media/drivers/{v4l-drivers => }/zoran.rst        | 0
>  MAINTAINERS                                                     | 2 +-
>  drivers/staging/media/zoran/Kconfig                             | 2 +-
>  3 files changed, 2 insertions(+), 2 deletions(-)
>  rename Documentation/driver-api/media/drivers/{v4l-drivers => }/zoran.rst (100%)
> 
> diff --git a/Documentation/driver-api/media/drivers/v4l-drivers/zoran.rst b/Documentation/driver-api/media/drivers/zoran.rst
> similarity index 100%
> rename from Documentation/driver-api/media/drivers/v4l-drivers/zoran.rst
> rename to Documentation/driver-api/media/drivers/zoran.rst
> diff --git a/MAINTAINERS b/MAINTAINERS
> index ba5eb1dff9c2..7a12633747c8 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -19247,7 +19247,7 @@ L:	linux-media@vger.kernel.org
>  S:	Maintained
>  W:	http://mjpeg.sourceforge.net/driver-zoran/
>  Q:	https://patchwork.linuxtv.org/project/linux-media/list/
> -F:	Documentation/media/v4l-drivers/zoran.rst
> +F:	Documentation/driver-api/media/drivers/zoran.rst
>  F:	drivers/staging/media/zoran/
>  
>  ZPOOL COMPRESSED PAGE STORAGE API
> diff --git a/drivers/staging/media/zoran/Kconfig b/drivers/staging/media/zoran/Kconfig
> index 492507030276..7874842033ca 100644
> --- a/drivers/staging/media/zoran/Kconfig
> +++ b/drivers/staging/media/zoran/Kconfig
> @@ -8,7 +8,7 @@ config VIDEO_ZORAN
>  	  36057/36067 PCI controller chipset. This includes the Iomega
>  	  Buz, Pinnacle DC10+ and the Linux Media Labs LML33. There is
>  	  a driver homepage at <http://mjpeg.sf.net/driver-zoran/>. For
> -	  more information, check <file:Documentation/media/v4l-drivers/zoran.rst>.
> +	  more information, check <file:Documentation/driver-api/media/drivers/zoran.rst>.
>  
>  	  To compile this driver as a module, choose M here: the
>  	  module will be called zr36067.
> -- 
> 2.26.2
> 
Hello

Acked-by: Corentin Labbe <clabbe@baylibre.com>

Thanks


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
