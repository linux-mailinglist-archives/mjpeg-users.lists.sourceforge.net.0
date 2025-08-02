Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A38AB18F03
	for <lists+mjpeg-users@lfdr.de>; Sat,  2 Aug 2025 15:55:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:To:In-Reply-To:References:Message-Id:MIME-Version:Date:From:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6gTxB73SO+RHn01GlHxgJoprVU28zXoa4zorN55JKnc=; b=VK93WRixBc8OlltYxyPvNWV4PT
	5n7jqM/WOjvB1vCAjuCH3Bvvlzodq/wvY2x246Apwygqs+F4sXgBRGmjFu9UAFjcwGv6mD+OLb1pL
	E9w8gJK6EiPXBW2ill8Mzhh9+fiUIryaDdr9ngF9npoWitkzqe4ND8rmWVMHiUu/d65E=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1uiCi2-0006qa-DU;
	Sat, 02 Aug 2025 13:55:38 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacopo.mondi@ideasonboard.com>) id 1ui8qk-0000kQ-E6
 for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:48:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mytpTapUbF9DFdZcBvU25dsviQMjHRL/PAKnwSASr4k=; b=CQoodYcITxcffLEORHqeDq/bAA
 vaSGj1rDUzC3+A800h1tLQ9sUqdc7BCEHIPX4LDv0sP4WBv2k6lPpXW3WnQjZNhWDNOakGVLgmsoQ
 UAYtu2KuYjFTw604QymFwayiBw2UfwoOCMkIrQORX1RgfEdhpL8/3UnXRYRQsT6Gm5CM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mytpTapUbF9DFdZcBvU25dsviQMjHRL/PAKnwSASr4k=; b=TEJSsFWvGh56M6t7LSIV9yL1qq
 5rILMjkA2LKOZEmhI+QXRQbmUUKcJuvl+Qrki7BXH6KW6gOVnZVnYbq1QMhZuMnxIWkKfkB2rQhg9
 DOO9zJch9h8SU3lnai8IOjeoOQ9xIYHidc5WxzThI9BRIxXeLOlaqy1IDmp2HBMqQWOg=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ui8qj-0006Os-QE for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:48:22 +0000
Received: from [192.168.0.172] (mob-5-90-138-121.net.vodafone.it
 [5.90.138.121])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 3885A842;
 Sat,  2 Aug 2025 11:23:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1754126589;
 bh=M16fcXPSFGIgO1fjImCRLdBNZivtR5rZm3smOC67Dos=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=Xh5QMoMjqrqkgjHWdCiChhC1kdX3rt6vslL7ao3U194rehb2t/LzhlzZlqrh6+4Li
 TXEK7x4SM24jeMVMI9tnUtNWGlre6MKBX/a1G7iPg7TPV5tvdJ4RtiQc9hq6VaiCnv
 i2Hx8PcD5E6xY6KEeR7bvKmTwPdPJt9t1aXwo9Q4=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Sat, 02 Aug 2025 11:22:25 +0200
MIME-Version: 1.0
Message-Id: <20250802-media-private-data-v1-3-eb140ddd6a9d@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3454;
 i=jacopo.mondi@ideasonboard.com; h=from:subject:message-id;
 bh=Np6gXh7MItHymabBs1Yqzt+CAwSTLfj7TvMeffHrbwk=;
 b=owEBbQKS/ZANAwAKAXI0Bo8WoVY8AcsmYgBojdj33+4XwqxYN9ZW66BafwfZLuLpBrwno2f/A
 DUK8COJi/uJAjMEAAEKAB0WIQS1xD1IgJogio9YOMByNAaPFqFWPAUCaI3Y9wAKCRByNAaPFqFW
 PAwfD/9nt85cmSPVXvNKQvfs5+zCtyPn2ct+RqtRZcjNxMi7ESzI1Hd093H9IIFBZSRZ4js9WNd
 SR4bWDMxl4ZMN3Z15rOrZEiyXKKAsu7Mjczefb5pYS67Rt0zsQR4M3vBAyjSgt4ONv/YOPnyJUv
 A/52sMC/hiQTgIJBrXaRA9qrECHWA1TMDYIDhdFZ/wJQWSd0NtEXkHnDmrtP2S38BtR03Rph1Iw
 +atlfcIB85GJX5d9Z4qXFlxfbm+EzZN5wzwP2wo3o1SZ08cbgOoBxuYYL+y15d4BmaWjlInbYEg
 Y8n2vsiO/Bhhqlg5rFC27ReaLp3GU0OgdlWkvoe7Mul/hXsRqFBXYgXTITfEfKYXA/h9ngMaUwC
 zJ5Gl3JNY/bevC/OE7UUStL/LwSByKeXsWAAIgK5g87BIN/iwMoIvLBpeEhf3/bIujUIrs0TxJ9
 /e2/GqK06yKJoqucWoTtgYEwYGsxxOfMZRPj1gS1nyFpJKkpEjc/6cj5A39OUSpa3SO2TBZekO0
 f5Mz3BWD7OjNemqOtj7qWsC9Q+Inze9auS33BFlI1MEnsZAoOcZWnXFqmb7jQSi1bgOJkzvSF1Q
 q3ddzKvIzhgXHi8v2KnEilNsO2s2MzBSzpqBIKTBKzAAhCtYWz+IxE8ZD+ax14Ax4/cNmk2ruLZ
 vHl5gQqKJGgGbbQ==
