Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D995AB18F04
	for <lists+mjpeg-users@lfdr.de>; Sat,  2 Aug 2025 15:55:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:To:In-Reply-To:References:Message-Id:MIME-Version:Date:From:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zD1sTouznERyBPioHofiKDg6SYlD773zS3DMKDo8jqQ=; b=Bqg59Ag5aX0wNGFzz1NBED3BS0
	Xe9uuqjs5T0zll1n3wUQgqoxWLuV/uS1KuMKThTn3YfPxO5gBE5m4fi4Sr05VVF77x5P58z4Ig2Vh
	igejthWU39Fq1e2mK/5dJ4veMvcHBWaeGzu3ot6aP6mIydXOt0eQJOxQfYVwyrFHvxqY=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1uiCi2-0006rR-NR;
	Sat, 02 Aug 2025 13:55:38 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacopo.mondi@ideasonboard.com>) id 1ui8qp-0001Gp-Aq
 for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:48:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=v6dh/BkV6hq79//dShsWOo7otsY94FPVhizsQ0/X1mc=; b=Yr+mFeflUVSJnvgVWKsTM7QEHc
 MF2ocC/Q/35XUBPgjb+jHLainHqKfQZTe8xl9KS3e5CFSqBxyvD8XwpynSbr/1RuwkdTj/6jkR+IM
 Vpd/PjlV3O3MB/gvC672f0qzhmAbeluTChNtbx384jdz+wiJzMI6gceahGAJqueQNza8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=v6dh/BkV6hq79//dShsWOo7otsY94FPVhizsQ0/X1mc=; b=MXcm2/95NUSmF/5Aeg1m+t9crV
 NuWiBXIhdSDmYNhZXMGBX7qnkhdTlv1xOczj2pgbFmrQV5NuGBEgtrgzIjH+40nN6e0eyhoEtseCF
 CS06dlpCr49mPSlPSGsWoz3/T+HlrOFyml8IWTuMXM+AdphwBL9oE7HYiByyE/qjH2bc=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ui8qo-0006PK-N8 for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:48:27 +0000
Received: from [192.168.0.172] (mob-5-90-138-121.net.vodafone.it
 [5.90.138.121])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 50061725;
 Sat,  2 Aug 2025 11:22:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1754126580;
 bh=K8dDCPVG1nkY6ic4h3FKwjvVzHTUjGzd1GG1sYDnoFA=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=g8cVRCST89q8XYffSHxu1w8tRa9g2WsNGAItA5r8tH7V/DbNblJ6jc6QvVyhgL8GB
 eKkqv3HG0YcDlIfWs/kNrYjBUoXt/w9rLBJirlDl0OvkFCg0Gk7qcnY3MaZSyFiphj
 CNoEtAx/JHqYMJ4o7RcXRdqE15IMUkcyVG52VhQU=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Sat, 02 Aug 2025 11:22:24 +0200
