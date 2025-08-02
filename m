Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA0AB18EEB
	for <lists+mjpeg-users@lfdr.de>; Sat,  2 Aug 2025 15:55:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:To:In-Reply-To:References:Message-Id:MIME-Version:Date:From:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yt7WzJowkUMgee57+QZMGqRcCPo3OreLege5TpqrvHU=; b=jwotsPte3Q9ALpEl9tGCaorgnq
	n3IHwdj9VhvDjCom6m7EfmDSY2bLo1sSS0y5QaXicUwQfIcuBJk9JQrqqqCv/JN3kBjBxJU1MxXcv
	ovAP16Iwm+a0Xq+Tb/CrnRU3sS6yMXYSMOhkXdnvxjNbnJnbcai4hw7nta8wIFj64NNA=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1uiCht-0006ch-Lv;
	Sat, 02 Aug 2025 13:55:29 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacopo.mondi@ideasonboard.com>) id 1ui8jX-0005Uv-Qf
 for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:40:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xFNz2teqWNbC24EKZ0MlPXyETNe7XnG3XkYxl8CzFCM=; b=ZJHBCVaW1VZwN3affDTpNYkMt4
 09DtK/PiyMw+HtnTLy5kwIRDJXSVAjK5EE2/SZcXdooB9fR5RHeC5+PuEIc2yKbfrf5u7R91pp69l
 JG3JA1xuGxX2Kauyco8rWuBamPQ1Q8Gp8cbtU2VFeT2wJ49/irUY5OkwOP+/Nn2fXM18=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xFNz2teqWNbC24EKZ0MlPXyETNe7XnG3XkYxl8CzFCM=; b=Szx7vgC3mnPJ5DWyuQcDYRzp+/
 vWX7EDtryExDZ0c3mFhBcJoKLlctc7MHWJTUoxNu66tYPmKgSR5dWcTI3PkYI69bf8833Ltv+cCYe
 ne/cy6ZRV4A9AVLfQ6MdlZ+i4HU3d/FjoisMWrbjHngLj8UTlQExVzHzGg1BrIVLlMoc=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ui8jX-0005i8-TB for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:40:56 +0000
Received: from [192.168.0.172] (mob-5-90-138-121.net.vodafone.it
 [5.90.138.121])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 645743C5B;
 Sat,  2 Aug 2025 11:27:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1754126876;
 bh=TlJ3vfBE6eOXaSzRlSNwTu3lbTFE43IxxanDcdfmWg0=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=duA3dJ50CGqSubEiUb6tH6brol9dIsXMNSvO5O1wlKHkbM+t1cYXYoYHvBjqEVQAU
 6T1vr8defZLDQwNlsGvBZefSOJNBplJQwBGAtvnWmJFpJVKgGIuG4A95kPSRxfhFj0
 VVyGPA3wQV5hmg0owRykgfvRnsuwd0UOntPRaAk0=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Sat, 02 Aug 2025 11:22:53 +0200
MIME-Version: 1.0
Message-Id: <20250802-media-private-data-v1-31-eb140ddd6a9d@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=7087;
 i=jacopo.mondi@ideasonboard.com; h=from:subject:message-id;
 bh=TlJ3vfBE6eOXaSzRlSNwTu3lbTFE43IxxanDcdfmWg0=;
 b=owEBbQKS/ZANAwAKAXI0Bo8WoVY8AcsmYgBojdj7+KFlHPr1a0isCkNZoxK5D1IytunS6QznA
 Xx0PkUP/LeJAjMEAAEKAB0WIQS1xD1IgJogio9YOMByNAaPFqFWPAUCaI3Y+wAKCRByNAaPFqFW
 PMEgD/4oWPtUHoRU6cbURgatIsy/ggO5IP5Eby7JaGzgNGqFvbfVZBfBsvDvSk0XId2Yf6AKLaS
 +FnRBa487AwS51rHE8fKzm3XDGnBJoVM4HfBTvt7MRRtyjJtWkwz9n6drkQCgqwHre/wM1QeZ7g
 CKdpnv3dwheDBseF0afNkwkXfaSuK5Zxhv3bQDQjEmA+LcxstpnzmxIrDVGnjzIx2ny3t1jXc5d
 iWlUbuGhe76FyZFlBx1AwZxWRWGDXCdZWYPgaSJl4uK2nyOufJh+11XC3vPJ1ZOJiEd+MU3Kwa9
 uqKFs4IJYj5LqufRjjiFOJI2vh8LGRztTEiMrIZtpBAIYFffQeJvrqX/OYHA62UPzzhHZNOcNQn
 ihlqj30ly755JApJzOsKzNqHKR8R5O+L6btO4Os2yfBAHOc8hRP7ixaXaizgcAyUiTzH9h2qoBO
 P5vnAw3fGKJzlvn0KLjeBwFS5Ns/r3FlUap2KSGwjVPs6IWAn7xuSwiDhbHpvhDRvcn/6yMyB4U
 Q+VLMIRK/oMhvdkTNeQ+c/w4rvt7rnFpwlVIoMHlmQST3eR+hUSY6reLy4f2bShB6sCRz2CFyDC
 Jz5Z1jNqk3XX477veKLSaJth6f34LbD8yLZ9w5wn/6+xHIh56leHJqnoJ7OLe8iwOqOAIny23Ow
 KRl8vbIQCATC15A==
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
X-Headers-End: 1ui8jX-0005i8-TB
X-Mailman-Approved-At: Sat, 02 Aug 2025 13:55:15 +0000
Subject: [Mjpeg-users] [PATCH 31/65] media: coda: Access v4l2_fh from file
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
 .../media/platform/chips-media/coda/coda-common.c  | 36 +++++++++++-----------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/media/platform/chips-media/coda/coda-common.c b/drivers/media/platform/chips-media/coda/coda-common.c
