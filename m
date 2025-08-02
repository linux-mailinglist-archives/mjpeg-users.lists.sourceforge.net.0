Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F2DB18EE4
	for <lists+mjpeg-users@lfdr.de>; Sat,  2 Aug 2025 15:55:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:To:In-Reply-To:References:Message-Id:MIME-Version:Date:From:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Kfv4Kkzyal1qZBMvhehg6s5ZekeKG+qylXWA5Z+ot+o=; b=daaD53udk80ZlKcVOpqyIn6IpJ
	HTt/UK1fmsF7T8MOtn/IfurE3X7QOqVZgKEM5d3d8LEPb+fmeKsD+Fl6B/YjgafZBZ+KQpighhfuP
	lBAbwUOX5cSAUbiWStsMiv/obR+kFbiLeLxk0BJ/8GeWEpmcdjkkt7xwIm9aPVJAKwfk=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1uiChq-0006Z3-RO;
	Sat, 02 Aug 2025 13:55:26 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacopo.mondi@ideasonboard.com>) id 1ui8j2-0000Zj-Dt
 for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:40:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+yOnbVD9k2XDki4zHOauQfFX5t//+87MculYZSNSO7g=; b=N9+aDLRBm9NmVxCcLaXfsYmHHN
 CK3pWUzXy4okDPs940Pm8j45Wn+Gnaz20idu01ShE2OsJB4vRdHwRET8Dt4BLtRfa+1fdb/rxa1Qq
 vpXCQ5yDtCfbr9hKxdNm/t2CfnBGOocMmYxJvBmL+NO/r5xqVD9+FXTyL0ocSSxlEcYU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+yOnbVD9k2XDki4zHOauQfFX5t//+87MculYZSNSO7g=; b=hCMWyXICTKPG2Cj1GKL2YOzNMl
 Auq2j0G3ma63qdwg+GN183KSuxhfOx6jonEy0BB6YbwF90p9n6UFaW8V5Pwb9qycAxg8OtonBW3Zm
 ICEisa4lTg9xUaLuM83qxSD88lJdbj2Egg1Y+I2oYOqw7dvTQ5vLOcv/J0DkCnMsct2k=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ui8j1-0005g1-Qi for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:40:24 +0000
Received: from [192.168.0.172] (mob-5-90-138-121.net.vodafone.it
 [5.90.138.121])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 876C73C5C;
 Sat,  2 Aug 2025 11:27:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1754126867;
 bh=T3nnvKTfBwctCb2KRCzrOOTSYhCcGLTV59+/l2e0jic=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=Dkkumh4LvxiuD8hNn3xqAjWcNyloSHLSyCVxEPeN03ejtzn2UG2VxVNhAnRssFn5b
 F2/F6FTzFRh9zHyOicYH+CITNw2ZAfi/45abmodAsDOnwXOXQkS8HI/S/Tn7OIRfWQ
 pXWkRYmhrYm2juFG6mt5ZWW34am6MecwMRht3TvU=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Sat, 02 Aug 2025 11:22:52 +0200
MIME-Version: 1.0
Message-Id: <20250802-media-private-data-v1-30-eb140ddd6a9d@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2933;
 i=jacopo.mondi@ideasonboard.com; h=from:subject:message-id;
 bh=T3nnvKTfBwctCb2KRCzrOOTSYhCcGLTV59+/l2e0jic=;
 b=owEBbQKS/ZANAwAKAXI0Bo8WoVY8AcsmYgBojdj7Fyaa+k6kJNktEpScDTtiWPy/zaeBwHz9r
 DJi8voptXKJAjMEAAEKAB0WIQS1xD1IgJogio9YOMByNAaPFqFWPAUCaI3Y+wAKCRByNAaPFqFW
 PKVRD/9hNjf7I/ZFLIZiasLup5gsgyNwUHVXZkHcmovAL8TIvnofdZ5VhpAM3eJ++8/l9qxMSuE
 MXKsXSR9XFbtftKtXz4+Y1tvz1FJ79z64WHGMs0xneU5nu2CpLKfX8ZvYAEKy58fxuSIHHSLLX0
 hWA9E5Fa7k7kpVg4KT9CBQm2zTWNGW9Ucy6Pjt8HofFZT82URpYm6/fVN1NtXpbxqwV2unaH27Z
 oZOtB6292Z/G5zI8p4nl8eeeYxXn8egPLXef91fozHfsAdabGC/yL+Z5sWeOAGKv9D5s36TUoFQ
 w/lxJXYhMlOSk5+Q5WYei14Z/iOhIb6lbVl7JMQTaEIwgHpcBoodDYNyP3Z6Mnu8yc53Kj/FD6X
 razFUGu3uX1tU0YKS/TVeN2DYYJHlDUdDyvHf0Q+4z2LW1WWWpflBIncqJcoJarL8aeqsmJwDrU
 E8e4biI29YK7NJRZQ31JDbhuVIuwBjoYzkSOYA9bI+E0ftdCi+f0uGW9qiy/caNDTeXipY7xKTt
 zP3Uu36adc8AcaxdNLQtKM7zr7fCg/ssFemih19ULbECnJCfI85T8acrRKM4Z6OGo0iNB5jksc+
 JPboZIQKZLhoLoTqDOBdSIg3MEs1Jh69sAhZu6nnVAT3asyNA/WNjkgnPPP4IYjOb2kxH08TA7Y
 VEIR3oTqjNmorVQ==
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
X-Headers-End: 1ui8j1-0005g1-Qi
X-Mailman-Approved-At: Sat, 02 Aug 2025 13:55:15 +0000
Subject: [Mjpeg-users] [PATCH 30/65] media: meson-ge2d: Access v4l2_fh from
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
 drivers/media/platform/amlogic/meson-ge2d/ge2d.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/media/platform/amlogic/meson-ge2d/ge2d.c b/drivers/media/platform/amlogic/meson-ge2d/ge2d.c
