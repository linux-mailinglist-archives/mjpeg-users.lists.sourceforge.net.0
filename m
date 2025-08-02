Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DCE1B18EF6
	for <lists+mjpeg-users@lfdr.de>; Sat,  2 Aug 2025 15:55:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:To:In-Reply-To:References:Message-Id:MIME-Version:Date:From:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x0TisHV5Frx3mOtEHlJ3GJo1JnsQisr3gBj5YfzsYIw=; b=SWHWCaI75rwg4cwnxbM8HMfL2D
	EVbJcOUX+rx7WYQ97RyR3vpkoO5eWRzY29l/O48y+F+HH5+tRqs0HmmlTy7nyKZNWRVzJ+St00PI/
	oovGvYJMM7u4XUX+mjdqRSwTejrofsIAs7gMUS8EHrfQhxjZbmkhi/ViRT1hXV1UhvLY=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1uiChx-0006iJ-Dz;
	Sat, 02 Aug 2025 13:55:33 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacopo.mondi@ideasonboard.com>) id 1ui8ma-0005l1-TG
 for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:44:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eeHyoAFwMOwYj+W45aZMbXMdoDxxHnL3rPpJzjMItaQ=; b=luRM2A20hd1o7bbtpMJWubGGY1
 Mf0HfFrq5WCcqbAgJJG7qGboI8my1mKbInJnUU1T0D6boiieJPcNE7ptM7u8X9tF4VqszjhiI6FcM
 0YhXCmxl9H2f2XZxcDxM64+1+q+VdrfmTFhsEoHwB0z18Gts1ZIWplolgje6ffreLg6M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eeHyoAFwMOwYj+W45aZMbXMdoDxxHnL3rPpJzjMItaQ=; b=J2nQHLhJBM4tlpiqA4zkv1fCMz
 hNcAIA1P9PD0DU2/58SRlFUeapnV11EU3r6/d3TcF0pftIqdDSUqb21TPvHIXJ/FoNbUqJCw0BYvw
 cQDoWLCnYFEXFnimdO1D9jqvMXxUGYj001mo5daIWgd3egUBIdiI5JK44SByPbqA/tf8=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ui8ma-0005vE-Gd for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:44:05 +0000
Received: from [192.168.0.172] (mob-5-90-138-121.net.vodafone.it
 [5.90.138.121])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 730FA4334;
 Sat,  2 Aug 2025 11:32:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1754127134;
 bh=66BEglrdeD2FnJRtm4kSgXnN6HNo5xlbirCCT8rWe5c=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=p5R3K+CeygVp1bnLJzVyIkEJ5l/7ByRskXoCAOaCf3ToWRKzFMbhQXQYpLw6nhHEa
 FFMFIGTMmqDaVfCCeQNnIPyfyBVXEpak3bs4wQI1Vj6+oQvfkvg6kSNo1BWYeTIb6x
 IaNd+uNpROhN3ds5QUTW0OfEJilYLfuyEFzGg+cs=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Sat, 02 Aug 2025 11:23:17 +0200
