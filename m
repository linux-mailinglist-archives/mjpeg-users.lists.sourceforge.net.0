Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 69BC94DDF90
	for <lists+mjpeg-users@lfdr.de>; Fri, 18 Mar 2022 18:04:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1nVG1k-0000e0-5s; Fri, 18 Mar 2022 17:04:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <l.stelmach@samsung.com>) id 1nUvx0-0000D5-P2
 for mjpeg-users@lists.sourceforge.net; Thu, 17 Mar 2022 19:38:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:Content-Type:MIME-Version:Message-ID:
 In-Reply-To:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8AJD7LLy/THFDuNHTzws2WZ7Rh8dubqLenZAtO6y33w=; b=QpCDuVQiyEIATPbyz25LXuE7wO
 2n05lzqzbRLiOKksMtp5FhkTCFvKtyWBuI+2+Actqe0Q3YEDARo1PW4ZYE+/mZezjP+6zTwLzY/S2
 dOyShbgGTDYYQOq0qTqXvepOhLorZ35tXwkl4FIu6y7Xy+Te0t6iupeosCdV8FoDW2Ec=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:Content-Type:MIME-Version:Message-ID:In-Reply-To:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8AJD7LLy/THFDuNHTzws2WZ7Rh8dubqLenZAtO6y33w=; b=ipYXrCPOiMTjmQ7XTEXQ1tjMtd
 +tLKebOTfkHThPhgOjrHbkH5pReeN86TBadc6UpD41MN4cbbJejf/fkWlqsoejj7wfx7Rd74mwKFb
 HwQjjeDyDvPvyD7KCZrwKDZJh43Sx7jW+tOsd475ARKdPkpqHRUo8o3+qSp7YsUWWZaQ=;
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nUvwM-0001TR-Rt
 for mjpeg-users@lists.sourceforge.net; Thu, 17 Mar 2022 19:38:07 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20220317192137euoutp017e71ba0ed22d1b91ba2d8624c345a9c9~dQVr6851W0692706927euoutp01j;
 Thu, 17 Mar 2022 19:21:37 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20220317192137euoutp017e71ba0ed22d1b91ba2d8624c345a9c9~dQVr6851W0692706927euoutp01j
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1647544897;
 bh=8AJD7LLy/THFDuNHTzws2WZ7Rh8dubqLenZAtO6y33w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=SSsYA3sB8VCPS64sV7bKPBdT8Gs/9iazS1cVIbja0uftAb3Jtq7aVK0HmcrvM88Y1
 NoEJ9kl4mWA5MXUH10J7hVGyfodyRX1b5gMz1n+rN5J9woekIMHDbFexQ8XqDOWVDm
 SBXoHQ05p7Jo9XqAW4y1w7OlZTplPAkddYsl9vKc=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20220317192137eucas1p26a509d5aaf346c7b64b070301bf61eb3~dQVrnVIS11741017410eucas1p2i;
 Thu, 17 Mar 2022 19:21:37 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 08.B3.09887.14A83326; Thu, 17
 Mar 2022 19:21:37 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20220317192136eucas1p185dfbf79e792ebdc4c5614a90c1b0cd8~dQVqafbfc3134231342eucas1p1O;
 Thu, 17 Mar 2022 19:21:36 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20220317192136eusmtrp180d92f8748820fe9ee93ff913a9123e8~dQVqZWQ871868218682eusmtrp1x;
 Thu, 17 Mar 2022 19:21:36 +0000 (GMT)
X-AuditID: cbfec7f4-45bff7000000269f-39-62338a41cdcf
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id C4.14.09404.F3A83326; Thu, 17
 Mar 2022 19:21:35 +0000 (GMT)
Received: from localhost (unknown [106.120.51.46]) by eusmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20220317192135eusmtip11512036116a92f228b87ec99e1e8e94b~dQVqJMrcG1419214192eusmtip1r;
 Thu, 17 Mar 2022 19:21:35 +0000 (GMT)
