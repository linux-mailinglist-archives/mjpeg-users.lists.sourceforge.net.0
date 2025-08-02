Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 42301B19B57
	for <lists+mjpeg-users@lfdr.de>; Mon,  4 Aug 2025 08:09:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=P7NSD0INI0s+Crx1W8XQtKaVPD4T3UhvMzk1eFP65u0=; b=LEUTC63/e23F4z9GYlYqwqftBh
	OHjFyLn92V6J7R+YpJVXsrOHhqoZQTBbupHvTcyFJpsEHVo1l/WeOS6YN6oGObmUsZxWiAhEbmEqh
	ZtXumUGH3Rw+s9COFKcTGb5vriT71oEKZaXvrLYrSeG4vu5f4yBFFSulmEDvOlucmcds=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1uioNu-0004Ea-35;
	Mon, 04 Aug 2025 06:09:22 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <detlev.casanova@collabora.com>) id 1uiExv-0004rx-6N
 for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 16:20:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xtf+dEyzkoelWC2Fx1wwuEkZQXXlAY749DZ4vNup7Cw=; b=nOHODHD/TZBrQ8ZOPStJ3MMM+Y
 jP+ZIbXQ7IpwjNJ24AaxwOAwM1U8YEYx1xqQXbjFIHONkATdsvny1zuBuofEwGqVuib+2hUNCcEno
 x0Eijec+ASo9yoOehRMk7yHyxl/gtAhbErfzdb1Rm060/Smaq3RwZMn9UMd+miFgwVEI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xtf+dEyzkoelWC2Fx1wwuEkZQXXlAY749DZ4vNup7Cw=; b=F3E0sFO0gZUBpDkWfBVAGy0dqa
 +r0MUuX24OmIzdHilvfMqaHJCrEdrEBsrMT5nzTcys4JJncEPW+AotXVJIV4RGLYsftQar6IO/e9j
 lKm5arnyQip08NVEQMpc+tSYBLNDSsoCzf5D1ssKnhUxwjCMSJ3sTS6MXHaLabTnuLQI=;
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uiExt-0005yL-Rn for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 16:20:11 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1754150560; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=WQqpUkXPtrxzpxaZ2hYfl+XOPYKxR/yR0rcNvg04LRAV+Tsf44cBMfyRI8vwmTxp6gChLAQiPjGtlwy/K9/JX//NPyH7DHB8Ls9uEYjsC0dr6CE5dX7KPtJg9DFRaUhNEv2SbmQChbOmcjGtuyBrJWCXYi6NE//Lt6k/YcpSEVQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1754150560;
 h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=xtf+dEyzkoelWC2Fx1wwuEkZQXXlAY749DZ4vNup7Cw=; 
 b=hHHrzU5f++KJzrykhl5qlTExwl012A/zJUgHdgegKkwmNfKI8D3LZOgAROYses2JC1f6mU8skpwAGlagDmezWPJTkb+oc3sAmcoyg1tGLWs3PFHZAsPvG7EG9Z1xxAZTqJneL5PWuQ0spEMdUg74OA81m7ClHn9VORnJf/lBfuU=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
 dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1754150560; 
 s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com; 
 h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
 bh=xtf+dEyzkoelWC2Fx1wwuEkZQXXlAY749DZ4vNup7Cw=;
 b=V2U4lWFeUsKW1XUdY48JG6pxgTjVc/FBs9bOk6qZ6M6qlPk/usIQI2rIzHjaum91
 Wvxe2kb/Bg9+AdRIIIXAhwCMTefshntu3rhhapqWQg1gEagHTxztLAzLCKJfhTyRN02
 lQWJkogElFkvVK07iEt7bkp3i5NJH/xmkBJnBsA8=
