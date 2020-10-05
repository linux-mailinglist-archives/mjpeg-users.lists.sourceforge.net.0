Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EB921283DB0
	for <lists+mjpeg-users@lfdr.de>; Mon,  5 Oct 2020 19:44:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1kPUX3-0007Kr-Gm; Mon, 05 Oct 2020 17:44:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <clabbe@baylibre.com>) id 1kPO5I-0002jp-F8
 for mjpeg-users@lists.sourceforge.net; Mon, 05 Oct 2020 10:51:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=M2zjVVLnmwFQgT7Kn7CpiF/4Y0RRRZlogY57D59OL1Q=; b=Weww90izO2eHD9aBp+orzNkIDO
 OyzKQxtDANR9oDgOQ1i4MFSp59HSuAJ5mI5O2AzUMKn2C4MBkSaw/z4kI9bSSlza749Gm4yiKlKdQ
 3azwyHB0VkTZcyYjkVb3Ut0WQDI0cIWMTQKnHtEkcFE8dOw4xSsHI80Cop74uCMVZ60A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=M2zjVVLnmwFQgT7Kn7CpiF/4Y0RRRZlogY57D59OL1Q=; b=JNPwk15ExyJh11okftKov45VQG
 W125StGi9lAcwged2dVbvL4fAHReBlSlyxbCdd/+Pjj9rDjoja+/n23/e/bsWe50I2Hg39Hxk0XEG
 zl+qpZJaxjSr7WjqJ6y3U//zEYr4Kr2zWqVANDbEBHP2a9qpFKv7PdjsxxARUp1yhM9s=;
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kPO53-00HBUe-NW
 for mjpeg-users@lists.sourceforge.net; Mon, 05 Oct 2020 10:51:12 +0000
Received: by mail-wr1-f66.google.com with SMTP id e17so298321wru.12
 for <mjpeg-users@lists.sourceforge.net>; Mon, 05 Oct 2020 03:50:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=M2zjVVLnmwFQgT7Kn7CpiF/4Y0RRRZlogY57D59OL1Q=;
 b=azTf+aCmxMcqsH4Q4OfDxJ0dGV/q88u03C/J+CGqrLXxLnSr1TDFyK7CNHb19lKJBQ
 zdh/JJy7p5benO94gyyJT53xEev17bUpps4y4pLsUM0aIMQXsK6FQJLPFv5W7TzYRvHu
 OFW8pRS5yIuyHvkfEY3Pnzy+Fq6iHIGUuZxZRj8D+eKJ9PaDqkhlZxc2oyoEmf/ZvXKY
 E5lvDFa1vXAlioPuUeqqcLraDukoJYrnCW5ogg44vvIoeY+0vd2hcLBRtxdhkc7ikxky
 AQA5dBAT7nSQxMVmoVhbGiBeVkjV6s3Xstr3TfpbY5u8dAAP736uCK/nE+PX+wRAYmqA
 mqEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=M2zjVVLnmwFQgT7Kn7CpiF/4Y0RRRZlogY57D59OL1Q=;
 b=HfMBZCCyjDGGH3liL+K1cSYBJIAzQox4Trh1QhTikvuzpALQElclzl0s8HiivzZzbo
 6ZUexbza/GxRAJyJZH81zelhTgT9ohZopJQIWj1+RrHlsAAwm9XqjNRrNu2S/dQsI2b9
 rjn0tH31vDXFwDxN2eq+RJAen8N7dFWK2LRV/wBuHV4V5daDauc4JCnTudXS+UvsxPPj
 n9Dpd/urxl7WrvwZV7ZzMg+keLtjJDxk5LEcZkZp+C5s5zDoQFw4z60OUyCtSkmvK39y
 ehC+gnmweCogfNXUHOzj/YuP7xcbt98OM34gzsQZkCMVvTT3wwTaflUtWcpGBk00+pim
 x+IA==
X-Gm-Message-State: AOAM532/FFDlrY5mW1+X85NQEFpCiMQ2cEscQm13JGVeaUQWbaauIb+N
 3b9Ru4XScmNMtTPwQk8wLU2s/g==
X-Google-Smtp-Source: ABdhPJyEPRxZd10VmSgHtfqoF+IWeXOoAoyzPP9zyjZ+55dwWBSUiJ1xTTKQhGeCWZvHzXjTlfeNWg==
X-Received: by 2002:a5d:62d0:: with SMTP id o16mr2426402wrv.388.1601895044152; 
 Mon, 05 Oct 2020 03:50:44 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id m13sm12871557wrr.74.2020.10.05.03.50.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 05 Oct 2020 03:50:43 -0700 (PDT)
Date: Mon, 5 Oct 2020 12:50:41 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: Colin King <colin.king@canonical.com>
Message-ID: <20201005105041.GB29306@Red>
References: <20201002101620.86156-1-colin.king@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201002101620.86156-1-colin.king@canonical.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kPO53-00HBUe-NW
X-Mailman-Approved-At: Mon, 05 Oct 2020 17:44:15 +0000
Subject: Re: [Mjpeg-users] [PATCH][next] media: zoran: fix spelling mistake
 and make error message more meaningful
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 mjpeg-users@lists.sourceforge.net, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

On Fri, Oct 02, 2020 at 11:16:20AM +0100, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> There is a spelling mistake in a pci_err error message. Fix this and
> make the error message a little more meaningful.
> 
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>  drivers/staging/media/zoran/zoran_driver.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
> index 808196ea5b81..d9f8b21edf6a 100644
> --- a/drivers/staging/media/zoran/zoran_driver.c
> +++ b/drivers/staging/media/zoran/zoran_driver.c
> @@ -666,7 +666,7 @@ static int zoran_g_selection(struct file *file, void *__fh, struct v4l2_selectio
>  
>  	if (sel->type != V4L2_BUF_TYPE_VIDEO_OUTPUT &&
>  	    sel->type != V4L2_BUF_TYPE_VIDEO_CAPTURE) {
> -		pci_err(zr->pci_dev, "%s invalid combinaison\n", __func__);
> +		pci_err(zr->pci_dev, "%s invalid selection type combination\n", __func__);
>  		return -EINVAL;
>  	}
>  
> -- 
> 2.27.0
> 

Hello

Acked-by: Corentin Labbe <clabbe@baylibre.com>

Thanks


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
