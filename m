Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 48898B2AD71
	for <lists+mjpeg-users@lfdr.de>; Mon, 18 Aug 2025 17:55:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Cc:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	MIME-Version:Message-ID:In-Reply-To:Date:To:From:Sender:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZtH3VrhNMfT2xlZfMtz7z8Hoo29/qP1vOuibCiuSLcE=; b=dk2bsZSlYkCE43sAlKiUpoQvCJ
	jvnwS2kkagHjLFd7eaFWMI2VwM2yUAecP1VJ5f2BbWebQnPSbbEfS4ptogoB22y7yOJnWu5EBmaGY
	vpbXBMgcBLIQdVavP+FFQ1TxbDMKlQExbXsN6nl9Dvux/XTFUEtQQT3zfQGIMRoKq9UI=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1uo2Cq-0002wF-7r;
	Mon, 18 Aug 2025 15:55:32 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <l.stelmach@samsung.com>) id 1uo0qC-0008Gn-0M
 for mjpeg-users@lists.sourceforge.net;
 Mon, 18 Aug 2025 14:28:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:Content-Type:MIME-Version:Message-ID:
 In-Reply-To:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ts3A4MvB+pLF9b1fYr1OaRKHsIG9rXzjaSyR872fx0Q=; b=J11dyzv23VOkQtZbUnOsHacPGp
 xq/wF0K1sUX6fHRq/NwRWC2HZcOANNWcW1RaQBr64kr4TOIdQ6yf/nV9JLTihFVD7RDHS5AF0cTWV
 cHqv1B+UuaSwlNCC4JMh7Eh42ICxhozsHU/HcXOtWmOv6IQXkrT6SAbOyenoVZ/1ruJ8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:Content-Type:MIME-Version:Message-ID:In-Reply-To:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ts3A4MvB+pLF9b1fYr1OaRKHsIG9rXzjaSyR872fx0Q=; b=eLWsRzo9HcQRfbmCQqUuu9oFG7
 B2MpiC2ffxe8wo/QwmbefV0DZi60yaRKHhD0GPGVRd3h3CAfBni3lX/R2olwgg2K9BTSH/3x5Z5jN
 W1EjOkiGZo6K38IltrSqUurglomVsR99/okTIYamk6awgDeFBt5whiJYKInXr283DnMw=;
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uo0qB-0006c8-8v for mjpeg-users@lists.sourceforge.net;
 Mon, 18 Aug 2025 14:28:03 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20250818141041euoutp01198781292bd5d26e9ea7136d3d3d73e8~c4dDIkjfs2135921359euoutp01S;
 Mon, 18 Aug 2025 14:10:41 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20250818141041euoutp01198781292bd5d26e9ea7136d3d3d73e8~c4dDIkjfs2135921359euoutp01S
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1755526241;
 bh=ts3A4MvB+pLF9b1fYr1OaRKHsIG9rXzjaSyR872fx0Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nweMstTkqZUfTDcgSuzWRYVoV9JvbPK+l2fq2+I3gRx0SKOetrGBglidgci/XLRHG
 yKiRGPTghNY65ZYuW+rQetbaj0UlX84N/HJy2tuH4Qs0xmThMbES7YZyWuK/y2EQwa
 pANBPLppgOKGZUguwTqkajXJsHrX4XbKh4XzMW6k=
