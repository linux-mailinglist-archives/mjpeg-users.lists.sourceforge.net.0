Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E78B1BFFB
	for <lists+mjpeg-users@lfdr.de>; Wed,  6 Aug 2025 07:34:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TEO0iwU7yQ9qOh4uvW/PbN5tU/hJ+9CEgAh/jnMyBjw=; b=YCDCcSf8JDr+jil5t2LrBqvA+0
	uhgEGhDKkdjUd3MGYVdQ3+EaaQn4oD1llAuDvPvhsGW44TQopnZgKyVigEzb4RDcbgPYE0Fl6j+Fs
	8fqGkNtyP6oKLfGHNlewE9ORbXoD4xadJTk3fTu+uZ/t4znY7p/TOBuLzUO9LTovPeEM=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1ujWnY-0006Mr-LB;
	Wed, 06 Aug 2025 05:34:49 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mtr@pengutronix.de>) id 1ujCac-0002wD-RM
 for mjpeg-users@lists.sourceforge.net;
 Tue, 05 Aug 2025 08:00:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Q4Kz+0M++8wkHThtIz8edv/c+YcSRG12fi9jswJR/MU=; b=ME3LD3UFo/A7JxiSF4yIyKiAUR
 XmkzQZ/zZqOcS1gv9xnX/uU8bfVilGAjoByDUJGoFQbAV+lvpiek1MCqVKZdG0O6rvDGXjrsrpjoe
 s9ALRAnSMTYKg8dUy6iTlyODDRmNtKmeheS7niIVNTbnVVfBrqUpa7yZaegAl/nn4GoY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Q4Kz+0M++8wkHThtIz8edv/c+YcSRG12fi9jswJR/MU=; b=ORj3GhZxx3KTg/xtq6Lgbj5uH/
 x8OhuSpzwz0fsAYfmdG6sMWiWktPvtZuSb5v0KBqiHEDYVQ/We/1NvuWzdo2caexWEDt0ZDRrMHfL
 YxHkDysSx+nwVfiuPZQDggO3gpQz2LcU5yg4W1wZacOraKw2+warQznnFaLaySaHI++U=;
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ujCac-0000WJ-2G for mjpeg-users@lists.sourceforge.net;
 Tue, 05 Aug 2025 08:00:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.whiteo.stw.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1ujCGr-0005yg-GC; Tue, 05 Aug 2025 09:39:41 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
 by drehscheibe.grey.stw.pengutronix.de with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.96)
 (envelope-from <mtr@pengutronix.de>) id 1ujCGr-00C0KZ-0d;
 Tue, 05 Aug 2025 09:39:41 +0200
Received: from mtr by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
 (envelope-from <mtr@pengutronix.de>) id 1ujCGr-00A7fC-02;
 Tue, 05 Aug 2025 09:39:41 +0200
Date: Tue, 5 Aug 2025 09:39:40 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Message-ID: <aJG1PC0poVY-QZRb@pengutronix.de>
Mail-Followup-To: Michael Tretter <m.tretter@pengutronix.de>,
 Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Devarsh Thakkar <devarsht@ti.com>, Benoit Parrot <bparrot@ti.com>,
 Hans Verkuil <hverkuil@kernel.org>, Mike Isely <isely@pobox.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans de Goede <hansg@kernel.org>,
 Parthiban Veerasooran <parthiban.veerasooran@microchip.com>,
 Christian Gromm <christian.gromm@microchip.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Shi <alexs@kernel.org>, Yanteng Si <si.yanteng@linux.dev>,
 Dongliang Mu <dzm91@hust.edu.cn>, Jonathan Corbet <corbet@lwn.net>,
 Tomasz Figa <tfiga@chromium.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Andy Walls <awalls@md.metrocast.net>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Bin Liu <bin.liu@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Dmitry Osipenko <digetx@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Mirela Rabulea <mirela.rabulea@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
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
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
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
 Heiko Stuebner <heiko@sntech.de>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 =?utf-8?Q?=C5=81ukasz?= Stelmach <l.stelmach@samsung.com>,
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
 Steve Longerbeam <slongerbeam@gmail.com>,
 Maxime Ripard <mripard@kernel.org>,
 Paul Kocialkowski <paulk@sys-base.io>,
 Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Corentin Labbe <clabbe@baylibre.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Bingbu Cao <bingbu.cao@intel.com>,
 Tianshu Qiu <tian.shu.qiu@intel.com>,
 Stanislaw Gruszka <stanislaw.gruszka@linux.intel.com>,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-staging@lists.linux.dev, linux-doc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org,
 imx@lists.linux.dev, linux-renesas-soc@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-sunxi@lists.linux.dev, linux-usb@vger.kernel.org,
 linux-amlogic@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com,
 mjpeg-users@lists.sourceforge.net
