Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E7921B18ED7
	for <lists+mjpeg-users@lfdr.de>; Sat,  2 Aug 2025 15:55:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:To:In-Reply-To:References:Message-Id:MIME-Version:Date:From:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EXaffvuXyDZwPLx1tKOs682NHi5uAGXuguJbpZosmBI=; b=LuOE4Rr3ak/tuT3KVPUXnfSrzP
	ow2hN1Ok2OrpDwikdRLpiHGTDhYkxtVf5jQ3lpqXyaXWursOoz2l3wqDVrc7Qc5axXF2MtlPcTKmX
	vR8saQIlUh2VxAxH3vWOIjw8wJERFQusGwundy4zCyqAdE3xj+SDlcryXRRLUIkPjky4=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1uiChm-0006U0-PF;
	Sat, 02 Aug 2025 13:55:22 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacopo.mondi@ideasonboard.com>) id 1ui8hr-00012b-Cw
 for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:39:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=41y6FGHHPTAf0VyK8tKl2ppCA7RO1T0OVdpGp0Yq5bI=; b=Aa+5wiL+EnVnAdh5sqT5xdf7m3
 qu4L3zlwUTEld1OozN6UKVPelo2Z9yV88rJLCwieASpyeJzZHggKXRqgcLcRHa7byulisNe+Tr2Lq
 VlmvFUt5Op/9TR+5VJqXV8DhYVWS778M6ecNpmcpXZvxcVEhIHXUSdPfIG+39xFQ/3QQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=41y6FGHHPTAf0VyK8tKl2ppCA7RO1T0OVdpGp0Yq5bI=; b=LVQelX7NEvXIB+Rc+sU1nSj2wi
 G2QtJIUOlk9FVBdpuff0HRymd40bYSKmtM9UKhrzsj3aXr2tTFTh+z5WRHKUzJGX96bIxzTJpOhRg
 GK+WoMSRs0sl4C9DhxzLkSfmW9kGCY4c0A9XZh+r89QeeVZOpj9M+XFPWFazHd/4Wqb0=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ui8hq-0005a3-4D for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:39:11 +0000
Received: from [192.168.0.172] (mob-5-90-138-121.net.vodafone.it
 [5.90.138.121])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id B4CC23C6C;
 Sat,  2 Aug 2025 11:28:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1754126933;
 bh=TREA8Gw7i9MWzaBdbk/QKhP4Ggubbbr1P2XTmejXLMg=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=jNijr26x5+M7V7u6frcDFOc1kw8nkayNoUX+tkfFN+81P3tAoLJU0zqTc4xceh+JS
 CcXmq6ErvT/tUMPRINb7C733Z753O0Kg4oUaHuaQtM+H3G/r9kIUq//VNa+n/wDzQx
 ZCPA5vqvcGKXQtSSlbt/9zBRQyOy0nPGCuzDVOHk=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Sat, 02 Aug 2025 11:22:59 +0200
