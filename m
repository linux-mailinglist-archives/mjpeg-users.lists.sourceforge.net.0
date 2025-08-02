Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 22F2DB18F02
	for <lists+mjpeg-users@lfdr.de>; Sat,  2 Aug 2025 15:55:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:To:In-Reply-To:References:Message-Id:MIME-Version:Date:From:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RHzoOSMNESWrWOn5faN3HVlU6Mlhm7K3TL09xNRLpLM=; b=MqydOjy0/4W3oH13ec/DW+bcfl
	/nVRZ321P/iQGGOsOc/Vo9fmEB58I+f79UqKN7Lnw9tRevT9B0BLSqMacBrgll6/LG/p18uAkrTEK
	zVA7FwwpMnn9AytnOIHDcnkmyOHMH3d9zfXRyJErpkdME07IXXAvAvGRdBKXIti/giaM=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1uiCi1-0006qB-Vp;
	Sat, 02 Aug 2025 13:55:37 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacopo.mondi@ideasonboard.com>) id 1ui8qd-0000ii-EN
 for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:48:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iJVPyhZCzmIgMI6sKLF099KwMeKHldbiLURiDSBngAU=; b=d+oqEhNe5Yd9HO9dIBNGR3T1/a
 KQONxKw2uwq7qC0kJaAkRMz9F5AWjrGKB7tgD2wwaxzmY9o/9cXFD1o6GNlGJ7KaJmLZhD9J3+2CS
 W3OU/u+TB2s3rErg/k2Zp2qsaRDdcz/T9rDaaruMhVO5DGfeFZT4+GWUe2oeQwj2CFC4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iJVPyhZCzmIgMI6sKLF099KwMeKHldbiLURiDSBngAU=; b=IvsxSu5nV9UD7qa4An9C/l6plH
 0ZppgU7OQ722jWTYwr6Vz+rnWG+HqwgyqSQWTFN7fi44bdbn6WUArdleEj1EYvDic23wETb2cHVGa
 DN8GAAQHibEnXzlo6f0h7H82cjtSBSN1p+DwcqHbt8+tv3Wj89PwPjpQpX3pVKaAxeVw=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ui8qb-0006OG-Ll for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:48:15 +0000
Received: from [192.168.0.172] (mob-5-90-138-121.net.vodafone.it
 [5.90.138.121])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 11CC83DA;
 Sat,  2 Aug 2025 11:22:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1754126570;
 bh=uc+e4D121XpcsbBTsetI8Y/3AlX9Hz46SjF1XOt24QQ=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=V5iDpcEspRPnvHfAwmOr99+IOUj9lDyUHdxF6w3FWnwGAO1+33nGVL7N9XM5qQJqa
 zG/eRFBKfgJFJiJ1JPZ3l47lLiuJfgv5GQ7AvAEbP6KtwH3xGSQXtSsVwcwTytnmGT
 2HukJ/5pnKY6Jk6oBPJzo8ZfDbDuVBmWfAaONPC8=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Sat, 02 Aug 2025 11:22:23 +0200
MIME-Version: 1.0
Message-Id: <20250802-media-private-data-v1-1-eb140ddd6a9d@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=10416;
 i=jacopo.mondi@ideasonboard.com; h=from:subject:message-id;
 bh=4KYc+fAfF5XAqGdIeu1Z3mk2YUK/u81xqaNfmxJ3Ufs=;
 b=owEBbQKS/ZANAwAKAXI0Bo8WoVY8AcsmYgBojdj3RHqWTU3HuCd37ITdQdY7tRmUtJ6lQQYz0
 KMrHWu85E+JAjMEAAEKAB0WIQS1xD1IgJogio9YOMByNAaPFqFWPAUCaI3Y9wAKCRByNAaPFqFW
 PEKcD/98jLHB4HokFvLEJrxTaXM/Serb/l7Ex/Uds/UYB8jQLGOeF/4nWiAMeE9ljn9idNeoexQ
 YzY6l5ipNXYKt8SpqjiNJ0WO/2Yu6CvTgBB7URe02gA2bJNnXjlBGXmaquBHBzvqaJLaz4cn8eu
 9624b/9DQMRo0VVg4uAyclXwBLHSlBzZ5jUbAOIB1iqi1oSuzh5AhiboRs+OAb7yk3xRj+F2ew0
 GfBOXE7qHxtzXyt2mHc+evzBcTOScHKEZDy/ZcwqAFCkR0x/up3I3ICsyrfPCZKQ13BrHEtjmGP
 zZnYt/jFmUjMiHVUFG+JBSOGkZAXEEW/I6lvsFLYnWvOBrGQS6TiLo+44PBa9V8XRzp8pddAr/+
 ejretpCpgosNlOQhdUuxxMedmu2B7Duot57BIAfx6kWQEkqwr3/3UY2eenTgITzQwFfBNyJ9QmR
 VTwgKdM0gzy6KGahbRc2ln1oaGCZyGoQNRvwjH2BCKZnuqyzzKhd03K2v43qHXtOJjwKoaSRkvl
 wrtb2LZ6gJ/2U2diVU9sidMTAUioUH0zt7e4AsxR/3MKBafy/+lXdohYJWdFBpW/qXgLjqJVlvh
 tS0iQ5SoNtCBJlRnbw0ak+o40Le5sVvkLGvfdWa0pE8ENPBX2N8vVjRt8dpKg+3XN/7Bxq/cRzj
 wzQUMrJx6Nx3rng==
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
 Most V4L2 drivers store the v4l2_fh pointer in file->private_data. The saa7164
 instead stores the pointer to the driver-specific structure that embeds the
 v4l2_fh. Switch to storing the v4l2_fh pointe [...] 
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
X-Headers-End: 1ui8qb-0006OG-Ll
X-Mailman-Approved-At: Sat, 02 Aug 2025 13:55:16 +0000
Subject: [Mjpeg-users] [PATCH 01/65] media: pci: saa7164: Store v4l2_fh
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
saa7164 instead stores the pointer to the driver-specific structure that
embeds the v4l2_fh. Switch to storing the v4l2_fh pointer itself to
standardize behaviour across drivers. This also prepares for future
refactoring that depends on v4l2_fh being stored in private_data.

