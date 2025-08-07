Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 67039B1F27F
	for <lists+mjpeg-users@lfdr.de>; Sat,  9 Aug 2025 08:00:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XTLm/UUv7jKTv1XiLmOSqhteNtKSIDP6QPnVGDfpmm8=; b=mJj6SG1XnhUAp9RYssRKZ9Wxvt
	yYGaHIspyY8y9qGM4joVeS/T6ZrHFP3dS5FtmIflrW7wAAmGoSccWSDywuZJ+X8u7T8KfGLC7M8+f
	WuQ2IU9Pkx9NGPfw7izQFSEquPthiDax1A0owHudFLDIgjTj/UOC10AKLkSKNGwo1CtY=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1ukcd5-0008Ir-FU;
	Sat, 09 Aug 2025 06:00:32 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hverkuil+cisco@kernel.org>) id 1uk7ae-0001oa-2o
 for mjpeg-users@lists.sourceforge.net;
 Thu, 07 Aug 2025 20:51:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Cc:To:Subject:From:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wYsA4ndfEqma9jcgT0B1PQedeRKYPFVAX7ay3MTOaKM=; b=D2vdiYgrKd/qfirVWm2d0AUyjS
 DGxA+lhGL5JFnlHHDLVCnvKp5a5BiWEBxDi+QtuEAFdDq1uMiCZ4gXiA2mvl2gJNCLh4WOeCexPRE
 vKh075Y6/6+LsTJboJdgf1n0ihiY4965OKpIZttUb6DNEpDVX8/wTLED8qB/7X60fm6I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Cc:To:
 Subject:From:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wYsA4ndfEqma9jcgT0B1PQedeRKYPFVAX7ay3MTOaKM=; b=FzVbx1scnr22xYWYm2dMiDMyFy
 9uxyoQiwFq3IECHD9oqWgiOC0NvT+XxbYnbE+TRaY75kJddXTrgQqlng5Sj1ZkA82kozNR33We3Lx
 YZO4LcnNo50mOYe5UX4gGPQ/RG0cfwlV8ErFvKj4n+nGi+wdCTnf565yEdp93dKEZQFE=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uk7ad-0000WY-9U for mjpeg-users@lists.sourceforge.net;
 Thu, 07 Aug 2025 20:51:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 80B3245D71;
 Thu,  7 Aug 2025 20:51:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5E24C4CEEB;
 Thu,  7 Aug 2025 20:51:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1754599909;
 bh=3UV5qhXZXz0ktSdSl82KFH6CLaqHyQ8hq27qnvFqsF4=;
 h=Date:From:Subject:To:Cc:References:In-Reply-To:From;
 b=biLZ/OQDls4nl6Hrl1TOawbeNOsUJlBiS0so447501RA+Ciq+3SfdZMRm6kJOmtF6
 ZUCqJfhm47QhZTXkeeTj2bMyqKEp+zJKFT8OBVsy3nXotNYfY7tB8qrNvi2ha9E0mc
 ie7Rkl2zwQAp/Bc68S6eKHQgtfmOmju7vHPhRrMij1h2mJoHZF2EyxIqOi+hshdZAK
 TyQNuv1FslwU6TGZbxxINtp7+8jSpepa7u3jDT8epbxrqYiitDtiw3IQGRKMuDAG9U
 PFZjxGZ7xMbNcopbxl/725NVJ7hymuuwEstWQFaJmvgQdHqICyps/WPvOpGB8fM2XF
 6f0P7AdCK7nmw==
Message-ID: <7605f778-6b20-47e4-bd65-7a0d85fff736@kernel.org>
Date: Thu, 7 Aug 2025 22:51:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <20250802-media-private-data-v1-0-eb140ddd6a9d@ideasonboard.com>
 <20250802-media-private-data-v1-27-eb140ddd6a9d@ideasonboard.com>
 <e9aaf929-5e0d-4379-996b-a564acd3e331@kernel.org>
 <20250807085003.GE11583@pendragon.ideasonboard.com>
 <20250807170004.GG11583@pendragon.ideasonboard.com>
 <20250807202553.GB28610@pendragon.ideasonboard.com>
Content-Language: en-US, nl
In-Reply-To: <20250807202553.GB28610@pendragon.ideasonboard.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 07/08/2025 22:25, Laurent Pinchart wrote: > On Thu, Aug
 07, 2025 at 08:00:06PM +0300, Laurent Pinchart wrote: >> On Thu, Aug 07,
 2025 at 11:50:07AM +0300, Laurent Pinchart wrote: >>> On Wed, Aug 06 [...]
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
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uk7ad-0000WY-9U
X-Mailman-Approved-At: Sat, 09 Aug 2025 06:00:13 +0000
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
From: Hans Verkuil via Mjpeg-users <mjpeg-users@lists.sourceforge.net>
Reply-To: MJPEG-tools user list <mjpeg-users@lists.sourceforge.net>
Cc: Hans Verkuil <hverkuil+cisco@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Devarsh Thakkar <devarsht@ti.com>,
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
 =?UTF-8?Q?=C5=81ukasz_Stelmach?= <l.stelmach@samsung.com>,
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
 =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

