Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A09B18F06
	for <lists+mjpeg-users@lfdr.de>; Sat,  2 Aug 2025 15:55:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:To:In-Reply-To:References:Message-Id:MIME-Version:Date:From:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tMPoQVeuANHHB5sbWUZCoJemfrtFmbRMUw0zHZRaTsU=; b=BqTi21DcleZMiQdJ/JN5l8SK36
	xSR5yPZ4OAVbuw0QYKd5zbqsGmYrTT6+2lU2PSm9JjITr2OFJc9lXs7S3pB4s7pcDEnijDUNzWHro
	rTTkORe92FzFC1dD1FZ67G0mkGN+TWU04PO2dmlQMVtFjus3VuyxUFkZaq778nI7Kab0=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1uiCi3-0006sk-DQ;
	Sat, 02 Aug 2025 13:55:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacopo.mondi@ideasonboard.com>) id 1ui8qw-00069o-Hd
 for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:48:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sfL29gwcY2Q2ohCvVSQu7WhdYBAzHxAqOzGUqSBDBng=; b=VvVrl0PZidvB8LzsNXl4Z/XGW1
 TnfpduxCPDg8lZOqueihkcNN3g/fa6U1gapM26jSksLmFqU8O8TodnlHoJhF7gxgLkZaL76szs6Gu
 GQmcMGhmJqferTSqYKoOTcYyqEu3A6hls44YyAsHZXpjlKjFcCxP8rYabrks4XjNAbKg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sfL29gwcY2Q2ohCvVSQu7WhdYBAzHxAqOzGUqSBDBng=; b=lWhrjgA/nnQ8y1aNBubMUb0wuV
 H4lPz1pTK+Q+sYk1fNdkhRHEuMjdo4P9FAdUE8jtfNglzPRtAN8ELS42lwWtzV3lv5E4uppxuTStv
 7StWNpI9vlPXVuwmfWLtog851zw/ra0ORTKCeWlDz1hgSQ+InAdqVpLtwD+feONjuU7A=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ui8qv-0006Pw-Mu for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:48:35 +0000
Received: from [192.168.0.172] (mob-5-90-138-121.net.vodafone.it
 [5.90.138.121])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id E59111FB8;
 Sat,  2 Aug 2025 11:23:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1754126607;
 bh=mNwsrp8nKBFkxt7rY+U2M0OWq3GCR2R2XCAdJROLTOk=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=DSQrpcJpBnfnT7OmTg8T90ulQGNmcBlh4d8ucTOdKvpLbk0c454FckPhqvx89LmbN
 vCwsaczWRTvaZ0k9oVxT+kZQiOzwlCqrykBbr80yOciofSaOG5y9ojqzKLOqAsSAeS
 tXDWIcl38VAzTMKDnlZqvDHs1RcnBOQ+A2SpHYuE=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Sat, 02 Aug 2025 11:22:27 +0200
MIME-Version: 1.0
Message-Id: <20250802-media-private-data-v1-5-eb140ddd6a9d@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=12175;
 i=jacopo.mondi@ideasonboard.com; h=from:subject:message-id;
 bh=DSu4UoxpEI7+C8U0CFqaBAzFa/k6azaXzHEH5+Tqsoc=;
 b=owEBbQKS/ZANAwAKAXI0Bo8WoVY8AcsmYgBojdj3R4AfuAC2TJCoNxPqDBbjsGQjJnpQyMW4D
 KkVjzOho0OJAjMEAAEKAB0WIQS1xD1IgJogio9YOMByNAaPFqFWPAUCaI3Y9wAKCRByNAaPFqFW
 POxeD/9ExwrndtJFz6iR4YDFf0BLDxKErSKTK/afTEs5q0CH65ApkZAHCJY8P+DafxkZC6dhQs/
 FKeKJECblq8zWsiCLBQSlKWrQ4FtBv/k+AYc/ofRZjh3EbLoeIUTJ0cbNrsQ7AGdhfhTPFFU30e
 C4eCLQuc+225WsAE8KYIyB12r9uUmvgJQHhm8a6qGAOe6YRyuds4Joq02dAQEpapyXc3KF6R3Hn
 jQ5QyVq6rH4whyspYj4kzz+mxZbCVCk48KKkp9wsFiFqbodkGD6mocULwH5doghE7QtLwFF3Lg4
 a6yYMvkRM06NBl02+FeuPdvO05U0129VqG1g2sF+sblwWtuDERQrBYIUecqK5MJMGyrC1qv5Txf
 5F66LgYJNKZmDkSdiqxGovRdWFZ2YdCMZefML7l8oRXOS4jVQlNPDdrPIBTu/KYU2+vg4bWo1kn
 6zj2WN7iplFyzBWKl82TbT0J25cvW1JyDnis+1Wc0o48T2F73ZrZ5ZmCLBk6xYnpzKNXPL+Nr5u
 4p/tbDwClXn2GnXj6tgWCp21CkC50GbQo2ESvwSgbAjN5XUsM4YZOi5iBwpziWhN9uIGotVke2W
 fyF4ouplFpyvQX6L5Ue3MnKLlaNVb0HiTUrQrE4uGASpLjucw9ad2cgbPlq+C7lKEFycnTYxzQc
 mZLE0DJcIa1guEQ==
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
 Most V4L2 drivers store the v4l2_fh pointer in file->private_data. The pvrusb2
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
X-Headers-End: 1ui8qv-0006Pw-Mu
X-Mailman-Approved-At: Sat, 02 Aug 2025 13:55:15 +0000
Subject: [Mjpeg-users] [PATCH 05/65] media: usb: pvrusb2: Store v4l2_fh
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
pvrusb2 driver instead stores the pointer to the driver-specific
structure that embeds the v4l2_fh. Switch to storing the v4l2_fh pointer
itself to standardize behaviour across drivers. This also prepares for
future refactoring that depends on v4l2_fh being stored in private_data.

