Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 879A8B18ED9
	for <lists+mjpeg-users@lfdr.de>; Sat,  2 Aug 2025 15:55:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:To:In-Reply-To:References:Message-Id:MIME-Version:Date:From:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7aIxG5DDjf0CcTu4w0cKBtmngQa7rMT4ZkoXLCd3WiA=; b=PFIRY0dthapQU2SorXZTB1eEkg
	J+9HP0DVwAA/WS5TVC6Wxla3HUtJgiKg9a+ngNHr2ml1Lz6p8N6huTfgHVXCmvCuEs8JTFF3d/NE8
	3dTP7VXY70s5f5/zxtCG0lEk+dScI5MM2WJMCpc7KZa1va3X8vUsSG15iilaiMuKheig=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1uiChn-0006Up-DN;
	Sat, 02 Aug 2025 13:55:23 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacopo.mondi@ideasonboard.com>) id 1ui8i3-0000T4-G3
 for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:39:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cHnJTH0z6vDJbf08My/SIiBhD7Y8wZSvbO1dAUoMsqY=; b=adNtuRSdAR+zfWLEgdgTs4L6Cb
 u5nsZC9yaXx8Z40wxxfwIuwE6qG4waW1Gr4C7fGWtA4zhb634h4j+tbHsBK+wWikhYNP9CNkF0RN/
 0/yIEY3s9DOYF0v4S4yeRYCM6HqBUPPVdWqKWFotZXIhmDGSr6iF4yBkrF9Ox31a8E2w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cHnJTH0z6vDJbf08My/SIiBhD7Y8wZSvbO1dAUoMsqY=; b=aMIrEo911ZnaNMpKHqqMI4gWXj
 CEV79XNSq7JzVncdbIymXN8HEnoBntr7fNdPSfnVD/FElkQHSc6yyc8InitaH8PGZHPnTJpHAx7tr
 jh2qfCYoIJ099+G0k1On831Gq/EZgpZz5DYtTfPmMVbeI4o4OXf+zqpRf645wPvcHPAQ=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ui8i2-0005ay-PV for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:39:23 +0000
Received: from [192.168.0.172] (mob-5-90-138-121.net.vodafone.it
 [5.90.138.121])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id E971D3F0F;
 Sat,  2 Aug 2025 11:29:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1754126981;
 bh=r9EmdW9i1TpnM68OPWTkjqIluWnJXR3RjvZTO/X9K3g=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=wcMF2qKeeP2cktp7fqhd2vjW0xiaN/orYcLh5U3pkhxKwKjpY2k/E49wUHJ2Xgb9w
 HyHrijr4L+cjv6j9Ecd5TI6MOGRecES0E9m9jZHRYTzcyrQn1vjjmhPS7WEfLFVmF7
 iyjssYOY0wyo3gcdLqTDXcLyOhvPfhvhQzAmFN4s=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Sat, 02 Aug 2025 11:23:04 +0200
MIME-Version: 1.0
Message-Id: <20250802-media-private-data-v1-42-eb140ddd6a9d@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=5921;
 i=jacopo.mondi@ideasonboard.com; h=from:subject:message-id;
 bh=r9EmdW9i1TpnM68OPWTkjqIluWnJXR3RjvZTO/X9K3g=;
 b=owEBbQKS/ZANAwAKAXI0Bo8WoVY8AcsmYgBojdj8t8qErd8Gcnukq8YAN1PzdPUhY0KWPYAx6
 WnkJP0eq1OJAjMEAAEKAB0WIQS1xD1IgJogio9YOMByNAaPFqFWPAUCaI3Y/AAKCRByNAaPFqFW
 PBQuEACOm3E3t7R/ETMWYIrxOOSYylsbXMC53sRw2HfKxw/zvZVMKNOD5+z4nylQitLk5k2xu3W
 lqwgyikKsFoEDXwSDoaZWFmxNpu//6BR4IUp8/iWn/xQmfQdppY0FHkojEVSCZFJcLk1wdkhMYu
 19wy9T5//atcRQyOCVf7f5Hj4UjwsbyZGPz+GSG7Ymt/h0PCArKk5pC2RJq2YNu+zUiekqODyve
 EN6rZRIdW3aSd56Kicu7U3CeFDY/nVj7bdFZ9czT5zyLkF6sXVojy9pcdDlMAkP7+BGXHXfSJ8o
 s0aCcfw26jDKQiCcRo880H0r/z5E3zOKJWovHvIAo0MN8LHWaz4OTXVdPR+519xm+XhtcQ1Yw14
 af5SwUtDjXE9DskQ6ycaMMQmv/VWBkIseTQS/99v2XVLJxBadUojy2o7VtB5wczPhH/L+MI7LQc
 5RsQM/m09BN6SFjvf33xmaZiOKKAzLpkdieFoCM85jPMhyxtE3nq1qKHPPzk2h3RUFMpp2xLFD+
 hKpE9Vee/FqJhdLGU8xkQ6Bx816/tvp0SvG4YybmUIRiKwW+bsS7K03oxf9CdE6gvY2YTJEC6QZ
 svUsHWdy0E/nmSm+TXrF6LhWinQJYgsErYee7cnfayg1I0A5jg/X99y9A0fk5owEjFECEb7khY3
 xt1/NbTqZcgyrUQ==
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
X-Headers-End: 1ui8i2-0005ay-PV
X-Mailman-Approved-At: Sat, 02 Aug 2025 13:55:16 +0000
Subject: [Mjpeg-users] [PATCH 42/65] media: renesas: Access v4l2_fh from file
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

