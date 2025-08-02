Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B96B18EFA
	for <lists+mjpeg-users@lfdr.de>; Sat,  2 Aug 2025 15:55:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:To:In-Reply-To:References:Message-Id:MIME-Version:Date:From:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fLwF2cOuIUDnd/Uni/x1yR4xdoDrxYDdFGyD5IWqaDM=; b=YJfyuo2dwhXA1lc12QfJwR4ryh
	EmkrGnPAeFprYmsbKr7v0Qm3nAY5ujZa3B9mZNBxWumHgE4CuGtV4MehnxsXPpmSNxqw/VDaFbEcQ
	3LblNR+Q86CwojsTvpcDiaaFOOuS95HpTQKEByQ98KPUSQIg1CNBxQDgr1YCFG2BXeTw=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1uiChy-0006kZ-R2;
	Sat, 02 Aug 2025 13:55:34 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacopo.mondi@ideasonboard.com>) id 1ui8mx-0000f3-UW
 for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:44:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Bbo8kwqsKioWX4+xOyLcW9XlYLzGSGQQ74rWE9TaMSU=; b=XXpNKIeFq/h5SVP1/M0BdAIeb1
 y4wp9IXyirlLKnqqSTgFYsH95IDcHZ+zfxV4UpJkMiWgzg2HJAKI8TwSg7L/tf76pbHy55ZfenPs9
 CkWruP92Qx4mt29iO4amxlt67B01wq0WgodkkqiMewg20HDnzlKvQy96TmT/MpQRIc5A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Bbo8kwqsKioWX4+xOyLcW9XlYLzGSGQQ74rWE9TaMSU=; b=I/NnlYaPXVQ9inu3Y2ZWVQdV7o
 he1NnbS7BMS6AaULS6NziiMkK8Wl2net4o1KZXksOOqmuoJVmeCTf+IGNiwMrVlASmM2VWmky4ocd
 B2v5kuL8PlN4ZYOBLhOjZxUHLpY7B110RDagC7ncWE3QtagUQEzrEGMxrJksAH6i7Vco=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ui8mt-0005wb-4g for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:44:23 +0000
Received: from [192.168.0.172] (mob-5-90-138-121.net.vodafone.it
 [5.90.138.121])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 8FDB1434B;
 Sat,  2 Aug 2025 11:33:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1754127189;
 bh=HJZkrhFG+jzm747g4Ehf7uDDScTqxfq9NHQKM9RJ9+c=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=drO4QQ4w5C/9gxSKad/aI2GIngo7vFtEHIHzrGgn7kZAWSwLR5wrEh4HQvq6Jm6OI
 ZusDu7tyhzItb/PJ3UgESd1YUquS1Fmh3fVSitOAj7wJomAczSa4RbhwDqiVZJfF3B
 Qtx/E4NpY2guxQIm3G7R7AMgxzqza3IQPTFKsu6c=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Sat, 02 Aug 2025 11:23:23 +0200
MIME-Version: 1.0
Message-Id: <20250802-media-private-data-v1-61-eb140ddd6a9d@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2886;
 i=jacopo.mondi@ideasonboard.com; h=from:subject:message-id;
 bh=HJZkrhFG+jzm747g4Ehf7uDDScTqxfq9NHQKM9RJ9+c=;
 b=owEBbQKS/ZANAwAKAXI0Bo8WoVY8AcsmYgBojdj/LYqcTTKP5IO38I6jRkZtnPsad4yNU/BBM
 LhZkqOCQmyJAjMEAAEKAB0WIQS1xD1IgJogio9YOMByNAaPFqFWPAUCaI3Y/wAKCRByNAaPFqFW
 PBUoD/9IzXwsCQmzZriXZwyHxu8ZbHSG9GOn5AFJ5yuxmyL+uefno6h2zKTZMm8PDQQEMO/jVe0
 WSC2PXgtp2l2beUGIlkrSqMAWd2ooWmRvUskEkWBmBzeG506UdTZjbx/418DFC8Z8zaeB0nVCdc
 /wGf0Gy1y1swBI602aZLOtqjRfjKcD5vu9ozAisDD4RHfMWfPbDX7hndsvy/b185ErMEK6rG3SI
 Ux1cGTjjJ4rFaeg9XyTreQ3dPyg7tPSoaubiZa2cunxMtK5RPQmbqJkWG2EF56aX6LYWLUshWQm
 1+WDzhvT0criVSZX0gp0EGUYaemxF1Gcd13bOgQ6l5Cmlq3KeKDlns0Q17hjXxdnwz6revxZAGl
 FrTVFgF3IyThahVOUI6yq/UMj0LI82p9bgOwi4Mu4aUOoLzz09jWVkYPdh+Jma4I3Ker4Qw8XYW
 mPuw1AHdEAi8T2Ygj8ksbEaFPQkxSNfmMk1ocWww69os41oVrZ0VF6a+r8xmZe/EudJmIWtW9Rb
 4S+lSn8e7w2Jt7CcII/wZZJqnFDuYyP/Ty87GGVE8d7K9g7Bx4Z4dOZNVB1u2OPb+8W/gcu4E/5
 TYrxi33Ung3k9TQRPV8LyxI/8QGtcQZubSmmlE2e7kjnp6Rzuo/gnwA9C0Ba04DByNeihtvEVG2
 QGndJvaTcNt3y7g==
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
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URI: ideasonboard.com]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ui8mt-0005wb-4g
X-Mailman-Approved-At: Sat, 02 Aug 2025 13:55:15 +0000
Subject: [Mjpeg-users] [PATCH 61/65] media: staging: imx: Access v4l2_fh
 from file
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
 drivers/staging/media/imx/imx-media-csc-scaler.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/media/imx/imx-media-csc-scaler.c b/drivers/staging/media/imx/imx-media-csc-scaler.c
