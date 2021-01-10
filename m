Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 317D32F1DC2
	for <lists+mjpeg-users@lfdr.de>; Mon, 11 Jan 2021 19:15:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1kz1jH-0001k6-9P; Mon, 11 Jan 2021 18:15:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <clabbe@baylibre.com>) id 1kyirt-00032f-UB
 for mjpeg-users@lists.sourceforge.net; Sun, 10 Jan 2021 22:07:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vzqtQyMRq4VCQF1VUb0eyXg1Bg4nfSL5atIamSsB9uc=; b=D1aDytsvkjpccN7n5QeMJ3UpYU
 AU/4xjaEZydc2OpGITt6Z1FHUFWItKYTIOS3pFMkR2S1sDyOoeHY1TkxU2MGtSRQ59Dh4c0rtXcCf
 zMgeyk8PVED4IFTVmqt+wY5Mt/UCTnQI0dikDcpd6dpeeYP+MgRRAXjMaGi+n0toYUWs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vzqtQyMRq4VCQF1VUb0eyXg1Bg4nfSL5atIamSsB9uc=; b=UBknX7l2c6rR7h1wmx82FBs4qq
 Kgg0cFEldYYXc6SYJx74SrBimbVeOKU90G/qQ21cXN8fIxJYJ5fIYSzhxy24bS3TnZMpuLVJPGC/D
 GFR4Pa7oC4/e9yASRWx3NrEoiMZWNiti8ShzA9235S6YoFbBLJjvqfRaX2nBI5SytUls=;
Received: from mail-ed1-f48.google.com ([209.85.208.48])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kyirg-007Zb5-34
 for mjpeg-users@lists.sourceforge.net; Sun, 10 Jan 2021 22:07:25 +0000
Received: by mail-ed1-f48.google.com with SMTP id cw27so16868493edb.5
 for <mjpeg-users@lists.sourceforge.net>; Sun, 10 Jan 2021 14:07:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=vzqtQyMRq4VCQF1VUb0eyXg1Bg4nfSL5atIamSsB9uc=;
 b=x6LH5YZ4oO5+9nfetywRMADEwS3U7bawPknEEexOvy+CexY+QJbashKsVPIyMqwMgC
 6R0692/OaofsGMM5qHr6+WI/ZCm3momWjYGvNoN9NvQqwdr+PyBNw3LTHxkdG94s7t8e
 8MqkEXp7kKTOediovoBQTwS8bw/tKTe8PbeSiy3qXVDf19YE0Y8kE1Wz3RxdVGH7HsK0
 83Qql7RuMHUInzaieaPxgPzrSqTji74SfwGSiGngmIZ7Z4jJkPo5QeQHTh7xWRRuy+ul
 QYc/haAKWm78z9SqOxtVuybYYoMUMIcwwCma6k81FHNUtMSfN2ITDTm9NBnf7rynJs36
 VFsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=vzqtQyMRq4VCQF1VUb0eyXg1Bg4nfSL5atIamSsB9uc=;
 b=uDkL2EQlGSGLNwOVMcdfp6L8QO0yFYd+zOF8La0NHVrUAhfswCMrlj2KDelGdHLb68
 iGVRO0kC/XkAlVu1eZZoN+AziN0PclR7sxANyRMHetVnGG2UwFhNqwI8Vjc1/yGbM9uY
 6r6J7XuY22joMdHl23ici6Ykt4vMlrHFVL1LRgdXk/8VBe28q95Q0LiI+SubQ+OOqhuT
 QAgglh+hVQpvZBKzFPSwGVK92dQFY1OUWWeW4owB7rksBrgacFjMzx2U3ZU+3D9QScdn
 89wncXXZQ7rAzOTEI+IMxEMjMSYcSeKcI6MfgBrmFCtP4/KMYhALNZnABTqWEo8nB5E3
 ttdw==
X-Gm-Message-State: AOAM5308S40fOP7WWUzIYSLpsFEHuDpprotya88TcxQYJ0mUqAE1xsDj
 ikRitK7UhPrH6pdXWuEOeg9GQrEJCwtK5w==
X-Google-Smtp-Source: ABdhPJz5Dfz18y8QFO6GGNqOBNMf1RBCsaBQ6rZSVsoyLzkwP4MPg+sEKPlH4sybqmqVaN00KS42qg==
X-Received: by 2002:a05:6000:100f:: with SMTP id
 a15mr13320174wrx.300.1610309496048; 
 Sun, 10 Jan 2021 12:11:36 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id h3sm19805291wmm.4.2021.01.10.12.11.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 10 Jan 2021 12:11:35 -0800 (PST)
Date: Sun, 10 Jan 2021 21:11:33 +0100
From: LABBE Corentin <clabbe@baylibre.com>
To: Zheng Yongjun <zhengyongjun3@huawei.com>
Message-ID: <X/tfdbVP5R2dzMuv@Red>
References: <20210108092119.18642-1-zhengyongjun3@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210108092119.18642-1-zhengyongjun3@huawei.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.48 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.48 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kyirg-007Zb5-34
X-Mailman-Approved-At: Mon, 11 Jan 2021 18:15:46 +0000
Subject: Re: [Mjpeg-users] [PATCH v2 -next] media: zoran: convert comma to
 semicolon
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, mjpeg-users@lists.sourceforge.net,
 mchehab@kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

Le Fri, Jan 08, 2021 at 05:21:19PM +0800, Zheng Yongjun a =E9crit :
> Replace a comma between expression statements by a semicolon.
> =

> Signed-off-by: Zheng Yongjun <zhengyongjun3@huawei.com>
> ---
>  drivers/staging/media/zoran/zoran_driver.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging=
/media/zoran/zoran_driver.c
> index 808196ea5b81..d60b4c73ea80 100644
> --- a/drivers/staging/media/zoran/zoran_driver.c
> +++ b/drivers/staging/media/zoran/zoran_driver.c
> @@ -1020,7 +1020,7 @@ int zoran_queue_init(struct zoran *zr, struct vb2_q=
ueue *vq)
>  	vq->buf_struct_size =3D sizeof(struct zr_buffer);
>  	vq->ops =3D &zr_video_qops;
>  	vq->mem_ops =3D &vb2_dma_contig_memops;
> -	vq->gfp_flags =3D GFP_DMA32,
> +	vq->gfp_flags =3D GFP_DMA32;
>  	vq->timestamp_flags =3D V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
>  	vq->min_buffers_needed =3D 9;
>  	vq->lock =3D &zr->lock;
> -- =

> 2.22.0
> =


Acked-by: Corentin Labbe <clabbe@baylibre.com>

Thanks!


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
