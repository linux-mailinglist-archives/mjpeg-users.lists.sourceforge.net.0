Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B334B18ED3
	for <lists+mjpeg-users@lfdr.de>; Sat,  2 Aug 2025 15:55:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:To:In-Reply-To:References:Message-Id:MIME-Version:Date:From:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tpFkMVfbPyvh42FO2S/dmAA8IWKjiE+INJDERCKev6M=; b=lzwt6hIwwwxeI346a3IOJyacgl
	dndP55ExRaQOPzjt4ypajPfcguABSozxoozYz4LWPr+BtNIEcuXJQEExXmoYvETVm9lsMvwcjPhgT
	rViEplGxUHXn17jWcaHd5ft5OPI60o6CAodRptsdkCHvvB/GPtg8h8zoI9uVXXvbecTg=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1uiChl-0006Sk-EG;
	Sat, 02 Aug 2025 13:55:21 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacopo.mondi@ideasonboard.com>) id 1ui8hR-0005Gi-Uv
 for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:38:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MSBxn982U+psi7SolKGkPu8STkKK7xcIoNcxQV+Kb2g=; b=AyQg39qiDY20/PneCKlB5suQ2f
 coHXG+Hf0Kh+lmJ5us4wjsSYSK6GGuakpfPew3AjPQhirIY2VL36TFsN22risJOefz6YozkIq4grO
 3H3rfhatDmk8Rb3tCPYocDRPE1XLjvPhl8QyBltb84KQul/SkoMaByCMdZhBLviiKvBw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MSBxn982U+psi7SolKGkPu8STkKK7xcIoNcxQV+Kb2g=; b=adkX7u9YCHEET+B6X1sipz46ZB
 aflh3ImQMDX/QlO668bgLiWo00SxOpQzDoRPv8QtdJ30HqhiLhsaSIs34E+iI/EaavrVHzCTqHo4w
 ZASEBtpxKrDHQZ59ozMYmtvaPTCYcpwMljqhypbOOnorTYLZ558rbpKKC+8QXoSp4dI8=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ui8hR-0005Y5-C8 for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:38:46 +0000
Received: from [192.168.0.172] (mob-5-90-138-121.net.vodafone.it
 [5.90.138.121])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 395973E43;
 Sat,  2 Aug 2025 11:28:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1754126942;
 bh=MthwYUOLpqBn0ba6jZYKpMy9cQjcqOQkTUKOiMmYskY=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=WrzWKhJzGGme5zOuQKXcQS/gNGIUjt+o1Z00R2tij+Qj4M9aA/SV+y5Z26X7R3HR1
 nYV72q1Za8zMTe1MdtszLQQRIrdrEHwMHomB/rG6zrt8mk52l3LNAcujKID2JmXYOv
 3WD21E56BSQ+HYPkYABpAkGGxFx8a7Yv2PLlaV8g=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Sat, 02 Aug 2025 11:23:00 +0200
