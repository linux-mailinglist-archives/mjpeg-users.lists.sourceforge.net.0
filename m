Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F2407283DB1
	for <lists+mjpeg-users@lfdr.de>; Mon,  5 Oct 2020 19:44:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1kPUX3-0007KU-BL; Mon, 05 Oct 2020 17:44:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <clabbe@baylibre.com>) id 1kP86U-0001O5-KP
 for mjpeg-users@lists.sourceforge.net; Sun, 04 Oct 2020 17:47:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xZb9ZPx925o3OtV1iHv7jgcfUYkClsADhGTqG4VVBZQ=; b=Ij4d68etPD3xLWrxR4+wRZTLZT
 vIiISwSDMUguPy0Z2ZsGAjMgdb2EupEEYfHftGMVtuavPQ2jvsiEaHikGvOENESYM6eP0Xm9mMIrc
 M1LWt2r+b07w9aL9GYlGloAxLL+Z1Jz0jDjS1sadW9h6DOpps4yFJutaTtMjY2/AiEtI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xZb9ZPx925o3OtV1iHv7jgcfUYkClsADhGTqG4VVBZQ=; b=dwz7rJZi88NamM0Twj8fvVweaD
 M8GYHbkpbRDZpSzFPihubn69E3Bkpqpo8ORESQUwdJ8iOV8WEifttGjYrCF7mnYUww+NmQeV+U+qk
 glaWIoZ6WwBBH7SgPEGY8ooPcsTt0HddMqVoRe/sQNZImi4Baj9lBAUnht94wq6vGW6E=;
Received: from mail-wm1-f68.google.com ([209.85.128.68])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kP86G-00GV3o-6a
 for mjpeg-users@lists.sourceforge.net; Sun, 04 Oct 2020 17:47:22 +0000
Received: by mail-wm1-f68.google.com with SMTP id z22so327264wmi.0
 for <mjpeg-users@lists.sourceforge.net>; Sun, 04 Oct 2020 10:47:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=xZb9ZPx925o3OtV1iHv7jgcfUYkClsADhGTqG4VVBZQ=;
 b=a1lT+kITTxZoMYdlrn0a8YZ3eYwhdfwvsNwzaM5mcrFlgcCQLKHacFtLl/AO7nxwo6
 ZUhHhyOFJc0byw3/WZvqOtnfHy08gpGybBDq2bdzhiPsyL2sYugYTPqcTdfaZYeMA2/Y
 I2NuCbM5zP1rUMOr0c5CiPBIk8Q58rv8gbuW8CUGCAozutPVsRMHvY8rAsAtlPF35zsW
 89uRb2tPzTanOqpoBOiNHSFHtbY2z9DfibF9RVKHW2OYVi0dfdCWT7E22UVxNaOK1Trv
 X9NJxwdHQGPfE117H+M0EV5MzLlA+GhDstlV+cuVaGVfl7A/DZjDgl7RFG4l5DaWIwmT
 P/Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=xZb9ZPx925o3OtV1iHv7jgcfUYkClsADhGTqG4VVBZQ=;
 b=RzXh+HG4+cf9FV3/Og+P5WMP7cc1xlffIO1b76rqjfrl1JHnmk9zGfJDVDUJGIPtmY
 rJPOJP0QJZDj7cRRwwHgYznKHF9n3roiLEX9m9bBTXZmSnxzpqMHYsv7xroXCh7Km+xw
 ApWcTWQLJxOMjdKiXtA63LwepgfgB0pypoAO2xSsyZ1iyWbHzr371hUPe+lIK3+a9L6H
 CREL6FjyQ3kbeenq2NuUsFXPbfueYwHlKO/sR8ZJJIeCcKLF734FLxdRkN37tHQh1XNl
 dq+Md6hsASsSWksTG8KWQcMcYdgtMUuJlisqfRzFR6WOX6Pz3Mcm6dKeJNnsxs1w9ThQ
 YJVA==
X-Gm-Message-State: AOAM530ovjHeQ71k+Lxj3rGarlgJ7+O11G375KErgh1K9mHA8/7zRl+I
 FzraB/prEjo+oK8ZxLZY487Dxg==
X-Google-Smtp-Source: ABdhPJybmll9TQHS7y1+8M8alBfioU4eEPKn3U3aBe/VWg01Vh0UPrN1YKNOb9nvmW4dZhhLG9O4fA==
X-Received: by 2002:a1c:6004:: with SMTP id u4mr5348656wmb.44.1601833614456;
 Sun, 04 Oct 2020 10:46:54 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id y23sm6259129wra.55.2020.10.04.10.46.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 04 Oct 2020 10:46:53 -0700 (PDT)
Date: Sun, 4 Oct 2020 19:46:51 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Message-ID: <20201004174651.GA28143@Red>
References: <6b90346919d42ffc7c3ad283bfca2825b238147a.1601714147.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6b90346919d42ffc7c3ad283bfca2825b238147a.1601714147.git.mchehab+huawei@kernel.org>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: baylibre.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kP86G-00GV3o-6a
X-Mailman-Approved-At: Mon, 05 Oct 2020 17:44:15 +0000
Subject: Re: [Mjpeg-users] [PATCH 1/4] media: zoran: move documentation file
 to the right place
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
Cc: Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org,
 linuxarm@huawei.com, linux-kernel@vger.kernel.org,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, mjpeg-users@lists.sourceforge.net,
 mauro.chehab@huawei.com, Mauro Carvalho Chehab <mchehab@kernel.org>,
 "Daniel W. S. Almeida" <dwlsalmeida@gmail.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

On Sat, Oct 03, 2020 at 10:41:54AM +0200, Mauro Carvalho Chehab wrote:
> The zoran revert patch misplaced the Zoran doc file. Move it to
> the right place.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  Documentation/driver-api/media/drivers/index.rst                 | 1 +
>  .../{media => driver-api/media/drivers}/v4l-drivers/zoran.rst    | 0
>  2 files changed, 1 insertion(+)
>  rename Documentation/{media => driver-api/media/drivers}/v4l-drivers/zoran.rst (100%)
> 
> diff --git a/Documentation/driver-api/media/drivers/index.rst b/Documentation/driver-api/media/drivers/index.rst
> index 5f340cfdb4cc..eb7011782863 100644
> --- a/Documentation/driver-api/media/drivers/index.rst
> +++ b/Documentation/driver-api/media/drivers/index.rst
> @@ -25,6 +25,7 @@ Video4Linux (V4L) drivers
>  	sh_mobile_ceu_camera
>  	tuners
>  	vimc-devel
> +	zoran
>  
>  
>  Digital TV drivers
> diff --git a/Documentation/media/v4l-drivers/zoran.rst b/Documentation/driver-api/media/drivers/v4l-drivers/zoran.rst
> similarity index 100%
> rename from Documentation/media/v4l-drivers/zoran.rst
> rename to Documentation/driver-api/media/drivers/v4l-drivers/zoran.rst
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