Received: from eusmtip1.samsung.com (unknown [203.254.199.221]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20250818141040eucas1p12598f376bdd8cfcb984a8a799373111d~c4dCdErup2133021330eucas1p1j;
 Mon, 18 Aug 2025 14:10:40 +0000 (GMT)
Received: from localhost (unknown [106.120.51.111]) by eusmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20250818141040eusmtip168497366a830534395c067398c2a3939~c4dCY3Ph_0814408144eusmtip1d;
 Mon, 18 Aug 2025 14:10:40 +0000 (GMT)
From: Lukasz Stelmach <l.stelmach@samsung.com>
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Mon, 18 Aug 2025 16:10:40 +0200
In-Reply-To: <20250802-media-private-data-v1-11-eb140ddd6a9d@ideasonboard.com>
 (Jacopo Mondi's message of "Sat, 02 Aug 2025 11:22:33 +0200")
Message-ID: <oypijda53wra8v.fsf%l.stelmach@samsung.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
MIME-Version: 1.0
X-CMS-MailID: 20250818141040eucas1p12598f376bdd8cfcb984a8a799373111d
X-Msg-Generator: CA
X-RootMTR: 20250802092520eucas1p2d0edfe269d3c423e6157bd7a0ec0b43c
X-EPHeader: CA
X-CMS-RootMailID: 20250802092520eucas1p2d0edfe269d3c423e6157bd7a0ec0b43c
References: <20250802-media-private-data-v1-0-eb140ddd6a9d@ideasonboard.com>
 <CGME20250802092520eucas1p2d0edfe269d3c423e6157bd7a0ec0b43c@eucas1p2.samsung.com>
 <20250802-media-private-data-v1-11-eb140ddd6a9d@ideasonboard.com>
X-Spam-Score: 2.3 (++)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  It was <2025-08-02 sob 11:22>, when Jacopo Mondi wrote: >
 From: Laurent Pinchart <laurent.pinchart@ideasonboard.com> > > Accessing
 file->private_data
 manually to retrieve the v4l2_fh pointer is > erro [...] 
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
X-Headers-End: 1uo0qB-0006c8-8v
X-Mailman-Approved-At: Mon, 18 Aug 2025 15:55:30 +0000
Subject: Re: [Mjpeg-users] [PATCH 11/65] media: Replace file->private_data
 access with custom functions
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
Content-Type: multipart/mixed; boundary="===============7560765994987122912=="
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

--===============7560765994987122912==
Content-Type: multipart/signed; boundary="=-=-="; micalg="pgp-sha256";
	protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

It was <2025-08-02 sob 11:22>, when Jacopo Mondi wrote:
> From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>
> Accessing file->private_data manually to retrieve the v4l2_fh pointer is
> error-prone, as the field is a void * and will happily cast implicitly
> to any pointer type.
>
> Replace all remaining locations that read the v4l2_fh pointer directly
> from file->private_data and cast it to driver-specific file handle
> structures with driver-specific functions that use file_to_v4l2_fh() and
> perform the same cast.
>
> No functional change is intended, this only paves the way to remove
> direct accesses to file->private_data and make V4L2 drivers safer.
> Other accesses to the field will be addressed separately.
>
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
> ---

[...]

> diff --git a/drivers/media/platform/samsung/s5p-g2d/g2d.c b/drivers/media=
/platform/samsung/s5p-g2d/g2d.c
> index ffed16a34493be2edbdaee13619467417487c1e7..44fcedbbc90a9863827aacbcd=
5f56d850cb552ea 100644
> --- a/drivers/media/platform/samsung/s5p-g2d/g2d.c
> +++ b/drivers/media/platform/samsung/s5p-g2d/g2d.c
> @@ -25,7 +25,10 @@
>  #include "g2d.h"
>  #include "g2d-regs.h"
>=20=20
> -#define fh2ctx(__fh) container_of(__fh, struct g2d_ctx, fh)
> +static inline struct g2d_ctx *file2ctx(struct file *filp)
> +{
> +	return container_of(file_to_v4l2_fh(filp), struct g2d_ctx, fh);
> +}
>=20=20
>  static struct g2d_fmt formats[] =3D {
>  	{
> @@ -272,7 +275,7 @@ static int g2d_open(struct file *file)
>  static int g2d_release(struct file *file)
>  {
>  	struct g2d_dev *dev =3D video_drvdata(file);
> -	struct g2d_ctx *ctx =3D fh2ctx(file->private_data);
> +	struct g2d_ctx *ctx =3D file2ctx(file);
>=20=20
>  	mutex_lock(&dev->mutex);
>  	v4l2_m2m_ctx_release(ctx->fh.m2m_ctx);


Acked-by: Lukasz Stelmach <l.stelmach@samsung.com>


[...]


=2D-=20
=C5=81ukasz Stelmach
Samsung R&D Institute Poland
Samsung Electronics

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEXpuyqjq9kGEVr9UQsK4enJilgBAFAmijNGAACgkQsK4enJil
gBDoIQgAm0zhFQfQO2pDJE9DC0t6P4lrJ//jtdrQJtVSYpcaXDYP9Oq1iygQ3s54
2wjf/n/+kXlE2cUM5pvbFc0c1qeuZipb+lexBpwBdogDE3njAsinDf4ohsWPGhJC
TMOuWPadHmM0CXjuSWpeF+MoKtOJYJjdyVizq8ZoFwgGHssYApRxGVuXx6DRlsZK
aqNXp4P9HNaVsxLl5JOCaeEaJLBkU++5rhIooxbmm/jPuM6WuOWil+jQKADaODeJ
UfkLjfRCLFc4WdsXOBZuwqUiyU4imB8qJOlrjosCChiqKqr7up+cyr3YZ7PJEXPv
jN4MErP/mPjxbYUi+bON3CbY2FlWfw==
=alRq
-----END PGP SIGNATURE-----
--=-=-=--


--===============7560765994987122912==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7560765994987122912==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users

--===============7560765994987122912==--