MIME-Version: 1.0
Message-Id: <20250802-media-private-data-v1-2-eb140ddd6a9d@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4825;
 i=jacopo.mondi@ideasonboard.com; h=from:subject:message-id;
 bh=uq3V2iL6jCR+ekaMlo1+qk6d+aP7IFCv3nHFixV02JI=;
 b=owEBbQKS/ZANAwAKAXI0Bo8WoVY8AcsmYgBojdj30OFbTXcU0cO/acV0mQKqOVtG4JiSgWCWT
 g8NFanNpkOJAjMEAAEKAB0WIQS1xD1IgJogio9YOMByNAaPFqFWPAUCaI3Y9wAKCRByNAaPFqFW
 PHCED/4vrTjKJYdLSEILTxmBH365qg3YmPx3URIJqZdf8km+nCKwi18Ewh7L8dvElXpn+jZJHMK
 iKF6lVmZ0nmIlIRlnH0Se6dmxhUSypRm6TuyQrsNID25XEkTcjN53a2+mk/NPFIGywdmIT7RxA0
 bhfdBlfEJs53trejkMhGwCeigYz4KCwv9Jp+4R6xKuTII7IzCGi4ChSkK84RyAQYIYJrePAGgWY
 DNIXleinVIw/43K55GUapypW1rzzVB57Hf8PJCHKazRfD5Gxqmz51P8817+/bcabIMfp6b+wk0w
 /xgE23R2n45by1ZqRZPJgg3RSjyYhQ+SZEIojBzMxHsjz7ER/Uqp74kbaBK46lUromE5rNJKVIi
 8fkdjLbmGlxHZIVaJG+mc83ADCfH572DS8t0knqjYlieQGK8F2wak6rvN/voGvF7UM3oZpjURwb
 Le9qpnU9LdYcS5WGJ2/ZjuWgjv6j4DwdSmxEHhtqX4Y21ggO8HrL6lWdhdvk943omp9GFgDPGWt
 qv5A5St0/fo6JY1FcZYd/AV2SbfJoaCb6aaaFuo/Ore1XBRkOSzj3IFDFCDa0wlOGaAqVsM1GNr
 /oaORYpASWFGcUWz2IBIjnFDw+QsEUtkzz9n5Hf3Yw+ojHMdNjUAQa2UzZxJhtL9XlP9gjqDZ/Q
 1WxsRYX5yD/TxHA==
X-Developer-Key: i=jacopo.mondi@ideasonboard.com; a=openpgp;
 fpr=72392EDC88144A65C701EA9BA5826A2587AD026B
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
 Most V4L2 drivers store the v4l2_fh pointer in file->private_data. The
 e5010-jpeg-enc
 driver instead stores the pointer to the driver-specific structure that embeds
 the v4l2_fh. Switch to storing the [...] 
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
X-Headers-End: 1ui8qo-0006PK-N8
X-Mailman-Approved-At: Sat, 02 Aug 2025 13:55:16 +0000
Subject: [Mjpeg-users] [PATCH 02/65] media: imagination: Store v4l2_fh
 pointer in file->private_data
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
e5010-jpeg-enc driver instead stores the pointer to the driver-specific
structure that embeds the v4l2_fh. Switch to storing the v4l2_fh pointer
itself to standardize behaviour across drivers. This also prepares for
future refactoring that depends on v4l2_fh being stored in private_data.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
 drivers/media/platform/imagination/e5010-jpeg-enc.c | 18 +++++++++---------
 drivers/media/platform/imagination/e5010-jpeg-enc.h |  5 +++++
 2 files changed, 14 insertions(+), 9 deletions(-)

