Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BD21650E546
	for <lists+mjpeg-users@lfdr.de>; Mon, 25 Apr 2022 18:11:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1nj1JN-0007AR-Lt; Mon, 25 Apr 2022 16:11:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <clabbe@baylibre.com>) id 1niiAI-0002LW-QP
 for mjpeg-users@lists.sourceforge.net; Sun, 24 Apr 2022 19:45:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TAcvEbQ4Hi/Z0gz3UjE0i+qjlqG34Q9luvJnqApGvbA=; b=H2jGPhNK4WAW6hxDS6LPqQlQsq
 w3cqE/PCumriHgYP1gtdky3oWnrOQSCbCuuzEuqw6md2paCY6GkIirZZqu2HNQd9poMAmIbqKuNR2
 gVX2Q1+Jflvs99HZLbJm3n0RPide2HQS0fq/kzXaDg6+IXOQ+dFVXhIp6k9C7kUshRcw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TAcvEbQ4Hi/Z0gz3UjE0i+qjlqG34Q9luvJnqApGvbA=; b=ZmJaOaFV8BQElVUfRogPtjICtX
 V1hSTYVjd81G9zb6wfxiepDedpdQLc4MyuPod6bm8A4sG8QuJi7JorZehthzNZ0PRieDsVw6WLeBV
 JkhrX8Pbmr3TgNCND+NYq615xVpowYAR/BtgAvG8Rer86MKY3nhysNPYW2ZSrjZKodT4=;
Received: from mail-wm1-f50.google.com ([209.85.128.50])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1niiAC-0092xT-6l
 for mjpeg-users@lists.sourceforge.net; Sun, 24 Apr 2022 19:45:03 +0000
Received: by mail-wm1-f50.google.com with SMTP id bg25so7422460wmb.4
 for <mjpeg-users@lists.sourceforge.net>; Sun, 24 Apr 2022 12:44:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=TAcvEbQ4Hi/Z0gz3UjE0i+qjlqG34Q9luvJnqApGvbA=;
 b=D/ADx9khHILYQpQIWtOdHIN6aldQ/ty9pW+eLDL0qrnHBF9ARTTrdJqiJTxn2BABWB
 gQWV0cOA5moixUEIyB4iOCp418tlodOVDVtVipfO9d+sijOSxoLDX2EzOpE/zrPSjL7p
 KbrLLdaOS5936HyM/1sVrEU39q/MhbI6w7w1wpXY4DOvcCvmv/wcDsiEiJSN38oEDWBt
 8hXn1JvxpMutRFc+EQe/w5BYU0EZfDwgSWfrrGt9fwteSoSYFauqVZNEAIRfAf6jUjcR
 OKuK4BrKMPzJQPfwNfqgrcDFGHNEMDRhAQD4uL36r/SqQV19ggfyGM7JYF7aL0TWNcXj
 /xqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=TAcvEbQ4Hi/Z0gz3UjE0i+qjlqG34Q9luvJnqApGvbA=;
 b=oNgovcyfI9IHXO1CO0gtkQoeu2zStN06JwqZGAfC1DJa03yScBIDFr3sCX9mSsGhqo
 KECOxN9VIZoe37IfhnmUEXl2klOk6mSdkd2o1ZKvHI3XTLBXqt1EmWZUaCC9T7O/o3BS
 mh65r/5I/CXfBGTZNwc+j2V9MfkK2bBHzbPLa6nrRKhxf3pZMKSWKiodqjGNPuWH9KUf
 eY/Mkemy21vCXOMetOSdTZObXL7n6urMSIvuSoUxbAEGlsV3FRuA6egZ4qQ2/rdQkW5v
 cylp7Px/QKuuuqziBchT2ST1vEFbP7bZSh9NOuIJGiMrS3cFFHub4y4JZ7arU82chWf1
 QKXw==
X-Gm-Message-State: AOAM530Yp67X5rONXuygLddFoskpQ5NY100Qz4QGdvSYNwwUC8QhAPta
 314aCjbIzYlSvOcd3ikWYVQyoX2HrPgDWA==