This also fixes a bug in the vidioc_g_std() in saa7164-vbi.c that casts
the private_data void pointer to a saa7164_encoder_fh instead of a
saa7164_vbi_fh. The bug has no practical consequence as the two
structures are identical.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
 drivers/media/pci/saa7164/saa7164-encoder.c | 27 +++++++++++++--------------
 drivers/media/pci/saa7164/saa7164-vbi.c     | 22 +++++++++++-----------
 drivers/media/pci/saa7164/saa7164.h         | 10 ++++++++++
 3 files changed, 34 insertions(+), 25 deletions(-)

diff --git a/drivers/media/pci/saa7164/saa7164-encoder.c b/drivers/media/pci/saa7164/saa7164-encoder.c
index bf73e9e83f52324ca494816f7d9fa2fae7de6774..296f50b6b8d38e0ab617f0990d8f697ba96b0016 100644
--- a/drivers/media/pci/saa7164/saa7164-encoder.c
+++ b/drivers/media/pci/saa7164/saa7164-encoder.c
@@ -219,7 +219,7 @@ int saa7164_s_std(struct saa7164_port *port, v4l2_std_id id)
 
 static int vidioc_s_std(struct file *file, void *priv, v4l2_std_id id)
 {
-	struct saa7164_encoder_fh *fh = file->private_data;
+	struct saa7164_encoder_fh *fh = to_saa7164_encoder_fh(file);
 
 	return saa7164_s_std(fh->port, id);
 }
@@ -232,7 +232,7 @@ int saa7164_g_std(struct saa7164_port *port, v4l2_std_id *id)
 
 static int vidioc_g_std(struct file *file, void *priv, v4l2_std_id *id)
 {
-	struct saa7164_encoder_fh *fh = file->private_data;
+	struct saa7164_encoder_fh *fh = to_saa7164_encoder_fh(file);
 
 	return saa7164_g_std(fh->port, id);
 }
@@ -277,7 +277,7 @@ int saa7164_g_input(struct saa7164_port *port, unsigned int *i)
 
 static int vidioc_g_input(struct file *file, void *priv, unsigned int *i)
 {
-	struct saa7164_encoder_fh *fh = file->private_data;
+	struct saa7164_encoder_fh *fh = to_saa7164_encoder_fh(file);
 
 	return saa7164_g_input(fh->port, i);
 }