X-Developer-Key: i=jacopo.mondi@ideasonboard.com; a=openpgp;
 fpr=72392EDC88144A65C701EA9BA5826A2587AD026B
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
 Most V4L2 drivers store the v4l2_fh pointer in file->private_data. The ti-vpe
 driver instead stores the pointer to the driver-specific structure that embeds
 the v4l2_fh. Switch to storing the v4l2_fh [...] 
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
X-Headers-End: 1ui8qj-0006Os-QE
X-Mailman-Approved-At: Sat, 02 Aug 2025 13:55:16 +0000
Subject: [Mjpeg-users] [PATCH 03/65] media: ti: vpe: Store v4l2_fh pointer
 in file->private_data
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

From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Most V4L2 drivers store the v4l2_fh pointer in file->private_data. The
ti-vpe driver instead stores the pointer to the driver-specific
structure that embeds the v4l2_fh. Switch to storing the v4l2_fh pointer
itself to standardize behaviour across drivers. This also prepares for
future refactoring that depends on v4l2_fh being stored in private_data.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
 drivers/media/platform/ti/vpe/vpe.c | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/media/platform/ti/vpe/vpe.c b/drivers/media/platform/ti/vpe/vpe.c
index 636d76ecebcd7e6f4e98d6fe4873bf98b0f0239e..b76b5d18c963d9a3313d34cfe0e12772738d336f 100644
--- a/drivers/media/platform/ti/vpe/vpe.c
+++ b/drivers/media/platform/ti/vpe/vpe.c
@@ -422,6 +422,10 @@ struct vpe_ctx {
 	unsigned int		src_mv_buf_selector;
 };
 
+static inline struct vpe_ctx *to_vpe_ctx(struct file *filp)
+{
+	return container_of(filp->private_data, struct vpe_ctx, fh);
+}
 
 /*
  * M2M devices get 2 queues.
@@ -1562,7 +1566,7 @@ static int vpe_enum_fmt(struct file *file, void *priv,
 static int vpe_g_fmt(struct file *file, void *priv, struct v4l2_format *f)
 {
 	struct v4l2_pix_format_mplane *pix = &f->fmt.pix_mp;
-	struct vpe_ctx *ctx = file->private_data;
+	struct vpe_ctx *ctx = to_vpe_ctx(file);
 	struct vb2_queue *vq;
 	struct vpe_q_data *q_data;
 
@@ -1719,7 +1723,7 @@ static int __vpe_try_fmt(struct vpe_ctx *ctx, struct v4l2_format *f,
 
 static int vpe_try_fmt(struct file *file, void *priv, struct v4l2_format *f)
 {
-	struct vpe_ctx *ctx = file->private_data;
+	struct vpe_ctx *ctx = to_vpe_ctx(file);
 	struct vpe_fmt *fmt = find_format(f);
 
 	if (V4L2_TYPE_IS_OUTPUT(f->type))
@@ -1783,7 +1787,7 @@ static int __vpe_s_fmt(struct vpe_ctx *ctx, struct v4l2_format *f)
 static int vpe_s_fmt(struct file *file, void *priv, struct v4l2_format *f)
 {
 	int ret;
-	struct vpe_ctx *ctx = file->private_data;
+	struct vpe_ctx *ctx = to_vpe_ctx(file);
 
 	ret = vpe_try_fmt(file, priv, f);
 	if (ret)
@@ -1871,7 +1875,7 @@ static int __vpe_try_selection(struct vpe_ctx *ctx, struct v4l2_selection *s)
 static int vpe_g_selection(struct file *file, void *fh,
 		struct v4l2_selection *s)
 {
-	struct vpe_ctx *ctx = file->private_data;
+	struct vpe_ctx *ctx = to_vpe_ctx(file);
 	struct vpe_q_data *q_data;
 	struct v4l2_pix_format_mplane *pix;
 	bool use_c_rect = false;
@@ -1935,7 +1939,7 @@ static int vpe_g_selection(struct file *file, void *fh,
 static int vpe_s_selection(struct file *file, void *fh,
 		struct v4l2_selection *s)
 {
-	struct vpe_ctx *ctx = file->private_data;
+	struct vpe_ctx *ctx = to_vpe_ctx(file);
 	struct vpe_q_data *q_data;
 	struct v4l2_selection sel = *s;
 	int ret;
@@ -2306,7 +2310,7 @@ static int vpe_open(struct file *file)
 	init_adb_hdrs(ctx);
 
 	v4l2_fh_init(&ctx->fh, video_devdata(file));
-	file->private_data = ctx;
+	file->private_data = &ctx->fh;
 
 	hdl = &ctx->hdl;
 	v4l2_ctrl_handler_init(hdl, 1);
@@ -2400,7 +2404,7 @@ static int vpe_open(struct file *file)
 static int vpe_release(struct file *file)
 {
 	struct vpe_dev *dev = video_drvdata(file);
-	struct vpe_ctx *ctx = file->private_data;
+	struct vpe_ctx *ctx = to_vpe_ctx(file);
 
 	vpe_dbg(dev, "releasing instance %p\n", ctx);
 

-- 
2.49.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