index b1b0b6535fb1931c74ae9b2da28bea579cd1bc4c..5744853a40035e9973e605dd3ffec508641470f2 100644
--- a/drivers/media/platform/amlogic/meson-ge2d/ge2d.c
+++ b/drivers/media/platform/amlogic/meson-ge2d/ge2d.c
@@ -457,7 +457,7 @@ static int vidioc_enum_fmt(struct file *file, void *priv, struct v4l2_fmtdesc *f
 static int vidioc_g_selection(struct file *file, void *priv,
 			      struct v4l2_selection *s)
 {
-	struct ge2d_ctx *ctx = priv;
+	struct ge2d_ctx *ctx = file_to_ge2d_ctx(file);
 	struct ge2d_frame *f;
 	bool use_frame = false;
 
@@ -507,7 +507,7 @@ static int vidioc_g_selection(struct file *file, void *priv,
 static int vidioc_s_selection(struct file *file, void *priv,
 			      struct v4l2_selection *s)
 {
-	struct ge2d_ctx *ctx = priv;
+	struct ge2d_ctx *ctx = file_to_ge2d_ctx(file);
 	struct meson_ge2d *ge2d = ctx->ge2d;
 	struct ge2d_frame *f;
 	int ret = 0;
@@ -574,8 +574,8 @@ static void vidioc_setup_cap_fmt(struct ge2d_ctx *ctx, struct v4l2_pix_format *f
 
 static int vidioc_try_fmt_cap(struct file *file, void *priv, struct v4l2_format *f)
 {
+	struct ge2d_ctx *ctx = file_to_ge2d_ctx(file);
 	const struct ge2d_fmt *fmt = find_fmt(f);
-	struct ge2d_ctx *ctx = priv;
 	struct v4l2_pix_format fmt_cap;
 
 	vidioc_setup_cap_fmt(ctx, &fmt_cap);
@@ -595,7 +595,7 @@ static int vidioc_try_fmt_cap(struct file *file, void *priv, struct v4l2_format
 
 static int vidioc_s_fmt_cap(struct file *file, void *priv, struct v4l2_format *f)
 {
-	struct ge2d_ctx *ctx = priv;
+	struct ge2d_ctx *ctx = file_to_ge2d_ctx(file);
 	struct meson_ge2d *ge2d = ctx->ge2d;
 	struct vb2_queue *vq;
 	struct ge2d_frame *frm;
@@ -631,7 +631,7 @@ static int vidioc_s_fmt_cap(struct file *file, void *priv, struct v4l2_format *f
 
 static int vidioc_g_fmt(struct file *file, void *priv, struct v4l2_format *f)
 {
-	struct ge2d_ctx *ctx = priv;
+	struct ge2d_ctx *ctx = file_to_ge2d_ctx(file);
 	struct vb2_queue *vq;
 	struct ge2d_frame *frm;
 
@@ -670,7 +670,7 @@ static int vidioc_try_fmt_out(struct file *file, void *priv, struct v4l2_format
 
 static int vidioc_s_fmt_out(struct file *file, void *priv, struct v4l2_format *f)
 {
-	struct ge2d_ctx *ctx = priv;
+	struct ge2d_ctx *ctx = file_to_ge2d_ctx(file);
 	struct meson_ge2d *ge2d = ctx->ge2d;
 	struct vb2_queue *vq;
 	struct ge2d_frame *frm, *frm_cap;

-- 
2.49.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