MIME-Version: 1.0
Message-Id: <20250802-media-private-data-v1-55-eb140ddd6a9d@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=5850;
 i=jacopo.mondi@ideasonboard.com; h=from:subject:message-id;
 bh=66BEglrdeD2FnJRtm4kSgXnN6HNo5xlbirCCT8rWe5c=;
 b=owEBbQKS/ZANAwAKAXI0Bo8WoVY8AcsmYgBojdj+uQ6AVm7vuiTX095tLRMegUIn5F62kjDrQ
 0psRthrsRWJAjMEAAEKAB0WIQS1xD1IgJogio9YOMByNAaPFqFWPAUCaI3Y/gAKCRByNAaPFqFW
 PHIiD/4uYOsKvXm2CPF0UtRBkVwC9+EC4KyRliMfJRXvQmbWJkIh7DYXOESnZ4bBTa8c3UEZDk4
 fjo44DHrjN7BD+1T3lRuHTQVA95aQyol1CygcjtqDw9uInfUeNmKfaHpTBlVtV2/RLdafLyKR09
 g2Yx/R5hn9YMAdNI+jFWGTQf/AYD/xHm2kJnIhlSLvV7FyY/fzKOcuEB5j2t4Om3l2OHeSp4EU6
 Q+KWZGIHhdgucc1721ryoG34r1nIP3BM2fe72cGri7jjkmA0wi3T9lEsLVv6+9LlX44JY56gzkU
 U1paLPSLsLgXpzDIGT9vv9ZaGEFuA0ZtB/2yRm/8CjX3mfN6cKH9FpJjOxwLvSqva/yl1KBCF+r
 +YsqNA0ii2zHxXje8LUuxGiHVglCrpYeX+TeQfsKA0/+gdHQZILwKUx8rPRZ5nTBKi2xz0AZ7Di
 QFeqJ+7yYr9VU4Dff5V4PrmbEE8slWWFfpNdddD+WenrrrP7ol8VG+uOynol37PqJ4SsXoBRx1R
 mo/hAXX2A3Zcll+A0qXPwSskXV7rmPeOWUNTblTB4B1uaCgS0/eCzkBbuCdYLjQtUlnOky0ryWc
 ZWvkhrmk/NaRbd+2VrJI1ccq0/eWhrhe1WN0mQtzSAq1DT5C8vNb4TRENSMHWTjGQvkI8MPRwlJ
 PAyInkkQkAcd1DQ==
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
X-Headers-End: 1ui8ma-0005vE-Gd
X-Mailman-Approved-At: Sat, 02 Aug 2025 13:55:15 +0000
Subject: [Mjpeg-users] [PATCH 55/65] media: omap3isp: Access v4l2_fh from
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

While at it remove the only left user of to_isp_video_fh() and remove
the macro completely.

Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
 drivers/media/platform/ti/omap3isp/ispvideo.c | 22 +++++++++++-----------
 drivers/media/platform/ti/omap3isp/ispvideo.h |  2 --
 2 files changed, 11 insertions(+), 13 deletions(-)

