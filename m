Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B52400BA9
	for <lists+mjpeg-users@lfdr.de>; Sat,  4 Sep 2021 16:35:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mMWlJ-0004C1-FW; Sat, 04 Sep 2021 14:35:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <gregkh@linuxfoundation.org>) id 1mMOcH-0002qU-4n
 for mjpeg-users@lists.sourceforge.net; Sat, 04 Sep 2021 05:53:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TnrHS55J1/CCmhhmNN0Xsgpg2WaTq3zIYJ0S2vGDUm8=; b=RJchXFcqo2vmEA8HTkdr2pJvgf
 JFQibSU5GT02ItXXWU+BJz9OQ7ySUaTMKi1fkZFOg2ICc3qO6FoNXVbJI7UW2G23hu2vU2tL73qny
 LJloH8OZtrItS1vzKnM9BMM70xycGDk8OzpZ1AJAL2JzXurLr058LUnsKZiE3wJzdyd8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TnrHS55J1/CCmhhmNN0Xsgpg2WaTq3zIYJ0S2vGDUm8=; b=BP1YrG45zwGT4VKYyl0uBA1pJL
 U38ivYWPYMF3VSy74pS3pzhvE+R32r+qibPC1MSr3shWbSiuqwW1WRjNJENPG3VhxLDS9WXQui+cu
 bdWYeRPZU7GEB9Yk67A0QtJ33gUnPDfsgA+p9YvxZXV29u1QJM5q8ngSxjbEcZ6SyEDw=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mMOc9-0004PM-N9
 for mjpeg-users@lists.sourceforge.net; Sat, 04 Sep 2021 05:53:25 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id BDBA960F90;
 Sat,  4 Sep 2021 05:53:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1630734783;
 bh=qpOBAvDkDu13hb8ihotJ6B5GQ43H7dVCqgu92ZbgssU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ndzyo0kLml9lgVZDXvNlZX+vzt4QXmPQ7+BNSvOVHfTm0nomUhDRy6PDuJG2tuZD3
 ELl2PD8Ip3r2wpTq/UGUvZKU8cHDJ49kLCy1L65JJ3kJqLcMDwIuf6ZyJdr7CkqbjB
 vj2vjdkS95DrO9+aEbvnxTJ2+1+3vqjYTBKVxvkI=
Date: Sat, 4 Sep 2021 07:53:00 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Corentin Labbe <clabbe@baylibre.com>
Message-ID: <YTMJvI1C1OmBgdeI@kroah.com>
References: <20210903191540.3052775-1-clabbe@baylibre.com>
 <20210903191540.3052775-5-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210903191540.3052775-5-clabbe@baylibre.com>
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: baylibre.com]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1mMOc9-0004PM-N9
X-Mailman-Approved-At: Sat, 04 Sep 2021 14:35:14 +0000
Subject: Re: [Mjpeg-users] [PATCH 4/8] staging: media: zoran: add debugfs
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
Cc: linux-staging@lists.linux.dev, mjpeg-users@lists.sourceforge.net,
 mchehab@kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

