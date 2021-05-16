Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AE109383A4D
	for <lists+mjpeg-users@lfdr.de>; Mon, 17 May 2021 18:46:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1ligO3-00042L-Br; Mon, 17 May 2021 16:46:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <clabbe@baylibre.com>) id 1liMv2-0001u1-Ne
 for mjpeg-users@lists.sourceforge.net; Sun, 16 May 2021 19:59:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mp4ngGM9ljz5IG8vSBHzArz2DW08hhGqygQQhBNze2E=; b=fV4rbiwj0LBFy6Nw+rpqve+++B
 23dpUQdldhfW7iLrCR4QePvXGwqn0/doxmyuvjoIAIGXOm/+9pNYkmNw7O+HMpxPYvZDMYQHFQMDt
 0BGJpgxT7gBTCQdA9xCaD/fmAiHI0JFr0ljxOXg0Q9icdQWpKzTHX7qZ2ZWkXJT6BBfA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mp4ngGM9ljz5IG8vSBHzArz2DW08hhGqygQQhBNze2E=; b=k5vdTdk5BKW3EB91YBFweH7UIF
 gyuL5oD+EMU1E9CddbhjrlZv7IYbVfM7WFM6gOzdiQ+yGs+/B2m563LBNxiXbARdcU7I/g6p6sTw8
 RX28fsU7yIwpypJAiMNp1ay50jXJBRfMtGk55lEgyVx9ua+OagU3Xw0zpvloULjCzkzY=;
Received: from mail-ej1-f43.google.com ([209.85.218.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1liMur-00Agva-Vy
 for mjpeg-users@lists.sourceforge.net; Sun, 16 May 2021 19:59:22 +0000
Received: by mail-ej1-f43.google.com with SMTP id n2so6070639ejy.7
 for <mjpeg-users@lists.sourceforge.net>; Sun, 16 May 2021 12:59:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=mp4ngGM9ljz5IG8vSBHzArz2DW08hhGqygQQhBNze2E=;
 b=CUyD2Le0WX6DqokVANZboqbAZaK9Z/TKh23Tw8wOSQMRwnJT+q3Xzdsc4sq8H/Ldwh
 fiFZNbNAN8UMLymdzeX9F3pmlgK7RBvDQsdiNFtwQZevCB+dvY9tMF8Qz0DKRB3eFKzX
 v4LpJAzwC2x2mCqchiQY1dReePQLeHj8wZogWFhXX/Cj1+WuCOQLDSw2gpz+9sKY2ZUc
 joA1fIWrcBBsHhNAvS+JtZR1j2LQMKbzvhxgrOVpU3YCwG/3zldtuuA6LP5uXjqCVhoc
 IRMHc2xebwXD3922gKczIJV+GjGPuL07HH/hOmqewxh+Lg8JJZqZAMvoNFTbqWaw4uzQ
 DBUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=mp4ngGM9ljz5IG8vSBHzArz2DW08hhGqygQQhBNze2E=;
 b=H4TyPGkbZX+1qsh9P4VHB8u9aBeJaoTAin9Q1nzO3t3H3CEcmcHsC8BjckNZ6aKXYy
 9zYS+q1nEGu/x+6k97NprWfxdnPMS88wNqwvGxvEOPiWVZDnlVPBFL45cLCZqpb2H3PX
 trc6Vp/Q1XFYuj7KP+ldUB5J0Kxiou5GI03bg7kjemUFFkLyHJYFp2I1/QrHvA4P1IBT
 SbDsv3WLdBznr+dyh7Sph7tQ/gPiffD++ckq26QiGTjy2cMoMgf4A1H2Retw1eurVSd6
 bxTb8QM6WkM/hs1jlJU0CG5NOHomP4k1JHRE3SlmZKwmaFzbcOt76AONslS4kDtijk1p
 CXMg==
X-Gm-Message-State: AOAM533qPvNdFmfEZWRwICNDLyKvLL2sPwF8U0hkzfofKLmwo/TE9kTe
 CIqQiMhKpjtjWPA08ZznhNIrwNbOzG1Q5A==
X-Google-Smtp-Source: ABdhPJzTEREHMSHj7WA7plAa8A8Nlx5M1YVfjI7BaPfwY2dDCZy9u1+NEmfQNKw1fgjC1dad9KDGlw==
X-Received: by 2002:adf:d231:: with SMTP id k17mr16061085wrh.78.1621189980193; 
 Sun, 16 May 2021 11:33:00 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id 61sm15256051wrm.52.2021.05.16.11.32.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 16 May 2021 11:32:59 -0700 (PDT)
Date: Sun, 16 May 2021 20:32:56 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Message-ID: <YKFlWNrrVGnPswon@Red>
References: <cover.1621159997.git.mchehab+huawei@kernel.org>
 <fb2e971bc2fa4ed1e6f0d5aae6260191ff64c883.1621159997.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fb2e971bc2fa4ed1e6f0d5aae6260191ff64c883.1621159997.git.mchehab+huawei@kernel.org>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.218.43 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: baylibre.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.218.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1liMur-00Agva-Vy
X-Mailman-Approved-At: Mon, 17 May 2021 16:46:34 +0000
Subject: Re: [Mjpeg-users] [PATCH v3 05/16] docs: driver-api: media:
 drivers: zoran.rst: replace some characters
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
Cc: Jonathan Corbet <corbet@lwn.net>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 linux-kernel@vger.kernel.org, mjpeg-users@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

Le Sun, May 16, 2021 at 12:18:22PM +0200, Mauro Carvalho Chehab a =E9crit :
> The conversion tools used during DocBook/LaTeX/html/Markdown->ReST
> conversion and some cut-and-pasted text contain some characters that
> aren't easily reachable on standard keyboards and/or could cause
> troubles when parsed by the documentation build system.
> =

> Replace the occurences of the following characters:
> =

> 	- U+00ad ('=AD'): SOFT HYPHEN
> 	  as ASCII HYPHEN is preferred over SOFT HYPHEN
> =

> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  Documentation/driver-api/media/drivers/zoran.rst | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/Documentation/driver-api/media/drivers/zoran.rst b/Documenta=
tion/driver-api/media/drivers/zoran.rst
> index 83cbae9cedef..b205e10c3154 100644
> --- a/Documentation/driver-api/media/drivers/zoran.rst
> +++ b/Documentation/driver-api/media/drivers/zoran.rst
> @@ -319,7 +319,7 @@ Conexant bt866 TV encoder
>  ~~~~~~~~~~~~~~~~~~~~~~~~~
>  =

>  - is used in AVS6EYES, and
> -- can generate: NTSC/PAL, PAL=ADM, PAL=ADN
> +- can generate: NTSC/PAL, PAL-M, PAL-N
>  =

>  The adv717x, should be able to produce PAL N. But you find nothing PAL N
>  specific in the registers. Seem that you have to reuse a other standard

Acked-by: Corentin Labbe <clabbe@baylibre.com>

Thanks


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