diff --git a/drivers/media/platform/ti/omap3isp/ispvideo.c b/drivers/media/platform/ti/omap3isp/ispvideo.c
index 2c0008444b7e2b532c9af061760e7399cdf3e45d..0e7f0bf2b3463b7ef6678f7bd836a952e0b707a7 100644
--- a/drivers/media/platform/ti/omap3isp/ispvideo.c
+++ b/drivers/media/platform/ti/omap3isp/ispvideo.c
@@ -657,7 +657,7 @@ isp_video_querycap(struct file *file, void *fh, struct v4l2_capability *cap)
 static int
 isp_video_get_format(struct file *file, void *fh, struct v4l2_format *format)
 {
-	struct isp_video_fh *vfh = to_isp_video_fh(fh);
+	struct isp_video_fh *vfh = file_to_isp_video_fh(file);
 	struct isp_video *video = video_drvdata(file);
 
 	if (format->type != video->type)
@@ -673,7 +673,7 @@ isp_video_get_format(struct file *file, void *fh, struct v4l2_format *format)
 static int
 isp_video_set_format(struct file *file, void *fh, struct v4l2_format *format)
 {
-	struct isp_video_fh *vfh = to_isp_video_fh(fh);
+	struct isp_video_fh *vfh = file_to_isp_video_fh(file);
 	struct isp_video *video = video_drvdata(file);
 	struct v4l2_mbus_framefmt fmt;
 
@@ -858,7 +858,7 @@ isp_video_set_selection(struct file *file, void *fh, struct v4l2_selection *sel)
 static int
 isp_video_get_param(struct file *file, void *fh, struct v4l2_streamparm *a)
 {
-	struct isp_video_fh *vfh = to_isp_video_fh(fh);
+	struct isp_video_fh *vfh = file_to_isp_video_fh(file);
 	struct isp_video *video = video_drvdata(file);
 
 	if (video->type != V4L2_BUF_TYPE_VIDEO_OUTPUT ||
@@ -876,7 +876,7 @@ isp_video_get_param(struct file *file, void *fh, struct v4l2_streamparm *a)
 static int
 isp_video_set_param(struct file *file, void *fh, struct v4l2_streamparm *a)
 {
-	struct isp_video_fh *vfh = to_isp_video_fh(fh);
+	struct isp_video_fh *vfh = file_to_isp_video_fh(file);
 	struct isp_video *video = video_drvdata(file);
 
 	if (video->type != V4L2_BUF_TYPE_VIDEO_OUTPUT ||
@@ -894,7 +894,7 @@ isp_video_set_param(struct file *file, void *fh, struct v4l2_streamparm *a)
 static int
 isp_video_reqbufs(struct file *file, void *fh, struct v4l2_requestbuffers *rb)
 {
-	struct isp_video_fh *vfh = to_isp_video_fh(fh);
+	struct isp_video_fh *vfh = file_to_isp_video_fh(file);
 	struct isp_video *video = video_drvdata(file);
 	int ret;
 
@@ -908,7 +908,7 @@ isp_video_reqbufs(struct file *file, void *fh, struct v4l2_requestbuffers *rb)
 static int
 isp_video_querybuf(struct file *file, void *fh, struct v4l2_buffer *b)
 {
-	struct isp_video_fh *vfh = to_isp_video_fh(fh);
+	struct isp_video_fh *vfh = file_to_isp_video_fh(file);
 	struct isp_video *video = video_drvdata(file);
 	int ret;
 
@@ -922,7 +922,7 @@ isp_video_querybuf(struct file *file, void *fh, struct v4l2_buffer *b)
 static int
 isp_video_qbuf(struct file *file, void *fh, struct v4l2_buffer *b)
 {
-	struct isp_video_fh *vfh = to_isp_video_fh(fh);
+	struct isp_video_fh *vfh = file_to_isp_video_fh(file);
 	struct isp_video *video = video_drvdata(file);
 	int ret;
 
@@ -936,7 +936,7 @@ isp_video_qbuf(struct file *file, void *fh, struct v4l2_buffer *b)
 static int
 isp_video_dqbuf(struct file *file, void *fh, struct v4l2_buffer *b)
 {
-	struct isp_video_fh *vfh = to_isp_video_fh(fh);
+	struct isp_video_fh *vfh = file_to_isp_video_fh(file);
 	struct isp_video *video = video_drvdata(file);
 	int ret;
 
@@ -1074,7 +1074,7 @@ static int isp_video_check_external_subdevs(struct isp_video *video,
 static int
 isp_video_streamon(struct file *file, void *fh, enum v4l2_buf_type type)
 {
-	struct isp_video_fh *vfh = to_isp_video_fh(fh);
+	struct isp_video_fh *vfh = file_to_isp_video_fh(file);
 	struct isp_video *video = video_drvdata(file);
 	enum isp_pipeline_state state;
 	struct isp_pipeline *pipe;
@@ -1180,7 +1180,7 @@ isp_video_streamon(struct file *file, void *fh, enum v4l2_buf_type type)
 static int
 isp_video_streamoff(struct file *file, void *fh, enum v4l2_buf_type type)
 {
-	struct isp_video_fh *vfh = to_isp_video_fh(fh);
+	struct isp_video_fh *vfh = file_to_isp_video_fh(file);
 	struct isp_video *video = video_drvdata(file);
 	struct isp_pipeline *pipe = to_isp_pipeline(&video->video.entity);
 	enum isp_pipeline_state state;
@@ -1348,7 +1348,7 @@ static int isp_video_release(struct file *file)
 {
 	struct isp_video *video = video_drvdata(file);
 	struct v4l2_fh *vfh = file_to_v4l2_fh(file);
-	struct isp_video_fh *handle = to_isp_video_fh(vfh);
+	struct isp_video_fh *handle = file_to_isp_video_fh(file);
 
 	/* Disable streaming and free the buffers queue resources. */
 	isp_video_streamoff(file, vfh, video->type);
diff --git a/drivers/media/platform/ti/omap3isp/ispvideo.h b/drivers/media/platform/ti/omap3isp/ispvideo.h
index 355812770e18ef5353ac68e65426a3180a6d91ab..537da59cff6258cb66ff4eac6ad2739c3f9465c4 100644
--- a/drivers/media/platform/ti/omap3isp/ispvideo.h
+++ b/drivers/media/platform/ti/omap3isp/ispvideo.h
@@ -194,8 +194,6 @@ struct isp_video_fh {
 	struct v4l2_fract timeperframe;
 };
 
-#define to_isp_video_fh(fh)	container_of(fh, struct isp_video_fh, vfh)
-
 static inline struct isp_video_fh *file_to_isp_video_fh(struct file *filp)
 {
 	return container_of(file_to_v4l2_fh(filp), struct isp_video_fh, vfh);

-- 
2.49.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