MIME-Version: 1.0
Message-Id: <20250802-media-private-data-v1-38-eb140ddd6a9d@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4867;
 i=jacopo.mondi@ideasonboard.com; h=from:subject:message-id;
 bh=MthwYUOLpqBn0ba6jZYKpMy9cQjcqOQkTUKOiMmYskY=;
 b=owEBbQKS/ZANAwAKAXI0Bo8WoVY8AcsmYgBojdj8TQAFq4EkLSez561K0ZCn/vn/BBJTmiqEC
 bdHNw8gzSWJAjMEAAEKAB0WIQS1xD1IgJogio9YOMByNAaPFqFWPAUCaI3Y/AAKCRByNAaPFqFW
 PJFxD/0TIoksJkRESbXqmBqgUb3qo3kiE82eWw0Z6Q17TElBpWIw99pBtQOEfWrjRc99I2UNoAc
 mCWz87rZyt3b6rGydUaLt9eHY90h2RMG8ZuGxvsCjUqNu2QgiOXjLWK+BThZ6GSsaJU/obfD58m
 M5vJxlycDcFVA5yj4c9cYo9gOkSEthg2q7w+YAK5woOn3Vhbu23YWdJCoZpSNqcddOpyHsiqnEZ
 avPs8NZ686jUTHS/YnHe3ZYCI/gQcUffV4SXamBdh+FkxWa0WALMw86oWkcaFkX5WXmX9wNfith
 /kP9lim1JndmUQqWhp2EC7h7aowy/H3g4BtOWW9Z00CDQZ+3e4LiZ7Kqddsxq0uE5QNF7jPETC1
 hJybOhHs6dvry1LAO5LFktHgr2lIdVTZQs9thfuO2XeQoqVM6z4bBjwLozzZsiN6urjUYoUz1XC
 iYuPhRgfbhwGyHjeVLsCHuXYR6JmLQXWLDCs6ZamO1AxcA1+VIjV3MS9lbcssLjGWrs++h+MJbD
 KljduZoHMhOINt+uFXu/pPJDBZ/AC/9qe73RGy3LvPoTSfbm+fTyCcLaqIn3INSuce3gG9VafpX
 3OWHslj9R1uowlyL4FDQTnn2sNB+gM5WCqNDA5Sjx3AwLtjkJT1LApcSPeOOfKoBM/c3R1RVeVD
 u4zEl7mhyZWHBtw==
X-Developer-Key: i=jacopo.mondi@ideasonboard.com; a=openpgp;
 fpr=72392EDC88144A65C701EA9BA5826A2587AD026B
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
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
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ui8hR-0005Y5-C8
X-Mailman-Approved-At: Sat, 02 Aug 2025 13:55:16 +0000
Subject: [Mjpeg-users] [PATCH 38/65] media: tegra-vde: Access v4l2_fh from
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

Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
 drivers/media/platform/nvidia/tegra-vde/v4l2.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/media/platform/nvidia/tegra-vde/v4l2.c b/drivers/media/platform/nvidia/tegra-vde/v4l2.c
index 0c50f4ff82e0a8f4935325d00691c58072182926..d94978ae2baf3394206ad7c3eb7a400aeee47cf7 100644
--- a/drivers/media/platform/nvidia/tegra-vde/v4l2.c
+++ b/drivers/media/platform/nvidia/tegra-vde/v4l2.c
@@ -46,9 +46,9 @@ static const struct v4l2_ctrl_config ctrl_cfgs[] = {
 	},
 };
 
-static inline struct tegra_ctx *fh_to_tegra_ctx(struct v4l2_fh *fh)
+static inline struct tegra_ctx *file_to_tegra_ctx(struct file *file)
 {
-	return container_of(fh, struct tegra_ctx, fh);
+	return container_of(file_to_v4l2_fh(file), struct tegra_ctx, fh);
 }
 
 static void tegra_set_control_data(struct tegra_ctx *ctx, void *data, u32 id)
