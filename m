Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C6CCB2AD70
	for <lists+mjpeg-users@lfdr.de>; Mon, 18 Aug 2025 17:55:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Cc:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	MIME-Version:Message-ID:In-Reply-To:Date:To:From:Sender:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v4rHFMbQzhz8qDYtifceZNzuuVIrsWBYb+HnRWiyLLE=; b=LJFsagLdpfR8zn+Lf0Lv6yPNSu
	GpMs7hKcGgyhEI9vVi8Vzo1AGk1+HkB+10b6FPMAC9zrTiaOfToU93alfxHaHFZJPiWTmSCceBihj
	9/A+oFVN5fdc+rWXK3sjHHmIVHkV/MqhEiHKaXf2yZNvXbs2OmmJtqBSE95Od1aWpVC0=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1uo2Cp-0002w9-TE;
	Mon, 18 Aug 2025 15:55:31 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <l.stelmach@samsung.com>) id 1uo0lQ-0002b2-Cx
 for mjpeg-users@lists.sourceforge.net;
 Mon, 18 Aug 2025 14:23:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:Content-Type:MIME-Version:Message-ID:
 In-Reply-To:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=f6M/CURYsQXY3/uzXGcUkzo+e+ViGdgH1Lhlm1R/1iI=; b=PJj0iD4zuiZe7+WStbVr3q1F58
 57WicVc7WkRtnggRZ5rY4gTfeIZ7GQECBjB1+NdLicPy9C5ouyNTstDfLG6YOLm1x6iCyDTzp4VhM
 HiydfhGn2AI96KfNBC5LH5b7hk4vi31Q7M0Q+HBkokcfpfJ4eC1YDFkOKdcaLIU6wzMk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:Content-Type:MIME-Version:Message-ID:In-Reply-To:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=f6M/CURYsQXY3/uzXGcUkzo+e+ViGdgH1Lhlm1R/1iI=; b=Dxi183aYGB+Lmmrm11y5MuGfWm
 Vk0O9oNsHRYcEjaW90t7bYXzws+KhHqcc9bKqkdkmQl2r1tHrwvwqyIm6POvi7ngefVmMj+YJltcx
 ATrpoit9kM9wBjmci4m27Zd6Tn6nxGN37ssynybyay0AIVtDlEr8ISw6fOx/FqYioOIs=;
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uo0lQ-0004YQ-76 for mjpeg-users@lists.sourceforge.net;
 Mon, 18 Aug 2025 14:23:09 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20250818141259euoutp01c5a5c72a970c88cb8463fa9bb50e5008~c4fDm0j1Y2172321723euoutp01y;
 Mon, 18 Aug 2025 14:12:59 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20250818141259euoutp01c5a5c72a970c88cb8463fa9bb50e5008~c4fDm0j1Y2172321723euoutp01y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1755526379;
 bh=f6M/CURYsQXY3/uzXGcUkzo+e+ViGdgH1Lhlm1R/1iI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FaiBwfuLMFd8wcxb0jvuhKpukO35xdhs1to++ZaQ4Yqh+Gs6k/xhff2Sy966nKB1u
 Y4My6ONmPeJTOTI7B6gYhSXTwZkt1FTO9BnQ28BliriKoYXUtLcxp9F6Knuc9EUcs8
 MtUVtnwteswlZeCnCsdleiFKIXspagyS25wUueR4=
