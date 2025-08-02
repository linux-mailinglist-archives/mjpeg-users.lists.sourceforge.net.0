Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E64CB18ED8
	for <lists+mjpeg-users@lfdr.de>; Sat,  2 Aug 2025 15:55:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:To:In-Reply-To:References:Message-Id:MIME-Version:Date:From:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UQsS1y4FQc9EN/Cyj7U1P5NsBEd/qXBwG8LdJ7rDbMk=; b=BcDJp9D23Vj04scpx28P7q84tR
	fEvtM5kfCpX4W8ozukTItyQ/A6UYvpRkPWbF0G/LVjIne3s+lR45jDbbGW6dFYUMH96Y3RPAfGXDu
	UfzkUF9jsOc2zlAlA5/WI1fbtVqlRTGYWDCj8/IxMlHteLvxEOvjhWCoKxKaMPq6N/D0=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1uiChn-0006UQ-3U;
	Sat, 02 Aug 2025 13:55:23 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacopo.mondi@ideasonboard.com>) id 1ui8hx-0005KI-PJ
 for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:39:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ge+FZFHNLU0GDL+ayYU0krPs3gLgHxLjd1Hg9ZQ/jyk=; b=R23SQ7ZC5q2CgI8C4laAHCrH9m
 udfgDsfuS1i52jFj2XcP1DXTHWRRRkdyBigZINqrfTvM1bxD6ppoZVf8vnnuSdU9RFX5ln2eKkgQv
 1neCY6cGfA3gGS4/dam63Oz9tEycbfUG7iF7Nsat/oacKpHOthuAmRAlZevUQ/e9vJRI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ge+FZFHNLU0GDL+ayYU0krPs3gLgHxLjd1Hg9ZQ/jyk=; b=ecvJg79NNd7Bw7eX96DpdY2c9D
 ypsdBiigYDfLRilbdFP74+Oos5k5VrOPjg+IQaJtZc4FbVsqiVrCUmwYaqPi/wHhkJ1C3cbPOdlqw
 Et5cjWALCr7GzQDvxG/2bHvj6z2s+GAp6+jBoS7AfJKDx5ad6T11cDIOUwBqR3eKcekg=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ui8hx-0005aa-5C for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:39:18 +0000
Received: from [192.168.0.172] (mob-5-90-138-121.net.vodafone.it
 [5.90.138.121])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id EDA0D3C97;
 Sat,  2 Aug 2025 11:29:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1754126959;
 bh=DR8H5PIAc8L4JOzfoP4xWpCxebhDCEnaJqqWhPBFy+0=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=hT8Gx6BmOM76bDFeML8LExuJPTAnht6Wvn57/qJhB7+ZhlNMqfXhEkASH3NW3RuyW
 UZTqUXH/j8H6xn9lPsNIuJ1E2Ht2wzHcwFHMec6ZTXX4zFnaK3T8vOqZ9UuNg86A45
 wLsnMm4kFRwPqYJBTI/nmtZ/BWbP+cVS1qJzP4Mw=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Sat, 02 Aug 2025 11:23:02 +0200