References: <20250802-media-private-data-v1-0-eb140ddd6a9d@ideasonboard.com>
 <20250802-media-private-data-v1-29-eb140ddd6a9d@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250802-media-private-data-v1-29-eb140ddd6a9d@ideasonboard.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: mjpeg-users@lists.sourceforge.net
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Jacopo, On Sat, 02 Aug 2025 11:22:51 +0200, Jacopo Mondi
 wrote: > The v4l2_fh associated with an open file handle is now guaranteed
 > to be available in file->private_data, initialised by v4l2_fh_add(). >
 > A [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-Headers-End: 1ujCac-0000WJ-2G
X-Mailman-Approved-At: Wed, 06 Aug 2025 05:34:42 +0000
Subject: Re: [Mjpeg-users] [PATCH 29/65] media: allegro: Access v4l2_fh from
 file
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
Cc: Heiko Stuebner <heiko@sntech.de>, Devarsh Thakkar <devarsht@ti.com>,
 Stanislaw Gruszka <stanislaw.gruszka@linux.intel.com>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Christian Gromm <christian.gromm@microchip.com>,
 Dmitry Osipenko <digetx@gmail.com>, linux-stm32@st-md-mailman.stormreply.com,
 Marek Szyprowski <m.szyprowski@samsung.com>, linux-samsung-soc@vger.kernel.org,
 Robert Foss <rfoss@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Samuel Holland <samuel@sholland.org>, Kevin Hilman <khilman@baylibre.com>,
 Jacob Chen <jacob-chen@iotwrt.com>, Steve Longerbeam <slongerbeam@gmail.com>,
 Bingbu Cao <bingbu.cao@intel.com>, linux-sunxi@lists.linux.dev,
 Sascha Hauer <s.hauer@pengutronix.de>,
 =?utf-8?Q?=C5=81ukasz?= Stelmach <l.stelmach@samsung.com>,
 Andrzej Pietrasiewicz <andrzejtp2010@gmail.com>,
 Nas Chung <nas.chung@chipsnmedia.com>, Andy Walls <awalls@md.metrocast.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Ming Qian <ming.qian@nxp.com>, Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>, linux-doc@vger.kernel.org,
 Yunfei Dong <yunfei.dong@mediatek.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Yanteng Si <si.yanteng@linux.dev>,
 Magnus Damm <magnus.damm@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Dongliang Mu <dzm91@hust.edu.cn>,
 Fabien Dessenne <fabien.dessenne@foss.st.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Jerome Brunet <jbrunet@baylibre.com>, Tianshu Qiu <tian.shu.qiu@intel.com>,
 linux-media@vger.kernel.org, Paul Kocialkowski <paulk@sys-base.io>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-arm-msm@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Houlong Wei <houlong.wei@mediatek.com>, linux-amlogic@lists.infradead.org,
 Michal Simek <michal.simek@amd.com>, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <neil.armstrong@linaro.org>, Zhou Peng <eagle.zhou@nxp.com>,
 linux-renesas-soc@vger.kernel.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-mediatek@lists.infradead.org,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, imx@lists.linux.dev,
 Xavier Roumegue <xavier.roumegue@oss.nxp.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>, linux-tegra@vger.kernel.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Fabio Estevam <festevam@gmail.com>,
 Jean-Christophe Trotin <jean-christophe.trotin@foss.st.com>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Jonathan Corbet <corbet@lwn.net>, Mike Isely <isely@pobox.com>,
 Jackson Lee <jackson.lee@chipsnmedia.com>, linux-staging@lists.linux.dev,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Bin Liu <bin.liu@mediatek.com>,
 mjpeg-users@lists.sourceforge.net,
 Sylwester Nawrocki <sylvester.nawrocki@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Dikshita Agarwal <quic_dikshita@quicinc.com>, Tomasz Figa <tfiga@chromium.org>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Shawn Guo <shawnguo@kernel.org>,
 Hans de Goede <hansg@kernel.org>, Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Todor Tomov <todor.too@gmail.com>, Mirela Rabulea <mirela.rabulea@nxp.com>,
 Alex Shi <alexs@kernel.org>, Hugues Fruchet <hugues.fruchet@foss.st.com>,
 Corentin Labbe <clabbe@baylibre.com>,
 Mikhail Ulyanov <mikhail.ulyanov@cogentembedded.com>,
 Abhinav Kumar <abhinav.kumar@linux.dev>, Benoit Parrot <bparrot@ti.com>,
 Parthiban Veerasooran <parthiban.veerasooran@microchip.com>,
 Hans Verkuil <hverkuil@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Tiffany Lin <tiffany.lin@mediatek.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

Hi Jacopo,

On Sat, 02 Aug 2025 11:22:51 +0200, Jacopo Mondi wrote:
> The v4l2_fh associated with an open file handle is now guaranteed
> to be available in file->private_data, initialised by v4l2_fh_add().
> 
> Access the v4l2_fh, and from there the driver-specific structure,
> from the file * in all ioctl handlers.
> 
> While at it remove the only left user of fh_to_channel() and remove
> the macro completely.

Thanks for the cleanup!

Minor suggestion below, but even without it

> 
> Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>

Reviewed-by: Michael Tretter <m.tretter@pengutronix.de>

> ---
>  drivers/media/platform/allegro-dvt/allegro-core.c | 18 ++++++++----------
>  1 file changed, 8 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/media/platform/allegro-dvt/allegro-core.c b/drivers/media/platform/allegro-dvt/allegro-core.c
> index 5e3b1f5d7206d84b8ccb9ea3b3f3f1fe75becf99..81c6afcf2d06f9e39015e49d355346238c5033d8 100644
> --- a/drivers/media/platform/allegro-dvt/allegro-core.c
> +++ b/drivers/media/platform/allegro-dvt/allegro-core.c
> @@ -197,8 +197,6 @@ static const struct regmap_config allegro_sram_config = {
>  	.cache_type = REGCACHE_NONE,
>  };
>  
> -#define fh_to_channel(__fh) container_of(__fh, struct allegro_channel, fh)
> -
>  struct allegro_channel {
>  	struct allegro_dev *dev;
>  	struct v4l2_fh fh;
> @@ -3284,7 +3282,7 @@ static int allegro_enum_fmt_vid(struct file *file, void *fh,
>  static int allegro_g_fmt_vid_cap(struct file *file, void *fh,
>  				 struct v4l2_format *f)
>  {
> -	struct allegro_channel *channel = fh_to_channel(fh);
> +	struct allegro_channel *channel = file_to_channel(file);
>  
>  	f->fmt.pix.field = V4L2_FIELD_NONE;
>  	f->fmt.pix.width = channel->width;
> @@ -3326,7 +3324,7 @@ static int allegro_try_fmt_vid_cap(struct file *file, void *fh,
>  static int allegro_s_fmt_vid_cap(struct file *file, void *fh,
>  				 struct v4l2_format *f)
>  {
> -	struct allegro_channel *channel = fh_to_channel(fh);
> +	struct allegro_channel *channel = file_to_channel(file);
>  	struct vb2_queue *vq;
>  	int err;
>  
> @@ -3350,7 +3348,7 @@ static int allegro_s_fmt_vid_cap(struct file *file, void *fh,
>  static int allegro_g_fmt_vid_out(struct file *file, void *fh,
>  				 struct v4l2_format *f)
>  {
> -	struct allegro_channel *channel = fh_to_channel(fh);
> +	struct allegro_channel *channel = file_to_channel(file);
>  
>  	f->fmt.pix.field = V4L2_FIELD_NONE;
>  
> @@ -3397,7 +3395,7 @@ static int allegro_try_fmt_vid_out(struct file *file, void *fh,
>  static int allegro_s_fmt_vid_out(struct file *file, void *fh,
>  				 struct v4l2_format *f)
>  {
> -	struct allegro_channel *channel = fh_to_channel(fh);
> +	struct allegro_channel *channel = file_to_channel(file);
>  	int err;
>  
>  	err = allegro_try_fmt_vid_out(file, fh, f);
> @@ -3438,7 +3436,7 @@ static int allegro_channel_cmd_start(struct allegro_channel *channel)
>  static int allegro_encoder_cmd(struct file *file, void *fh,
>  			       struct v4l2_encoder_cmd *cmd)
>  {
> -	struct allegro_channel *channel = fh_to_channel(fh);
> +	struct allegro_channel *channel = file_to_channel(file);
>  	int err;
>  
>  	err = v4l2_m2m_ioctl_try_encoder_cmd(file, fh, cmd);
> @@ -3488,7 +3486,7 @@ static int allegro_ioctl_streamon(struct file *file, void *priv,
>  				  enum v4l2_buf_type type)
>  {
>  	struct v4l2_fh *fh = file_to_v4l2_fh(file);
> -	struct allegro_channel *channel = fh_to_channel(fh);
> +	struct allegro_channel *channel = file_to_channel(file);

You could remove the local fh entirely, if you change

	return v4l2_m2m_streamon(file, fh->m2m_ctx, type);

to

	return v4l2_m2m_streamon(file, channel->fh.m2m_ctx, type);

in the allegro_ioctl_streamon() function.

Michael

>  	int err;
>  
>  	if (type == V4L2_BUF_TYPE_VIDEO_CAPTURE) {
> @@ -3503,7 +3501,7 @@ static int allegro_ioctl_streamon(struct file *file, void *priv,
>  static int allegro_g_parm(struct file *file, void *fh,
>  			  struct v4l2_streamparm *a)
>  {
> -	struct allegro_channel *channel = fh_to_channel(fh);
> +	struct allegro_channel *channel = file_to_channel(file);
>  	struct v4l2_fract *timeperframe;
>  
>  	if (a->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
> @@ -3520,7 +3518,7 @@ static int allegro_g_parm(struct file *file, void *fh,
>  static int allegro_s_parm(struct file *file, void *fh,
>  			  struct v4l2_streamparm *a)
>  {
> -	struct allegro_channel *channel = fh_to_channel(fh);
> +	struct allegro_channel *channel = file_to_channel(file);
>  	struct v4l2_fract *timeperframe;
>  	int div;
>  
> 
> -- 
> 2.49.0
> 
> 


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
