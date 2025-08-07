Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F1CB1F277
	for <lists+mjpeg-users@lfdr.de>; Sat,  9 Aug 2025 08:00:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4nfVaBGksbXVAPZUWgf0hViLoJ3yhaVbpDw7GQ/5Fl8=; b=g+UVJkSfiPbShAZmrVFWbRRntc
	wLLjlDO1B3Om8Di4Ij0JemFtjbp/x0Ii8c9sYrvdTG7aGxwBcvra1ATtx9PNEM15+niTrlQObfzdK
	8YUTCiABHAgjMupQvBie6bS5bGwIbCJQz15Z/GpMma/qoNB7LUZZPdnE9HOhIRMD8gyc=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1ukcd2-0008FV-Ll;
	Sat, 09 Aug 2025 06:00:29 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <laurent.pinchart@ideasonboard.com>)
 id 1ujwKZ-0005nv-BI for mjpeg-users@lists.sourceforge.net;
 Thu, 07 Aug 2025 08:50:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MayOmwRRmqYckLBclqoSaFlCipo9G2+cIP5LlLuMGHM=; b=kawvbRpNDiAuGbAkPVGkJvRWNl
 9tX/iDE7zHeWJrkd22VojM9XoqIhX1Vl/h4TDAiI354j9DSOe8W62COp/3l4PA+tizRBHCgmXvAkh
 qGqiHgmMxnqW6PYuqDrxmLU+VIrurKSHKoBEh1zqxymUovivoyzo7sGwxoJjv6wR8wic=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MayOmwRRmqYckLBclqoSaFlCipo9G2+cIP5LlLuMGHM=; b=A7lMB76QwP4HRcNC+ZNfOHrs9z
 tR0/W5FQBUpDyefbYILwe2zIIvL2iA513wq2GZuWA/nA5xc41LiXmL18Jkic4aLQ8aFAcS/OZ5A2e
 jWF5PHIJZ4TLpL3Atec2ZD1YZYtUxklWXjfG/k2iuJxR9NBlfEXygU8etqFRiiQ4H/+c=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ujwKX-0000GR-W2 for mjpeg-users@lists.sourceforge.net;
 Thu, 07 Aug 2025 08:50:34 +0000
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi
 [81.175.209.231])
 by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 0086B3C3A;
 Thu,  7 Aug 2025 10:49:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1754556571;
 bh=gL61jIkUnYe2UH9PY1tqVu8MSrP9GJ7rcyYdJzJBz6o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=k6iuvsJXTNE0oJK45xZdiWrLWdQa+u3XUfWpJVm3zs0YId8LnXkSMsvLP8ZrhCZyM
 fZ9bVGHoYZbm0Fb7DRiaI/2NlGxo7A96nMs6gff/n0QCKZ/sHDKgsJRFvUCEEdkred
 C4gqI95AquETDpPRaBSesLFWMKcdtOgXkDQ4BCVI=
