Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EC38A4324C8
	for <lists+mjpeg-users@lfdr.de>; Mon, 18 Oct 2021 19:19:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mcWI1-0007IY-3a; Mon, 18 Oct 2021 17:19:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <clabbe@baylibre.com>) id 1mcCHu-00083J-JR
 for mjpeg-users@lists.sourceforge.net; Sun, 17 Oct 2021 19:57:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xtVQlPdkcZnLgGwDqTZh7i92rf4R+GARneWlElIxelE=; b=G+ol9RgQUxkD/Wx6atYwyuQdp3
 dx4lTseybIhzq5DGgsII0vxTpWQjCgIFiUpIfGtzGnVK3NqLMBowjce9slm9BYCqsap7LQdoAwIdW
 WxqCiSYmhYPtJREsU0o17fNlK/dLrieYSkSf/lf7wMoQ8lwieQCLu2pZbwAavBHhMWxM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xtVQlPdkcZnLgGwDqTZh7i92rf4R+GARneWlElIxelE=; b=fHC5TzUX3naj0zMyBy7ayeUIKg
 ACB5uzmkCc7CfqN6nu89rGC7nK9/7OX1hgqkNn+4qTaRc1SKaaNNunTwg+1oc9CoResA1zoj1sAZ0
 FjOfPrt4+fVILjJ7z5NpMUUM/H3it+oi4/KcO6uuqWFe1FDEZdEB+CVw8fy+IY3EM8sc=;