MIME-Version: 1.0
Message-Id: <20250802-media-private-data-v1-40-eb140ddd6a9d@ideasonboard.com>
References: <20250802-media-private-data-v1-0-eb140ddd6a9d@ideasonboard.com>
In-Reply-To: <20250802-media-private-data-v1-0-eb140ddd6a9d@ideasonboard.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, 
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
 Heiko Stuebner <heiko@sntech.de>, 
 Detlev Casanova <detlev.casanova@collabora.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 =?utf-8?q?=C5=81ukasz_Stelmach?= <l.stelmach@samsung.com>, 
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
 Maxime Ripard <mripard@kernel.org>, Paul Kocialkowski <paulk@sys-base.io>, 
 =?utf-8?q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>, 
 Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Corentin Labbe <clabbe@baylibre.com>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Bingbu Cao <bingbu.cao@intel.com>, Tianshu Qiu <tian.shu.qiu@intel.com>, 
 Stanislaw Gruszka <stanislaw.gruszka@linux.intel.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3477;
 i=jacopo.mondi@ideasonboard.com; h=from:subject:message-id;
 bh=DR8H5PIAc8L4JOzfoP4xWpCxebhDCEnaJqqWhPBFy+0=;
 b=owEBbQKS/ZANAwAKAXI0Bo8WoVY8AcsmYgBojdj8EoZgkMCHL3+wASHVhjTV75Orj6SKgaDZA
 6AcS4LUd4KJAjMEAAEKAB0WIQS1xD1IgJogio9YOMByNAaPFqFWPAUCaI3Y/AAKCRByNAaPFqFW
 POVpD/9a3Ls6bK9algAcZ2oeiBjNz7tRIjEIwEqB46qB5Bq/kQDbriurqxVTCwNigHT9yYh0mXP
 7cACNJ33RBJeyO9365kZBXs/wmIKGs/p4y+dJ8d2bdWddvcupEtgqZNitoozeu7ESiwRcXbm3y+
 BoqB1V1jDTE11ypab29+vcaKo4qzSBIP3Hrtk4YeBKLn7gvYgaFBrNEonU6NKD9ODA/LIQulZRe
 73jR/l7r+PYcnZ7Rx2T3rwKBgs8D83nyaNr0oEZik56YfleC18XsXP3MSfruSvbfjD6GZWeNrgd
 712W4aBRF81a+B6kH5V8Aovltk00OUqLELIBHSUZ7El7W4Me1pXr/QPd6vAC1H+DRpxf2j40+RN
 TDxqmDHi3YGoi8kJ0PnEMVgSCBCaLXRuhS8dGLvwvkIDAcuHVFiPB8byYSwpkGOYBKB7luuYB7H
 4xIhq9bAWnGPh09Xfuwcd9HL+8K5DLRYr1sqRYZZ55yszHbxWsYKKm4yD7EKfvDRiOMJb3LBBrX
 Z35HmnmFMEe15m2PWocAX01Sgl4eA0YFESsMERAWjZQgueknFQDoJGsL4JOMUxeaYI6kcUScc+3
 RYuRDI3FkGlEJpgXEYQ+q+gim7m/X5v4sL1NiwSpLY259tUn9RHwSBlkYDikigIZORsM45vlmyz
 zSJL01P1ffA0xNA==
X-Developer-Key: i=jacopo.mondi@ideasonboard.com; a=openpgp;
 fpr=72392EDC88144A65C701EA9BA5826A2587AD026B
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The v4l2_fh associated with an open file handle is now
 guaranteed
 to be available in file->private_data, initialised by v4l2_fh_add(). Access
 the v4l2_fh, and from there the driver-specific structure, from the file
 * in all ioctl handlers. 
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
X-Headers-End: 1ui8hx-0005aa-5C
X-Mailman-Approved-At: Sat, 02 Aug 2025 13:55:16 +0000
Subject: [Mjpeg-users] [PATCH 40/65] media: imx-isi: Access v4l2_fh from file
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

The v4l2_fh associated with an open file handle is now guaranteed
to be available in file->private_data, initialised by v4l2_fh_add().

Access the v4l2_fh, and from there the driver-specific structure,
from the file * in all ioctl handlers.

While at it, remove the now unused to_isi_m2m_ctx() macro.

Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
 drivers/media/platform/nxp/imx8-isi/imx8-isi-m2m.c | 15 +++++----------
 1 file changed, 5 insertions(+), 10 deletions(-)

diff --git a/drivers/media/platform/nxp/imx8-isi/imx8-isi-m2m.c b/drivers/media/platform/nxp/imx8-isi/imx8-isi-m2m.c
index 850dd8ae95841d4470ac6bd7cb1e54a7510d6d5e..5501214cc6c0ce3e0188ae6d4ff4ae277b975911 100644
--- a/drivers/media/platform/nxp/imx8-isi/imx8-isi-m2m.c
+++ b/drivers/media/platform/nxp/imx8-isi/imx8-isi-m2m.c
@@ -74,11 +74,6 @@ to_isi_m2m_buffer(struct vb2_v4l2_buffer *buf)
 	return container_of(buf, struct mxc_isi_m2m_buffer, buf.vb);
 }
 
