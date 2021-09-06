Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F771401DF2
	for <lists+mjpeg-users@lfdr.de>; Mon,  6 Sep 2021 18:00:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mNH30-0007hO-If; Mon, 06 Sep 2021 16:00:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hverkuil@xs4all.nl>) id 1mNBkI-0000UN-Av
 for mjpeg-users@lists.sourceforge.net; Mon, 06 Sep 2021 10:20:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8M6fyXU8grftY5acc4WLDDPOWY8QgCOCeUkFDXV+KPU=; b=ja7I+ehlc6Q5DW5E7TFX/GiIb/
 7pCtgEb8gxvJT+rbbKAQe3lk3lQ7ODfaq0HB/b2sg3NqBcAJzTFFwxE37pOCSLAeC7RHPqWbNIZD8
 wB98+Hh5WHGy962aMPdaN+3n6wKiXeP5MNhVQ2FhkvXNDsQRFwABXHmMawk5rDy+n3XM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8M6fyXU8grftY5acc4WLDDPOWY8QgCOCeUkFDXV+KPU=; b=DC15mQYIznQOjoc7mHUi/b4Npn
 2CJDzihTL/6eNGJ9fVRFEDfKOHoPuPCMGUHGd7HQN2WiGPHJxQwcx1G7MoiAD0yibogIHzrjYI75/
 6gw8hlcexZOTYAoXEPwUFakqI/trxhw5A6jFcoLdDkFg6FsyDFt8+vnwLhK00uwzrx+U=;
Received: from lb2-smtp-cloud9.xs4all.net ([194.109.24.26])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mNBkD-0006mf-Qz
 for mjpeg-users@lists.sourceforge.net; Mon, 06 Sep 2021 10:20:58 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud9.xs4all.net with ESMTPA
 id NBk3m6fBqlQKhNBk5mQu1h; Mon, 06 Sep 2021 12:20:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1630923645; bh=8M6fyXU8grftY5acc4WLDDPOWY8QgCOCeUkFDXV+KPU=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=dKwT0S8J0N6ZrbSmE7xqgceQhyOMWDRFyFhYD5iUoFUXqknXGnzuiwkwmJittzAvy
 THHO0jx60Qtjo50x0lEdaxLXNhN75ciGo0TWyGIJEaIjtv12ki/dhDC+NwYSFaNU9w
 6KkLoSeHcyhibK1fKB3Wp/Rm7mYfDg1JGld8EKH3Kv7yFSksy8giYrLFpEAm3zKeoh
 SMOq8/iLun50aem46YasPHWadrN/SdG2JZl++NQeqL8Hk+k4CeVMJLyNl+UoXf7X41
 DWYA1GLbQZpeam9CUg4dDZs6/h3uLjHkdRJhPx3bP6LKVwINRirxC0a62jR2WgJKi3
 zroWM0CbZz6Ig==
To: Corentin Labbe <clabbe@baylibre.com>, gregkh@linuxfoundation.org,
 mchehab@kernel.org
References: <20210903191540.3052775-1-clabbe@baylibre.com>
 <20210903191540.3052775-5-clabbe@baylibre.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <e6b6affa-278a-5ef8-1cb1-b111a0756ea8@xs4all.nl>
Date: Mon, 6 Sep 2021 12:20:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210903191540.3052775-5-clabbe@baylibre.com>
Content-Language: en-US
X-CMAE-Envelope: MS4xfDdWVs9b//OYKD3Eufj05LU8pujp9tdhbk8S4oPJD55X6ikCeMW+LFnUIf50HSwhAr+I0ETlEPEKAjVOVfPauQM2NAQqFvSOZBN2y+4g0Cv3W+Je34BU
 UrR8LztNcNV47XcpfNuHpYGOJqStOMmeGM6G//vs2Fe9JceVKiw921aDhleRLh6dpChhWN/aeP1DyOELmniy/ZtXbP61GR4pAE8wThNevNSyMtt5rJ+GuDhd
 UZ17TzJh46zrSw/n3d+73BXJXrWvWggJ0L2/+pA6PwvNl228P6UI9TSpO61uxEhaFOPPFu/nDzjshLlv05jQNi7suKt8ZA0J5BojnNEnSmfHLx9x95GlBxr5
 QU/r96hiVTkHPZOoqAvIy1iSgOB9yG2aSoAV2nsPjmEOP8edIQAau98d8itDdcCe9WYO+H+tUQTgC/0ObXykuiEKuGAfrW6kVSpHr+5LdTxe7FwKyBH5QFuE
 sdAGypUeFF55WqWXi6ZVqAfrb0ZGJHshaV5hpuY9KaW63TbTD47VDF5hC+E=
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
X-Headers-End: 1mNBkD-0006mf-Qz
X-Mailman-Approved-At: Mon, 06 Sep 2021 16:00:35 +0000
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
Cc: mjpeg-users@lists.sourceforge.net, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

On 03/09/2021 21:15, Corentin Labbe wrote:
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

This should be %llx, otherwise you get a compile warning.

Regards,

	Hans

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
>  	return 0;
>  
>  zr_detach_vfe:
> 



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
