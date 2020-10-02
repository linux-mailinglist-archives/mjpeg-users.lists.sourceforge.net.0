Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 139802820D8
	for <lists+mjpeg-users@lfdr.de>; Sat,  3 Oct 2020 05:56:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1kOYfA-0005Pu-Ju; Sat, 03 Oct 2020 03:56:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <clabbe@baylibre.com>) id 1kOFpW-0004qT-5h
 for mjpeg-users@lists.sourceforge.net; Fri, 02 Oct 2020 07:50:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eXLkoTCaKkFzFdlCQExpbf/UPZPndY4duZvrptt9aDU=; b=i92SHR7tRm7Kv7U1rvsp/aVsHo
 euS62ZESpz7Zk3PCnkg7XXFUCgjmnz9RsHe096Ub8hXiLvJfqO7mfUuT2AWc0NQamL0A80aoJaHgy
 bH+8UkSPKGfrhLgfJVPqkZ859z+n1KDHbX0RbXgolKQsf5hHw6SRh97a8BTA2nRLeMPE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eXLkoTCaKkFzFdlCQExpbf/UPZPndY4duZvrptt9aDU=; b=LjdDU0PgIpMuyLIJrxM4DwJ7L5
 Dl4+MBdkP/41oJVWJqj/j5plPmU1RrRMoaIlttFFXxVBzOEcaX2LSe4I76Us2Wy+D80RmZqOmlc46
 nRBCK66wSawNoQnl8hgsMAXuNZU7qu2phF/lYIZV0jG48p19/Ibq8JGbzEhIPBKeqMwo=;
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kOFpF-00H59A-GF
 for mjpeg-users@lists.sourceforge.net; Fri, 02 Oct 2020 07:50:14 +0000
Received: by mail-wm1-f67.google.com with SMTP id 13so635262wmf.0
 for <mjpeg-users@lists.sourceforge.net>; Fri, 02 Oct 2020 00:49:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=eXLkoTCaKkFzFdlCQExpbf/UPZPndY4duZvrptt9aDU=;
 b=vvg+Cl0WFinXG8SxGVzQBrunVpw0ikon3TeHvCRD5uw2L2gv7zfDPJ1aNJqL4+N31S
 jrMHKFu7awaakD0lMU6rdwjFwqMPwXMirstXdU5RGUZvIFccD8AIouYxLgFwOoG9hz1x
 xO93UbD34EuKmsoJxtFJ8GZmEViwj4FgJYE2q6Eb6uHjKljqL+TcRcBa+ilM6E61Rur+
 gJuzv+d7rcqHQ+9jgeazY7vq3IgtI/bqEG1c+QcbVBjbjmbjYZKKCjNfueMlzkhym9Rk
 i0ttEZtjjOidV/1SDRkTi3LrEvV72x7jBpW42RXSjy2ctTMQ2LrygsWqayHX4rWfvFLV
 X3qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=eXLkoTCaKkFzFdlCQExpbf/UPZPndY4duZvrptt9aDU=;
 b=NIKL22ltO87oi+gF9a2L4PfwjcK0GOxMQsIWfTCTea7PSvgvHowd71u+pRAd18bcRg
 nR7gPSDZZ5laF8ff59duM7u5NjbqtNGVV9xzXaB0mAotKhN5G0uS+Yor1vIxLsLTnBw9
 jryNjQYjigx+CkBejzrvkfbXi485XF7EdtHetRIKH5y51C7G8tpw8GGryfHBd+OJKk/u
 Zvfh42WqZA5Lr/+QpJJKfirHT1Ig52UvZWaBP/WlFJlXqzT3xFRe8Du9oZeDJCxuPCzc
 5Ig1sfjdSkOCFo/TocVRPwsH80QHP8GlpS7+kdqpyZYWVxwa65ljJ7sY2in2DEhA/4zI
 nYbg==
X-Gm-Message-State: AOAM532f20hkGWME+McAwDFVmAPWZaGIGVglDhMnPRM8apotkw+CNaYt
 fS8A8Z7UYqzwyfR4+7dHW9pcocZyCDJXlQ==
X-Google-Smtp-Source: ABdhPJw6UdK6EvbrCZR9oI7Y/lj0ixmOJb1GySty9GkBuhkr6xkCMVcUsziw1dtnOiTiE13IAzjMWA==
X-Received: by 2002:a1c:f619:: with SMTP id w25mr1209094wmc.62.1601623178852; 
 Fri, 02 Oct 2020 00:19:38 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id v204sm757860wmg.20.2020.10.02.00.19.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 02 Oct 2020 00:19:38 -0700 (PDT)
Date: Fri, 2 Oct 2020 09:19:36 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Message-ID: <20201002071936.GB15586@Red>
References: <21fd8f12edb27d269eefdbea172aa3a80e2aa6ce.1601544491.git.mchehab+huawei@kernel.org>
 <0425a08a629f50f05159f6c458e0942bf62a7792.1601544491.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0425a08a629f50f05159f6c458e0942bf62a7792.1601544491.git.mchehab+huawei@kernel.org>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: baylibre.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kOFpF-00H59A-GF
X-Mailman-Approved-At: Sat, 03 Oct 2020 03:56:46 +0000
Subject: Re: [Mjpeg-users] [PATCH 2/3] media: zoran: get rid of an unused var
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

On Thu, Oct 01, 2020 at 11:28:14AM +0200, Mauro Carvalho Chehab wrote:
> The jpeg_error in lowercase is not used anywhere. Drop it.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  drivers/staging/media/zoran/zoran.h | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/staging/media/zoran/zoran.h b/drivers/staging/media/zoran/zoran.h
> index 7217a64fe59b..945502becd60 100644
> --- a/drivers/staging/media/zoran/zoran.h
> +++ b/drivers/staging/media/zoran/zoran.h
> @@ -264,7 +264,6 @@ struct zoran {
>  
>  	/* Additional stuff for testing */
>  	unsigned int ghost_int;
> -	int jpeg_error;
>  	int intr_counter_GIRQ1;
>  	int intr_counter_GIRQ0;
>  	int intr_counter_CodRepIRQ;
> -- 
> 2.26.2
> 

Acked-by: Corentin Labbe <clabbe@baylibre.com>

Thanks


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