X-Google-Smtp-Source: ABdhPJwQPYtw9aEjA/OKMsrIT2eP69V9xi4HGkzFtFs5y52dVv9etB+hmue427mZ/Ag2IPb/B3593w==
X-Received: by 2002:a05:600c:a0b:b0:389:dd65:66f1 with SMTP id
 z11-20020a05600c0a0b00b00389dd6566f1mr13267425wmp.95.1650827844718; 
 Sun, 24 Apr 2022 12:17:24 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id
 r6-20020a1c4406000000b0039229d3c4eesm6954825wma.12.2022.04.24.12.17.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 Apr 2022 12:17:24 -0700 (PDT)
Date: Sun, 24 Apr 2022 21:17:22 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: Ian Cowan <ian@linux.cowan.aero>
Message-ID: <YmWiQsrPj0uIpZ7w@Red>
References: <20220423051745.292683-1-ian@linux.cowan.aero>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220423051745.292683-1-ian@linux.cowan.aero>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Le Sat, Apr 23, 2022 at 01:17:45AM -0400, Ian Cowan a écrit
    : > This adds the zrdev_dbg() (pointing to dev_dbg()), zrdev_err() (pointing
    > to dev_err()), and zrdev_info() (pointing to dev_info()) macr [...] 
 
 Content analysis details:   (-0.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.128.50 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.128.50 listed in wl.mailspike.net]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1niiAC-0092xT-6l
X-Mailman-Approved-At: Mon, 25 Apr 2022 16:11:41 +0000
Subject: Re: [Mjpeg-users] [PATCH 1/4] staging: media: zoran: add
 zrdev_dbg() macros
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
Cc: gregkh@linuxfoundation.org, linux-staging@lists.linux.dev,
 mjpeg-users@lists.sourceforge.net, mchehab@kernel.org,
 dan.carpenter@oracle.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

Le Sat, Apr 23, 2022 at 01:17:45AM -0400, Ian Cowan a =E9crit :
> This adds the zrdev_dbg() (pointing to dev_dbg()), zrdev_err() (pointing
> to dev_err()), and zrdev_info() (pointing to dev_info()) macros to the
> zoran drivers. These are the preferred method for debugging and this
> will allow to extract the device from the zoran struct to make the call.
> =

> Signed-off-by: Ian Cowan <ian@linux.cowan.aero>
> ---
>  drivers/staging/media/zoran/zoran.h | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> =

> diff --git a/drivers/staging/media/zoran/zoran.h b/drivers/staging/media/=
zoran/zoran.h
> index 654c95fa5aba..42b86356c022 100644
> --- a/drivers/staging/media/zoran/zoran.h
> +++ b/drivers/staging/media/zoran/zoran.h
> @@ -19,6 +19,7 @@
>  #define _BUZ_H_
>  =

>  #include <linux/debugfs.h>
> +#include <linux/dev_printk.h>
>  #include <media/v4l2-device.h>
>  #include <media/v4l2-ctrls.h>
>  #include <media/videobuf2-core.h>
> @@ -301,6 +302,18 @@ static inline struct zoran *to_zoran(struct v4l2_dev=
ice *v4l2_dev)
>  =

>  #endif
>  =

> +/**
> + * Debugging macros
> + */
> +#define zrdev_dbg(zr, format, args...) \
> +	dev_dbg(&zr->video_dev->dev, format, ##args) \
> +
> +#define zrdev_err(zr, format, args...) \
> +	dev_err(&zr->video_dev->dev, format, ##args) \
> +
> +#define zrdev_info(zr, format, args...) \
> +	dev_info(&zr->video_dev->dev, format, ##args) \
> +
>  int zoran_queue_init(struct zoran *zr, struct vb2_queue *vq, int dir);
>  void zoran_queue_exit(struct zoran *zr);
>  int zr_set_buf(struct zoran *zr);
> -- =

> 2.35.1
> =


Hello

Thanks for your patchs, removing dprintk is a good idea.
Please use pci_xxx() instead of dev_xxx() to be consistent with the rest of=
 the driver.
The comment title is misleading, zrdev_err is not about debugging. What abo=
ut Logging macros ?

Regards


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