From: Lukasz Stelmach <l.stelmach@samsung.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Date: Thu, 17 Mar 2022 20:21:35 +0100
In-Reply-To: <d5b6678363c4374436014137fecc22ff666e3ebc.1647274407.git.mchehab@kernel.org>
 (Mauro Carvalho Chehab's message of "Mon, 14 Mar 2022 17:35:00 +0100")
Message-ID: <dleftj1qz0mlkw.fsf%l.stelmach@samsung.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sf1DTZRzHe77f7777Dhw+DpDnlkfdMCo4QcPySQj0sLvvVWdcWnnVNSd8
 BY6xrf3IrDNmUMGaIAMvmJhACZ78aA5FI52JlqfEYETkgoSEFCe6k3GQhNC2L9753/vz+bzf
 r+f5PPcwpKSUljK5Kj2nVSmUMjqEav/lvnPVRlPSjtV/+8Jwv6uTwC37fqZw7cFQbB8dEODy
 c91CXNjkJLF7clqAf+uoobHZdtKvCl0An7x1l8CTIwskLh+0CXFVj4PAF30cNg2MCXClo4PG
 JVNWGtc3fE7iBvscgfsLXTS+UjRObVjO2nyf0ax1uJtm7cdKaLbtuwJ2vK0asD1VdYD9sdZH
 sOcda1ifPTpD9E5IShanzP2Q0yambg/JcR9Sac5lfOS746CMoDvZBEQMgmvR78YaygRCGAk8
 CtDtwQeLxZS/GHcL+cIH0I0+i/BhxHSiIqglsBGgQnsOb7oJ0IzxG2ACDEPDBNTSsi3gifDL
 m22uIJWEfQI0MlBOBQbh8DXU5hgMgij4FBo1zQoCWgTrAXowvzrAEcN16KuFjEA7Er6I5m7c
 C9rFcBm6XD0WxJAwH1X3TIAAH8FpESobHAP8RTehhVNzJK/DkefSicUFVqCuCjMV4CNYgCos
 L/BZM0DtNf9SvCcZDTlnaV5vRJMXviR4fxi6emcZf24YsrR/TfJtMSr+QsK7V6LWsjOLFCna
 5zkKeAuLLjue4F+qGSBX6RC9HzxpfWQb6yPbWP0REj6Lvu9I5NvxqKHuNsnrl1Brq5eqBYJj
 IIoz6PKzOd1zKm5Xgk6RrzOoshMy1fl24P+mXfOXpk6DRs+9hE5AMKATrPSHr9uaeoGUUqlV
 nCxC/Ot44g6JOEux+2NOq5ZrDUpO1wkeZyhZlDgz16aQwGyFnsvjOA2nfTglGJHUSCz5jwiT
 Wuf7RPGMO0ZuT1txPm1XkdfIls/Id8rfDE9LuYqFOvnFmLzZvriu++7imOvc3U+lWUmHt2yO
 X/hpiIJdbrOtd/3zfzmUu/fH1Vz5IzZ9xHDw7AFxaDdXJd++NEUc++7a9brmptKYvMhrFq/y
 afVpvUEtK4YTinWV2Y/1vz165NVXNlSFbrFr0jPet+6xaupPSXGvfucz8tSRt6hts9NJwkNQ
 f2RJkbh55nikWd+YWnLGLV1aklz3AV7Vku6JOr75FpP5Hrd36z/RzuE3csctzJDn8ITrdW/l
 /IGXzw57DWWfwGvfOlMKNBfizVunueU/RPzp3rM32hs7kFMmo3Q5ijVxpFan+B+mhywbIQQA
 AA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmplleLIzCtJLcpLzFFi42I5/e/4XV37LuMkg4XvLSyuXDzEZLG29yiL
 xYLZ3BabHl9jtZi4/yy7RfPqc8wWNz99Y7W4vGsOm0XPhq1AVvNFRoutL98xWXx68J/ZYuLt
 DewWM87vY7I48jnVouvaE1aLKft2sVl0fpnFZrFoWSuzxbJNf5gsrjRfZLM41fKCxUHMY8Pn
 JjaPWffPsnlsWtXJ5rF5Sb3Hi80zGT3Oz1jI6LF7wWcmj4P7DD0+b5IL4IzSsynKLy1JVcjI
 Ly6xVYo2tDDSM7S00DMysdQzNDaPtTIyVdK3s0lJzcksSy3St0vQy7g5N69gf0DF57f7WBoY
 z1p3MXJySAiYSHRtmcwOYgsJLGWU+Po2p4uRAyguJbFybjpEibDEn2tdbBAlTxklVr1yAClh
 E9CTWLs2AiQsAmQ+33yRpYuRi4NZ4A6rRPPBLUwgCWEBH4nN+25DjY+QeDT/ClicRUBV4nHX
 L1YQm1NgEaPE338GIDN5Bcwluv8HgIRFBSwl/jz7CNbKKyAocXLmExYQm1kgW+Lr6ufMExgF
 ZiFJzUKSmgU0iVlAU2L9Ln2IsLbEsoWvmSFsW4l1696zLGBkXcUoklpanJueW2ykV5yYW1ya
 l66XnJ+7iRGYBrYd+7llB+PKVx/1DjEycTAeYlQB6ny0YfUFRimWvPy8VCUR3jMv9JOEeFMS
 K6tSi/Lji0pzUosPMZoCfTaRWUo0OR+YoPJK4g3NDEwNTcwsDUwtzYyVxHk9CzoShQTSE0tS
 s1NTC1KLYPqYODilGphibDLLzno6a12RuDKlvcxuZvKmx2eWWB5gnB5gUWXGNVsodHGRqhCz
 Pg9XyWxtr7VzpZ9P3hNRbMCt65M2a2Ge2rfLJw5tj9m7M9oh9VdhTkTaD/uPSTwRbxS7jzSL
 B4vd17WZInhyi7znJvmJfHYZ0y9uzPf51et2rNRa7eyadRl3RJdb7c6dG5/5ZvPfVelu/OFy
 pQ0xXB+yAqOC/zGZPEqxNDt5IlYh/0Lr14P3pCMCd6oZ3JLTZbry59WdaRMc3e6+YHjx+I13
 6cwlzY/az/VOm73l4jPeGON4HienzZ/YF5RyXNizpM3tTnXW/W13Xuzus3NWTZE+0dB6LGOj
 pbZ4/N24dTtW7mBSmajEUpyRaKjFXFScCABQmWVNmAMAAA==
X-CMS-MailID: 20220317192136eucas1p185dfbf79e792ebdc4c5614a90c1b0cd8
X-Msg-Generator: CA
X-RootMTR: 20220317192136eucas1p185dfbf79e792ebdc4c5614a90c1b0cd8
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20220317192136eucas1p185dfbf79e792ebdc4c5614a90c1b0cd8
References: <d5b6678363c4374436014137fecc22ff666e3ebc.1647274407.git.mchehab@kernel.org>
 <CGME20220317192136eucas1p185dfbf79e792ebdc4c5614a90c1b0cd8@eucas1p1.samsung.com>
X-Spam-Score: -4.2 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  It was <2022-03-14 pon 17:35>, when Mauro Carvalho Chehab
 wrote: > media Kconfig has two entries associated to V4L API: > VIDEO_DEV
 and VIDEO_V4L2. > > On Kernel 2.6.x, there were two V4L APIs, each o [...]
 Content analysis details:   (-4.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nUvwM-0001TR-Rt
X-Mailman-Approved-At: Fri, 18 Mar 2022 17:04:32 +0000
Subject: Re: [Mjpeg-users] [PATCH v2 65/67] media: Kconfig: cleanup
 VIDEO_DEV dependencies
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
Cc: alsa-devel@alsa-project.org, linux-samsung-soc@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, openbmc@lists.ozlabs.org,
 linux-arm-msm@vger.kernel.org, mjpeg-users@lists.sourceforge.net,
 linux-staging@lists.linux.dev, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-sunxi@lists.linux.dev,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-usb@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-input@vger.kernel.org,
 linux-tegra@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============0244014899948740474=="
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

--===============0244014899948740474==
Content-Type: multipart/signed; boundary="=-=-="; micalg="pgp-sha256";
	protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

It was <2022-03-14 pon 17:35>, when Mauro Carvalho Chehab wrote:
> media Kconfig has two entries associated to V4L API:
> VIDEO_DEV and VIDEO_V4L2.
>
> On Kernel 2.6.x, there were two V4L APIs, each one with its own flag.
> VIDEO_DEV were meant to:
> 	1) enable Video4Linux and make its Kconfig options to appear;
> 	2) it makes the Kernel build the V4L core.
>
> while VIDEO_V4L2 where used to distinguish between drivers that
> implement the newer API and drivers that implemented the former one.
>
> With time, such meaning changed, specially after the removal of
> all V4L version 1 drivers.
>
> At the current implementation, VIDEO_DEV only does (1): it enables
> the media options related to V4L, that now has:
>
> 	menu "Video4Linux options"
> 		visible if VIDEO_DEV
>
> 	source "drivers/media/v4l2-core/Kconfig"
> 	endmenu
>
> but it doesn't affect anymore the V4L core drivers.
>
> The rationale is that the V4L2 core has a "soft" dependency
> at the I2C bus, and now requires to select a number of other
> Kconfig options:
>
> 	config VIDEO_V4L2
> 		tristate
> 		depends on (I2C || I2C=3Dn) && VIDEO_DEV
> 		select RATIONAL
> 		select VIDEOBUF2_V4L2 if VIDEOBUF2_CORE
> 		default (I2C || I2C=3Dn) && VIDEO_DEV
>
> In the past, merging them would be tricky, but it seems that it is now
> possible to merge those symbols, in order to simplify V4L dependencies.
>
> Let's keep VIDEO_DEV, as this one is used on some make *defconfig
> configurations.
>
> Suggested-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Reviewed-by: Jacopo Mondi <jacopo@jmondi.org>
> Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
> ---
>
> To avoid mailbombing on a large number of people, only mailing lists were=
 C/C on the cover.