Received: by mx.zohomail.com with SMTPS id 1754150557071593.1499218812709;
 Sat, 2 Aug 2025 09:02:37 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Devarsh Thakkar <devarsht@ti.com>, Benoit Parrot <bparrot@ti.com>,
 Hans Verkuil <hverkuil@kernel.org>, Mike Isely <isely@pobox.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans de Goede <hansg@kernel.org>,
 Parthiban Veerasooran <parthiban.veerasooran@microchip.com>,
 Christian Gromm <christian.gromm@microchip.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Alex Shi <alexs@kernel.org>, 
 Yanteng Si <si.yanteng@linux.dev>, Dongliang Mu <dzm91@hust.edu.cn>,
 Jonathan Corbet <corbet@lwn.net>, Tomasz Figa <tfiga@chromium.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Andy Walls <awalls@md.metrocast.net>,
 Michael Tretter <m.tretter@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Bin Liu <bin.liu@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Dmitry Osipenko <digetx@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Mirela Rabulea <mirela.rabulea@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Michal Simek <michal.simek@amd.com>, Ming Qian <ming.qian@nxp.com>,
 Zhou Peng <eagle.zhou@nxp.com>,
 Xavier Roumegue <xavier.roumegue@oss.nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Dikshita Agarwal <quic_dikshita@quicinc.com>,
 Abhinav Kumar <abhinav.kumar@linux.dev>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Sylwester Nawrocki <sylvester.nawrocki@gmail.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Samuel Holland <samuel@sholland.org>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Nas Chung <nas.chung@chipsnmedia.com>,
 Jackson Lee <jackson.lee@chipsnmedia.com>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
 Houlong Wei <houlong.wei@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Tiffany Lin <tiffany.lin@mediatek.com>,
 Yunfei Dong <yunfei.dong@mediatek.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>,
 Mikhail Ulyanov <mikhail.ulyanov@cogentembedded.com>,
 Jacob Chen <jacob-chen@iotwrt.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 =?UTF-8?B?xYF1a2Fzeg==?= Stelmach <l.stelmach@samsung.com>,
 Andrzej Pietrasiewicz <andrzejtp2010@gmail.com>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Fabien Dessenne <fabien.dessenne@foss.st.com>,
 Hugues Fruchet <hugues.fruchet@foss.st.com>,
 Jean-Christophe Trotin <jean-christophe.trotin@foss.st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Steve Longerbeam <slongerbeam@gmail.com>, Maxime Ripard <mripard@kernel.org>, 
 Paul Kocialkowski <paulk@sys-base.io>,
 Niklas =?UTF-8?B?U8O2ZGVybHVuZA==?= <niklas.soderlund@ragnatech.se>,
 Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Corentin Labbe <clabbe@baylibre.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Bingbu Cao <bingbu.cao@intel.com>, Tianshu Qiu <tian.shu.qiu@intel.com>,
 Stanislaw Gruszka <stanislaw.gruszka@linux.intel.com>,
 Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Sat, 02 Aug 2025 12:02:27 -0400