Date: Thu, 7 Aug 2025 11:50:03 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Hans Verkuil <hverkuil+cisco@kernel.org>
Message-ID: <20250807085003.GE11583@pendragon.ideasonboard.com>
References: <20250802-media-private-data-v1-0-eb140ddd6a9d@ideasonboard.com>
 <20250802-media-private-data-v1-27-eb140ddd6a9d@ideasonboard.com>
 <e9aaf929-5e0d-4379-996b-a564acd3e331@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e9aaf929-5e0d-4379-996b-a564acd3e331@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Aug 06, 2025 at 02:45:14PM +0200, Hans Verkuil wrote:
 > On 02/08/2025 11:22,
 Jacopo Mondi wrote: > > From: Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>
 > > > > Multiple drivers that us [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ujwKX-0000GR-W2
X-Mailman-Approved-At: Sat, 09 Aug 2025 06:00:14 +0000
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
 linux-tegra@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 =?utf-8?Q?=C5=81ukasz?= Stelmach <l.stelmach@samsung.com>,
 Andrzej Pietrasiewicz <andrzejtp2010@gmail.com>,
 Nas Chung <nas.chung@chipsnmedia.com>, Andy Walls <awalls@md.metrocast.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, linux-usb@vger.kernel.org,
 Michael Tretter <m.tretter@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Ming Qian <ming.qian@nxp.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>, linux-doc@vger.kernel.org,
 Yunfei Dong <yunfei.dong@mediatek.com>, linux-kernel@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, Yanteng Si <si.yanteng@linux.dev>,
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
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Fabio Estevam <festevam@gmail.com>,
 Jean-Christophe Trotin <jean-christophe.trotin@foss.st.com>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Jonathan Corbet <corbet@lwn.net>, Mike Isely <isely@pobox.com>,
 Jackson Lee <jackson.lee@chipsnmedia.com>, linux-staging@lists.linux.dev,
 Krzysztof Kozlowski <krzk@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
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
 Hans Verkuil <hverkuil@kernel.org>,
 Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
 Tiffany Lin <tiffany.lin@mediatek.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

On Wed, Aug 06, 2025 at 02:45:14PM +0200, Hans Verkuil wrote:
> On 02/08/2025 11:22, Jacopo Mondi wrote:
> > From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > 
> > Multiple drivers that use v4l2_fh and call v4l2_fh_del() manually reset
> > the file->private_data pointer to NULL in their video device .release()
> > file operation handler. Move the code to the v4l2_fh_del() function to
> > avoid direct access to file->private_data in drivers. This requires
> > adding a file pointer argument to the function.
> > 
> > Changes to drivers have been generated with the following coccinelle
> > semantic patch:
> > 
> > @@
> > expression fh;
> > identifier filp;
> > identifier release;
> > type ret;
> > @@
> > ret release(..., struct file *filp, ...)
> > {
> > 	<...
> > -	filp->private_data = NULL;
> > 	...
> > -	v4l2_fh_del(fh);
> > +	v4l2_fh_del(fh, filp);
> > 	...>
> > }
> > 
> > @@
> > expression fh;
> > identifier filp;
> > identifier release;
> > type ret;
> > @@
> > ret release(..., struct file *filp, ...)
> > {
> > 	<...
> > -	v4l2_fh_del(fh);
> > +	v4l2_fh_del(fh, filp);
> > 	...
> > -	filp->private_data = NULL;
> > 	...>
> > }
> > 
> > @@
> > expression fh;
> > identifier filp;
> > identifier release;
> > type ret;
> > @@
> > ret release(..., struct file *filp, ...)
> > {
> > 	<...
> > -	v4l2_fh_del(fh);
> > +	v4l2_fh_del(fh, filp);
> > 	...>
> > }
> > 
> > Manual changes have been applied to Documentation/ to update the usage
> > patterns, to drivers/media/v4l2-core/v4l2-fh.c to update the
> > v4l2_fh_del() prototype and reset file->private_data, and to
> > include/media/v4l2-fh.h to update the v4l2_fh_del() function prototype
> > and its documentation.
> > 
> > Additionally, white space issues have been fixed manually in
> > drivers/usb/gadget/function/uvc_v4l2.c
> > 
> > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
> > ---
> >  Documentation/driver-api/media/v4l2-fh.rst                         | 4 ++--
> >  Documentation/translations/zh_CN/video4linux/v4l2-framework.txt    | 4 ++--
> >  drivers/media/pci/cx18/cx18-fileops.c                              | 4 ++--
> >  drivers/media/pci/ivtv/ivtv-fileops.c                              | 4 ++--
> >  drivers/media/pci/saa7164/saa7164-encoder.c                        | 2 +-
> >  drivers/media/pci/saa7164/saa7164-vbi.c                            | 2 +-
> >  drivers/media/platform/allegro-dvt/allegro-core.c                  | 2 +-
> >  drivers/media/platform/amlogic/meson-ge2d/ge2d.c                   | 2 +-
> >  drivers/media/platform/amphion/vpu_v4l2.c                          | 4 ++--
> >  drivers/media/platform/chips-media/coda/coda-common.c              | 4 ++--
> >  drivers/media/platform/chips-media/wave5/wave5-helper.c            | 2 +-
> >  drivers/media/platform/imagination/e5010-jpeg-enc.c                | 4 ++--
> >  drivers/media/platform/m2m-deinterlace.c                           | 2 +-
> >  drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c               | 4 ++--
> >  drivers/media/platform/mediatek/mdp/mtk_mdp_m2m.c                  | 4 ++--
> >  drivers/media/platform/mediatek/mdp3/mtk-mdp3-m2m.c                | 4 ++--
> >  .../media/platform/mediatek/vcodec/decoder/mtk_vcodec_dec_drv.c    | 4 ++--
> >  .../media/platform/mediatek/vcodec/encoder/mtk_vcodec_enc_drv.c    | 4 ++--
> >  drivers/media/platform/nvidia/tegra-vde/v4l2.c                     | 2 +-
> >  drivers/media/platform/nxp/dw100/dw100.c                           | 2 +-
> >  drivers/media/platform/nxp/imx-jpeg/mxc-jpeg.c                     | 4 ++--
> >  drivers/media/platform/nxp/imx-pxp.c                               | 2 +-
> >  drivers/media/platform/nxp/imx8-isi/imx8-isi-m2m.c                 | 2 +-
> >  drivers/media/platform/nxp/mx2_emmaprp.c                           | 2 +-
> >  drivers/media/platform/qcom/iris/iris_vidc.c                       | 3 +--
> >  drivers/media/platform/qcom/venus/core.c                           | 2 +-
> >  drivers/media/platform/renesas/rcar_fdp1.c                         | 2 +-
> >  drivers/media/platform/renesas/rcar_jpu.c                          | 4 ++--
> >  drivers/media/platform/renesas/vsp1/vsp1_video.c                   | 2 +-
> >  drivers/media/platform/rockchip/rga/rga.c                          | 2 +-
> >  drivers/media/platform/rockchip/rkvdec/rkvdec.c                    | 2 +-
> >  drivers/media/platform/samsung/exynos-gsc/gsc-m2m.c                | 4 ++--
> >  drivers/media/platform/samsung/exynos4-is/fimc-m2m.c               | 4 ++--
> >  drivers/media/platform/samsung/s5p-g2d/g2d.c                       | 2 +-
> >  drivers/media/platform/samsung/s5p-jpeg/jpeg-core.c                | 4 ++--
> >  drivers/media/platform/samsung/s5p-mfc/s5p_mfc.c                   | 4 ++--
> >  drivers/media/platform/st/sti/bdisp/bdisp-v4l2.c                   | 4 ++--
> >  drivers/media/platform/st/sti/delta/delta-v4l2.c                   | 4 ++--
> >  drivers/media/platform/st/sti/hva/hva-v4l2.c                       | 4 ++--
> >  drivers/media/platform/st/stm32/dma2d/dma2d.c                      | 2 +-
> >  drivers/media/platform/sunxi/sun8i-di/sun8i-di.c                   | 2 +-
> >  drivers/media/platform/sunxi/sun8i-rotate/sun8i_rotate.c           | 2 +-
> >  drivers/media/platform/ti/omap3isp/ispvideo.c                      | 5 ++---
> >  drivers/media/platform/ti/vpe/vpe.c                                | 2 +-
> >  drivers/media/platform/verisilicon/hantro_drv.c                    | 4 ++--
> >  drivers/media/test-drivers/vicodec/vicodec-core.c                  | 2 +-
> >  drivers/media/test-drivers/vim2m.c                                 | 2 +-
> >  drivers/media/test-drivers/visl/visl-core.c                        | 2 +-
> >  drivers/media/usb/pvrusb2/pvrusb2-v4l2.c                           | 3 +--
> >  drivers/media/v4l2-core/v4l2-fh.c                                  | 7 ++++---
> >  drivers/media/v4l2-core/v4l2-subdev.c                              | 5 ++---
> >  drivers/staging/media/imx/imx-media-csc-scaler.c                   | 4 ++--
> >  drivers/staging/media/meson/vdec/vdec.c                            | 2 +-
> >  drivers/staging/media/sunxi/cedrus/cedrus.c                        | 2 +-
> >  drivers/staging/most/video/video.c                                 | 4 ++--
> >  drivers/usb/gadget/function/uvc_v4l2.c                             | 3 +--
> >  include/media/v4l2-fh.h                                            | 5 ++++-
> >  57 files changed, 89 insertions(+), 90 deletions(-)
> > 
> 
> <snip>
> 
> > diff --git a/drivers/media/v4l2-core/v4l2-fh.c b/drivers/media/v4l2-core/v4l2-fh.c
> > index b59b1084d8cdf1b62da12879e21dbe56c2109648..df3ba9d4674bd25626cfcddc2d0cb28c233e3cc3 100644
> > --- a/drivers/media/v4l2-core/v4l2-fh.c
> > +++ b/drivers/media/v4l2-core/v4l2-fh.c
> > @@ -67,7 +67,7 @@ int v4l2_fh_open(struct file *filp)
> >  }
> >  EXPORT_SYMBOL_GPL(v4l2_fh_open);
> >  
> > -void v4l2_fh_del(struct v4l2_fh *fh)
> > +void v4l2_fh_del(struct v4l2_fh *fh, struct file *filp)
> 
> Instead of adding a second argument, perhaps it is better to
> just provide the filp pointer. After all, you can get the v4l2_fh
> from filp->private_data.
> 
> It simplifies the code a bit.