@@ -506,7 +506,7 @@ static int tegra_querycap(struct file *file, void *priv,
 static int tegra_enum_decoded_fmt(struct file *file, void *priv,
 				  struct v4l2_fmtdesc *f)
 {
-	struct tegra_ctx *ctx = fh_to_tegra_ctx(priv);
+	struct tegra_ctx *ctx = file_to_tegra_ctx(file);
 
 	if (WARN_ON(!ctx->coded_fmt_desc))
 		return -EINVAL;
@@ -522,7 +522,7 @@ static int tegra_enum_decoded_fmt(struct file *file, void *priv,
 static int tegra_g_decoded_fmt(struct file *file, void *priv,
 			       struct v4l2_format *f)
 {
-	struct tegra_ctx *ctx = fh_to_tegra_ctx(priv);
+	struct tegra_ctx *ctx = file_to_tegra_ctx(file);
 
 	*f = ctx->decoded_fmt;
 	return 0;
@@ -531,8 +531,8 @@ static int tegra_g_decoded_fmt(struct file *file, void *priv,
 static int tegra_try_decoded_fmt(struct file *file, void *priv,
 				 struct v4l2_format *f)
 {
+	struct tegra_ctx *ctx = file_to_tegra_ctx(file);
 	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
-	struct tegra_ctx *ctx = fh_to_tegra_ctx(priv);
 	const struct tegra_coded_fmt_desc *coded_desc;
 	unsigned int i;
 
@@ -571,7 +571,7 @@ static int tegra_try_decoded_fmt(struct file *file, void *priv,
 static int tegra_s_decoded_fmt(struct file *file, void *priv,
 			       struct v4l2_format *f)
 {
-	struct tegra_ctx *ctx = fh_to_tegra_ctx(priv);
+	struct tegra_ctx *ctx = file_to_tegra_ctx(file);
 	struct vb2_queue *vq;
 	int err;
 
@@ -593,7 +593,7 @@ static int tegra_s_decoded_fmt(struct file *file, void *priv,
 static int tegra_enum_coded_fmt(struct file *file, void *priv,
 				struct v4l2_fmtdesc *f)
 {
-	struct tegra_ctx *ctx = fh_to_tegra_ctx(priv);
+	struct tegra_ctx *ctx = file_to_tegra_ctx(file);
 	const struct tegra_vde_soc *soc = ctx->vde->soc;
 
 	if (f->index >= soc->num_coded_fmts)
@@ -607,7 +607,7 @@ static int tegra_enum_coded_fmt(struct file *file, void *priv,
 static int tegra_g_coded_fmt(struct file *file, void *priv,
 			     struct v4l2_format *f)
 {
-	struct tegra_ctx *ctx = fh_to_tegra_ctx(priv);
+	struct tegra_ctx *ctx = file_to_tegra_ctx(file);
 
 	*f = ctx->coded_fmt;
 	return 0;
@@ -631,7 +631,7 @@ static int tegra_try_coded_fmt(struct file *file, void *priv,
 			       struct v4l2_format *f)
 {
 	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
-	struct tegra_ctx *ctx = fh_to_tegra_ctx(priv);
+	struct tegra_ctx *ctx = file_to_tegra_ctx(file);
 	const struct tegra_vde_soc *soc = ctx->vde->soc;
 	int size = pix_mp->plane_fmt[0].sizeimage;
 	const struct tegra_coded_fmt_desc *desc;
@@ -656,7 +656,7 @@ static int tegra_try_coded_fmt(struct file *file, void *priv,
 static int tegra_s_coded_fmt(struct file *file, void *priv,
 			     struct v4l2_format *f)
 {
-	struct tegra_ctx *ctx = fh_to_tegra_ctx(priv);
+	struct tegra_ctx *ctx = file_to_tegra_ctx(file);
 	struct v4l2_m2m_ctx *m2m_ctx = ctx->fh.m2m_ctx;
 	const struct tegra_coded_fmt_desc *desc;
 	struct vb2_queue *peer_vq, *vq;
@@ -718,7 +718,7 @@ static int tegra_s_coded_fmt(struct file *file, void *priv,
 static int tegra_enum_framesizes(struct file *file, void *priv,
 				 struct v4l2_frmsizeenum *fsize)
 {
-	struct tegra_ctx *ctx = fh_to_tegra_ctx(priv);
+	struct tegra_ctx *ctx = file_to_tegra_ctx(file);
 	const struct tegra_coded_fmt_desc *fmt;
 
 	if (fsize->index)
@@ -852,8 +852,8 @@ static int tegra_open(struct file *file)
 
 static int tegra_release(struct file *file)
 {
+	struct tegra_ctx *ctx = file_to_tegra_ctx(file);
 	struct v4l2_fh *fh = file_to_v4l2_fh(file);
-	struct tegra_ctx *ctx = fh_to_tegra_ctx(fh);
 	struct tegra_vde *vde = ctx->vde;
 
 	v4l2_fh_del(fh, file);

-- 
2.49.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