Message-ID: <12713603.O9o76ZdvQC@trenzalore>
In-Reply-To: <20250802-media-private-data-v1-44-eb140ddd6a9d@ideasonboard.com>
References: <20250802-media-private-data-v1-0-eb140ddd6a9d@ideasonboard.com>
 <20250802-media-private-data-v1-44-eb140ddd6a9d@ideasonboard.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Jacopo, Thanks for the cleanup ! On Saturday, 2 August
 2025 05:23:06 EDT Jacopo Mondi wrote: > The v4l2_fh associated with an open
 file handle is now guaranteed > to be available in file->private_data,
 initialised by v4l2_fh_add(). > [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain 0.0 ARC_SIGNED             Message has a ARC signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 ARC_VALID              Message has a valid ARC signature
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [136.143.188.112 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uiExt-0005yL-Rn
X-Mailman-Approved-At: Mon, 04 Aug 2025 06:09:20 +0000
Subject: Re: [Mjpeg-users] [PATCH 44/65] media: rockchip: rkvdec: Access
 v4l2_fh from file
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
 Jacopo Mondi <jacopo.mondi@ideasonboard.com>, linux-doc@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, mjpeg-users@lists.sourceforge.net,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-renesas-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

Hi Jacopo,

Thanks for the cleanup !

On Saturday, 2 August 2025 05:23:06 EDT Jacopo Mondi wrote:
> The v4l2_fh associated with an open file handle is now guaranteed
> to be available in file->private_data, initialised by v4l2_fh_add().
> 
> Access the v4l2_fh, and from there the driver-specific structure,
> from the file * in all ioctl handlers.
> 
> While at it, remove the now unused fh_to_rkvdec_ctx() macro.
> 
> Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>

Reviewed-by: Detlev Casanova <detlev.casanova@collabora.com>

> ---
>  drivers/media/platform/rockchip/rkvdec/rkvdec.c | 14 +++++++-------
>  drivers/media/platform/rockchip/rkvdec/rkvdec.h |  5 -----
>  2 files changed, 7 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec.c
> b/drivers/media/platform/rockchip/rkvdec/rkvdec.c index
> 481c2488f9ac64e70869ed21e5053cfbc4ed6e0e..9fa80ab3c62b7753e6c992aefd106ee99
> ed375e4 100644 --- a/drivers/media/platform/rockchip/rkvdec/rkvdec.c
> +++ b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
> @@ -354,7 +354,7 @@ static int rkvdec_try_capture_fmt(struct file *file,
> void *priv, struct v4l2_format *f)
>  {
>  	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
> -	struct rkvdec_ctx *ctx = fh_to_rkvdec_ctx(priv);
> +	struct rkvdec_ctx *ctx = file_to_rkvdec_ctx(file);
>  	const struct rkvdec_coded_fmt_desc *coded_desc;
> 
>  	/*
> @@ -387,7 +387,7 @@ static int rkvdec_try_output_fmt(struct file *file, void
> *priv, struct v4l2_format *f)
>  {
>  	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
> -	struct rkvdec_ctx *ctx = fh_to_rkvdec_ctx(priv);
> +	struct rkvdec_ctx *ctx = file_to_rkvdec_ctx(file);
>  	const struct rkvdec_coded_fmt_desc *desc;
> 
>  	desc = rkvdec_find_coded_fmt_desc(pix_mp->pixelformat);
> @@ -418,7 +418,7 @@ static int rkvdec_try_output_fmt(struct file *file, void
> *priv, static int rkvdec_s_capture_fmt(struct file *file, void *priv,
>  				struct v4l2_format *f)
>  {
> -	struct rkvdec_ctx *ctx = fh_to_rkvdec_ctx(priv);
> +	struct rkvdec_ctx *ctx = file_to_rkvdec_ctx(file);
>  	struct vb2_queue *vq;
>  	int ret;
> 
> @@ -439,7 +439,7 @@ static int rkvdec_s_capture_fmt(struct file *file, void
> *priv, static int rkvdec_s_output_fmt(struct file *file, void *priv,
>  			       struct v4l2_format *f)
>  {
> -	struct rkvdec_ctx *ctx = fh_to_rkvdec_ctx(priv);
> +	struct rkvdec_ctx *ctx = file_to_rkvdec_ctx(file);
>  	struct v4l2_m2m_ctx *m2m_ctx = ctx->fh.m2m_ctx;
>  	const struct rkvdec_coded_fmt_desc *desc;
>  	struct v4l2_format *cap_fmt;
> @@ -504,7 +504,7 @@ static int rkvdec_s_output_fmt(struct file *file, void
> *priv, static int rkvdec_g_output_fmt(struct file *file, void *priv,
>  			       struct v4l2_format *f)
>  {
> -	struct rkvdec_ctx *ctx = fh_to_rkvdec_ctx(priv);
> +	struct rkvdec_ctx *ctx = file_to_rkvdec_ctx(file);
> 
>  	*f = ctx->coded_fmt;
>  	return 0;
> @@ -513,7 +513,7 @@ static int rkvdec_g_output_fmt(struct file *file, void
> *priv, static int rkvdec_g_capture_fmt(struct file *file, void *priv,
>  				struct v4l2_format *f)
>  {
> -	struct rkvdec_ctx *ctx = fh_to_rkvdec_ctx(priv);
> +	struct rkvdec_ctx *ctx = file_to_rkvdec_ctx(file);
> 
>  	*f = ctx->decoded_fmt;
>  	return 0;
> @@ -532,7 +532,7 @@ static int rkvdec_enum_output_fmt(struct file *file,
> void *priv, static int rkvdec_enum_capture_fmt(struct file *file, void
> *priv, struct v4l2_fmtdesc *f)
>  {
> -	struct rkvdec_ctx *ctx = fh_to_rkvdec_ctx(priv);
> +	struct rkvdec_ctx *ctx = file_to_rkvdec_ctx(file);
>  	u32 fourcc;
> 
>  	fourcc = rkvdec_enum_decoded_fmt(ctx, f->index, ctx->image_fmt);
> diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec.h
> b/drivers/media/platform/rockchip/rkvdec/rkvdec.h index
> 35effe9467845fdfc4ffea432211d1d2e75a08b0..481aaa4bffe975fa106fb22e78bef90ad
> e86a6cf 100644 --- a/drivers/media/platform/rockchip/rkvdec/rkvdec.h
> +++ b/drivers/media/platform/rockchip/rkvdec/rkvdec.h
> @@ -124,11 +124,6 @@ struct rkvdec_ctx {
>  	void *priv;
>  };
> 
> -static inline struct rkvdec_ctx *fh_to_rkvdec_ctx(struct v4l2_fh *fh)
> -{
> -	return container_of(fh, struct rkvdec_ctx, fh);
> -}
> -
>  static inline struct rkvdec_ctx *file_to_rkvdec_ctx(struct file *filp)
>  {
>  	return container_of(file_to_v4l2_fh(filp), struct rkvdec_ctx, fh);






_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
