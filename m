Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DA109B1F271
	for <lists+mjpeg-users@lfdr.de>; Sat,  9 Aug 2025 08:00:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FHFTReJzVjWSjvDbYrllvVpOq3UAhMidVLZufv5qRow=; b=jDRIz+TSqXojxov1Bb4vMLVN99
	47Jc7wDTK+dPNpY/7N5tNPYOdp2KJXtZDbz++cuM6zEbanvl8gF0avLqsZjDxi7lIvLq0o/AJSCvs
	qOWMTl2O5oCvPdbx366H93DZG19BqSCne6lYmQ46F2ITKGeJEoBPJ549ZtLf2ZluqdLY=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1ukccy-0008CG-M9;
	Sat, 09 Aug 2025 06:00:25 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <laurent.pinchart@ideasonboard.com>)
 id 1ujalP-0000B2-3C for mjpeg-users@lists.sourceforge.net;
 Wed, 06 Aug 2025 09:48:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TT2EW+nFoojsts8pXQhURUsF+GG5d3347D0vMpJauGQ=; b=T4scPIL1UhGKdedr6Lm0Eubz+F
 T8kTD68VkhHOcnnOSXLtNGMWGv5HxOW85zuj+2SjMsz3SnvBGkwSiUnm69an1qnSV9DVDSJWz1twa
 5tJuypTXBNF2kPXVd4+VQbz7WQ5r5OQH4aunj3o/v4GmdpkItiNn3IRJUzLjTn9S6VNc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TT2EW+nFoojsts8pXQhURUsF+GG5d3347D0vMpJauGQ=; b=OaA8UaiOk6bDZNdThX2eMy3mhW
 MbsCBMbGZAMB1GUrOIlT8CD8aMBqdx75fiC9Wg3/0K1nlGXBtavd0SyxAzLTlAh2p/JJAMaoD9Od5
 FI5VcS+jC2RPTbujlss7KDQeRHYP4nGaytrbpqt5KM0QJZjnBTf7gWwCAnYJFlZaKUq4=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ujalO-0000Qe-1r for mjpeg-users@lists.sourceforge.net;
 Wed, 06 Aug 2025 09:48:51 +0000
Received: from pendragon.ideasonboard.com (91-158-51-183.elisa-laajakaista.fi
 [91.158.51.183])
 by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id AD44511EB;
 Wed,  6 Aug 2025 11:47:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1754473669;
 bh=dBB2uil8xdYuqq7KSR4GUD8VnaNZFEk4RwnSQxJK8VA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BVgd+rZsh/ZxoGPA94UhjQapWLxk+gRiwJX2O0VIWWSiN8SZXjLCSOE6MZ8Brh1lv
 8XpLo+euerZ1zpRgloZxPxWGh/ChUK6DJKXc9a9m4Y+VmYiVxNuicDSagQBdkuQpE4
 LSv8nzfk6MdHfJRD3zCZIOhReZsK2sp0LHv5o6aI=