That's an interesting idea. I'll give it a try.

> >  {
> >  	unsigned long flags;
> >  
> > @@ -75,6 +75,8 @@ void v4l2_fh_del(struct v4l2_fh *fh)
> >  	list_del_init(&fh->list);
> >  	spin_unlock_irqrestore(&fh->vdev->fh_lock, flags);
> >  	v4l2_prio_close(fh->vdev->prio, fh->prio);
> > +
> > +	filp->private_data = NULL;
> >  }
> >  EXPORT_SYMBOL_GPL(v4l2_fh_del);
> >  
> > @@ -94,10 +96,9 @@ int v4l2_fh_release(struct file *filp)
> >  	struct v4l2_fh *fh = file_to_v4l2_fh(filp);
> >  
> >  	if (fh) {
> > -		v4l2_fh_del(fh);
> > +		v4l2_fh_del(fh, filp);
> >  		v4l2_fh_exit(fh);
> >  		kfree(fh);
> > -		filp->private_data = NULL;
> >  	}
> >  	return 0;
> >  }
> 
> <snip>
> 
> > diff --git a/include/media/v4l2-fh.h b/include/media/v4l2-fh.h
> > index d8fcf49f10e09452b73499f4a9bd1285bc2835a5..5e4c761635120608e0b588e0b0daf63e69588d38 100644
> > --- a/include/media/v4l2-fh.h
> > +++ b/include/media/v4l2-fh.h
> > @@ -114,12 +114,15 @@ int v4l2_fh_open(struct file *filp);
> >   * v4l2_fh_del - Remove file handle from the list of file handles.
> >   *
> >   * @fh: pointer to &struct v4l2_fh
> > + * @filp: pointer to &struct file associated with @fh
> > + *
> > + * The function resets filp->private_data to NULL.
> >   *
> >   * .. note::
> >   *    Must be called in v4l2_file_operations->release\(\) handler if the driver
> >   *    uses &struct v4l2_fh.
> >   */
> > -void v4l2_fh_del(struct v4l2_fh *fh);
> > +void v4l2_fh_del(struct v4l2_fh *fh, struct file *filp);
> >  
> >  /**
> >   * v4l2_fh_exit - Release resources related to a file handle.

-- 
Regards,

Laurent Pinchart


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