On 07/08/2025 22:25, Laurent Pinchart wrote:
> On Thu, Aug 07, 2025 at 08:00:06PM +0300, Laurent Pinchart wrote:
>> On Thu, Aug 07, 2025 at 11:50:07AM +0300, Laurent Pinchart wrote:
>>> On Wed, Aug 06, 2025 at 02:45:14PM +0200, Hans Verkuil wrote:
>>>> On 02/08/2025 11:22, Jacopo Mondi wrote:
>>>>> From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>>>>>
>>>>> Multiple drivers that use v4l2_fh and call v4l2_fh_del() manually reset
>>>>> the file->private_data pointer to NULL in their video device .release()
>>>>> file operation handler. Move the code to the v4l2_fh_del() function to
>>>>> avoid direct access to file->private_data in drivers. This requires
>>>>> adding a file pointer argument to the function.
>>>>>
>>>>> Changes to drivers have been generated with the following coccinelle
>>>>> semantic patch:
>>>>>
>>>>> @@
>>>>> expression fh;
>>>>> identifier filp;
>>>>> identifier release;
>>>>> type ret;
>>>>> @@
>>>>> ret release(..., struct file *filp, ...)
>>>>> {
>>>>> 	<...
>>>>> -	filp->private_data = NULL;
>>>>> 	...
>>>>> -	v4l2_fh_del(fh);
>>>>> +	v4l2_fh_del(fh, filp);
>>>>> 	...>
>>>>> }
>>>>>
>>>>> @@
>>>>> expression fh;
>>>>> identifier filp;
>>>>> identifier release;
>>>>> type ret;
>>>>> @@
>>>>> ret release(..., struct file *filp, ...)
>>>>> {
>>>>> 	<...
>>>>> -	v4l2_fh_del(fh);
>>>>> +	v4l2_fh_del(fh, filp);
>>>>> 	...
>>>>> -	filp->private_data = NULL;
>>>>> 	...>
>>>>> }
>>>>>
>>>>> @@
>>>>> expression fh;
>>>>> identifier filp;
>>>>> identifier release;
>>>>> type ret;
>>>>> @@
>>>>> ret release(..., struct file *filp, ...)
>>>>> {
>>>>> 	<...
>>>>> -	v4l2_fh_del(fh);
>>>>> +	v4l2_fh_del(fh, filp);
>>>>> 	...>
>>>>> }
>>>>>
>>>>> Manual changes have been applied to Documentation/ to update the usage
>>>>> patterns, to drivers/media/v4l2-core/v4l2-fh.c to update the
>>>>> v4l2_fh_del() prototype and reset file->private_data, and to
>>>>> include/media/v4l2-fh.h to update the v4l2_fh_del() function prototype
>>>>> and its documentation.
>>>>>
>>>>> Additionally, white space issues have been fixed manually in
>>>>> drivers/usb/gadget/function/uvc_v4l2.c
>>>>>
>>>>> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>>>>> Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
>>>>> ---
>>>>>  Documentation/driver-api/media/v4l2-fh.rst                         | 4 ++--
>>>>>  Documentation/translations/zh_CN/video4linux/v4l2-framework.txt    | 4 ++--
>>>>>  drivers/media/pci/cx18/cx18-fileops.c                              | 4 ++--
>>>>>  drivers/media/pci/ivtv/ivtv-fileops.c                              | 4 ++--
>>>>>  drivers/media/pci/saa7164/saa7164-encoder.c                        | 2 +-
>>>>>  drivers/media/pci/saa7164/saa7164-vbi.c                            | 2 +-
>>>>>  drivers/media/platform/allegro-dvt/allegro-core.c                  | 2 +-
>>>>>  drivers/media/platform/amlogic/meson-ge2d/ge2d.c                   | 2 +-
>>>>>  drivers/media/platform/amphion/vpu_v4l2.c                          | 4 ++--
>>>>>  drivers/media/platform/chips-media/coda/coda-common.c              | 4 ++--
>>>>>  drivers/media/platform/chips-media/wave5/wave5-helper.c            | 2 +-
>>>>>  drivers/media/platform/imagination/e5010-jpeg-enc.c                | 4 ++--
>>>>>  drivers/media/platform/m2m-deinterlace.c                           | 2 +-
>>>>>  drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c               | 4 ++--
>>>>>  drivers/media/platform/mediatek/mdp/mtk_mdp_m2m.c                  | 4 ++--
>>>>>  drivers/media/platform/mediatek/mdp3/mtk-mdp3-m2m.c                | 4 ++--
>>>>>  .../media/platform/mediatek/vcodec/decoder/mtk_vcodec_dec_drv.c    | 4 ++--
>>>>>  .../media/platform/mediatek/vcodec/encoder/mtk_vcodec_enc_drv.c    | 4 ++--
>>>>>  drivers/media/platform/nvidia/tegra-vde/v4l2.c                     | 2 +-
>>>>>  drivers/media/platform/nxp/dw100/dw100.c                           | 2 +-
>>>>>  drivers/media/platform/nxp/imx-jpeg/mxc-jpeg.c                     | 4 ++--
>>>>>  drivers/media/platform/nxp/imx-pxp.c                               | 2 +-
>>>>>  drivers/media/platform/nxp/imx8-isi/imx8-isi-m2m.c                 | 2 +-
>>>>>  drivers/media/platform/nxp/mx2_emmaprp.c                           | 2 +-
>>>>>  drivers/media/platform/qcom/iris/iris_vidc.c                       | 3 +--
>>>>>  drivers/media/platform/qcom/venus/core.c                           | 2 +-
>>>>>  drivers/media/platform/renesas/rcar_fdp1.c                         | 2 +-
>>>>>  drivers/media/platform/renesas/rcar_jpu.c                          | 4 ++--
>>>>>  drivers/media/platform/renesas/vsp1/vsp1_video.c                   | 2 +-
>>>>>  drivers/media/platform/rockchip/rga/rga.c                          | 2 +-
>>>>>  drivers/media/platform/rockchip/rkvdec/rkvdec.c                    | 2 +-
>>>>>  drivers/media/platform/samsung/exynos-gsc/gsc-m2m.c                | 4 ++--
>>>>>  drivers/media/platform/samsung/exynos4-is/fimc-m2m.c               | 4 ++--
>>>>>  drivers/media/platform/samsung/s5p-g2d/g2d.c                       | 2 +-
>>>>>  drivers/media/platform/samsung/s5p-jpeg/jpeg-core.c                | 4 ++--
>>>>>  drivers/media/platform/samsung/s5p-mfc/s5p_mfc.c                   | 4 ++--
>>>>>  drivers/media/platform/st/sti/bdisp/bdisp-v4l2.c                   | 4 ++--
>>>>>  drivers/media/platform/st/sti/delta/delta-v4l2.c                   | 4 ++--
>>>>>  drivers/media/platform/st/sti/hva/hva-v4l2.c                       | 4 ++--
>>>>>  drivers/media/platform/st/stm32/dma2d/dma2d.c                      | 2 +-
>>>>>  drivers/media/platform/sunxi/sun8i-di/sun8i-di.c                   | 2 +-
>>>>>  drivers/media/platform/sunxi/sun8i-rotate/sun8i_rotate.c           | 2 +-
>>>>>  drivers/media/platform/ti/omap3isp/ispvideo.c                      | 5 ++---
>>>>>  drivers/media/platform/ti/vpe/vpe.c                                | 2 +-
>>>>>  drivers/media/platform/verisilicon/hantro_drv.c                    | 4 ++--
>>>>>  drivers/media/test-drivers/vicodec/vicodec-core.c                  | 2 +-
>>>>>  drivers/media/test-drivers/vim2m.c                                 | 2 +-
>>>>>  drivers/media/test-drivers/visl/visl-core.c                        | 2 +-
>>>>>  drivers/media/usb/pvrusb2/pvrusb2-v4l2.c                           | 3 +--
>>>>>  drivers/media/v4l2-core/v4l2-fh.c                                  | 7 ++++---
>>>>>  drivers/media/v4l2-core/v4l2-subdev.c                              | 5 ++---
>>>>>  drivers/staging/media/imx/imx-media-csc-scaler.c                   | 4 ++--
>>>>>  drivers/staging/media/meson/vdec/vdec.c                            | 2 +-
>>>>>  drivers/staging/media/sunxi/cedrus/cedrus.c                        | 2 +-
>>>>>  drivers/staging/most/video/video.c                                 | 4 ++--
>>>>>  drivers/usb/gadget/function/uvc_v4l2.c                             | 3 +--
>>>>>  include/media/v4l2-fh.h                                            | 5 ++++-
>>>>>  57 files changed, 89 insertions(+), 90 deletions(-)
>>>>>
>>>>
>>>> <snip>
>>>>
>>>>> diff --git a/drivers/media/v4l2-core/v4l2-fh.c b/drivers/media/v4l2-core/v4l2-fh.c
>>>>> index b59b1084d8cdf1b62da12879e21dbe56c2109648..df3ba9d4674bd25626cfcddc2d0cb28c233e3cc3 100644
>>>>> --- a/drivers/media/v4l2-core/v4l2-fh.c
>>>>> +++ b/drivers/media/v4l2-core/v4l2-fh.c
>>>>> @@ -67,7 +67,7 @@ int v4l2_fh_open(struct file *filp)
>>>>>  }
>>>>>  EXPORT_SYMBOL_GPL(v4l2_fh_open);
>>>>>  
>>>>> -void v4l2_fh_del(struct v4l2_fh *fh)
>>>>> +void v4l2_fh_del(struct v4l2_fh *fh, struct file *filp)
>>>>
>>>> Instead of adding a second argument, perhaps it is better to
>>>> just provide the filp pointer. After all, you can get the v4l2_fh
>>>> from filp->private_data.
>>>>
>>>> It simplifies the code a bit.
>>>
>>> That's an interesting idea. I'll give it a try.
>>
>> We end up with code like (e.g. in v4l2_fh_release(), with similar
>> constructs in lots of drivers)
>>
>> 	if (fh) {
>> 		v4l2_fh_del(filp);
>> 		v4l2_fh_exit(fh);
>> 		kfree(fh);
>> 	}
>>
>> compared to
>>
>> 	if (fh) {
>> 		v4l2_fh_del(fh, filp);
>> 		v4l2_fh_exit(fh);
>> 		kfree(fh);
>> 	}
>>
>> with the existing patch. I find the fact that v4l2_fh_del() takes a
>> different pointer than v4l2_fh_exit() a bit disturbing. If you think
>> it's better I'll drop the fh argument in v2.
> 
> I gave it a try, and looking at the function prototype, its
> documentation, the imbalance with v4l2_fh_add(), and the code in the
> callers, I think keeping both arguments would look cleaner. Please tell
> me if you feel strongly about this, I can still submit a patch to drop
> the argument. It can very easily be scripted with coccinelle and doesn't
> conflict with the rest of the series, so it could also be done later.

