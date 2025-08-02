Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C68CB18EE9
	for <lists+mjpeg-users@lfdr.de>; Sat,  2 Aug 2025 15:55:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:To:In-Reply-To:References:Message-Id:MIME-Version:Date:From:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hIezBxUTwaYcLKvMPPH0TA/34zN3uFWJVPGNUGQ7rZY=; b=JNjVc2L1lG1UNDXRH90V4D30wA
	/SDFY2B9w5RuPtnXtK6EO1fVBUTXhhKmpWn/7GvkPY5deRsAoGKdATfSYJLPfehvuy8WHVo80t4dE
	/RKsdS7Xcg49n4H1ZiVSxCnar3vPI1g5gensrg69zl7P1MJrOcKhKAOeAQRvEu2eKfmw=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1uiChs-0006bm-Ue;
	Sat, 02 Aug 2025 13:55:28 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacopo.mondi@ideasonboard.com>) id 1ui8jR-000160-Ga
 for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:40:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6EiAowMi8taw41epDYTzQ1GvOSih+RUmACOUotkg1UQ=; b=LB8gQyxTpPAXbPplgKnwxCFk3a
 RLvnYIdSytMdVkKdxYoFdFE28AHkn6ufZXY1bbEulaVWZdeXGYIaBSq5leXAtOEvK9gdmbUp50GPk
 OT/5wVrijvxISCb1p2BBLFY8KqM1g3hV3yul6dYCI/llzQ5uS8GLevrPlirDViVJnqKA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6EiAowMi8taw41epDYTzQ1GvOSih+RUmACOUotkg1UQ=; b=NvQsCkg0nV8c7z8zPW5sxDnYnj
 YijEKijz+ssQcCaqdhftDGyIKplGdXL8Otg2v0UcWs1o1N4Toxik6Tetk0iSbxFPY0RFNkaJPsyaR
 OhFpjLI8C/5Hycvt2X/yan2ZOMlQluxKP3AHnsfcJTo/A5Vdlys0NtYTha1+0SyOwnIM=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ui8jP-0005hW-QF for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:40:49 +0000
Received: from [192.168.0.172] (mob-5-90-138-121.net.vodafone.it
 [5.90.138.121])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 079D63EB0;
 Sat,  2 Aug 2025 11:30:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1754127073;
 bh=IirxBztmljSSgN2BVXB6cHuAJICj/kyqIr+6UJ76kV4=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=TmEtBzqdBLqoZluZmZs8RWZtWynh8NG+K6Ba1+EQhY2cVQPMXqrZZI/bLcmAR0I4/
 JHinrXd1/aSAMaplfSD+nTW92cFr9EAud1X6dQtjs6yp64g4C5UV1Y6sCRs19SnxRs
 jonF1sJjFPnx6LCJpUmOEXFbILHpJm0DWXiE5iHU=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Sat, 02 Aug 2025 11:23:12 +0200
MIME-Version: 1.0
Message-Id: <20250802-media-private-data-v1-50-eb140ddd6a9d@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=9860;
 i=jacopo.mondi@ideasonboard.com; h=from:subject:message-id;
 bh=IirxBztmljSSgN2BVXB6cHuAJICj/kyqIr+6UJ76kV4=;
 b=owEBbQKS/ZANAwAKAXI0Bo8WoVY8AcsmYgBojdj9WlUYBZnvtf2wlXVIHJUMp9jqezOCJZkEu
 ZnI1YN6t7OJAjMEAAEKAB0WIQS1xD1IgJogio9YOMByNAaPFqFWPAUCaI3Y/QAKCRByNAaPFqFW
 PNIKD/9gLwzi+0G2rYD3uhw/B90pgSgcO+CBQcWIi3EmM3D9Z5NL370hmM371eFP8iZ+KPoX2f0
 WNvQYpl+7zDqGikGkhpak7k0SmbxMaalX/OgFsHCx79mpOM06FBfqSDSDIA943JnuxIFpNn2ymB
 wF65SyOjgG0Vrp2l8HTSFSP1yugJr2jXchjFaqAwLd90RZx/qcJWBJ7H6Xzl4y8LfPDJIv1EfuJ
 QhQrrSrWgV3Ykci//zn8E1SVEnM0+D16nAXVGqI1Fm43/byjzJloxtHpzuwI1t9jKpgDWg79kNw
 VJvGq8STnkxwsw03Pr54zOR+AGKMpwu2WcEjnc76q2UX1lqOqAhGitu/HsStX4mMq8vCKEs+fC0
 MMkS3dqeBqqTemtbtodeIcWEIK2Xc6XAJe97Rj7WMwbGQncnUJgY12XhpkKKYNcyavDoNsMGEOP
 Q6eqUyYK1hFwo8/Cp0YvQWuknTsI5aznce/twxHwr+PdL3SWKa9mNtsplRx8YRFryUKkt6GVpCM
 BlziLQuxJgaPME2bQyq1e72z/X0RHeWzxSZhxXPA/Tk3i6YEcXxfa/v2hHjFnYmbnPgfHvY/8ca
 T3ICF5986+Vi7y/BaFmkldV4+Gs+luRI1xoHvEv9NEhaioZi6mtJOgg4XdXyObH6ALLGfS4602Y
 yx8stXWkxbGP4hQ==
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
X-Headers-End: 1ui8jP-0005hW-QF
X-Mailman-Approved-At: Sat, 02 Aug 2025 13:55:15 +0000
Subject: [Mjpeg-users] [PATCH 50/65] media: s5p-mfc: Access v4l2_fh from file
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
 .../media/platform/samsung/s5p-mfc/s5p_mfc_dec.c   | 22 ++++++++++----------
 .../media/platform/samsung/s5p-mfc/s5p_mfc_enc.c   | 24 +++++++++++-----------
 2 files changed, 23 insertions(+), 23 deletions(-)