MIME-Version: 1.0
Message-Id: <20250802-media-private-data-v1-37-eb140ddd6a9d@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=15817;
 i=jacopo.mondi@ideasonboard.com; h=from:subject:message-id;
 bh=TREA8Gw7i9MWzaBdbk/QKhP4Ggubbbr1P2XTmejXLMg=;
 b=owEBbQKS/ZANAwAKAXI0Bo8WoVY8AcsmYgBojdj7OFz+gN+wVUa5VrMIM4YwXqynriZsOLr8/
 lEjqmJBecSJAjMEAAEKAB0WIQS1xD1IgJogio9YOMByNAaPFqFWPAUCaI3Y+wAKCRByNAaPFqFW
 PDXFEACF7S0bzNNPSEx0ZGozCHIVTditcgtd3bjzpugZNSpCFcQL5RnblDMNXaTZ9JUxJojuT/y
 t7OKO86LZRZm2RaF2T/6UvtXUSmcunX6qFk8BFTn+mqubhxy+CO/Ex+SzTPlemYp9t/THLIcQhF
 OXvmdmnwpq1yYBHiGd7Bw5wLQ5Q/vHV4weIFVDAL5V/ORd+T/gUXFXg0ySeCUbaaYFVxXIaiSEm
 7lReb8gjHZq2461gV6GQbUzU/jmKEyy8SBZXc2ND0v6I7ubcUYW1P63TQ7hPnmEiyNpJmK5C58l
 Uuw1V9L9I/1P6g6+n1/Ml523MwfsS2+dPX+KEElKiZlXqAlVc9HQRXZrrgen4CFJH3qP55z+464
 zGhiK5n7WozA50CkGjspJc+tAWCqThw78zGzqSNXIXvp1UT5FdprbpNvQjybL4/KaQyWhsPNcgC
 NxNPp4zJYrcrsFSwbfgsR6FaAijZ6DVcwq3ZH/likfl+LXm5/KTHjO2PDpbdL05tlYPkRpkO7/F
 CKCJBfmdL1z8l1M91mAgY3pgCBkMxOlUIVTgWWFM8hjvhrFE4Gm01woUGeD/JbRlN55KcosvY1H
 zB7VSNQY8qhwoExGJoDLy4EfRmxMZfIvdCO/eX+32eNNEYPOZVQsXYs6+Zm1CBonwBKKzxqMddf
 UeHloDAzu4agKiw==
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
X-Headers-End: 1ui8hq-0005a3-4D
X-Mailman-Approved-At: Sat, 02 Aug 2025 13:55:16 +0000
Subject: [Mjpeg-users] [PATCH 37/65] media: mtk: vcodec: Access v4l2_fh from
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

While at modify mtk_vcodec_enc_get_chip_name() to accept a ctx instead
of a raw void *.

While at it, remove the now unused fh_to_enc_ctx() macro.

Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
 .../mediatek/vcodec/decoder/mtk_vcodec_dec.c       | 36 ++++++++++-----------
 .../mediatek/vcodec/encoder/mtk_vcodec_enc.c       | 37 +++++++++++-----------
 .../mediatek/vcodec/encoder/mtk_vcodec_enc_drv.h   |  5 ---
 3 files changed, 36 insertions(+), 42 deletions(-)