On Fri, Sep 03, 2021 at 07:15:36PM +0000, Corentin Labbe wrote:
> Add debugfs for displaying zoran debug and stats information.
> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  drivers/staging/media/zoran/Kconfig      | 10 ++++++
>  drivers/staging/media/zoran/zoran.h      |  5 +++
>  drivers/staging/media/zoran/zoran_card.c | 39 ++++++++++++++++++++++++
>  3 files changed, 54 insertions(+)
> 
> diff --git a/drivers/staging/media/zoran/Kconfig b/drivers/staging/media/zoran/Kconfig
> index 7874842033ca..7d2d3c2431b1 100644
> --- a/drivers/staging/media/zoran/Kconfig
> +++ b/drivers/staging/media/zoran/Kconfig
> @@ -74,3 +74,13 @@ config VIDEO_ZORAN_AVS6EYES
>  	select VIDEO_KS0127 if MEDIA_SUBDRV_AUTOSELECT
>  	help
>  	  Support for the AverMedia 6 Eyes video surveillance card.
> +
> +config VIDEO_ZORAN_DEBUG
> +	bool "Enable zoran debugfs"
> +	depends on VIDEO_ZORAN
> +	depends on DEBUG_FS
> +	help
> +	  Say y to enable zoran debug file.
> +	  This will create /sys/kernel/debug/CARD_NAME/debug for displaying
> +	  stats and debug information.
> +
> diff --git a/drivers/staging/media/zoran/zoran.h b/drivers/staging/media/zoran/zoran.h
> index b1ad2a2b914c..8c271005f14d 100644
> --- a/drivers/staging/media/zoran/zoran.h
> +++ b/drivers/staging/media/zoran/zoran.h
> @@ -18,6 +18,7 @@
>  #ifndef _BUZ_H_
>  #define _BUZ_H_
>  
> +#include <linux/debugfs.h>
>  #include <media/v4l2-device.h>
>  #include <media/v4l2-ctrls.h>
>  #include <media/videobuf2-core.h>
> @@ -295,6 +296,10 @@ struct zoran {
>  	struct list_head queued_bufs;
>  	spinlock_t queued_bufs_lock; /* Protects queued_bufs */
>  	struct zr_buffer *inuse[BUZ_NUM_STAT_COM * 2];
> +#ifdef CONFIG_VIDEO_ZORAN_DEBUG
> +	struct dentry *dbgfs_dir;
> +	struct dentry *dbgfs_file;

No need for these, the file is never referenced and the directory can be
looked up when you want to remove it.

> +#endif
>  };
>  
>  static inline struct zoran *to_zoran(struct v4l2_device *v4l2_dev)
> diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
> index f1465fbf98af..1ed8ed2f4f7f 100644
> --- a/drivers/staging/media/zoran/zoran_card.c
> +++ b/drivers/staging/media/zoran/zoran_card.c
> @@ -1051,6 +1051,39 @@ static const struct v4l2_ctrl_ops zoran_video_ctrl_ops = {
>  	.s_ctrl = zoran_video_set_ctrl,
>  };
>  
> +#ifdef CONFIG_VIDEO_ZORAN_DEBUG
> +static int zoran_debugfs_show(struct seq_file *seq, void *v)
> +{
> +	struct zoran *zr = seq->private;
> +
> +	seq_printf(seq, "Running mode %x\n", zr->running);
> +	seq_printf(seq, "Codec mode %x\n", zr->codec_mode);
> +	seq_printf(seq, "Norm %x\n", zr->norm);
> +	seq_printf(seq, "Input %d\n", zr->input);
> +	seq_printf(seq, "Buffersize %d\n", zr->buffer_size);
> +
> +	seq_printf(seq, "V4L width %dx%d\n", zr->v4l_settings.width, zr->v4l_settings.height);
> +	seq_printf(seq, "V4L bytesperline %d\n", zr->v4l_settings.bytesperline);
> +
> +	seq_printf(seq, "JPG decimation %u\n", zr->jpg_settings.decimation);
> +	seq_printf(seq, "JPG hor_dcm %u\n", zr->jpg_settings.hor_dcm);
> +	seq_printf(seq, "JPG ver_dcm %u\n", zr->jpg_settings.ver_dcm);
> +	seq_printf(seq, "JPG tmp_dcm %u\n", zr->jpg_settings.tmp_dcm);
> +	seq_printf(seq, "JPG odd_even %u\n", zr->jpg_settings.odd_even);
> +	seq_printf(seq, "JPG crop %dx%d %d %d\n",
> +		zr->jpg_settings.img_x,
> +		zr->jpg_settings.img_y,
> +		zr->jpg_settings.img_width,
> +		zr->jpg_settings.img_height);
> +
> +	seq_printf(seq, "Prepared %u\n", zr->prepared);
> +	seq_printf(seq, "Queued %u\n", zr->queued);
> +	return 0;
> +}
> +
> +DEFINE_SHOW_ATTRIBUTE(zoran_debugfs);
> +#endif
> +
>  /*
>   *   Scan for a Buz card (actually for the PCI controller ZR36057),
>   *   request the irq and map the io memory
> @@ -1286,6 +1319,12 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  
>  	zr->map_mode = ZORAN_MAP_MODE_RAW;
>  
> +#ifdef CONFIG_VIDEO_ZORAN_DEBUG
> +	zr->dbgfs_dir = debugfs_create_dir(ZR_DEVNAME(zr), NULL);
> +	zr->dbgfs_file = debugfs_create_file("debug", 0444,
> +					      zr->dbgfs_dir, zr,
> +					      &zoran_debugfs_fops);
> +#endif

Wait, when are you removing the files when the device is removed?

That needs to be fixed no matter what before this patch is accepted.

thanks,

greg k-h


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