index c4ee0eebb3730e709c3d4a95935d0047a645e411..1869c5792ecb46682491ecbf33674c6044915261 100644
--- a/drivers/staging/media/imx/imx-media-csc-scaler.c
+++ b/drivers/staging/media/imx/imx-media-csc-scaler.c
@@ -23,8 +23,6 @@
 
 #include "imx-media.h"
 
-#define fh_to_ctx(__fh)	container_of(__fh, struct ipu_csc_scaler_ctx, fh)
-
 #define IMX_CSC_SCALER_NAME "imx-csc-scaler"
 
 enum {
@@ -184,7 +182,7 @@ static int ipu_csc_scaler_enum_fmt(struct file *file, void *fh,
 static int ipu_csc_scaler_g_fmt(struct file *file, void *priv,
 				struct v4l2_format *f)
 {
-	struct ipu_csc_scaler_ctx *ctx = fh_to_ctx(priv);
+	struct ipu_csc_scaler_ctx *ctx = file_to_ctx(file);
 	struct ipu_csc_scaler_q_data *q_data;
 
 	q_data = get_q_data(ctx, f->type);
@@ -197,7 +195,7 @@ static int ipu_csc_scaler_g_fmt(struct file *file, void *priv,
 static int ipu_csc_scaler_try_fmt(struct file *file, void *priv,
 				  struct v4l2_format *f)
 {
-	struct ipu_csc_scaler_ctx *ctx = fh_to_ctx(priv);
+	struct ipu_csc_scaler_ctx *ctx = file_to_ctx(file);
 	struct ipu_csc_scaler_q_data *q_data = get_q_data(ctx, f->type);
 	struct ipu_image test_in, test_out;
 	enum v4l2_field field;
@@ -245,8 +243,8 @@ static int ipu_csc_scaler_try_fmt(struct file *file, void *priv,
 static int ipu_csc_scaler_s_fmt(struct file *file, void *priv,
 				struct v4l2_format *f)
 {
+	struct ipu_csc_scaler_ctx *ctx = file_to_ctx(file);
 	struct ipu_csc_scaler_q_data *q_data;
-	struct ipu_csc_scaler_ctx *ctx = fh_to_ctx(priv);
 	struct vb2_queue *vq;
 	int ret;
 
@@ -301,7 +299,7 @@ static int ipu_csc_scaler_s_fmt(struct file *file, void *priv,
 static int ipu_csc_scaler_g_selection(struct file *file, void *priv,
 				      struct v4l2_selection *s)
 {
-	struct ipu_csc_scaler_ctx *ctx = fh_to_ctx(priv);
+	struct ipu_csc_scaler_ctx *ctx = file_to_ctx(file);
 	struct ipu_csc_scaler_q_data *q_data;
 
 	switch (s->target) {
@@ -339,7 +337,7 @@ static int ipu_csc_scaler_g_selection(struct file *file, void *priv,
 static int ipu_csc_scaler_s_selection(struct file *file, void *priv,
 				      struct v4l2_selection *s)
 {
-	struct ipu_csc_scaler_ctx *ctx = fh_to_ctx(priv);
+	struct ipu_csc_scaler_ctx *ctx = file_to_ctx(file);
 	struct ipu_csc_scaler_q_data *q_data;
 
 	switch (s->target) {

-- 
2.49.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