@@ -301,14 +301,14 @@ int saa7164_s_input(struct saa7164_port *port, unsigned int i)
 
 static int vidioc_s_input(struct file *file, void *priv, unsigned int i)
 {
-	struct saa7164_encoder_fh *fh = file->private_data;
+	struct saa7164_encoder_fh *fh = to_saa7164_encoder_fh(file);
 
 	return saa7164_s_input(fh->port, i);
 }
 
 int saa7164_g_tuner(struct file *file, void *priv, struct v4l2_tuner *t)
 {
-	struct saa7164_encoder_fh *fh = file->private_data;
+	struct saa7164_encoder_fh *fh = to_saa7164_encoder_fh(file);
 	struct saa7164_port *port = fh->port;
 	struct saa7164_dev *dev = port->dev;
 
@@ -347,7 +347,7 @@ int saa7164_g_frequency(struct saa7164_port *port, struct v4l2_frequency *f)
 static int vidioc_g_frequency(struct file *file, void *priv,
 	struct v4l2_frequency *f)
 {
-	struct saa7164_encoder_fh *fh = file->private_data;
+	struct saa7164_encoder_fh *fh = to_saa7164_encoder_fh(file);
 
 	return saa7164_g_frequency(fh->port, f);
 }
@@ -400,7 +400,7 @@ int saa7164_s_frequency(struct saa7164_port *port,
 static int vidioc_s_frequency(struct file *file, void *priv,
 			      const struct v4l2_frequency *f)
 {
-	struct saa7164_encoder_fh *fh = file->private_data;
+	struct saa7164_encoder_fh *fh = to_saa7164_encoder_fh(file);
 
 	return saa7164_s_frequency(fh->port, f);
 }
@@ -483,7 +483,7 @@ static int saa7164_s_ctrl(struct v4l2_ctrl *ctrl)
 static int vidioc_querycap(struct file *file, void  *priv,
 	struct v4l2_capability *cap)
 {
-	struct saa7164_encoder_fh *fh = file->private_data;
+	struct saa7164_encoder_fh *fh = to_saa7164_encoder_fh(file);
 	struct saa7164_port *port = fh->port;
 	struct saa7164_dev *dev = port->dev;
 
@@ -510,7 +510,7 @@ static int vidioc_enum_fmt_vid_cap(struct file *file, void  *priv,
 static int vidioc_fmt_vid_cap(struct file *file, void *priv,
 				struct v4l2_format *f)
 {
-	struct saa7164_encoder_fh *fh = file->private_data;
+	struct saa7164_encoder_fh *fh = to_saa7164_encoder_fh(file);
 	struct saa7164_port *port = fh->port;
 
 	f->fmt.pix.pixelformat  = V4L2_PIX_FMT_MPEG;
@@ -726,14 +726,14 @@ static int fops_open(struct file *file)
 	fh->port = port;
 	v4l2_fh_init(&fh->fh, video_devdata(file));
 	v4l2_fh_add(&fh->fh);
-	file->private_data = fh;
+	file->private_data = &fh->fh;
 
 	return 0;
 }
 
 static int fops_release(struct file *file)
 {
-	struct saa7164_encoder_fh *fh = file->private_data;
+	struct saa7164_encoder_fh *fh = to_saa7164_encoder_fh(file);
 	struct saa7164_port *port = fh->port;
 	struct saa7164_dev *dev = port->dev;
 
@@ -787,7 +787,7 @@ saa7164_user_buffer *saa7164_enc_next_buf(struct saa7164_port *port)
 static ssize_t fops_read(struct file *file, char __user *buffer,
 	size_t count, loff_t *pos)
 {
-	struct saa7164_encoder_fh *fh = file->private_data;
+	struct saa7164_encoder_fh *fh = to_saa7164_encoder_fh(file);
 	struct saa7164_port *port = fh->port;
 	struct saa7164_user_buffer *ubuf = NULL;
 	struct saa7164_dev *dev = port->dev;
@@ -893,8 +893,7 @@ static ssize_t fops_read(struct file *file, char __user *buffer,
 static __poll_t fops_poll(struct file *file, poll_table *wait)
 {
 	__poll_t req_events = poll_requested_events(wait);
-	struct saa7164_encoder_fh *fh =
-		(struct saa7164_encoder_fh *)file->private_data;
+	struct saa7164_encoder_fh *fh = to_saa7164_encoder_fh(file);
 	struct saa7164_port *port = fh->port;
 	__poll_t mask = v4l2_ctrl_poll(file, wait);
 
diff --git a/drivers/media/pci/saa7164/saa7164-vbi.c b/drivers/media/pci/saa7164/saa7164-vbi.c
index ac958a5fca78e5094d7befd8c125fa4233bb6999..a7e398f304725c7fa5aa4cf1edf0deb0df059641 100644
--- a/drivers/media/pci/saa7164/saa7164-vbi.c
+++ b/drivers/media/pci/saa7164/saa7164-vbi.c
@@ -144,28 +144,28 @@ static int saa7164_vbi_initialize(struct saa7164_port *port)
 /* -- V4L2 --------------------------------------------------------- */
 static int vidioc_s_std(struct file *file, void *priv, v4l2_std_id id)
 {
-	struct saa7164_vbi_fh *fh = file->private_data;
+	struct saa7164_vbi_fh *fh = to_saa7164_vbi_fh(file);
 
 	return saa7164_s_std(fh->port->enc_port, id);
 }
 
 static int vidioc_g_std(struct file *file, void *priv, v4l2_std_id *id)
 {
-	struct saa7164_encoder_fh *fh = file->private_data;
+	struct saa7164_vbi_fh *fh = to_saa7164_vbi_fh(file);
 
 	return saa7164_g_std(fh->port->enc_port, id);
 }
 
 static int vidioc_g_input(struct file *file, void *priv, unsigned int *i)
 {
-	struct saa7164_vbi_fh *fh = file->private_data;
+	struct saa7164_vbi_fh *fh = to_saa7164_vbi_fh(file);
 
 	return saa7164_g_input(fh->port->enc_port, i);
 }
 
 static int vidioc_s_input(struct file *file, void *priv, unsigned int i)
 {
-	struct saa7164_vbi_fh *fh = file->private_data;
+	struct saa7164_vbi_fh *fh = to_saa7164_vbi_fh(file);
 
 	return saa7164_s_input(fh->port->enc_port, i);
 }
@@ -173,7 +173,7 @@ static int vidioc_s_input(struct file *file, void *priv, unsigned int i)
 static int vidioc_g_frequency(struct file *file, void *priv,
 	struct v4l2_frequency *f)
 {
-	struct saa7164_vbi_fh *fh = file->private_data;
+	struct saa7164_vbi_fh *fh = to_saa7164_vbi_fh(file);
 
 	return saa7164_g_frequency(fh->port->enc_port, f);
 }
@@ -181,7 +181,7 @@ static int vidioc_g_frequency(struct file *file, void *priv,
 static int vidioc_s_frequency(struct file *file, void *priv,
 	const struct v4l2_frequency *f)
 {
-	struct saa7164_vbi_fh *fh = file->private_data;
+	struct saa7164_vbi_fh *fh = to_saa7164_vbi_fh(file);
 	int ret = saa7164_s_frequency(fh->port->enc_port, f);
 
 	if (ret == 0)
@@ -192,7 +192,7 @@ static int vidioc_s_frequency(struct file *file, void *priv,
 static int vidioc_querycap(struct file *file, void  *priv,
 	struct v4l2_capability *cap)
 {
-	struct saa7164_vbi_fh *fh = file->private_data;
+	struct saa7164_vbi_fh *fh = to_saa7164_vbi_fh(file);
 	struct saa7164_port *port = fh->port;
 	struct saa7164_dev *dev = port->dev;
 
@@ -429,14 +429,14 @@ static int fops_open(struct file *file)
 	fh->port = port;
 	v4l2_fh_init(&fh->fh, video_devdata(file));
 	v4l2_fh_add(&fh->fh);
-	file->private_data = fh;
+	file->private_data = &fh->fh;
 
 	return 0;
 }
 
 static int fops_release(struct file *file)
 {
-	struct saa7164_vbi_fh *fh = file->private_data;
+	struct saa7164_vbi_fh *fh = to_saa7164_vbi_fh(file);
 	struct saa7164_port *port = fh->port;
 	struct saa7164_dev *dev = port->dev;
 
@@ -489,7 +489,7 @@ saa7164_user_buffer *saa7164_vbi_next_buf(struct saa7164_port *port)
 static ssize_t fops_read(struct file *file, char __user *buffer,
 	size_t count, loff_t *pos)
 {
-	struct saa7164_vbi_fh *fh = file->private_data;
+	struct saa7164_vbi_fh *fh = to_saa7164_vbi_fh(file);
 	struct saa7164_port *port = fh->port;
 	struct saa7164_user_buffer *ubuf = NULL;
 	struct saa7164_dev *dev = port->dev;
@@ -596,7 +596,7 @@ static ssize_t fops_read(struct file *file, char __user *buffer,
 
 static __poll_t fops_poll(struct file *file, poll_table *wait)
 {
-	struct saa7164_vbi_fh *fh = (struct saa7164_vbi_fh *)file->private_data;
+	struct saa7164_vbi_fh *fh = to_saa7164_vbi_fh(file);
 	struct saa7164_port *port = fh->port;
 	__poll_t mask = 0;
 
diff --git a/drivers/media/pci/saa7164/saa7164.h b/drivers/media/pci/saa7164/saa7164.h
index e1bac1fe19d3098792b2051b537857e3f13054d5..7b511f7f1cfc305a9ffe60722b9ebe093163787d 100644
--- a/drivers/media/pci/saa7164/saa7164.h
+++ b/drivers/media/pci/saa7164/saa7164.h
@@ -180,12 +180,22 @@ struct saa7164_encoder_fh {
 	atomic_t v4l_reading;
 };
 
+static inline struct saa7164_encoder_fh *to_saa7164_encoder_fh(struct file *filp)
+{
+	return container_of(filp->private_data, struct saa7164_encoder_fh, fh);
+}
+
 struct saa7164_vbi_fh {
 	struct v4l2_fh fh;
 	struct saa7164_port *port;
 	atomic_t v4l_reading;
 };
 
+static inline struct saa7164_vbi_fh *to_saa7164_vbi_fh(struct file *filp)
+{
+	return container_of(filp->private_data, struct saa7164_vbi_fh, fh);
+}
+
 struct saa7164_histogram_bucket {
 	u32 val;
 	u32 count;

-- 
2.49.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
