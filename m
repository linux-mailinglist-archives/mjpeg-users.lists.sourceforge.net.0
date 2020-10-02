Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B2832820D9
	for <lists+mjpeg-users@lfdr.de>; Sat,  3 Oct 2020 05:56:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1kOYfA-0005Q3-M3; Sat, 03 Oct 2020 03:56:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <clabbe@baylibre.com>) id 1kOH0s-0005zT-8e
 for mjpeg-users@lists.sourceforge.net; Fri, 02 Oct 2020 09:06:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=w4PVlPcr7dpTEG2yTeexZo3mfBgC1LUTIE3TVKKqTC0=; b=DAN7PnehcqS4jVSe+BjevjvNHZ
 YoJLz9S/79BZB8Pzv2tV/h38ZbscCd2tHyNwtilV5kPdpyvOGFmBEkbkgG/wFm0W2CgP8XwaElXqJ
 uLrzdXN13UrCaCn5XH80du2pOswuGHUSSnXqQlvu8NrMhhc1a46sdMLxoKV+SuJ8JjF0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=w4PVlPcr7dpTEG2yTeexZo3mfBgC1LUTIE3TVKKqTC0=; b=XBuSQmGrQKXf4fXRNNzYyp5GUa
 4B14swrXDCOoSgALEe5fFduJGrovbMcZsYeZGoS/ji8pAkxbNpJJyxsNkTSkY0kIsXt1BYfMWz5zm
 OV8F5YMohA1Cjq0gd6dZ3XfxN5yXplNzxIP7a9P8uxEHgIjZy2czN1FbRferDdavY3LI=;
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kOH0h-00Dug9-F7
 for mjpeg-users@lists.sourceforge.net; Fri, 02 Oct 2020 09:06:02 +0000
Received: by mail-wr1-f66.google.com with SMTP id k15so919195wrn.10
 for <mjpeg-users@lists.sourceforge.net>; Fri, 02 Oct 2020 02:05:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=w4PVlPcr7dpTEG2yTeexZo3mfBgC1LUTIE3TVKKqTC0=;
 b=IsAFPt3bvZYHfV+35NPHHU3k0vBqpZQJDx3q4QHSMyu8MkYuSqsoYTAQVpH5pHDiq4
 7Ox0cVqXMR1M/KyJrcxTxUWxWmVvsvM+jkboUDoK96PuvSrMd4M39JfI2P5qpsTaGmAQ
 W+IZZwGAh+8i2XECczaHk4P/G0zDn8/hPbT554DKt8b9sYjxNCug4gK5NBGOeuDROI86
 huv4E8++P2ep9ndFj0QayT1DEdH7V3SuMvnI7hl6Q0iAxQSR8nGHW+TkW8kw7kvFyqCe
 h6XGCFzI768Q7+bbhvkFo+5Aqs9U2ZcLvcXxya0LSu/kdLJL2pTbzK2prcjbYfkks4Kk
 LZdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=w4PVlPcr7dpTEG2yTeexZo3mfBgC1LUTIE3TVKKqTC0=;
 b=MvP+LL/lugTOkq2jG7q8b/CTXBNS9FbsskytBs9ke6kVb0zBsvFO4d2FKDhp8gFUXT
 2OHqXdrtp7WvnRR3bHSqX8uPep9kCX52KqxkSHfZU12G8BB2ri6VzdWDx3ragp6uP2Cr
 QwwxNH4dcWTQV9H9VOMwpK/QI2WwLerkX0Sg1VwymMqEzU6xsb/Cl3VPJ7TN27szb7GT
 RYVnaohpZktgXyipEzqfStm7+g7gMtESw6kBRhL9MIa/EHRDZdtk25RcT4sUUqmE55cz
 r0GtuPzwECzOzP4joRO7vcVfZ+b1hz+STqq3dCP9iyoEtA2hjXrt0dMU7aDP2/gsTguL
 z5ww==
X-Gm-Message-State: AOAM532apDWpBbaxRYTh3UjsZ6hw9QGx3p1uNjFYa0DJ3fuE65ZWnSCw
 bvcFCO0kFk8Uzem28YBePppicnG+NI9aww==
