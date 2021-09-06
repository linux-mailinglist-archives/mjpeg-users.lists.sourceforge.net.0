Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 35BF2401DEE
	for <lists+mjpeg-users@lfdr.de>; Mon,  6 Sep 2021 18:00:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mNH30-0007ho-SL; Mon, 06 Sep 2021 16:00:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <clabbe@baylibre.com>) id 1mNEo2-0002z7-9d
 for mjpeg-users@lists.sourceforge.net; Mon, 06 Sep 2021 13:37:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BAhGQaiUNFMd0cF59B0SMEJVdU2tWj7S2/LF/UKcv6g=; b=HF8I5Vx8fNsBk/bi2DPopneUPb
 S35/IHreLrfp0/FLWLQUlUOyt2yH+hmEd6Pn8H/SOoPkheh+1wNA6A71zBXLA+AnH9KGHfWdfTUpK
 huBdFznTY3CvL0xazJPxZKKQ1KfsCRIUozEnLteM4WUa8IO7LPmd8SJ6dv/5Fiafhwx4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BAhGQaiUNFMd0cF59B0SMEJVdU2tWj7S2/LF/UKcv6g=; b=M0gK7CUDf9vio6VZ8rCRCMr1UX
 1mTzkdlr825TaHpa1mbk/j1BNT56vbWqWirlzvcwDHZrA23u0qkAda3z8SzDRumzcNaZbYSCp7yy0
 cEP5zs3NGssjfC5uYRQBuzn761lUO1AJFN+5Agp09kPD2qCuzf/xoXBlS+anYs3Jrm+Q=;
Received: from mail-wm1-f46.google.com ([209.85.128.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mNEnw-0005Bg-7H
 for mjpeg-users@lists.sourceforge.net; Mon, 06 Sep 2021 13:37:02 +0000
Received: by mail-wm1-f46.google.com with SMTP id e26so4630689wmk.2
 for <mjpeg-users@lists.sourceforge.net>; Mon, 06 Sep 2021 06:36:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=BAhGQaiUNFMd0cF59B0SMEJVdU2tWj7S2/LF/UKcv6g=;
 b=RYSOiZFCjTkL418WGcVP8CEyv+CIL2CdD4Mr508ZMphamikcEWmCQYwh2rSgJSpjIj
 R7adpHoBEoteB8/pbIsVPFHdfwKjhMAEQ8Zpi/YujLxueK6V4bjolnfkAZ1KnlyMZez6
 A0r4Cs6ZxfawdLnGEnPiY1iRnYAkxaIQJceBww/0hDtoj8PxdMAXVK1qOz/VO5b/zzbQ
 CqGWUqebJtpfryjTuDyFV7TfNsN6KW9hIyWluZ5qM1rJV/XDF0+LeC6SvnRl224EEW8T
 HL6BXgWe0j32pQZ/DlegkQa6ym5eozBwadSbkxve+gfZ45jinlFvgqEipB+Eb8PycuDV
 WOBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=BAhGQaiUNFMd0cF59B0SMEJVdU2tWj7S2/LF/UKcv6g=;
 b=EWAHwq141GbBGImTr0d+dUgylXxb2iWeCFKx0MLvpvfmrxlwPsnfL7gCnV2Fa0KGqb
 2407TgMlOerbuRicWh8ZuUkbfWM8AJBAn0+ruEfZdPU2oQpcjB7IWVeihirUVA/2YBRO
 Ov8WLlyq8gFffrcc29hDvY6R7oeE1aN6LycS0unPxoQOrCq5Pb1rkUrso2nUI9zUCz1I
 CCqBBUPVYVYZW3c9Tm8gOWFgJfEjW5t0X1Iwp+X4pfowvbkDIDzlkZK+C9amO7mLQXGW
 jxSVXsSWSofq32yAAC+2sXqHHhEKjNSH4aiYZl0aP3EQTudfqPv//WZBrm8rnyUU2O3D
 a64g==
X-Gm-Message-State: AOAM532iqmXJ7rUIbRYIuzknlljjx6x+D1FxB3D0kECe3xhjLyxMas1C
 CYQX+heEP1v1M8XD/XP0t9q9rg==
X-Google-Smtp-Source: ABdhPJxhQ8DPhLD12SafiRBRfu4OijkIySpx5v+sXRBz4eKpz4sMYsbNfXMKlBllmBy+mdlAHXWmwQ==
X-Received: by 2002:a05:600c:3502:: with SMTP id
 h2mr11686505wmq.182.1630935409867; 
 Mon, 06 Sep 2021 06:36:49 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id q195sm7559994wme.37.2021.09.06.06.36.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Sep 2021 06:36:49 -0700 (PDT)
Date: Mon, 6 Sep 2021 15:36:43 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: Greg KH <gregkh@linuxfoundation.org>
Message-ID: <YTYZaxjiKzVurMEF@Red>
References: <20210903191540.3052775-1-clabbe@baylibre.com>
 <20210903191540.3052775-5-clabbe@baylibre.com>
 <YTMJvI1C1OmBgdeI@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YTMJvI1C1OmBgdeI@kroah.com>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.46 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.46 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1mNEnw-0005Bg-7H
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
Cc: linux-staging@lists.linux.dev, mjpeg-users@lists.sourceforge.net,
 mchehab@kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

Le Sat, Sep 04, 2021 at 07:53:00AM +0200, Greg KH a =E9crit :
> On Fri, Sep 03, 2021 at 07:15:36PM +0000, Corentin Labbe wrote:
> > Add debugfs for displaying zoran debug and stats information.
> > =

> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > ---
> >  drivers/staging/media/zoran/Kconfig      | 10 ++++++
> >  drivers/staging/media/zoran/zoran.h      |  5 +++
> >  drivers/staging/media/zoran/zoran_card.c | 39 ++++++++++++++++++++++++
> >  3 files changed, 54 insertions(+)
> > =

> > +#ifdef CONFIG_VIDEO_ZORAN_DEBUG
> > +	struct dentry *dbgfs_dir;
> > +	struct dentry *dbgfs_file;
> =

> No need for these, the file is never referenced and the directory can be
> looked up when you want to remove it.
> =

> > +#endif
[...]
> > +#ifdef CONFIG_VIDEO_ZORAN_DEBUG
> > +	zr->dbgfs_dir =3D debugfs_create_dir(ZR_DEVNAME(zr), NULL);
> > +	zr->dbgfs_file =3D debugfs_create_file("debug", 0444,
> > +					      zr->dbgfs_dir, zr,
> > +					      &zoran_debugfs_fops);
> > +#endif
> =

> Wait, when are you removing the files when the device is removed?
> =

> That needs to be fixed no matter what before this patch is accepted.
> =


Hello

Sorry to have forgotten this.
I will fix this.

Thanks
Regards


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