> See [PATCH v2 00/67] at: https://lore.kernel.org/all/cover.1647274406.git=
.mchehab@kernel.org/
>
>  drivers/input/rmi4/Kconfig                    |   2 +-
>  drivers/input/touchscreen/Kconfig             |   4 +-
>  drivers/media/Kconfig                         |   3 +
>  drivers/media/common/saa7146/Kconfig          |   2 +-
>  drivers/media/dvb-core/Kconfig                |   2 +-
>  drivers/media/dvb-frontends/Kconfig           |   4 +-
>  drivers/media/i2c/Kconfig                     | 250 +++++++++---------
>  drivers/media/i2c/ccs/Kconfig                 |   2 +-
>  drivers/media/i2c/cx25840/Kconfig             |   2 +-
>  drivers/media/i2c/et8ek8/Kconfig              |   2 +-
>  drivers/media/i2c/m5mols/Kconfig              |   2 +-
>  drivers/media/pci/Kconfig                     |   2 +-
>  drivers/media/pci/bt8xx/Kconfig               |   2 +-
>  drivers/media/pci/cobalt/Kconfig              |   2 +-
>  drivers/media/pci/cx18/Kconfig                |   2 +-
>  drivers/media/pci/dt3155/Kconfig              |   2 +-
>  drivers/media/pci/intel/ipu3/Kconfig          |   2 +-
>  drivers/media/pci/ivtv/Kconfig                |   2 +-
>  drivers/media/pci/meye/Kconfig                |   2 +-
>  drivers/media/pci/saa7146/Kconfig             |   6 +-
>  drivers/media/pci/sta2x11/Kconfig             |   2 +-
>  drivers/media/pci/tw5864/Kconfig              |   2 +-
>  drivers/media/pci/tw68/Kconfig                |   2 +-
>  drivers/media/pci/tw686x/Kconfig              |   2 +-
>  drivers/media/platform/Kconfig                |   6 +-
>  drivers/media/platform/allegro-dvt/Kconfig    |   2 +-
>  .../platform/allwinner/sun4i-csi/Kconfig      |   2 +-
>  .../platform/allwinner/sun6i-csi/Kconfig      |   2 +-
>  .../media/platform/allwinner/sun8i-di/Kconfig |   2 +-
>  .../platform/allwinner/sun8i-rotate/Kconfig   |   2 +-
>  .../media/platform/amlogic/meson-ge2d/Kconfig |   2 +-
>  drivers/media/platform/amphion/Kconfig        |   1 -
>  drivers/media/platform/aspeed/Kconfig         |   2 +-
>  drivers/media/platform/atmel/Kconfig          |   8 +-
>  drivers/media/platform/cadence/Kconfig        |   4 +-
>  drivers/media/platform/chips-media/Kconfig    |   2 +-
>  drivers/media/platform/intel/Kconfig          |   2 +-
>  drivers/media/platform/marvell/Kconfig        |   4 +-
>  .../media/platform/mediatek/mtk-jpeg/Kconfig  |   2 +-
>  .../media/platform/mediatek/mtk-mdp/Kconfig   |   2 +-
>  .../platform/mediatek/mtk-vcodec/Kconfig      |   2 +-
>  .../media/platform/mediatek/mtk-vpu/Kconfig   |   2 +-
>  .../media/platform/nvidia/tegra-vde/Kconfig   |   2 +-
>  drivers/media/platform/nxp/Kconfig            |   6 +-
>  drivers/media/platform/nxp/imx-jpeg/Kconfig   |   2 +-
>  drivers/media/platform/qcom/camss/Kconfig     |   2 +-
>  drivers/media/platform/qcom/venus/Kconfig     |   2 +-
>  drivers/media/platform/renesas/Kconfig        |  30 +--
>  .../media/platform/renesas/rcar-vin/Kconfig   |   4 +-
>  drivers/media/platform/rockchip/rga/Kconfig   |   2 +-
>  .../media/platform/rockchip/rkisp1/Kconfig    |   2 +-
>  .../media/platform/samsung/exynos-gsc/Kconfig |   2 +-
>  .../media/platform/samsung/exynos4-is/Kconfig |   2 +-
>  .../media/platform/samsung/s3c-camif/Kconfig  |   2 +-
>  .../media/platform/samsung/s5p-g2d/Kconfig    |   2 +-
>  .../media/platform/samsung/s5p-jpeg/Kconfig   |   2 +-
>  .../media/platform/samsung/s5p-mfc/Kconfig    |   2 +-
>  drivers/media/platform/stm/sti/bdisp/Kconfig  |   2 +-
>  drivers/media/platform/stm/sti/delta/Kconfig  |   2 +-
>  drivers/media/platform/stm/sti/hva/Kconfig    |   2 +-
>  drivers/media/platform/stm/stm32/Kconfig      |   4 +-
>  drivers/media/platform/ti/am437x/Kconfig      |   2 +-
>  drivers/media/platform/ti/davinci/Kconfig     |  12 +-
>  drivers/media/platform/ti/omap/Kconfig        |   2 +-
>  drivers/media/platform/ti/omap3isp/Kconfig    |   2 +-
>  drivers/media/platform/via/Kconfig            |   2 +-
>  drivers/media/platform/xilinx/Kconfig         |   2 +-
>  drivers/media/radio/Kconfig                   |  42 ++-
>  drivers/media/radio/si470x/Kconfig            |   2 +-
>  drivers/media/radio/wl128x/Kconfig            |   2 +-
>  drivers/media/spi/Kconfig                     |   4 +-
>  drivers/media/test-drivers/Kconfig            |   2 +-
>  drivers/media/test-drivers/vicodec/Kconfig    |   2 +-
>  drivers/media/test-drivers/vimc/Kconfig       |   2 +-
>  drivers/media/test-drivers/vivid/Kconfig      |   2 +-
>  drivers/media/tuners/Kconfig                  |   6 +-
>  drivers/media/tuners/e4000.c                  |   6 +-
>  drivers/media/tuners/fc2580.c                 |   6 +-
>  drivers/media/usb/airspy/Kconfig              |   2 +-
>  drivers/media/usb/au0828/Kconfig              |   6 +-
>  drivers/media/usb/cpia2/Kconfig               |   2 +-
>  drivers/media/usb/dvb-usb-v2/Kconfig          |   8 +-
>  drivers/media/usb/dvb-usb/Kconfig             |   4 +-
>  drivers/media/usb/gspca/Kconfig               |  96 +++----
>  drivers/media/usb/gspca/gl860/Kconfig         |   2 +-
>  drivers/media/usb/gspca/m5602/Kconfig         |   2 +-
>  drivers/media/usb/hackrf/Kconfig              |   2 +-
>  drivers/media/usb/hdpvr/Kconfig               |   2 +-
>  drivers/media/usb/msi2500/Kconfig             |   2 +-
>  drivers/media/usb/pvrusb2/Kconfig             |   2 +-
>  drivers/media/usb/pwc/Kconfig                 |   2 +-
>  drivers/media/usb/s2255/Kconfig               |   2 +-
>  drivers/media/usb/stkwebcam/Kconfig           |   2 +-
>  drivers/media/usb/usbtv/Kconfig               |   2 +-
>  drivers/media/usb/uvc/Kconfig                 |   2 +-
>  drivers/media/usb/zr364xx/Kconfig             |   2 +-
>  drivers/media/v4l2-core/Kconfig               |  12 +-
>  drivers/media/v4l2-core/Makefile              |   2 +-
>  drivers/staging/media/atomisp/Kconfig         |   2 +-
>  drivers/staging/media/atomisp/i2c/Kconfig     |  14 +-
>  drivers/staging/media/hantro/Kconfig          |   2 +-
>  drivers/staging/media/imx/Kconfig             |   2 +-
>  drivers/staging/media/ipu3/Kconfig            |   2 +-
>  drivers/staging/media/max96712/Kconfig        |   2 +-
>  drivers/staging/media/meson/vdec/Kconfig      |   2 +-
>  drivers/staging/media/omap4iss/Kconfig        |   2 +-
>  drivers/staging/media/rkvdec/Kconfig          |   2 +-
>  drivers/staging/media/sunxi/cedrus/Kconfig    |   2 +-
>  drivers/staging/media/tegra-video/Kconfig     |   2 +-
>  drivers/staging/media/zoran/Kconfig           |   2 +-
>  drivers/staging/most/video/Kconfig            |   2 +-
>  .../vc04_services/bcm2835-camera/Kconfig      |   2 +-
>  drivers/usb/gadget/Kconfig                    |   2 +-
>  drivers/usb/gadget/legacy/Kconfig             |   2 +-
>  sound/pci/Kconfig                             |   4 +-
>  115 files changed, 356 insertions(+), 374 deletions(-)
>