While at it, drop unneeded structure forward declarations.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
 drivers/media/usb/pvrusb2/pvrusb2-v4l2.c | 65 +++++++++++++++++---------------
 1 file changed, 34 insertions(+), 31 deletions(-)

diff --git a/drivers/media/usb/pvrusb2/pvrusb2-v4l2.c b/drivers/media/usb/pvrusb2/pvrusb2-v4l2.c
index ad38e12405419caad056af8866b14ea621f0c2a1..7dc7c90ebf621c594bf5236276c402462d694a0a 100644
--- a/drivers/media/usb/pvrusb2/pvrusb2-v4l2.c
+++ b/drivers/media/usb/pvrusb2/pvrusb2-v4l2.c
@@ -21,8 +21,6 @@
 #include <media/v4l2-common.h>
 #include <media/v4l2-ioctl.h>
 
-struct pvr2_v4l2_dev;
-struct pvr2_v4l2_fh;
 struct pvr2_v4l2;
 
 struct pvr2_v4l2_dev {
@@ -48,6 +46,11 @@ struct pvr2_v4l2_fh {
 	unsigned int input_cnt;
 };
 
+static inline struct pvr2_v4l2_fh *to_pvr2_v4l2_fh(struct file *filp)
+{
+	return container_of(filp->private_data, struct pvr2_v4l2_fh, fh);
+}
+
 struct pvr2_v4l2 {
 	struct pvr2_channel channel;
 
@@ -108,7 +111,7 @@ static struct v4l2_format pvr_format [] = {
  */
 static int pvr2_querycap(struct file *file, void *priv, struct v4l2_capability *cap)
 {
-	struct pvr2_v4l2_fh *fh = file->private_data;
+	struct pvr2_v4l2_fh *fh = to_pvr2_v4l2_fh(file);
 	struct pvr2_hdw *hdw = fh->channel.mc_head->hdw;
 
 	strscpy(cap->driver, "pvrusb2", sizeof(cap->driver));
@@ -123,7 +126,7 @@ static int pvr2_querycap(struct file *file, void *priv, struct v4l2_capability *
 
 static int pvr2_g_std(struct file *file, void *priv, v4l2_std_id *std)
 {
-	struct pvr2_v4l2_fh *fh = file->private_data;
+	struct pvr2_v4l2_fh *fh = to_pvr2_v4l2_fh(file);
 	struct pvr2_hdw *hdw = fh->channel.mc_head->hdw;
 	int val = 0;
 	int ret;
@@ -136,7 +139,7 @@ static int pvr2_g_std(struct file *file, void *priv, v4l2_std_id *std)
 
 static int pvr2_s_std(struct file *file, void *priv, v4l2_std_id std)
 {
-	struct pvr2_v4l2_fh *fh = file->private_data;
+	struct pvr2_v4l2_fh *fh = to_pvr2_v4l2_fh(file);
 	struct pvr2_hdw *hdw = fh->channel.mc_head->hdw;
 	int ret;
 
@@ -148,7 +151,7 @@ static int pvr2_s_std(struct file *file, void *priv, v4l2_std_id std)
 
 static int pvr2_querystd(struct file *file, void *priv, v4l2_std_id *std)
 {
-	struct pvr2_v4l2_fh *fh = file->private_data;
+	struct pvr2_v4l2_fh *fh = to_pvr2_v4l2_fh(file);
 	struct pvr2_hdw *hdw = fh->channel.mc_head->hdw;
 	int val = 0;
 	int ret;
@@ -161,7 +164,7 @@ static int pvr2_querystd(struct file *file, void *priv, v4l2_std_id *std)
 
 static int pvr2_enum_input(struct file *file, void *priv, struct v4l2_input *vi)
 {
-	struct pvr2_v4l2_fh *fh = file->private_data;
+	struct pvr2_v4l2_fh *fh = to_pvr2_v4l2_fh(file);
 	struct pvr2_hdw *hdw = fh->channel.mc_head->hdw;
 	struct pvr2_ctrl *cptr;
 	struct v4l2_input tmp;
@@ -209,7 +212,7 @@ static int pvr2_enum_input(struct file *file, void *priv, struct v4l2_input *vi)
 
 static int pvr2_g_input(struct file *file, void *priv, unsigned int *i)
 {
-	struct pvr2_v4l2_fh *fh = file->private_data;
+	struct pvr2_v4l2_fh *fh = to_pvr2_v4l2_fh(file);
 	struct pvr2_hdw *hdw = fh->channel.mc_head->hdw;
 	unsigned int idx;
 	struct pvr2_ctrl *cptr;
@@ -231,7 +234,7 @@ static int pvr2_g_input(struct file *file, void *priv, unsigned int *i)
 
 static int pvr2_s_input(struct file *file, void *priv, unsigned int inp)
 {
-	struct pvr2_v4l2_fh *fh = file->private_data;
+	struct pvr2_v4l2_fh *fh = to_pvr2_v4l2_fh(file);
 	struct pvr2_hdw *hdw = fh->channel.mc_head->hdw;
 	int ret;
 
@@ -286,7 +289,7 @@ static int pvr2_s_audio(struct file *file, void *priv, const struct v4l2_audio *
 
 static int pvr2_g_tuner(struct file *file, void *priv, struct v4l2_tuner *vt)
 {
-	struct pvr2_v4l2_fh *fh = file->private_data;
+	struct pvr2_v4l2_fh *fh = to_pvr2_v4l2_fh(file);
 	struct pvr2_hdw *hdw = fh->channel.mc_head->hdw;
 
 	if (vt->index != 0)
@@ -298,7 +301,7 @@ static int pvr2_g_tuner(struct file *file, void *priv, struct v4l2_tuner *vt)
 
 static int pvr2_s_tuner(struct file *file, void *priv, const struct v4l2_tuner *vt)
 {
-	struct pvr2_v4l2_fh *fh = file->private_data;
+	struct pvr2_v4l2_fh *fh = to_pvr2_v4l2_fh(file);
 	struct pvr2_hdw *hdw = fh->channel.mc_head->hdw;
 	int ret;
 
@@ -314,7 +317,7 @@ static int pvr2_s_tuner(struct file *file, void *priv, const struct v4l2_tuner *
 
 static int pvr2_s_frequency(struct file *file, void *priv, const struct v4l2_frequency *vf)
 {
-	struct pvr2_v4l2_fh *fh = file->private_data;
+	struct pvr2_v4l2_fh *fh = to_pvr2_v4l2_fh(file);
 	struct pvr2_hdw *hdw = fh->channel.mc_head->hdw;
 	unsigned long fv;
 	struct v4l2_tuner vt;
@@ -349,7 +352,7 @@ static int pvr2_s_frequency(struct file *file, void *priv, const struct v4l2_fre
 
 static int pvr2_g_frequency(struct file *file, void *priv, struct v4l2_frequency *vf)
 {
-	struct pvr2_v4l2_fh *fh = file->private_data;
+	struct pvr2_v4l2_fh *fh = to_pvr2_v4l2_fh(file);
 	struct pvr2_hdw *hdw = fh->channel.mc_head->hdw;
 	int val = 0;
 	int cur_input;
@@ -391,7 +394,7 @@ static int pvr2_enum_fmt_vid_cap(struct file *file, void *priv, struct v4l2_fmtd
 
 static int pvr2_g_fmt_vid_cap(struct file *file, void *priv, struct v4l2_format *vf)
 {
-	struct pvr2_v4l2_fh *fh = file->private_data;
+	struct pvr2_v4l2_fh *fh = to_pvr2_v4l2_fh(file);
 	struct pvr2_hdw *hdw = fh->channel.mc_head->hdw;
 	int val;
 
@@ -411,7 +414,7 @@ static int pvr2_g_fmt_vid_cap(struct file *file, void *priv, struct v4l2_format
 
 static int pvr2_try_fmt_vid_cap(struct file *file, void *priv, struct v4l2_format *vf)
 {
-	struct pvr2_v4l2_fh *fh = file->private_data;
+	struct pvr2_v4l2_fh *fh = to_pvr2_v4l2_fh(file);
 	struct pvr2_hdw *hdw = fh->channel.mc_head->hdw;
 	int lmin, lmax, ldef;
 	struct pvr2_ctrl *hcp, *vcp;
@@ -449,7 +452,7 @@ static int pvr2_try_fmt_vid_cap(struct file *file, void *priv, struct v4l2_forma
 
 static int pvr2_s_fmt_vid_cap(struct file *file, void *priv, struct v4l2_format *vf)
 {
-	struct pvr2_v4l2_fh *fh = file->private_data;
+	struct pvr2_v4l2_fh *fh = to_pvr2_v4l2_fh(file);
 	struct pvr2_hdw *hdw = fh->channel.mc_head->hdw;
 	struct pvr2_ctrl *hcp, *vcp;
 	int ret = pvr2_try_fmt_vid_cap(file, fh, vf);
@@ -466,7 +469,7 @@ static int pvr2_s_fmt_vid_cap(struct file *file, void *priv, struct v4l2_format
 
 static int pvr2_streamon(struct file *file, void *priv, enum v4l2_buf_type i)
 {
-	struct pvr2_v4l2_fh *fh = file->private_data;
+	struct pvr2_v4l2_fh *fh = to_pvr2_v4l2_fh(file);
 	struct pvr2_hdw *hdw = fh->channel.mc_head->hdw;
 	struct pvr2_v4l2_dev *pdi = fh->pdi;
 	int ret;
@@ -485,7 +488,7 @@ static int pvr2_streamon(struct file *file, void *priv, enum v4l2_buf_type i)
 
 static int pvr2_streamoff(struct file *file, void *priv, enum v4l2_buf_type i)
 {
-	struct pvr2_v4l2_fh *fh = file->private_data;
+	struct pvr2_v4l2_fh *fh = to_pvr2_v4l2_fh(file);
 	struct pvr2_hdw *hdw = fh->channel.mc_head->hdw;
 
 	if (!fh->pdi->stream) {
@@ -500,7 +503,7 @@ static int pvr2_streamoff(struct file *file, void *priv, enum v4l2_buf_type i)
 static int pvr2_query_ext_ctrl(struct file *file, void *priv,
 			       struct v4l2_query_ext_ctrl *vc)
 {
-	struct pvr2_v4l2_fh *fh = file->private_data;
+	struct pvr2_v4l2_fh *fh = to_pvr2_v4l2_fh(file);
 	struct pvr2_hdw *hdw = fh->channel.mc_head->hdw;
 	struct pvr2_ctrl *cptr;
 	int val;
@@ -561,7 +564,7 @@ static int pvr2_query_ext_ctrl(struct file *file, void *priv,
 
 static int pvr2_querymenu(struct file *file, void *priv, struct v4l2_querymenu *vm)
 {
-	struct pvr2_v4l2_fh *fh = file->private_data;
+	struct pvr2_v4l2_fh *fh = to_pvr2_v4l2_fh(file);
 	struct pvr2_hdw *hdw = fh->channel.mc_head->hdw;
 	unsigned int cnt = 0;
 	int ret;
@@ -577,7 +580,7 @@ static int pvr2_querymenu(struct file *file, void *priv, struct v4l2_querymenu *
 static int pvr2_g_ext_ctrls(struct file *file, void *priv,
 					struct v4l2_ext_controls *ctls)
 {
-	struct pvr2_v4l2_fh *fh = file->private_data;
+	struct pvr2_v4l2_fh *fh = to_pvr2_v4l2_fh(file);
 	struct pvr2_hdw *hdw = fh->channel.mc_head->hdw;
 	struct v4l2_ext_control *ctrl;
 	struct pvr2_ctrl *cptr;
@@ -612,7 +615,7 @@ static int pvr2_g_ext_ctrls(struct file *file, void *priv,
 static int pvr2_s_ext_ctrls(struct file *file, void *priv,
 		struct v4l2_ext_controls *ctls)
 {
-	struct pvr2_v4l2_fh *fh = file->private_data;
+	struct pvr2_v4l2_fh *fh = to_pvr2_v4l2_fh(file);
 	struct pvr2_hdw *hdw = fh->channel.mc_head->hdw;
 	struct v4l2_ext_control *ctrl;
 	unsigned int idx;
@@ -637,7 +640,7 @@ static int pvr2_s_ext_ctrls(struct file *file, void *priv,
 static int pvr2_try_ext_ctrls(struct file *file, void *priv,
 		struct v4l2_ext_controls *ctls)
 {
-	struct pvr2_v4l2_fh *fh = file->private_data;
+	struct pvr2_v4l2_fh *fh = to_pvr2_v4l2_fh(file);
 	struct pvr2_hdw *hdw = fh->channel.mc_head->hdw;
 	struct v4l2_ext_control *ctrl;
 	struct pvr2_ctrl *pctl;
@@ -659,7 +662,7 @@ static int pvr2_try_ext_ctrls(struct file *file, void *priv,
 static int pvr2_g_pixelaspect(struct file *file, void *priv,
 			      int type, struct v4l2_fract *f)
 {
-	struct pvr2_v4l2_fh *fh = file->private_data;
+	struct pvr2_v4l2_fh *fh = to_pvr2_v4l2_fh(file);
 	struct pvr2_hdw *hdw = fh->channel.mc_head->hdw;
 	struct v4l2_cropcap cap = { .type = type };
 	int ret;
@@ -675,7 +678,7 @@ static int pvr2_g_pixelaspect(struct file *file, void *priv,
 static int pvr2_g_selection(struct file *file, void *priv,
 			    struct v4l2_selection *sel)
 {
-	struct pvr2_v4l2_fh *fh = file->private_data;
+	struct pvr2_v4l2_fh *fh = to_pvr2_v4l2_fh(file);
 	struct pvr2_hdw *hdw = fh->channel.mc_head->hdw;
 	struct v4l2_cropcap cap;
 	int val = 0;
@@ -726,7 +729,7 @@ static int pvr2_g_selection(struct file *file, void *priv,
 static int pvr2_s_selection(struct file *file, void *priv,
 			    struct v4l2_selection *sel)
 {
-	struct pvr2_v4l2_fh *fh = file->private_data;
+	struct pvr2_v4l2_fh *fh = to_pvr2_v4l2_fh(file);
 	struct pvr2_hdw *hdw = fh->channel.mc_head->hdw;
 	int ret;
 
@@ -758,7 +761,7 @@ static int pvr2_s_selection(struct file *file, void *priv,
 
 static int pvr2_log_status(struct file *file, void *priv)
 {
-	struct pvr2_v4l2_fh *fh = file->private_data;
+	struct pvr2_v4l2_fh *fh = to_pvr2_v4l2_fh(file);
 	struct pvr2_hdw *hdw = fh->channel.mc_head->hdw;
 
 	pvr2_hdw_trigger_module_log(hdw);
@@ -882,7 +885,7 @@ static void pvr2_v4l2_internal_check(struct pvr2_channel *chp)
 
 static int pvr2_v4l2_release(struct file *file)
 {
-	struct pvr2_v4l2_fh *fhp = file->private_data;
+	struct pvr2_v4l2_fh *fhp = to_pvr2_v4l2_fh(file);
 	struct pvr2_v4l2 *vp = fhp->pdi->v4lp;
 	struct pvr2_hdw *hdw = fhp->channel.mc_head->hdw;
 
@@ -1000,7 +1003,7 @@ static int pvr2_v4l2_open(struct file *file)
 	}
 
 	fhp->file = file;
-	file->private_data = fhp;
+	file->private_data = &fhp->fh;
 
 	fhp->fw_mode_flag = pvr2_hdw_cpufw_get_enabled(hdw);
 	v4l2_fh_add(&fhp->fh);
@@ -1055,7 +1058,7 @@ static int pvr2_v4l2_iosetup(struct pvr2_v4l2_fh *fh)
 static ssize_t pvr2_v4l2_read(struct file *file,
 			      char __user *buff, size_t count, loff_t *ppos)
 {
-	struct pvr2_v4l2_fh *fh = file->private_data;
+	struct pvr2_v4l2_fh *fh = to_pvr2_v4l2_fh(file);
 	int ret;
 
 	if (fh->fw_mode_flag) {
@@ -1117,7 +1120,7 @@ static ssize_t pvr2_v4l2_read(struct file *file,
 static __poll_t pvr2_v4l2_poll(struct file *file, poll_table *wait)
 {
 	__poll_t mask = 0;
-	struct pvr2_v4l2_fh *fh = file->private_data;
+	struct pvr2_v4l2_fh *fh = to_pvr2_v4l2_fh(file);
 	int ret;
 
 	if (fh->fw_mode_flag) {

-- 
2.49.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