Received: from eusmtip1.samsung.com (unknown [203.254.199.221]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20250818141258eucas1p21f750bd71f615e61da60af4f01b2bcdb~c4fDEmByv0907809078eucas1p2Q;
 Mon, 18 Aug 2025 14:12:58 +0000 (GMT)
Received: from localhost (unknown [106.120.51.111]) by eusmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20250818141258eusmtip1a60c9e78cf67f43b879dc2891aeb8d16~c4fDAo2330814408144eusmtip1y;
 Mon, 18 Aug 2025 14:12:58 +0000 (GMT)
From: Lukasz Stelmach <l.stelmach@samsung.com>
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Mon, 18 Aug 2025 16:12:58 +0200
In-Reply-To: <20250802-media-private-data-v1-27-eb140ddd6a9d@ideasonboard.com>
 (Jacopo Mondi's message of "Sat, 02 Aug 2025 11:22:49 +0200")
Message-ID: <oypijd5xekra51.fsf%l.stelmach@samsung.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
MIME-Version: 1.0
X-CMS-MailID: 20250818141258eucas1p21f750bd71f615e61da60af4f01b2bcdb
X-Msg-Generator: CA
X-RootMTR: 20250802092807eucas1p14e332744b667a8b03ef32135045d26c5
X-EPHeader: CA
X-CMS-RootMailID: 20250802092807eucas1p14e332744b667a8b03ef32135045d26c5
References: <20250802-media-private-data-v1-0-eb140ddd6a9d@ideasonboard.com>
 <CGME20250802092807eucas1p14e332744b667a8b03ef32135045d26c5@eucas1p1.samsung.com>
 <20250802-media-private-data-v1-27-eb140ddd6a9d@ideasonboard.com>
X-Spam-Score: 2.3 (++)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  It was <2025-08-02 sob 11:22>, when Jacopo Mondi wrote: >
 From: Laurent Pinchart <laurent.pinchart@ideasonboard.com> > > Multiple
 drivers
 that use v4l2_fh and call v4l2_fh_del() manually reset > the f [...] 
 Content analysis details:   (2.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uo0lQ-0004YQ-76
X-Mailman-Approved-At: Mon, 18 Aug 2025 15:55:30 +0000
Subject: Re: [Mjpeg-users] [PATCH 27/65] media: Reset file->private_data to
 NULL in v4l2_fh_del()
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
Cc: imx@lists.linux.dev, linux-samsung-soc@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 mjpeg-users@lists.sourceforge.net, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-usb@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-tegra@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1082646426414343148=="
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

--===============1082646426414343148==
Content-Type: multipart/signed; boundary="=-=-="; micalg="pgp-sha256";
	protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

It was <2025-08-02 sob 11:22>, when Jacopo Mondi wrote:
> From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>
> Multiple drivers that use v4l2_fh and call v4l2_fh_del() manually reset
> the file->private_data pointer to NULL in their video device .release()
> file operation handler. Move the code to the v4l2_fh_del() function to
> avoid direct access to file->private_data in drivers. This requires
> adding a file pointer argument to the function.

[...]

> diff --git a/drivers/media/platform/samsung/s5p-g2d/g2d.c b/drivers/media=
/platform/samsung/s5p-g2d/g2d.c
> index e34cae9c9cf65d3161822b68233d28472171f917..922262f61e7b53baf1b5840d3=
5149bf5b4b2e7ad 100644
> --- a/drivers/media/platform/samsung/s5p-g2d/g2d.c
> +++ b/drivers/media/platform/samsung/s5p-g2d/g2d.c
> @@ -280,7 +280,7 @@ static int g2d_release(struct file *file)
>  	v4l2_m2m_ctx_release(ctx->fh.m2m_ctx);
>  	mutex_unlock(&dev->mutex);
>  	v4l2_ctrl_handler_free(&ctx->ctrl_handler);
> -	v4l2_fh_del(&ctx->fh);
> +	v4l2_fh_del(&ctx->fh, file);
>  	v4l2_fh_exit(&ctx->fh);
>  	kfree(ctx);
>  	v4l2_info(&dev->v4l2_dev, "instance closed\n");
> diff --git a/drivers/media/platform/samsung/s5p-jpeg/jpeg-core.c b/driver=
s/media/platform/samsung/s5p-jpeg/jpeg-core.c
> index c4ad0196ed8f1bf579365a0a21dd8c4a78bdaa10..2a57efd181540183e7d2b66d5=
1f9f2f274ddd100 100644
> --- a/drivers/media/platform/samsung/s5p-jpeg/jpeg-core.c
> +++ b/drivers/media/platform/samsung/s5p-jpeg/jpeg-core.c
> @@ -1005,7 +1005,7 @@ static int s5p_jpeg_open(struct file *file)
>  	return 0;
>=20=20
>  error:
> -	v4l2_fh_del(&ctx->fh);
> +	v4l2_fh_del(&ctx->fh, file);
>  	v4l2_fh_exit(&ctx->fh);
>  	mutex_unlock(&jpeg->lock);
>  free:
> @@ -1021,7 +1021,7 @@ static int s5p_jpeg_release(struct file *file)
>  	mutex_lock(&jpeg->lock);
>  	v4l2_m2m_ctx_release(ctx->fh.m2m_ctx);
>  	v4l2_ctrl_handler_free(&ctx->ctrl_handler);
> -	v4l2_fh_del(&ctx->fh);
> +	v4l2_fh_del(&ctx->fh, file);
>  	v4l2_fh_exit(&ctx->fh);
>  	kfree(ctx);
>  	mutex_unlock(&jpeg->lock);

Acked-by: =C5=81ukasz Stelmach <l.stelmach@samsung.com>



[...]


=2D-=20
=C5=81ukasz Stelmach
Samsung R&D Institute Poland
Samsung Electronics

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEXpuyqjq9kGEVr9UQsK4enJilgBAFAmijNOoACgkQsK4enJil
gBAXpggAhxgfNJt5JHfaNRWL4tntTEflz9jY6aL37c5XVvyFfbAOD9ZUAipWxJ3g
fm3satj2+sGjeHZtH4lAnwpLpNY8egrTC1c9muXvIy/ExVz7jwo1JW/IKM9a0tZl
D9N1GuZeTlQeLoFPsXl4LQhDbj48llm8roSKgfK4mU8ymTEw6BYOQ7bMZcxWKd9+
amU+zqtKIXE3OHNKDB3Hoo9pLBhOIBPXcqEV8rwNbC0dyidV8GvVUUv4ptQBlAyV
SNaaVoSHo+4P9caRnQOeX3kj7NXJa3ES03Cgpj8IhhZigvTtXJ+VL0fL283OuvOe
p2JcG+pKY00NgIMbtv0xGbMhZGox9A==
=VvC9
-----END PGP SIGNATURE-----
--=-=-=--


--===============1082646426414343148==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1082646426414343148==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users

--===============1082646426414343148==--