index a27d5a261a27fb78d4c7ca008146780698386333..a10576f702127ba6014799e7d3190c2785afd2a2 100644
--- a/drivers/media/platform/chips-media/coda/coda-common.c
+++ b/drivers/media/platform/chips-media/coda/coda-common.c
@@ -427,7 +427,7 @@ static struct vdoa_data *coda_get_vdoa_data(void)
 static int coda_querycap(struct file *file, void *priv,
 			 struct v4l2_capability *cap)
 {
-	struct coda_ctx *ctx = fh_to_ctx(priv);
+	struct coda_ctx *ctx = file_to_ctx(file);
 
 	strscpy(cap->driver, CODA_NAME, sizeof(cap->driver));
 	strscpy(cap->card, coda_product_name(ctx->dev->devtype->product),
@@ -447,7 +447,7 @@ static int coda_enum_fmt(struct file *file, void *priv,
 {
 	struct video_device *vdev = video_devdata(file);
 	const struct coda_video_device *cvd = to_coda_video_device(vdev);
-	struct coda_ctx *ctx = fh_to_ctx(priv);
+	struct coda_ctx *ctx = file_to_ctx(file);
 	const u32 *formats;
 
 	if (f->type == V4L2_BUF_TYPE_VIDEO_OUTPUT)
@@ -497,7 +497,7 @@ static int coda_g_fmt(struct file *file, void *priv,
 		      struct v4l2_format *f)
 {
 	struct coda_q_data *q_data;
-	struct coda_ctx *ctx = fh_to_ctx(priv);
+	struct coda_ctx *ctx = file_to_ctx(file);
 
 	q_data = get_q_data(ctx, f->type);
 	if (!q_data)
@@ -658,7 +658,7 @@ static int coda_try_fmt(struct coda_ctx *ctx, const struct coda_codec *codec,
 static int coda_try_fmt_vid_cap(struct file *file, void *priv,
 				struct v4l2_format *f)
 {
-	struct coda_ctx *ctx = fh_to_ctx(priv);
+	struct coda_ctx *ctx = file_to_ctx(file);
 	const struct coda_q_data *q_data_src;
 	const struct coda_codec *codec;
 	struct vb2_queue *src_vq;
@@ -764,7 +764,7 @@ static void coda_set_default_colorspace(struct v4l2_pix_format *fmt)
 static int coda_try_fmt_vid_out(struct file *file, void *priv,
 				struct v4l2_format *f)
 {
-	struct coda_ctx *ctx = fh_to_ctx(priv);
+	struct coda_ctx *ctx = file_to_ctx(file);
 	struct coda_dev *dev = ctx->dev;
 	const struct coda_q_data *q_data_dst;
 	const struct coda_codec *codec;
@@ -858,7 +858,7 @@ static int coda_s_fmt(struct coda_ctx *ctx, struct v4l2_format *f,
 static int coda_s_fmt_vid_cap(struct file *file, void *priv,
 			      struct v4l2_format *f)
 {
-	struct coda_ctx *ctx = fh_to_ctx(priv);
+	struct coda_ctx *ctx = file_to_ctx(file);
 	struct coda_q_data *q_data_src;
 	const struct coda_codec *codec;
 	struct v4l2_rect r;
@@ -910,7 +910,7 @@ static int coda_s_fmt_vid_cap(struct file *file, void *priv,
 static int coda_s_fmt_vid_out(struct file *file, void *priv,
 			      struct v4l2_format *f)
 {
-	struct coda_ctx *ctx = fh_to_ctx(priv);
+	struct coda_ctx *ctx = file_to_ctx(file);
 	const struct coda_codec *codec;
 	struct v4l2_format f_cap;
 	struct vb2_queue *dst_vq;
@@ -966,7 +966,7 @@ static int coda_s_fmt_vid_out(struct file *file, void *priv,
 static int coda_reqbufs(struct file *file, void *priv,
 			struct v4l2_requestbuffers *rb)
 {
-	struct coda_ctx *ctx = fh_to_ctx(priv);
+	struct coda_ctx *ctx = file_to_ctx(file);
 	int ret;
 
 	ret = v4l2_m2m_reqbufs(file, ctx->fh.m2m_ctx, rb);
@@ -986,7 +986,7 @@ static int coda_reqbufs(struct file *file, void *priv,
 static int coda_qbuf(struct file *file, void *priv,
 		     struct v4l2_buffer *buf)
 {
-	struct coda_ctx *ctx = fh_to_ctx(priv);
+	struct coda_ctx *ctx = file_to_ctx(file);
 
 	if (ctx->inst_type == CODA_INST_DECODER &&
 	    buf->type == V4L2_BUF_TYPE_VIDEO_OUTPUT)
@@ -997,7 +997,7 @@ static int coda_qbuf(struct file *file, void *priv,
 
 static int coda_dqbuf(struct file *file, void *priv, struct v4l2_buffer *buf)
 {
-	struct coda_ctx *ctx = fh_to_ctx(priv);
+	struct coda_ctx *ctx = file_to_ctx(file);
 	int ret;
 
 	ret = v4l2_m2m_dqbuf(file, ctx->fh.m2m_ctx, buf);
@@ -1025,7 +1025,7 @@ void coda_m2m_buf_done(struct coda_ctx *ctx, struct vb2_v4l2_buffer *buf,
 static int coda_g_selection(struct file *file, void *fh,
 			    struct v4l2_selection *s)
 {
-	struct coda_ctx *ctx = fh_to_ctx(fh);
+	struct coda_ctx *ctx = file_to_ctx(file);
 	struct coda_q_data *q_data;
 	struct v4l2_rect r, *rsel;
 
@@ -1071,7 +1071,7 @@ static int coda_g_selection(struct file *file, void *fh,
 static int coda_s_selection(struct file *file, void *fh,
 			    struct v4l2_selection *s)
 {
-	struct coda_ctx *ctx = fh_to_ctx(fh);
+	struct coda_ctx *ctx = file_to_ctx(file);
 	struct coda_q_data *q_data;
 
 	switch (s->target) {
@@ -1126,7 +1126,7 @@ static void coda_wake_up_capture_queue(struct coda_ctx *ctx)
 static int coda_encoder_cmd(struct file *file, void *fh,
 			    struct v4l2_encoder_cmd *ec)
 {
-	struct coda_ctx *ctx = fh_to_ctx(fh);
+	struct coda_ctx *ctx = file_to_ctx(file);
 	struct vb2_v4l2_buffer *buf;
 	int ret;
 
@@ -1207,7 +1207,7 @@ static bool coda_mark_last_dst_buf(struct coda_ctx *ctx)
 static int coda_decoder_cmd(struct file *file, void *fh,
 			    struct v4l2_decoder_cmd *dc)
 {
-	struct coda_ctx *ctx = fh_to_ctx(fh);
+	struct coda_ctx *ctx = file_to_ctx(file);
 	struct coda_dev *dev = ctx->dev;
 	struct vb2_v4l2_buffer *buf;
 	struct vb2_queue *dst_vq;
@@ -1286,7 +1286,7 @@ static int coda_decoder_cmd(struct file *file, void *fh,
 static int coda_enum_framesizes(struct file *file, void *fh,
 				struct v4l2_frmsizeenum *fsize)
 {
-	struct coda_ctx *ctx = fh_to_ctx(fh);
+	struct coda_ctx *ctx = file_to_ctx(file);
 	struct coda_q_data *q_data_dst;
 	const struct coda_codec *codec;
 
@@ -1319,7 +1319,7 @@ static int coda_enum_framesizes(struct file *file, void *fh,
 static int coda_enum_frameintervals(struct file *file, void *fh,
 				    struct v4l2_frmivalenum *f)
 {
-	struct coda_ctx *ctx = fh_to_ctx(fh);
+	struct coda_ctx *ctx = file_to_ctx(file);
 	struct coda_q_data *q_data;
 	const struct coda_codec *codec;
 
@@ -1358,7 +1358,7 @@ static int coda_enum_frameintervals(struct file *file, void *fh,
 
 static int coda_g_parm(struct file *file, void *fh, struct v4l2_streamparm *a)
 {
-	struct coda_ctx *ctx = fh_to_ctx(fh);
+	struct coda_ctx *ctx = file_to_ctx(file);
 	struct v4l2_fract *tpf;
 
 	if (a->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
@@ -1441,7 +1441,7 @@ static uint32_t coda_timeperframe_to_frate(struct v4l2_fract *timeperframe)
 
 static int coda_s_parm(struct file *file, void *fh, struct v4l2_streamparm *a)
 {
-	struct coda_ctx *ctx = fh_to_ctx(fh);
+	struct coda_ctx *ctx = file_to_ctx(file);
 	struct v4l2_fract *tpf;
 
 	if (a->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)

-- 
2.49.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