diff --git a/drivers/media/platform/mediatek/vcodec/decoder/mtk_vcodec_dec.c b/drivers/media/platform/mediatek/vcodec/decoder/mtk_vcodec_dec.c
index 98838217b97d45ed2b5431fdf87c94e0ff79fc57..d691bd533103b100e7d1817e834696cc5b3990ce 100644
--- a/drivers/media/platform/mediatek/vcodec/decoder/mtk_vcodec_dec.c
+++ b/drivers/media/platform/mediatek/vcodec/decoder/mtk_vcodec_dec.c
@@ -87,7 +87,7 @@ static int stateful_try_decoder_cmd(struct file *file, void *priv, struct v4l2_d
 
 static int stateful_decoder_cmd(struct file *file, void *priv, struct v4l2_decoder_cmd *cmd)
 {
-	struct mtk_vcodec_dec_ctx *ctx = fh_to_dec_ctx(priv);
+	struct mtk_vcodec_dec_ctx *ctx = file_to_dec_ctx(file);
 	struct vb2_queue *src_vq, *dst_vq;
 	int ret;
 
@@ -132,7 +132,7 @@ static int stateless_try_decoder_cmd(struct file *file, void *priv, struct v4l2_
 
 static int stateless_decoder_cmd(struct file *file, void *priv, struct v4l2_decoder_cmd *cmd)
 {
-	struct mtk_vcodec_dec_ctx *ctx = fh_to_dec_ctx(priv);
+	struct mtk_vcodec_dec_ctx *ctx = file_to_dec_ctx(file);
 	int ret;
 
 	ret = v4l2_m2m_ioctl_stateless_try_decoder_cmd(file, priv, cmd);
@@ -158,7 +158,7 @@ static int stateless_decoder_cmd(struct file *file, void *priv, struct v4l2_deco
 
 static int vidioc_try_decoder_cmd(struct file *file, void *priv, struct v4l2_decoder_cmd *cmd)
 {
-	struct mtk_vcodec_dec_ctx *ctx = fh_to_dec_ctx(priv);
+	struct mtk_vcodec_dec_ctx *ctx = file_to_dec_ctx(file);
 
 	if (ctx->dev->vdec_pdata->uses_stateless_api)
 		return stateless_try_decoder_cmd(file, priv, cmd);
@@ -168,7 +168,7 @@ static int vidioc_try_decoder_cmd(struct file *file, void *priv, struct v4l2_dec
 
 static int vidioc_decoder_cmd(struct file *file, void *priv, struct v4l2_decoder_cmd *cmd)
 {
-	struct mtk_vcodec_dec_ctx *ctx = fh_to_dec_ctx(priv);
+	struct mtk_vcodec_dec_ctx *ctx = file_to_dec_ctx(file);
 
 	if (ctx->dev->vdec_pdata->uses_stateless_api)
 		return stateless_decoder_cmd(file, priv, cmd);
@@ -233,7 +233,7 @@ void mtk_vcodec_dec_set_default_params(struct mtk_vcodec_dec_ctx *ctx)
 static int vidioc_vdec_qbuf(struct file *file, void *priv,
 			    struct v4l2_buffer *buf)
 {
-	struct mtk_vcodec_dec_ctx *ctx = fh_to_dec_ctx(priv);
+	struct mtk_vcodec_dec_ctx *ctx = file_to_dec_ctx(file);
 
 	if (ctx->state == MTK_STATE_ABORT) {
 		mtk_v4l2_vdec_err(ctx, "[%d] Call on QBUF after unrecoverable error", ctx->id);
@@ -246,7 +246,7 @@ static int vidioc_vdec_qbuf(struct file *file, void *priv,
 static int vidioc_vdec_dqbuf(struct file *file, void *priv,
 			     struct v4l2_buffer *buf)
 {
-	struct mtk_vcodec_dec_ctx *ctx = fh_to_dec_ctx(priv);
+	struct mtk_vcodec_dec_ctx *ctx = file_to_dec_ctx(file);
 
 	if (ctx->state == MTK_STATE_ABORT) {
 		mtk_v4l2_vdec_err(ctx, "[%d] Call on DQBUF after unrecoverable error", ctx->id);
@@ -259,7 +259,7 @@ static int vidioc_vdec_dqbuf(struct file *file, void *priv,
 static int vidioc_vdec_querycap(struct file *file, void *priv,
 				struct v4l2_capability *cap)
 {
-	struct mtk_vcodec_dec_ctx *ctx = fh_to_dec_ctx(priv);
+	struct mtk_vcodec_dec_ctx *ctx = file_to_dec_ctx(file);
 	struct device *dev = &ctx->dev->plat_dev->dev;
 
 	strscpy(cap->driver, dev->driver->name, sizeof(cap->driver));
@@ -354,7 +354,7 @@ static int vidioc_try_fmt_vid_cap_mplane(struct file *file, void *priv,
 				struct v4l2_format *f)
 {
 	const struct mtk_video_fmt *fmt;
-	struct mtk_vcodec_dec_ctx *ctx = fh_to_dec_ctx(priv);
+	struct mtk_vcodec_dec_ctx *ctx = file_to_dec_ctx(file);
 	const struct mtk_vcodec_dec_pdata *dec_pdata = ctx->dev->vdec_pdata;
 
 	fmt = mtk_vdec_find_format(f, dec_pdata);
@@ -372,7 +372,7 @@ static int vidioc_try_fmt_vid_out_mplane(struct file *file, void *priv,
 {
 	struct v4l2_pix_format_mplane *pix_fmt_mp = &f->fmt.pix_mp;
 	const struct mtk_video_fmt *fmt;
-	struct mtk_vcodec_dec_ctx *ctx = fh_to_dec_ctx(priv);
+	struct mtk_vcodec_dec_ctx *ctx = file_to_dec_ctx(file);
 	const struct mtk_vcodec_dec_pdata *dec_pdata = ctx->dev->vdec_pdata;
 
 	fmt = mtk_vdec_find_format(f, dec_pdata);
@@ -393,7 +393,7 @@ static int vidioc_try_fmt_vid_out_mplane(struct file *file, void *priv,
 static int vidioc_vdec_g_selection(struct file *file, void *priv,
 			struct v4l2_selection *s)
 {
-	struct mtk_vcodec_dec_ctx *ctx = fh_to_dec_ctx(priv);
+	struct mtk_vcodec_dec_ctx *ctx = file_to_dec_ctx(file);
 	struct mtk_q_data *q_data;
 
 	if (s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
@@ -442,7 +442,7 @@ static int vidioc_vdec_g_selection(struct file *file, void *priv,
 static int vidioc_vdec_s_selection(struct file *file, void *priv,
 				struct v4l2_selection *s)
 {
-	struct mtk_vcodec_dec_ctx *ctx = fh_to_dec_ctx(priv);
+	struct mtk_vcodec_dec_ctx *ctx = file_to_dec_ctx(file);
 
 	if (s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
 		return -EINVAL;
@@ -464,7 +464,7 @@ static int vidioc_vdec_s_selection(struct file *file, void *priv,
 static int vidioc_vdec_s_fmt(struct file *file, void *priv,
 			     struct v4l2_format *f)
 {
-	struct mtk_vcodec_dec_ctx *ctx = fh_to_dec_ctx(priv);
+	struct mtk_vcodec_dec_ctx *ctx = file_to_dec_ctx(file);
 	struct v4l2_pix_format_mplane *pix_mp;
 	struct mtk_q_data *q_data;
 	int ret = 0;
@@ -594,7 +594,7 @@ static int vidioc_enum_framesizes(struct file *file, void *priv,
 				struct v4l2_frmsizeenum *fsize)
 {
 	int i = 0;
-	struct mtk_vcodec_dec_ctx *ctx = fh_to_dec_ctx(priv);
+	struct mtk_vcodec_dec_ctx *ctx = file_to_dec_ctx(file);
 	const struct mtk_vcodec_dec_pdata *dec_pdata = ctx->dev->vdec_pdata;
 
 	if (fsize->index != 0)
@@ -623,10 +623,10 @@ static int vidioc_enum_framesizes(struct file *file, void *priv,
 	return -EINVAL;
 }
 
-static int vidioc_enum_fmt(struct v4l2_fmtdesc *f, void *priv,
+static int vidioc_enum_fmt(struct file *file, struct v4l2_fmtdesc *f,
 			   bool output_queue)
 {
-	struct mtk_vcodec_dec_ctx *ctx = fh_to_dec_ctx(priv);
+	struct mtk_vcodec_dec_ctx *ctx = file_to_dec_ctx(file);
 	const struct mtk_vcodec_dec_pdata *dec_pdata = ctx->dev->vdec_pdata;
 	const struct mtk_video_fmt *fmt;
 	int i, j = 0;
@@ -660,19 +660,19 @@ static int vidioc_enum_fmt(struct v4l2_fmtdesc *f, void *priv,
 static int vidioc_vdec_enum_fmt_vid_cap(struct file *file, void *priv,
 					struct v4l2_fmtdesc *f)
 {
-	return vidioc_enum_fmt(f, priv, false);
+	return vidioc_enum_fmt(file, f, false);
 }
 
 static int vidioc_vdec_enum_fmt_vid_out(struct file *file, void *priv,
 					struct v4l2_fmtdesc *f)
 {
-	return vidioc_enum_fmt(f, priv, true);
+	return vidioc_enum_fmt(file, f, true);
 }
 
 static int vidioc_vdec_g_fmt(struct file *file, void *priv,
 			     struct v4l2_format *f)
 {
-	struct mtk_vcodec_dec_ctx *ctx = fh_to_dec_ctx(priv);
+	struct mtk_vcodec_dec_ctx *ctx = file_to_dec_ctx(file);
 	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
 	struct vb2_queue *vq;
 	struct mtk_q_data *q_data;
diff --git a/drivers/media/platform/mediatek/vcodec/encoder/mtk_vcodec_enc.c b/drivers/media/platform/mediatek/vcodec/encoder/mtk_vcodec_enc.c
index a01dc25a769911cd85a8d19c58e0c0a12b92ad50..d815e962ab8981c53000851e8f2bc61faf28056d 100644
--- a/drivers/media/platform/mediatek/vcodec/encoder/mtk_vcodec_enc.c
+++ b/drivers/media/platform/mediatek/vcodec/encoder/mtk_vcodec_enc.c
@@ -159,7 +159,7 @@ static int vidioc_enum_framesizes(struct file *file, void *fh,
 				  struct v4l2_frmsizeenum *fsize)
 {
 	const struct mtk_video_fmt *fmt;
-	struct mtk_vcodec_enc_ctx *ctx = fh_to_enc_ctx(fh);
+	struct mtk_vcodec_enc_ctx *ctx = file_to_enc_ctx(file);
 
 	if (fsize->index != 0)
 		return -EINVAL;
@@ -183,7 +183,7 @@ static int vidioc_enum_fmt_vid_cap(struct file *file, void *priv,
 				   struct v4l2_fmtdesc *f)
 {
 	const struct mtk_vcodec_enc_pdata *pdata =
-		fh_to_enc_ctx(priv)->dev->venc_pdata;
+		file_to_enc_ctx(file)->dev->venc_pdata;
 
 	return vidioc_enum_fmt(f, pdata->capture_formats,
 			       pdata->num_capture_formats);
@@ -193,15 +193,14 @@ static int vidioc_enum_fmt_vid_out(struct file *file, void *priv,
 				   struct v4l2_fmtdesc *f)
 {
 	const struct mtk_vcodec_enc_pdata *pdata =
-		fh_to_enc_ctx(priv)->dev->venc_pdata;
+		file_to_enc_ctx(file)->dev->venc_pdata;
 
 	return vidioc_enum_fmt(f, pdata->output_formats,
 			       pdata->num_output_formats);
 }
 
-static int mtk_vcodec_enc_get_chip_name(void *priv)
+static int mtk_vcodec_enc_get_chip_name(struct mtk_vcodec_enc_ctx *ctx)
 {
-	struct mtk_vcodec_enc_ctx *ctx = fh_to_enc_ctx(priv);
 	struct device *dev = &ctx->dev->plat_dev->dev;
 
 	if (of_device_is_compatible(dev->of_node, "mediatek,mt8173-vcodec-enc"))
@@ -221,9 +220,9 @@ static int mtk_vcodec_enc_get_chip_name(void *priv)
 static int vidioc_venc_querycap(struct file *file, void *priv,
 				struct v4l2_capability *cap)
 {
-	struct mtk_vcodec_enc_ctx *ctx = fh_to_enc_ctx(priv);
+	struct mtk_vcodec_enc_ctx *ctx = file_to_enc_ctx(file);
 	struct device *dev = &ctx->dev->plat_dev->dev;
-	int platform_name = mtk_vcodec_enc_get_chip_name(priv);
+	int platform_name = mtk_vcodec_enc_get_chip_name(ctx);
 
 	strscpy(cap->driver, dev->driver->name, sizeof(cap->driver));
 	snprintf(cap->card, sizeof(cap->card), "MT%d video encoder", platform_name);
@@ -234,7 +233,7 @@ static int vidioc_venc_querycap(struct file *file, void *priv,
 static int vidioc_venc_s_parm(struct file *file, void *priv,
 			      struct v4l2_streamparm *a)
 {
-	struct mtk_vcodec_enc_ctx *ctx = fh_to_enc_ctx(priv);
+	struct mtk_vcodec_enc_ctx *ctx = file_to_enc_ctx(file);
 	struct v4l2_fract *timeperframe = &a->parm.output.timeperframe;
 
 	if (a->type != V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
@@ -257,7 +256,7 @@ static int vidioc_venc_s_parm(struct file *file, void *priv,
 static int vidioc_venc_g_parm(struct file *file, void *priv,
 			      struct v4l2_streamparm *a)
 {
-	struct mtk_vcodec_enc_ctx *ctx = fh_to_enc_ctx(priv);
+	struct mtk_vcodec_enc_ctx *ctx = file_to_enc_ctx(file);
 
 	if (a->type != V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
 		return -EINVAL;
@@ -414,7 +413,7 @@ static void mtk_venc_set_param(struct mtk_vcodec_enc_ctx *ctx,
 static int vidioc_venc_s_fmt_cap(struct file *file, void *priv,
 			     struct v4l2_format *f)
 {
-	struct mtk_vcodec_enc_ctx *ctx = fh_to_enc_ctx(priv);
+	struct mtk_vcodec_enc_ctx *ctx = file_to_enc_ctx(file);
 	const struct mtk_vcodec_enc_pdata *pdata = ctx->dev->venc_pdata;
 	struct vb2_queue *vq;
 	struct mtk_q_data *q_data = mtk_venc_get_q_data(ctx, f->type);
@@ -469,7 +468,7 @@ static int vidioc_venc_s_fmt_cap(struct file *file, void *priv,
 static int vidioc_venc_s_fmt_out(struct file *file, void *priv,
 			     struct v4l2_format *f)
 {
-	struct mtk_vcodec_enc_ctx *ctx = fh_to_enc_ctx(priv);
+	struct mtk_vcodec_enc_ctx *ctx = file_to_enc_ctx(file);
 	const struct mtk_vcodec_enc_pdata *pdata = ctx->dev->venc_pdata;
 	struct vb2_queue *vq;
 	struct mtk_q_data *q_data = mtk_venc_get_q_data(ctx, f->type);
@@ -524,7 +523,7 @@ static int vidioc_venc_g_fmt(struct file *file, void *priv,
 			     struct v4l2_format *f)
 {
 	struct v4l2_pix_format_mplane *pix = &f->fmt.pix_mp;
-	struct mtk_vcodec_enc_ctx *ctx = fh_to_enc_ctx(priv);
+	struct mtk_vcodec_enc_ctx *ctx = file_to_enc_ctx(file);
 	struct vb2_queue *vq;
 	struct mtk_q_data *q_data = mtk_venc_get_q_data(ctx, f->type);
 	int i;
@@ -557,7 +556,7 @@ static int vidioc_try_fmt_vid_cap_mplane(struct file *file, void *priv,
 					 struct v4l2_format *f)
 {
 	const struct mtk_video_fmt *fmt;
-	struct mtk_vcodec_enc_ctx *ctx = fh_to_enc_ctx(priv);
+	struct mtk_vcodec_enc_ctx *ctx = file_to_enc_ctx(file);
 	const struct mtk_vcodec_enc_pdata *pdata = ctx->dev->venc_pdata;
 
 	fmt = mtk_venc_find_format(f->fmt.pix.pixelformat, pdata);
@@ -579,7 +578,7 @@ static int vidioc_try_fmt_vid_out_mplane(struct file *file, void *priv,
 					 struct v4l2_format *f)
 {
 	const struct mtk_video_fmt *fmt;
-	struct mtk_vcodec_enc_ctx *ctx = fh_to_enc_ctx(priv);
+	struct mtk_vcodec_enc_ctx *ctx = file_to_enc_ctx(file);
 	const struct mtk_vcodec_enc_pdata *pdata = ctx->dev->venc_pdata;
 
 	fmt = mtk_venc_find_format(f->fmt.pix.pixelformat, pdata);
@@ -600,7 +599,7 @@ static int vidioc_try_fmt_vid_out_mplane(struct file *file, void *priv,
 static int vidioc_venc_g_selection(struct file *file, void *priv,
 				     struct v4l2_selection *s)
 {
-	struct mtk_vcodec_enc_ctx *ctx = fh_to_enc_ctx(priv);
+	struct mtk_vcodec_enc_ctx *ctx = file_to_enc_ctx(file);
 	struct mtk_q_data *q_data = mtk_venc_get_q_data(ctx, s->type);
 
 	if (s->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
@@ -630,7 +629,7 @@ static int vidioc_venc_g_selection(struct file *file, void *priv,
 static int vidioc_venc_s_selection(struct file *file, void *priv,
 				     struct v4l2_selection *s)
 {
-	struct mtk_vcodec_enc_ctx *ctx = fh_to_enc_ctx(priv);
+	struct mtk_vcodec_enc_ctx *ctx = file_to_enc_ctx(file);
 	struct mtk_q_data *q_data = mtk_venc_get_q_data(ctx, s->type);
 
 	if (s->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
@@ -655,7 +654,7 @@ static int vidioc_venc_s_selection(struct file *file, void *priv,
 static int vidioc_venc_qbuf(struct file *file, void *priv,
 			    struct v4l2_buffer *buf)
 {
-	struct mtk_vcodec_enc_ctx *ctx = fh_to_enc_ctx(priv);
+	struct mtk_vcodec_enc_ctx *ctx = file_to_enc_ctx(file);
 
 	if (ctx->state == MTK_STATE_ABORT) {
 		mtk_v4l2_venc_err(ctx, "[%d] Call on QBUF after unrecoverable error",
@@ -669,7 +668,7 @@ static int vidioc_venc_qbuf(struct file *file, void *priv,
 static int vidioc_venc_dqbuf(struct file *file, void *priv,
 			     struct v4l2_buffer *buf)
 {
-	struct mtk_vcodec_enc_ctx *ctx = fh_to_enc_ctx(priv);
+	struct mtk_vcodec_enc_ctx *ctx = file_to_enc_ctx(file);
 	int ret;
 
 	if (ctx->state == MTK_STATE_ABORT) {
@@ -707,7 +706,7 @@ static int vidioc_venc_dqbuf(struct file *file, void *priv,
 static int vidioc_encoder_cmd(struct file *file, void *priv,
 			      struct v4l2_encoder_cmd *cmd)
 {
-	struct mtk_vcodec_enc_ctx *ctx = fh_to_enc_ctx(priv);
+	struct mtk_vcodec_enc_ctx *ctx = file_to_enc_ctx(file);
 	struct vb2_queue *src_vq, *dst_vq;
 	int ret;
 
diff --git a/drivers/media/platform/mediatek/vcodec/encoder/mtk_vcodec_enc_drv.h b/drivers/media/platform/mediatek/vcodec/encoder/mtk_vcodec_enc_drv.h
index 402e7d31d03d1985ad5ff2831faffc5c31b63467..5b304a5512366ed7109469a3b8f90b240baf2a11 100644
--- a/drivers/media/platform/mediatek/vcodec/encoder/mtk_vcodec_enc_drv.h
+++ b/drivers/media/platform/mediatek/vcodec/encoder/mtk_vcodec_enc_drv.h
@@ -217,11 +217,6 @@ struct mtk_vcodec_enc_dev {
 	struct mtk_vcodec_dbgfs dbgfs;
 };
 
-static inline struct mtk_vcodec_enc_ctx *fh_to_enc_ctx(struct v4l2_fh *fh)
-{
-	return container_of(fh, struct mtk_vcodec_enc_ctx, fh);
-}
-
 static inline struct mtk_vcodec_enc_ctx *file_to_enc_ctx(struct file *filp)
 {
 	return container_of(file_to_v4l2_fh(filp), struct mtk_vcodec_enc_ctx, fh);

-- 
2.49.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