Received: from mail-wr1-f47.google.com ([209.85.221.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mcCHn-0005l7-Ns
 for mjpeg-users@lists.sourceforge.net; Sun, 17 Oct 2021 19:57:42 +0000
Received: by mail-wr1-f47.google.com with SMTP id m22so37467608wrb.0
 for <mjpeg-users@lists.sourceforge.net>; Sun, 17 Oct 2021 12:57:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=xtVQlPdkcZnLgGwDqTZh7i92rf4R+GARneWlElIxelE=;
 b=FNuPSAsi/VR0J4YFMAIzaA4a9nC7szSv1+eUS1fROFTS7vM9gkgNvr5vnCQOhfivO0
 mGoVrcJOPPb3Y0SMMu3+OF6lieSI+vN/jRagPKtsEMt0kc9MYo/S1De5cOoXj1TVdP5x
 kP3JGR4osO2ivEMTKhn8gWw7dZpL4pgJQ9bfMpOpB25M033C6D+sHnc5rtStO2gZR1tQ
 BxJ8vyH8BFAoWzpSJfJ7qZOhR8B4f3HJrKI8NB+kBC2B/4vS/GckcFhUsKZ+/rCOG9Ts
 d3Nuzsw9TZq2T5ERg0Tkar/Lhb561sFFyFpSyIQPL08+GY4GheVaSMi2U4o/6xXXGZOQ
 r2Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=xtVQlPdkcZnLgGwDqTZh7i92rf4R+GARneWlElIxelE=;
 b=NtBZNd+BF9sADtzjokSQ7x+5OciUTvddT0xZGO7jcEdgVfR8hrnnOwFvXKWB5Fxc0z
 IZqnxDsS1fNV4NIcsBjz1fXavnBaT9b4QYZ9oCs/jMQEB3Jef89orwD8M77VYmvQBcDc
 ivVOjkxJPf9EzmE9YKGGKHUXBATKgXy5yp9D81AyEEqQev6bKcceHK9BSR9ZhTQlcMzl
 p5BzF9bULOnQg4RKbl/WsZPyJJfnZ/F/b3hEkXpRM36jOU8ykYOKPwEI9Qxll7vT0Vt8
 35E308uEmHON1bzZsO8TXrOreC9rFst29tfQMm0/sMD8SKNVG9DB1zSC2Q/KAnH7WzWP
 Hy1g==
X-Gm-Message-State: AOAM531J5WGhJXVGvjp1PgwsVTRLIiL0g4/urUt1kTLFrQ8dj6LqO+Zr
 B/z0hOeFeOk4lOt3E2yU5S0Dpw==
X-Google-Smtp-Source: ABdhPJyuWQWwOMtuiE7ax1hxiutfdudm1XBNHdVou0KYgqADhW+EOkd3K/Rt4ER1gqkVFICKYENbaQ==
X-Received: by 2002:a5d:45c9:: with SMTP id b9mr30502649wrs.365.1634500649381; 
 Sun, 17 Oct 2021 12:57:29 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id d1sm12061110wrr.72.2021.10.17.12.57.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 Oct 2021 12:57:28 -0700 (PDT)
Date: Sun, 17 Oct 2021 21:57:27 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <YWyAJ1gqDrSIqAu7@Red>
References: <20211013185812.590931-1-clabbe@baylibre.com>
 <20211013185812.590931-7-clabbe@baylibre.com>
 <20211014080155.GY2083@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211014080155.GY2083@kadam>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Le Thu, Oct 14, 2021 at 11:01:55AM +0300, Dan Carpenter a
   écrit : > On Wed, Oct 13, 2021 at 06:58:08PM +0000, Corentin Labbe wrote:
   > > The zoran driver is split in many modules, but this lead to some [...]
    
 
 Content analysis details:   (-0.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.221.47 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.221.47 listed in wl.mailspike.net]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1mcCHn-0005l7-Ns
X-Mailman-Approved-At: Mon, 18 Oct 2021 17:18:55 +0000
Subject: Re: [Mjpeg-users] [PATCH v2 06/10] staging: media: zoran: fusion
 all modules
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
 linux-kernel@vger.kernel.org, hverkuil@xs4all.nl,
 mjpeg-users@lists.sourceforge.net, mchehab@kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

Le Thu, Oct 14, 2021 at 11:01:55AM +0300, Dan Carpenter a =E9crit :
> On Wed, Oct 13, 2021 at 06:58:08PM +0000, Corentin Labbe wrote:
> > The zoran driver is split in many modules, but this lead to some
> > problems.
> > One of them is that load order is incorrect when everything is built-in.
> > =

> > Having more than one module is useless, so fusion all zoran modules in
>                                              ^^^^^^
> "fusion" isn't the right word.  It should be "fuse" or even better
> "merge".  Same in the subject.
> =


Hello

I will use merge, thanks for the suggestion.

> > +static int load_codec(struct zoran *zr, u16 codecid)
> > +{
> > +	switch (codecid) {
> > +	case CODEC_TYPE_ZR36060:
> > +#ifdef CONFIG_VIDEO_ZORAN_ZR36060
> > +		return zr36060_init_module();
> > +#else
> > +		pci_err(zr->pci_dev, "ZR36060 support is not enabled\n");
> > +		return -EINVAL;
> > +#endif
> > +		break;
> > +	case CODEC_TYPE_ZR36050:
> > +#ifdef CONFIG_VIDEO_ZORAN_DC30
> > +		return zr36050_init_module();
> > +#else
> > +		pci_err(zr->pci_dev, "ZR36050 support is not enabled\n");
> > +		return -EINVAL;
> > +#endif
> > +		break;
> > +	case CODEC_TYPE_ZR36016:
> > +#ifdef CONFIG_VIDEO_ZORAN_DC30
> > +		return zr36016_init_module();
> > +#else
> > +		pci_err(zr->pci_dev, "ZR36016 support is not enabled\n");
> > +		return -EINVAL;
> > +#endif
> > +		break;
> > +	}
> =

> Not related to your patch but if load_codec() fails, the probe function
> still calls zoran_setup_videocodec() on the failed codec.  It might be
> better to set the codec to zero?
> =

> 		result =3D load_codec(zr, zr->card.video_codec);
> 		if (result < 0) {
> 			pci_err(pdev, "failed to load codec %s: %d\n", codec_name, result);
> 			zr->card.video_codec =3D 0;
> 		}
> =


I will rework by adding a video_codec_init/exit, it will help tracking erro=
r (current behavour to ignore error is bad).
Furthermore, my patch forgot to add call to all "old module" exits, so dedi=
cated function will be better.

Thanks for the review
Regards


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