X-Google-Smtp-Source: ABdhPJwFbDdME2xRypUZW1NmvccNMBIbMBry74SzvCzSLK32Q1LWoYuaZIflqgo4RWeBsSympZu2fQ==
X-Received: by 2002:adf:e74d:: with SMTP id c13mr1306972wrn.45.1601623278234; 
 Fri, 02 Oct 2020 00:21:18 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id m10sm756826wmi.9.2020.10.02.00.21.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 02 Oct 2020 00:21:17 -0700 (PDT)
Date: Fri, 2 Oct 2020 09:21:15 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Message-ID: <20201002072115.GC15586@Red>
References: <21fd8f12edb27d269eefdbea172aa3a80e2aa6ce.1601544491.git.mchehab+huawei@kernel.org>
 <5e09ed2cc5cacfac0653089fc976be3409f0fa9d.1601544491.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5e09ed2cc5cacfac0653089fc976be3409f0fa9d.1601544491.git.mchehab+huawei@kernel.org>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.66 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: checkpatch.pl]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kOH0h-00Dug9-F7
X-Mailman-Approved-At: Sat, 03 Oct 2020 03:56:46 +0000
Subject: Re: [Mjpeg-users] [PATCH 3/3] media: zoran: fix mixed case on vars
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
 linuxarm@huawei.com, linux-kernel@vger.kernel.org,
 mjpeg-users@lists.sourceforge.net, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

On Thu, Oct 01, 2020 at 11:28:15AM +0200, Mauro Carvalho Chehab wrote:
> Use this small script to replace CamelCase and wrong case
> on vars:
> 
> <script>
> FILES=$(find "$1" -type f|grep -e '.c$' -e '.h$')
> CAMEL_VARS=$(cat tags|perl -ne 'print "$1\n" if (m/^(\w*[A-Z]\w*[a-z]\w*)\s/)')
> for i in $CAMEL_VARS; do
>         new=$(perl -e '
>                 my $s = $ARGV[0];
>                 $s =~ s{([^a-zA-Z]?)([A-Z]*)([A-Z])([a-z]?)}{
>                         my $fc = pos($s)==0;
>                         my ($p0,$p1,$p2,$p3) = ($1,lc$2,lc$3,$4);
>                         my $t = $p0 || $fc ? $p0 : '_';
>                         $t .= $p3 ? $p1 ? "${p1}_$p2$p3" : "$p2$p3" : "$p1$p2";
>                         $t;
>                 }ge;
>                 print $s;' "$i")
>         for j in $FILES; do
>                 sed -E "s,\b$i\b,$new,g" -i $j
>         done
> done
> for i in $(git grep "#define zr" drivers/staging/media/zoran/*.[ch]|perl -ne 'print "$1\n" if (m/#define\s+(zr\S+)/)'); do j=$(echo $i|tr [a-z] [A-Z]); sed "s,\b$i\b,$j,g" -i drivers/staging/media/zoran/*.[ch]; done
> </script>
> 
> This should solve almost all warnings reported by checkpatch.pl
> in strict mode.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  drivers/staging/media/zoran/videocodec.h   |   2 +-
>  drivers/staging/media/zoran/zoran.h        |  30 +--
>  drivers/staging/media/zoran/zoran_card.c   |  52 ++---
>  drivers/staging/media/zoran/zoran_device.c | 242 ++++++++++-----------
>  drivers/staging/media/zoran/zoran_driver.c |  94 ++++----
>  drivers/staging/media/zoran/zr36016.c      |  14 +-
>  drivers/staging/media/zoran/zr36050.c      |   2 +-
>  drivers/staging/media/zoran/zr36057.h      | 122 +++++------
>  drivers/staging/media/zoran/zr36060.c      |  76 +++----
>  drivers/staging/media/zoran/zr36060.h      |  66 +++---
>  10 files changed, 350 insertions(+), 350 deletions(-)

Acked-by: Corentin Labbe <clabbe@baylibre.com>

Thanks


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