Looking at all the drivers that call v4l2_fh_del/exit I always see v4l2_fh_del()
directly followed by v4l2_fh_exit(). I think it would make a lot of sense to just
combine the two as a single function: v4l2_fh_del_exit(filp).

That simplifies the code and solves the imbalance.

Regards,

	Hans

> 
>>>>>  {
>>>>>  	unsigned long flags;
>>>>>  
>>>>> @@ -75,6 +75,8 @@ void v4l2_fh_del(struct v4l2_fh *fh)
>>>>>  	list_del_init(&fh->list);
>>>>>  	spin_unlock_irqrestore(&fh->vdev->fh_lock, flags);
>>>>>  	v4l2_prio_close(fh->vdev->prio, fh->prio);
>>>>> +
>>>>> +	filp->private_data = NULL;
>>>>>  }
>>>>>  EXPORT_SYMBOL_GPL(v4l2_fh_del);
>>>>>  
>>>>> @@ -94,10 +96,9 @@ int v4l2_fh_release(struct file *filp)
>>>>>  	struct v4l2_fh *fh = file_to_v4l2_fh(filp);
>>>>>  
>>>>>  	if (fh) {
>>>>> -		v4l2_fh_del(fh);
>>>>> +		v4l2_fh_del(fh, filp);
>>>>>  		v4l2_fh_exit(fh);
>>>>>  		kfree(fh);
>>>>> -		filp->private_data = NULL;
>>>>>  	}
>>>>>  	return 0;
>>>>>  }
>>>>
>>>> <snip>
>>>>
>>>>> diff --git a/include/media/v4l2-fh.h b/include/media/v4l2-fh.h
>>>>> index d8fcf49f10e09452b73499f4a9bd1285bc2835a5..5e4c761635120608e0b588e0b0daf63e69588d38 100644
>>>>> --- a/include/media/v4l2-fh.h
>>>>> +++ b/include/media/v4l2-fh.h
>>>>> @@ -114,12 +114,15 @@ int v4l2_fh_open(struct file *filp);
>>>>>   * v4l2_fh_del - Remove file handle from the list of file handles.
>>>>>   *
>>>>>   * @fh: pointer to &struct v4l2_fh
>>>>> + * @filp: pointer to &struct file associated with @fh
>>>>> + *
>>>>> + * The function resets filp->private_data to NULL.
>>>>>   *
>>>>>   * .. note::
>>>>>   *    Must be called in v4l2_file_operations->release\(\) handler if the driver
>>>>>   *    uses &struct v4l2_fh.
>>>>>   */
>>>>> -void v4l2_fh_del(struct v4l2_fh *fh);
>>>>> +void v4l2_fh_del(struct v4l2_fh *fh, struct file *filp);
>>>>>  
>>>>>  /**
>>>>>   * v4l2_fh_exit - Release resources related to a file handle.
> 



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