Date: Wed, 6 Aug 2025 12:48:22 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Hans Verkuil <hverkuil+cisco@kernel.org>
Message-ID: <20250806094822.GA24768@pendragon.ideasonboard.com>
References: <20250802-media-private-data-v1-0-eb140ddd6a9d@ideasonboard.com>
 <20250802-media-private-data-v1-11-eb140ddd6a9d@ideasonboard.com>
 <49e753f4-f626-49ae-bf23-d2aecfcc6282@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <49e753f4-f626-49ae-bf23-d2aecfcc6282@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Hans, On Wed, Aug 06, 2025 at 10:16:37AM +0200,
 Hans Verkuil
 wrote: > On 02/08/2025 11:22, Jacopo Mondi wrote: > > From: Laurent Pinchart
 <laurent.pinchart@ideasonboard.com> > > > > Accessing file->private_ [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1ujalO-0000Qe-1r
X-Mailman-Approved-At: Sat, 09 Aug 2025 06:00:15 +0000
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

Hi Hans,

On Wed, Aug 06, 2025 at 10:16:37AM +0200, Hans Verkuil wrote:
> On 02/08/2025 11:22, Jacopo Mondi wrote:
> > From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > 
> > Accessing file->private_data manually to retrieve the v4l2_fh pointer is
> > error-prone, as the field is a void * and will happily cast implicitly
> > to any pointer type.
> > 
> > Replace all remaining locations that read the v4l2_fh pointer directly
> > from file->private_data and cast it to driver-specific file handle
> > structures with driver-specific functions that use file_to_v4l2_fh() and
> > perform the same cast.
> > 
> > No functional change is intended, this only paves the way to remove
> > direct accesses to file->private_data and make V4L2 drivers safer.
> > Other accesses to the field will be addressed separately.
> > 
> > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
> > ---
> >  drivers/media/pci/ivtv/ivtv-driver.h               |  5 ++++
> >  drivers/media/pci/ivtv/ivtv-fileops.c              | 10 +++----
> >  drivers/media/pci/ivtv/ivtv-ioctl.c                |  8 +++---
> >  drivers/media/platform/allegro-dvt/allegro-core.c  |  7 ++++-
> >  drivers/media/platform/amlogic/meson-ge2d/ge2d.c   |  8 ++++--
> >  .../media/platform/chips-media/coda/coda-common.c  |  7 ++++-
> >  .../platform/chips-media/wave5/wave5-helper.c      |  2 +-
> >  .../media/platform/chips-media/wave5/wave5-vpu.h   |  5 ++++
> >  drivers/media/platform/m2m-deinterlace.c           |  7 ++++-
> >  .../media/platform/mediatek/jpeg/mtk_jpeg_core.c   |  7 ++++-
> >  drivers/media/platform/mediatek/mdp/mtk_mdp_m2m.c  |  7 ++++-
> >  .../media/platform/mediatek/mdp3/mtk-mdp3-m2m.c    |  7 ++++-
> >  .../mediatek/vcodec/decoder/mtk_vcodec_dec_drv.c   |  2 +-
> >  .../mediatek/vcodec/decoder/mtk_vcodec_dec_drv.h   |  5 ++++
> >  .../mediatek/vcodec/encoder/mtk_vcodec_enc_drv.c   |  2 +-
> >  .../mediatek/vcodec/encoder/mtk_vcodec_enc_drv.h   |  5 ++++
> >  drivers/media/platform/nxp/imx-jpeg/mxc-jpeg.c     |  7 ++++-
> >  drivers/media/platform/nxp/imx8-isi/imx8-isi-m2m.c |  7 ++++-
> >  drivers/media/platform/nxp/mx2_emmaprp.c           |  7 ++++-
> >  drivers/media/platform/renesas/rcar_fdp1.c         |  7 ++++-
> >  drivers/media/platform/renesas/rcar_jpu.c          |  7 ++++-
> >  drivers/media/platform/rockchip/rga/rga.c          |  3 +--
> >  drivers/media/platform/rockchip/rga/rga.h          |  5 ++++
> >  drivers/media/platform/rockchip/rkvdec/rkvdec.c    |  2 +-
> >  drivers/media/platform/rockchip/rkvdec/rkvdec.h    |  5 ++++
> >  .../media/platform/samsung/exynos-gsc/gsc-core.h   |  6 +++++
> >  .../media/platform/samsung/exynos-gsc/gsc-m2m.c    |  6 ++---
> >  .../media/platform/samsung/exynos4-is/fimc-core.h  |  5 ++++
> >  .../media/platform/samsung/exynos4-is/fimc-m2m.c   |  2 +-
> >  drivers/media/platform/samsung/s5p-g2d/g2d.c       |  7 +++--
> >  .../media/platform/samsung/s5p-jpeg/jpeg-core.c    |  9 +++++--
> >  drivers/media/platform/samsung/s5p-mfc/s5p_mfc.c   |  6 ++---
> >  .../platform/samsung/s5p-mfc/s5p_mfc_common.h      |  6 +++++
> >  drivers/media/platform/st/sti/bdisp/bdisp-v4l2.c   |  7 ++++-
> >  drivers/media/platform/st/sti/delta/delta-v4l2.c   | 26 +++++++++++-------
> >  drivers/media/platform/st/sti/hva/hva-v4l2.c       | 31 ++++++++++++----------
> >  drivers/media/platform/st/sti/hva/hva.h            |  2 --
> >  drivers/media/platform/st/stm32/dma2d/dma2d.c      |  7 +++--
> >  drivers/media/platform/sunxi/sun8i-di/sun8i-di.c   |  3 +--
> >  .../platform/sunxi/sun8i-rotate/sun8i_rotate.c     |  3 +--
> >  drivers/media/platform/ti/omap3isp/ispvideo.c      |  4 +--
> >  drivers/media/platform/ti/omap3isp/ispvideo.h      |  6 +++++
> >  drivers/media/platform/verisilicon/hantro.h        |  5 ++++
> >  drivers/media/platform/verisilicon/hantro_drv.c    |  3 +--
> >  drivers/staging/media/imx/imx-media-csc-scaler.c   |  7 ++++-
> >  drivers/staging/media/meson/vdec/vdec.c            | 24 ++++++-----------
> >  drivers/staging/media/meson/vdec/vdec.h            |  5 ++++
> >  drivers/staging/media/sunxi/cedrus/cedrus.c        |  3 +--
> >  drivers/staging/media/sunxi/cedrus/cedrus.h        |  5 ++++
> >  drivers/staging/media/sunxi/cedrus/cedrus_video.c  |  5 ----
> >  50 files changed, 237 insertions(+), 100 deletions(-)
> > 
> > diff --git a/drivers/media/pci/ivtv/ivtv-driver.h b/drivers/media/pci/ivtv/ivtv-driver.h
> > index a6ffa99e16bc64a5b7d3e48c1ab32b49a7989242..cad548b28e360ecfe2bcb9fcb5d12cd8823c3727 100644
> > --- a/drivers/media/pci/ivtv/ivtv-driver.h
> > +++ b/drivers/media/pci/ivtv/ivtv-driver.h
> > @@ -388,6 +388,11 @@ static inline struct ivtv_open_id *fh2id(struct v4l2_fh *fh)
> >  	return container_of(fh, struct ivtv_open_id, fh);
> >  }
> >  
> > +static inline struct ivtv_open_id *file2id(struct file *filp)
> > +{
> > +	return container_of(file_to_v4l2_fh(filp), struct ivtv_open_id, fh);
> 
> Why not write:
> 
> 	return fh2id(file_to_v4l2_fh(filp));
> 
> Same for all other drivers that do this. I prefer to have the contained_of()
> in just one place.

Because fh2id gets removed in "[PATCH 57/65] media: ivtv: Access v4l2_fh
from file". I can use it in this patch and drop it later, would you
prefer that ?

> > +}
> > +
> >  struct yuv_frame_info
> >  {
> >  	u32 update;
> 
> <snip>
> 
> > diff --git a/drivers/media/platform/allegro-dvt/allegro-core.c b/drivers/media/platform/allegro-dvt/allegro-core.c
> > index 1f134e08923a528cc676f825da68951c97ac2f25..74977f3ae4844022c04de877f31b4fc6aaac0749 100644
> > --- a/drivers/media/platform/allegro-dvt/allegro-core.c
> > +++ b/drivers/media/platform/allegro-dvt/allegro-core.c
> > @@ -302,6 +302,11 @@ struct allegro_channel {
> >  	unsigned int error;
> >  };
> >  
> > +static inline struct allegro_channel *file_to_channel(struct file *filp)
> > +{
> > +	return container_of(file_to_v4l2_fh(filp), struct allegro_channel, fh);
> > +}
> > +
> >  static inline int
> >  allegro_channel_get_i_frame_qp(struct allegro_channel *channel)
> >  {
> > @@ -3229,7 +3234,7 @@ static int allegro_open(struct file *file)
> >  
> >  static int allegro_release(struct file *file)
> >  {
> > -	struct allegro_channel *channel = fh_to_channel(file->private_data);
> > +	struct allegro_channel *channel = file_to_channel(file);
> 
> So a file_to_channel inline function was added, but it is used in just one
> place.
> 
> I would prefer to just drop the inline function and instead write:
> 
> 	struct allegro_channel *channel = fh_to_channel(file_to_v4l2_fh(file));
> 
> If this is needed in two or more places, then the extra inline makes sense,
> but it is a fairly common pattern that it is only needed in the release function.
> 
> Adding a new inline just for that seems overkill to me.

file_to_channel() gets used in more places in "[PATCH 29/65] media:
allegro: Access v4l2_fh from file", where fh_to_channel() is dropped.
I'd rather keep it in this patch instead of having to modify the
allegro_release() function in patch 29/65.

> >  
> >  	v4l2_m2m_ctx_release(channel->fh.m2m_ctx);
> >  

-- 
Regards,

Laurent Pinchart


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