-static inline struct mxc_isi_m2m_ctx *to_isi_m2m_ctx(struct v4l2_fh *fh)
-{
-	return container_of(fh, struct mxc_isi_m2m_ctx, fh);
-}
-
 static inline struct mxc_isi_m2m_ctx *file_to_isi_m2m_ctx(struct file *filp)
 {
 	return container_of(file_to_v4l2_fh(filp), struct mxc_isi_m2m_ctx, fh);
@@ -432,7 +427,7 @@ static int mxc_isi_m2m_try_fmt_vid(struct file *file, void *fh,
 	const enum mxc_isi_video_type type =
 		f->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ?
 		MXC_ISI_VIDEO_M2M_OUT : MXC_ISI_VIDEO_M2M_CAP;
-	struct mxc_isi_m2m_ctx *ctx = to_isi_m2m_ctx(fh);
+	struct mxc_isi_m2m_ctx *ctx = file_to_isi_m2m_ctx(file);
 
 	__mxc_isi_m2m_try_fmt_vid(ctx, &f->fmt.pix_mp, type);
 
@@ -442,7 +437,7 @@ static int mxc_isi_m2m_try_fmt_vid(struct file *file, void *fh,
 static int mxc_isi_m2m_g_fmt_vid(struct file *file, void *fh,
 				 struct v4l2_format *f)
 {
-	struct mxc_isi_m2m_ctx *ctx = to_isi_m2m_ctx(fh);
+	struct mxc_isi_m2m_ctx *ctx = file_to_isi_m2m_ctx(file);
 	const struct mxc_isi_m2m_ctx_queue_data *qdata =
 		mxc_isi_m2m_ctx_qdata(ctx, f->type);
 
@@ -457,7 +452,7 @@ static int mxc_isi_m2m_s_fmt_vid(struct file *file, void *fh,
 	const enum mxc_isi_video_type type =
 		f->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ?
 		MXC_ISI_VIDEO_M2M_OUT : MXC_ISI_VIDEO_M2M_CAP;
-	struct mxc_isi_m2m_ctx *ctx = to_isi_m2m_ctx(fh);
+	struct mxc_isi_m2m_ctx *ctx = file_to_isi_m2m_ctx(file);
 	struct v4l2_pix_format_mplane *pix = &f->fmt.pix_mp;
 	const struct mxc_isi_format_info *info;
 	struct vb2_queue *vq;
@@ -489,7 +484,7 @@ static int mxc_isi_m2m_s_fmt_vid(struct file *file, void *fh,
 static int mxc_isi_m2m_streamon(struct file *file, void *fh,
 				enum v4l2_buf_type type)
 {
-	struct mxc_isi_m2m_ctx *ctx = to_isi_m2m_ctx(fh);
+	struct mxc_isi_m2m_ctx *ctx = file_to_isi_m2m_ctx(file);
 	struct mxc_isi_m2m_ctx_queue_data *q = mxc_isi_m2m_ctx_qdata(ctx, type);
 	const struct v4l2_pix_format_mplane *out_pix = &ctx->queues.out.format;
 	const struct v4l2_pix_format_mplane *cap_pix = &ctx->queues.cap.format;
@@ -577,7 +572,7 @@ static int mxc_isi_m2m_streamon(struct file *file, void *fh,
 static int mxc_isi_m2m_streamoff(struct file *file, void *fh,
 				 enum v4l2_buf_type type)
 {
-	struct mxc_isi_m2m_ctx *ctx = to_isi_m2m_ctx(fh);
+	struct mxc_isi_m2m_ctx *ctx = file_to_isi_m2m_ctx(file);
 	struct mxc_isi_m2m_ctx_queue_data *q = mxc_isi_m2m_ctx_qdata(ctx, type);
 	struct mxc_isi_m2m *m2m = ctx->m2m;
 

-- 
2.49.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