Acked-by: =C5=81ukasz Stelmach <l.stelmach@samsung.com>

[...]


> diff --git a/drivers/media/platform/samsung/s5p-g2d/Kconfig b/drivers/med=
ia/platform/samsung/s5p-g2d/Kconfig
> index 9bc9d90a666a..28ab88fc2d7c 100644
> --- a/drivers/media/platform/samsung/s5p-g2d/Kconfig
> +++ b/drivers/media/platform/samsung/s5p-g2d/Kconfig
> @@ -1,7 +1,7 @@
>  config VIDEO_SAMSUNG_S5P_G2D
>  	tristate "Samsung S5P and EXYNOS4 G2D 2d graphics accelerator driver"
>  	depends on V4L_MEM2MEM_DRIVERS
> -	depends on VIDEO_DEV && VIDEO_V4L2
> +	depends on VIDEO_DEV
>  	depends on ARCH_S5PV210 || ARCH_EXYNOS || COMPILE_TEST
>  	select VIDEOBUF2_DMA_CONTIG
>  	select V4L2_MEM2MEM_DEV

[...]


=2D-=20
=C5=81ukasz Stelmach
Samsung R&D Institute Poland
Samsung Electronics

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEXpuyqjq9kGEVr9UQsK4enJilgBAFAmIzij8ACgkQsK4enJil
gBBbcgf/aneuRLpVmb3t9XhFHinqWTwAHjmHijfM4Bxpeie5LGPD+ZODOQbbTHI/
SXYJS3DSxcgXnRGiv7g4MNmazBgof2zjvt/C8g0cTWdthAC4RALkjvOFd+4JyyJP
ozwCmesdus9emei4oZwgFKK914YZDEjYr8bWMicgALtwdnF7z9A00O5RwqaptPTX
jSFQlpjo5s4gYR2xpQZaLPRwnr328DtW8oertBocpd32+OtNe+A2u1cjdxKuOPqt
1iB2h/WFOgzqi5noKYu5eQ37WtWZsiPlUuEcrUXRddHEj/TYOFwBEclb+TtkaO0X
ysdUvYWSGALn6XAUtaiDpl43o6bQ2A==
=1sCe
-----END PGP SIGNATURE-----
--=-=-=--


--===============0244014899948740474==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============0244014899948740474==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users

--===============0244014899948740474==--

