Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DACA02EC9B3
	for <lists+mjpeg-users@lfdr.de>; Thu,  7 Jan 2021 05:55:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1kxNKD-0006ci-2h; Thu, 07 Jan 2021 04:55:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <clabbe@baylibre.com>) id 1kxFlu-0001Y5-OI
 for mjpeg-users@lists.sourceforge.net; Wed, 06 Jan 2021 20:51:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=w3vu7Q77s3pJWhDM2ZQklqoYrnX9v2imWoObUc3E/RA=; b=ScwTl3fJ3G5cA6zYQdT0B3woKA
 Kfr6wWZSt8nS1bivCy2qG6SDZzYGcGcdqGU1KQHcwTddIc0rxobke5sHORwq+ouEl2GuZCKmr06D7
 emqSb6S63ok3/kZsy6Tsh7wi0NC/YMs3lTZAOXebWEtNczxG1ZQWnPerl4bKx9bVBnEg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=w3vu7Q77s3pJWhDM2ZQklqoYrnX9v2imWoObUc3E/RA=; b=iv1U9h4W5Nteh9DozzrGpGupst
 ZbT+7Qtj4SYsDlPX8IomQAK7F/k2gqnzI4cfUrWWART0ePJ8FX0Mx37pmkBc+X81J2WnIt1Rk/xOR
 YeM6o9gzZGn3fSVjH+aWDV5VrJc5eeGXFszHejS2cZFyzikhaxD2zkAPF8t+cDEPDR2c=;
Received: from mail-wm1-f50.google.com ([209.85.128.50])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kxFlh-005vh4-S3
 for mjpeg-users@lists.sourceforge.net; Wed, 06 Jan 2021 20:51:10 +0000
Received: by mail-wm1-f50.google.com with SMTP id n16so3801519wmc.0
 for <mjpeg-users@lists.sourceforge.net>; Wed, 06 Jan 2021 12:50:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=w3vu7Q77s3pJWhDM2ZQklqoYrnX9v2imWoObUc3E/RA=;
 b=ctIAJZXn1n8n6ErtdFx+i0m//hYktYCyTIp+fkL2LcY4Jfm0wKjplw4EPnBOWExPAF
 tm1apLDsKQTMmoQJulDnTwruR9Hsv/yMpbPSwvB33Dn0xO8hHEGo06j0Mq+sinPqwyZs
 kWZVEpQfTT0gtFMj0arQ6YCHOg8raZObUVbJLy3IpkYwflXc322j700Bc561ZRWT68Qr
 WImc4bVeS/KdcVxYAC3M6Lh5048xfOZ+mJi3bkLkEPN0k184n8amf7w7eb1X+DXPr41W
 BYDH63AMZUvCTtDjclrX3JOjBQH+bUaDAXZVik31j8KCdfx49K2tkomwviBCLVObiuL0
 DAOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=w3vu7Q77s3pJWhDM2ZQklqoYrnX9v2imWoObUc3E/RA=;
 b=WyPOq2Y6kewlHXuA/YwxL2FzTvN5B3gLhp1RsOT2O5GuOPnRWtTGHUK4ow9noLR4zv
 3xGvbn1bBIe/wyTucAGrK96/7O9E5b/KQEVgOURrwO8hWkHWp8bUhsa/xoXQZrGPWmPp
 /wgM8PxJ1YMu9RMoYwpDdu+IWuG9DgXup/OK8Xkun8pD4JQ1LCxG0MaxkWKV9hujmZPa
 jrKLMiLTEDsLcBpsfwfePxtJluX7v0pKY8gzLGNKFa3sVUrYf/oA35uWDZssvV0GfrHE
 t/6M5uIqtuBzJbRtSUl3iZFO18AP4gMKxZxZpE1y99HKJbnO+ofvqKej5/G5hKkmdyKL
 3D1Q==
X-Gm-Message-State: AOAM531n+L4WBV/PHnSK9NbACnnKRlktE9rXrO5soK45oAK5THi/6mAt
 bpeWEECeJyyjoo4VNhZgjDa3x416QCNrtg==
X-Google-Smtp-Source: ABdhPJyBV1GURnIjVGPvwWRfM4Ufh3xwem8TBRk7I5b9Hoc2Gd8ZantU2ae2Sew+89YLsf+t89oB0A==
X-Received: by 2002:a7b:c1d7:: with SMTP id a23mr5101496wmj.62.1609964401954; 
 Wed, 06 Jan 2021 12:20:01 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id n16sm4435939wrj.26.2021.01.06.12.20.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Jan 2021 12:20:01 -0800 (PST)
Date: Wed, 6 Jan 2021 21:19:58 +0100
From: LABBE Corentin <clabbe@baylibre.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <X/Ybbj6gN2xrhIwP@Red>
References: <20210106131702.32507-1-zhengyongjun3@huawei.com>
 <20210106145100.GJ2809@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210106145100.GJ2809@kadam>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.50 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.50 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kxFlh-005vh4-S3
X-Mailman-Approved-At: Thu, 07 Jan 2021 04:55:03 +0000
Subject: Re: [Mjpeg-users] [PATCH -next] media: zoran: use resource_size
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
 linux-kernel@vger.kernel.org, Zheng Yongjun <zhengyongjun3@huawei.com>,
 mjpeg-users@lists.sourceforge.net, mchehab@kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

Le Wed, Jan 06, 2021 at 05:51:00PM +0300, Dan Carpenter a =E9crit :
> On Wed, Jan 06, 2021 at 09:17:02PM +0800, Zheng Yongjun wrote:
> > Use resource_size rather than a verbose computation on
> > the end and start fields.
> > =

> > Signed-off-by: Zheng Yongjun <zhengyongjun3@huawei.com>
> > ---
> >  drivers/staging/media/zoran/zoran_driver.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > =

> > diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/stagi=
ng/media/zoran/zoran_driver.c
> > index 808196ea5b81..d60b4c73ea80 100644
> > --- a/drivers/staging/media/zoran/zoran_driver.c
> > +++ b/drivers/staging/media/zoran/zoran_driver.c
> > @@ -1020,7 +1020,7 @@ int zoran_queue_init(struct zoran *zr, struct vb2=
_queue *vq)
> >  	vq->buf_struct_size =3D sizeof(struct zr_buffer);
> >  	vq->ops =3D &zr_video_qops;
> >  	vq->mem_ops =3D &vb2_dma_contig_memops;
> > -	vq->gfp_flags =3D GFP_DMA32,
> > +	vq->gfp_flags =3D GFP_DMA32;
> =

> The commit doesn't match the patch.  Also this driver is in
> staging because it's going to be deleted soon so there probably isn't
> much point doing cleanups.
> =


No, the driver just came back in staging since I fixed the videobuf2 conver=
sion.
One of the reason it is kept in staging is that media maintainer want to te=
st it with its own zoran card but covid19 delayed the physical recovery of =
it.

So the patch need to be resent, please.

Regards


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