diff --git a/drivers/media/platform/imagination/e5010-jpeg-enc.c b/drivers/media/platform/imagination/e5010-jpeg-enc.c
index ae868d9f73e13fdac747ef603e08ea13cd66d3a6..295461325862fb2bcac755cf815955955b37e6f0 100644
--- a/drivers/media/platform/imagination/e5010-jpeg-enc.c
+++ b/drivers/media/platform/imagination/e5010-jpeg-enc.c
@@ -253,7 +253,7 @@ static int e5010_enum_fmt(struct file *file, void *priv, struct v4l2_fmtdesc *f)
 {
 	int i, index = 0;
 	struct e5010_fmt *fmt = NULL;
-	struct e5010_context *ctx = file->private_data;
+	struct e5010_context *ctx = to_e5010_context(file);
 
 	if (!V4L2_TYPE_IS_MULTIPLANAR(f->type)) {
 		v4l2_err(&ctx->e5010->v4l2_dev, "ENUMFMT with Invalid type: %d\n", f->type);
@@ -279,7 +279,7 @@ static int e5010_enum_fmt(struct file *file, void *priv, struct v4l2_fmtdesc *f)
 
 static int e5010_g_fmt(struct file *file, void *priv, struct v4l2_format *f)
 {
-	struct e5010_context *ctx = file->private_data;
+	struct e5010_context *ctx = to_e5010_context(file);
 	struct e5010_q_data *queue;
 	int i;
 	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
@@ -380,14 +380,14 @@ static int e5010_jpeg_try_fmt(struct v4l2_format *f, struct e5010_context *ctx)
 
 static int e5010_try_fmt(struct file *file, void *priv, struct v4l2_format *f)
 {
-	struct e5010_context *ctx = file->private_data;
+	struct e5010_context *ctx = to_e5010_context(file);
 
 	return e5010_jpeg_try_fmt(f, ctx);
 }
 
 static int e5010_s_fmt(struct file *file, void *priv, struct v4l2_format *f)
 {
-	struct e5010_context *ctx = file->private_data;
+	struct e5010_context *ctx = to_e5010_context(file);
 	struct vb2_queue *vq;
 	int ret = 0, i = 0;
 	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
@@ -462,7 +462,7 @@ static int e5010_enum_framesizes(struct file *file, void *priv, struct v4l2_frms
 
 static int e5010_g_selection(struct file *file, void *fh, struct v4l2_selection *s)
 {
-	struct e5010_context *ctx = file->private_data;
+	struct e5010_context *ctx = to_e5010_context(file);
 	struct e5010_q_data *queue;
 
 	if (s->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
@@ -490,7 +490,7 @@ static int e5010_g_selection(struct file *file, void *fh, struct v4l2_selection
 
 static int e5010_s_selection(struct file *file, void *fh, struct v4l2_selection *s)
 {
-	struct e5010_context *ctx = file->private_data;
+	struct e5010_context *ctx = to_e5010_context(file);
 	struct e5010_q_data *queue;
 	struct vb2_queue *vq;
 	struct v4l2_rect base_rect;
@@ -742,7 +742,7 @@ static int e5010_open(struct file *file)
 	}
 
 	v4l2_fh_init(&ctx->fh, vdev);
-	file->private_data = ctx;
+	file->private_data = &ctx->fh;
 	v4l2_fh_add(&ctx->fh);
 
 	ctx->e5010 = e5010;
@@ -781,7 +781,7 @@ static int e5010_open(struct file *file)
 static int e5010_release(struct file *file)
 {
 	struct e5010_dev *e5010 = video_drvdata(file);
-	struct e5010_context *ctx = file->private_data;
+	struct e5010_context *ctx = to_e5010_context(file);
 
 	dprintk(e5010, 1, "Releasing instance: 0x%p, m2m_ctx: 0x%p\n", ctx, ctx->fh.m2m_ctx);
 	mutex_lock(&e5010->mutex);
@@ -1262,7 +1262,7 @@ static void e5010_buf_queue(struct vb2_buffer *vb)
 static int e5010_encoder_cmd(struct file *file, void *priv,
 			     struct v4l2_encoder_cmd *cmd)
 {
-	struct e5010_context *ctx = file->private_data;
+	struct e5010_context *ctx = to_e5010_context(file);
 	int ret;
 	struct vb2_queue *cap_vq;
 
diff --git a/drivers/media/platform/imagination/e5010-jpeg-enc.h b/drivers/media/platform/imagination/e5010-jpeg-enc.h
index 71f49ead68980c83fd81b19fd63d9abd47abef64..eefaf60489d3fba518acd12709f2e4831686620b 100644
--- a/drivers/media/platform/imagination/e5010-jpeg-enc.h
+++ b/drivers/media/platform/imagination/e5010-jpeg-enc.h
@@ -120,6 +120,11 @@ struct e5010_context {
 	u8				chroma_qp[QP_TABLE_SIZE];
 };
 
+static inline struct e5010_context *to_e5010_context(struct file *filp)
+{
+	return container_of(filp->private_data, struct e5010_context, fh);
+}
+
 /*
  * Buffer structure
  * Contains info for all buffers

-- 
2.49.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