diff --git a/drivers/media/platform/samsung/s5p-mfc/s5p_mfc_dec.c b/drivers/media/platform/samsung/s5p-mfc/s5p_mfc_dec.c
index 3efbc336790629425c2a71e9feee8f073db55790..6a2703fe7e8cc3104fbaa3c7405e67295e87db5d 100644
--- a/drivers/media/platform/samsung/s5p-mfc/s5p_mfc_dec.c
+++ b/drivers/media/platform/samsung/s5p-mfc/s5p_mfc_dec.c
@@ -345,7 +345,7 @@ static int vidioc_enum_fmt_vid_out(struct file *file, void *priv,
 /* Get format */
 static int vidioc_g_fmt(struct file *file, void *priv, struct v4l2_format *f)
 {
-	struct s5p_mfc_ctx *ctx = fh_to_ctx(priv);
+	struct s5p_mfc_ctx *ctx = file_to_ctx(file);
 	struct v4l2_pix_format_mplane *pix_mp;
 
 	mfc_debug_enter();
@@ -442,7 +442,7 @@ static int vidioc_try_fmt(struct file *file, void *priv, struct v4l2_format *f)
 static int vidioc_s_fmt(struct file *file, void *priv, struct v4l2_format *f)
 {
 	struct s5p_mfc_dev *dev = video_drvdata(file);
-	struct s5p_mfc_ctx *ctx = fh_to_ctx(priv);
+	struct s5p_mfc_ctx *ctx = file_to_ctx(file);
 	int ret = 0;
 	struct v4l2_pix_format_mplane *pix_mp;
 	const struct s5p_mfc_buf_size *buf_size = dev->variant->buf_size;
@@ -598,7 +598,7 @@ static int vidioc_reqbufs(struct file *file, void *priv,
 					  struct v4l2_requestbuffers *reqbufs)
 {
 	struct s5p_mfc_dev *dev = video_drvdata(file);
-	struct s5p_mfc_ctx *ctx = fh_to_ctx(priv);
+	struct s5p_mfc_ctx *ctx = file_to_ctx(file);
 
 	if (reqbufs->memory != V4L2_MEMORY_MMAP) {
 		mfc_debug(2, "Only V4L2_MEMORY_MMAP is supported\n");
@@ -619,7 +619,7 @@ static int vidioc_reqbufs(struct file *file, void *priv,
 static int vidioc_querybuf(struct file *file, void *priv,
 						   struct v4l2_buffer *buf)
 {
-	struct s5p_mfc_ctx *ctx = fh_to_ctx(priv);
+	struct s5p_mfc_ctx *ctx = file_to_ctx(file);
 	int ret;
 	int i;
 
@@ -647,7 +647,7 @@ static int vidioc_querybuf(struct file *file, void *priv,
 /* Queue a buffer */
 static int vidioc_qbuf(struct file *file, void *priv, struct v4l2_buffer *buf)
 {
-	struct s5p_mfc_ctx *ctx = fh_to_ctx(priv);
+	struct s5p_mfc_ctx *ctx = file_to_ctx(file);
 
 	if (ctx->state == MFCINST_ERROR) {
 		mfc_err("Call on QBUF after unrecoverable error\n");
@@ -666,7 +666,7 @@ static int vidioc_dqbuf(struct file *file, void *priv, struct v4l2_buffer *buf)
 	const struct v4l2_event ev = {
 		.type = V4L2_EVENT_EOS
 	};
-	struct s5p_mfc_ctx *ctx = fh_to_ctx(priv);
+	struct s5p_mfc_ctx *ctx = file_to_ctx(file);
 	int ret;
 
 	if (ctx->state == MFCINST_ERROR) {
@@ -695,7 +695,7 @@ static int vidioc_dqbuf(struct file *file, void *priv, struct v4l2_buffer *buf)
 static int vidioc_expbuf(struct file *file, void *priv,
 	struct v4l2_exportbuffer *eb)
 {
-	struct s5p_mfc_ctx *ctx = fh_to_ctx(priv);
+	struct s5p_mfc_ctx *ctx = file_to_ctx(file);
 
 	if (eb->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
 		return vb2_expbuf(&ctx->vq_src, eb);
@@ -708,7 +708,7 @@ static int vidioc_expbuf(struct file *file, void *priv,
 static int vidioc_streamon(struct file *file, void *priv,
 			   enum v4l2_buf_type type)
 {
-	struct s5p_mfc_ctx *ctx = fh_to_ctx(priv);
+	struct s5p_mfc_ctx *ctx = file_to_ctx(file);
 	int ret = -EINVAL;
 
 	mfc_debug_enter();
@@ -724,7 +724,7 @@ static int vidioc_streamon(struct file *file, void *priv,
 static int vidioc_streamoff(struct file *file, void *priv,
 			    enum v4l2_buf_type type)
 {
-	struct s5p_mfc_ctx *ctx = fh_to_ctx(priv);
+	struct s5p_mfc_ctx *ctx = file_to_ctx(file);
 
 	if (type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
 		return vb2_streamoff(&ctx->vq_src, type);
@@ -801,7 +801,7 @@ static const struct v4l2_ctrl_ops s5p_mfc_dec_ctrl_ops = {
 static int vidioc_g_selection(struct file *file, void *priv,
 			      struct v4l2_selection *s)
 {
-	struct s5p_mfc_ctx *ctx = fh_to_ctx(priv);
+	struct s5p_mfc_ctx *ctx = file_to_ctx(file);
 	struct s5p_mfc_dev *dev = ctx->dev;
 	u32 left, right, top, bottom;
 	u32 width, height;
@@ -856,7 +856,7 @@ static int vidioc_g_selection(struct file *file, void *priv,
 static int vidioc_decoder_cmd(struct file *file, void *priv,
 			      struct v4l2_decoder_cmd *cmd)
 {
-	struct s5p_mfc_ctx *ctx = fh_to_ctx(priv);
+	struct s5p_mfc_ctx *ctx = file_to_ctx(file);
 	struct s5p_mfc_dev *dev = ctx->dev;
 	struct s5p_mfc_buf *buf;
 	unsigned long flags;
diff --git a/drivers/media/platform/samsung/s5p-mfc/s5p_mfc_enc.c b/drivers/media/platform/samsung/s5p-mfc/s5p_mfc_enc.c
index 6c603dcd56649fcabe161173c64b9ea8bd055b93..c6787ccfaaa422a905dbb136d992f2d15b8e484f 100644
--- a/drivers/media/platform/samsung/s5p-mfc/s5p_mfc_enc.c
+++ b/drivers/media/platform/samsung/s5p-mfc/s5p_mfc_enc.c
@@ -1389,8 +1389,8 @@ static int vidioc_enum_fmt_vid_out(struct file *file, void *priv,
 
 static int vidioc_g_fmt(struct file *file, void *priv, struct v4l2_format *f)
 {
-	struct s5p_mfc_ctx *ctx = fh_to_ctx(priv);
 	struct v4l2_pix_format_mplane *pix_fmt_mp = &f->fmt.pix_mp;
+	struct s5p_mfc_ctx *ctx = file_to_ctx(file);
 
 	mfc_debug(2, "f->type = %d ctx->state = %d\n", f->type, ctx->state);
 	if (f->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE) {
@@ -1472,8 +1472,8 @@ static int vidioc_try_fmt(struct file *file, void *priv, struct v4l2_format *f)
 
 static int vidioc_s_fmt(struct file *file, void *priv, struct v4l2_format *f)
 {
+	struct s5p_mfc_ctx *ctx = file_to_ctx(file);
 	struct s5p_mfc_dev *dev = video_drvdata(file);
-	struct s5p_mfc_ctx *ctx = fh_to_ctx(priv);
 	struct v4l2_pix_format_mplane *pix_fmt_mp = &f->fmt.pix_mp;
 	int ret = 0;
 
@@ -1531,7 +1531,7 @@ static int vidioc_reqbufs(struct file *file, void *priv,
 					  struct v4l2_requestbuffers *reqbufs)
 {
 	struct s5p_mfc_dev *dev = video_drvdata(file);
-	struct s5p_mfc_ctx *ctx = fh_to_ctx(priv);
+	struct s5p_mfc_ctx *ctx = file_to_ctx(file);
 	int ret = 0;
 
 	/* if memory is not mmp or userptr or dmabuf return error */
@@ -1601,7 +1601,7 @@ static int vidioc_reqbufs(struct file *file, void *priv,
 static int vidioc_querybuf(struct file *file, void *priv,
 						   struct v4l2_buffer *buf)
 {
-	struct s5p_mfc_ctx *ctx = fh_to_ctx(priv);
+	struct s5p_mfc_ctx *ctx = file_to_ctx(file);
 	int ret = 0;
 
 	/* if memory is not mmp or userptr or dmabuf return error */
@@ -1636,7 +1636,7 @@ static int vidioc_querybuf(struct file *file, void *priv,
 /* Queue a buffer */
 static int vidioc_qbuf(struct file *file, void *priv, struct v4l2_buffer *buf)
 {
-	struct s5p_mfc_ctx *ctx = fh_to_ctx(priv);
+	struct s5p_mfc_ctx *ctx = file_to_ctx(file);
 
 	if (ctx->state == MFCINST_ERROR) {
 		mfc_err("Call on QBUF after unrecoverable error\n");
@@ -1657,10 +1657,10 @@ static int vidioc_qbuf(struct file *file, void *priv, struct v4l2_buffer *buf)
 /* Dequeue a buffer */
 static int vidioc_dqbuf(struct file *file, void *priv, struct v4l2_buffer *buf)
 {
+	struct s5p_mfc_ctx *ctx = file_to_ctx(file);
 	const struct v4l2_event ev = {
 		.type = V4L2_EVENT_EOS
 	};
-	struct s5p_mfc_ctx *ctx = fh_to_ctx(priv);
 	int ret;
 
 	if (ctx->state == MFCINST_ERROR) {
@@ -1685,7 +1685,7 @@ static int vidioc_dqbuf(struct file *file, void *priv, struct v4l2_buffer *buf)
 static int vidioc_expbuf(struct file *file, void *priv,
 	struct v4l2_exportbuffer *eb)
 {
-	struct s5p_mfc_ctx *ctx = fh_to_ctx(priv);
+	struct s5p_mfc_ctx *ctx = file_to_ctx(file);
 
 	if (eb->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
 		return vb2_expbuf(&ctx->vq_src, eb);
@@ -1698,7 +1698,7 @@ static int vidioc_expbuf(struct file *file, void *priv,
 static int vidioc_streamon(struct file *file, void *priv,
 			   enum v4l2_buf_type type)
 {
-	struct s5p_mfc_ctx *ctx = fh_to_ctx(priv);
+	struct s5p_mfc_ctx *ctx = file_to_ctx(file);
 
 	if (type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
 		return vb2_streamon(&ctx->vq_src, type);
@@ -1711,7 +1711,7 @@ static int vidioc_streamon(struct file *file, void *priv,
 static int vidioc_streamoff(struct file *file, void *priv,
 			    enum v4l2_buf_type type)
 {
-	struct s5p_mfc_ctx *ctx = fh_to_ctx(priv);
+	struct s5p_mfc_ctx *ctx = file_to_ctx(file);
 
 	if (type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
 		return vb2_streamoff(&ctx->vq_src, type);
@@ -2284,7 +2284,7 @@ static const struct v4l2_ctrl_ops s5p_mfc_enc_ctrl_ops = {
 static int vidioc_s_parm(struct file *file, void *priv,
 			 struct v4l2_streamparm *a)
 {
-	struct s5p_mfc_ctx *ctx = fh_to_ctx(priv);
+	struct s5p_mfc_ctx *ctx = file_to_ctx(file);
 
 	if (a->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) {
 		ctx->enc_params.rc_framerate_num =
@@ -2301,7 +2301,7 @@ static int vidioc_s_parm(struct file *file, void *priv,
 static int vidioc_g_parm(struct file *file, void *priv,
 			 struct v4l2_streamparm *a)
 {
-	struct s5p_mfc_ctx *ctx = fh_to_ctx(priv);
+	struct s5p_mfc_ctx *ctx = file_to_ctx(file);
 
 	if (a->type == V4L2_BUF_TYPE_VIDEO_OUTPUT) {
 		a->parm.output.timeperframe.denominator =
@@ -2318,7 +2318,7 @@ static int vidioc_g_parm(struct file *file, void *priv,
 static int vidioc_encoder_cmd(struct file *file, void *priv,
 			      struct v4l2_encoder_cmd *cmd)
 {
-	struct s5p_mfc_ctx *ctx = fh_to_ctx(priv);
+	struct s5p_mfc_ctx *ctx = file_to_ctx(file);
 	struct s5p_mfc_dev *dev = ctx->dev;
 	struct s5p_mfc_buf *buf;
 	unsigned long flags;

-- 
2.49.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