While at it, remove the now unused fh_to_ctx() macro.

Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
 drivers/media/platform/renesas/rcar_fdp1.c | 11 +++--------
 drivers/media/platform/renesas/rcar_jpu.c  | 21 ++++++++-------------
 2 files changed, 11 insertions(+), 21 deletions(-)

diff --git a/drivers/media/platform/renesas/rcar_fdp1.c b/drivers/media/platform/renesas/rcar_fdp1.c
index e78d8fb104e9544d27c8ace38888995ca170483f..84c3901a2e5dc3e7ccfb3b44062e839f8f19ee02 100644
--- a/drivers/media/platform/renesas/rcar_fdp1.c
+++ b/drivers/media/platform/renesas/rcar_fdp1.c
@@ -630,11 +630,6 @@ struct fdp1_ctx {
 	struct fdp1_field_buffer	*previous;
 };
 
-static inline struct fdp1_ctx *fh_to_ctx(struct v4l2_fh *fh)
-{
-	return container_of(fh, struct fdp1_ctx, fh);
-}
-
 static inline struct fdp1_ctx *file_to_ctx(struct file *filp)
 {
 	return container_of(file_to_v4l2_fh(filp), struct fdp1_ctx, fh);
@@ -1411,8 +1406,8 @@ static int fdp1_enum_fmt_vid_out(struct file *file, void *priv,
 
 static int fdp1_g_fmt(struct file *file, void *priv, struct v4l2_format *f)
 {
+	struct fdp1_ctx *ctx = file_to_ctx(file);
 	struct fdp1_q_data *q_data;
-	struct fdp1_ctx *ctx = fh_to_ctx(priv);
 
 	if (!v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type))
 		return -EINVAL;
@@ -1589,7 +1584,7 @@ static void fdp1_try_fmt_capture(struct fdp1_ctx *ctx,
 
 static int fdp1_try_fmt(struct file *file, void *priv, struct v4l2_format *f)
 {
-	struct fdp1_ctx *ctx = fh_to_ctx(priv);
+	struct fdp1_ctx *ctx = file_to_ctx(file);
 
 	if (f->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
 		fdp1_try_fmt_output(ctx, NULL, &f->fmt.pix_mp);
@@ -1660,7 +1655,7 @@ static void fdp1_set_format(struct fdp1_ctx *ctx,
 
 static int fdp1_s_fmt(struct file *file, void *priv, struct v4l2_format *f)
 {
-	struct fdp1_ctx *ctx = fh_to_ctx(priv);
+	struct fdp1_ctx *ctx = file_to_ctx(file);
 	struct v4l2_m2m_ctx *m2m_ctx = ctx->fh.m2m_ctx;
 	struct vb2_queue *vq = v4l2_m2m_get_vq(m2m_ctx, f->type);
 
diff --git a/drivers/media/platform/renesas/rcar_jpu.c b/drivers/media/platform/renesas/rcar_jpu.c
index 058fcfb967bd98440f33272db42f0d973299d572..9c70a74a2969fce6446b0f26e0637a68eade3942 100644
--- a/drivers/media/platform/renesas/rcar_jpu.c
+++ b/drivers/media/platform/renesas/rcar_jpu.c
@@ -480,11 +480,6 @@ static struct jpu_ctx *ctrl_to_ctx(struct v4l2_ctrl *c)
 	return container_of(c->handler, struct jpu_ctx, ctrl_handler);
 }
 
-static struct jpu_ctx *fh_to_ctx(struct v4l2_fh *fh)
-{
-	return container_of(fh, struct jpu_ctx, fh);
-}
-
 static struct jpu_ctx *file_to_ctx(struct file *filp)
 {
 	return container_of(file_to_v4l2_fh(filp), struct jpu_ctx, fh);
@@ -661,7 +656,7 @@ static u8 jpu_parse_hdr(void *buffer, unsigned long size, unsigned int *width,
 static int jpu_querycap(struct file *file, void *priv,
 			struct v4l2_capability *cap)
 {
-	struct jpu_ctx *ctx = fh_to_ctx(priv);
+	struct jpu_ctx *ctx = file_to_ctx(file);
 
 	if (ctx->encoder)
 		strscpy(cap->card, DRV_NAME " encoder", sizeof(cap->card));
@@ -719,7 +714,7 @@ static int jpu_enum_fmt(struct v4l2_fmtdesc *f, u32 type)
 static int jpu_enum_fmt_cap(struct file *file, void *priv,
 			    struct v4l2_fmtdesc *f)
 {
-	struct jpu_ctx *ctx = fh_to_ctx(priv);
+	struct jpu_ctx *ctx = file_to_ctx(file);
 
 	return jpu_enum_fmt(f, ctx->encoder ? JPU_ENC_CAPTURE :
 			    JPU_DEC_CAPTURE);
@@ -728,7 +723,7 @@ static int jpu_enum_fmt_cap(struct file *file, void *priv,
 static int jpu_enum_fmt_out(struct file *file, void *priv,
 			    struct v4l2_fmtdesc *f)
 {
-	struct jpu_ctx *ctx = fh_to_ctx(priv);
+	struct jpu_ctx *ctx = file_to_ctx(file);
 
 	return jpu_enum_fmt(f, ctx->encoder ? JPU_ENC_OUTPUT : JPU_DEC_OUTPUT);
 }
@@ -828,7 +823,7 @@ static int __jpu_try_fmt(struct jpu_ctx *ctx, struct jpu_fmt **fmtinfo,
 
 static int jpu_try_fmt(struct file *file, void *priv, struct v4l2_format *f)
 {
-	struct jpu_ctx *ctx = fh_to_ctx(priv);
+	struct jpu_ctx *ctx = file_to_ctx(file);
 
 	if (!v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type))
 		return -EINVAL;
@@ -839,7 +834,7 @@ static int jpu_try_fmt(struct file *file, void *priv, struct v4l2_format *f)
 static int jpu_s_fmt(struct file *file, void *priv, struct v4l2_format *f)
 {
 	struct vb2_queue *vq;
-	struct jpu_ctx *ctx = fh_to_ctx(priv);
+	struct jpu_ctx *ctx = file_to_ctx(file);
 	struct v4l2_m2m_ctx *m2m_ctx = ctx->fh.m2m_ctx;
 	struct jpu_fmt *fmtinfo;
 	struct jpu_q_data *q_data;
@@ -868,8 +863,8 @@ static int jpu_s_fmt(struct file *file, void *priv, struct v4l2_format *f)
 
 static int jpu_g_fmt(struct file *file, void *priv, struct v4l2_format *f)
 {
+	struct jpu_ctx *ctx = file_to_ctx(file);
 	struct jpu_q_data *q_data;
-	struct jpu_ctx *ctx = fh_to_ctx(priv);
 
 	if (!v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type))
 		return -EINVAL;
@@ -902,8 +897,8 @@ static const struct v4l2_ctrl_ops jpu_ctrl_ops = {
 
 static int jpu_streamon(struct file *file, void *priv, enum v4l2_buf_type type)
 {
-	struct jpu_ctx *ctx = fh_to_ctx(priv);
 	struct jpu_q_data *src_q_data, *dst_q_data, *orig, adj, *ref;
+	struct jpu_ctx *ctx = file_to_ctx(file);
 	enum v4l2_buf_type adj_type;
 
 	src_q_data = jpu_get_q_data(ctx, V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE);
@@ -1284,8 +1279,8 @@ static int jpu_open(struct file *file)
 
 static int jpu_release(struct file *file)
 {
-	struct jpu *jpu = video_drvdata(file);
 	struct jpu_ctx *ctx = file_to_ctx(file);
+	struct jpu *jpu = video_drvdata(file);
 
 	v4l2_m2m_ctx_release(ctx->fh.m2m_ctx);
 	v4l2_ctrl_handler_free(&ctx->ctrl_handler);

-- 
2.49.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
