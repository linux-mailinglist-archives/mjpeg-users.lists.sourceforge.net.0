Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A15B18EF5
	for <lists+mjpeg-users@lfdr.de>; Sat,  2 Aug 2025 15:55:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:To:In-Reply-To:References:Message-Id:MIME-Version:Date:From:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lK1DzBrpIA2CBIL3J6YaricnyttsGYmAWCmdorX4+s4=; b=K4juB4evuI/zkDZJ7VY8hldHSV
	n9sqZmpXRp1RhZZd7Oo+foTkCVtoiw4YbPepWUHoiK4Bo5LTHs5E7ZisM8z0DAgeFefwbG2NdCuv/
	SBdxSw3YxeYfHEbiEqkjlXQXeyOukhHt4DUkp9yoyjV3WMO7jD6+aHQP34XKmxiyOFtc=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1uiChx-0006hj-1W;
	Sat, 02 Aug 2025 13:55:33 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacopo.mondi@ideasonboard.com>) id 1ui8mT-0000WV-WA
 for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:43:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cAJid0AUS3BAWgHBrD5QwA1Nkox3fMeGwIJGILWHjLE=; b=NHfLNtwV2LB3iZh8HoXeX79MDM
 OBzNE5yrGvKd1o7PimFaZHtvXzNqAp4RTWmBv/AVTNKcEhZCymXOgjs+wVbLt/uCrBN/qga8ftl16
 OFE60L6HBwPePSwysAM6Er8zFn/rODBzk1EZwNe1QVzTnMzo4FWdVFkLmxyGaBFviMxo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cAJid0AUS3BAWgHBrD5QwA1Nkox3fMeGwIJGILWHjLE=; b=AsoLd558SSheL+2nx64SyeEGHk
 QCX0MmnOFhCRu+zB1APuVSH4NQONSR/VuPNpl3JL8U44hPDUSZ/96c5teZwU0+1N5BXQn+YYl1KFR
 me+hslhYAczD4kYZwzNcJ6b4PFiW8pdoMPZdnEVJQkT3a1FUAOKe7sxrSa0up/pLMQB8=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ui8mT-0005uk-7K for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:43:57 +0000
Received: from [192.168.0.172] (mob-5-90-138-121.net.vodafone.it
 [5.90.138.121])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id A4D2132D9;
 Sat,  2 Aug 2025 11:32:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1754127173;
 bh=iuKNDwtt8kKRQfGxKCSjEUYPIwMYunyGqFuuiLv3K0Q=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=etIRH98NKbNN5H2qEksc93SH3XM0T+iHwBiOZ2zIIi9Jz5Nfq8I5gq/qqfZoLaGIf
 jwI5tLaeBjeNOiJimErQ6oMw555d/gVWivBRSyNQPaGhthmghohdU9eW2fyrzXMbKN
 YNAvg3Xt+DbgyFDC+JIZ+7yhFf9U81sDlxpvzS2A=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Sat, 02 Aug 2025 11:23:21 +0200
MIME-Version: 1.0
Message-Id: <20250802-media-private-data-v1-59-eb140ddd6a9d@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3953;
 i=jacopo.mondi@ideasonboard.com; h=from:subject:message-id;
 bh=iuKNDwtt8kKRQfGxKCSjEUYPIwMYunyGqFuuiLv3K0Q=;
 b=owEBbQKS/ZANAwAKAXI0Bo8WoVY8AcsmYgBojdj+3oIZOpPyRnUEOapjuFEBEhE8i4b15dP3j
 TFU3u0Zq82JAjMEAAEKAB0WIQS1xD1IgJogio9YOMByNAaPFqFWPAUCaI3Y/gAKCRByNAaPFqFW
 PEWzD/wO0yY2ImRGI/xM/rt7O/iVxa6dL1bda4RnoBRoPjDFzI2D/JgAWB88ItgnHwmmeUYyrHD
 aj6Oer2TYNjkhdmVyApjHfcDzEVdnHmj0MCYdbR5oYRULICvDiv+kZJ0aPYK9Vr/rWjwbEbyxu8
 TZoBzFl9CY4bK7bDY6qWTtl1Pv1l9xYj466g0Dez2B/ww/Ei1tJVucCoAdclB61xY0Njd5X0RVN
 D/y29IhK9YmbbIeAYOaN3iOnc67GIwI7A2gJfXZNbXwNrmfs3hTN0onFjIqGYA9CH98qnp8ZFOz
 dgNwNbCS2sscvB/QF+zhd1S+x7O6/818r7a9o1Vu31PLtAllughH3gzfaKL4oIfUJeSXe7uZQKZ
 y1V77hajADut4bY3tNpd4jdT66FUKAnZNVaKkBiiL8iRNSDwrGmsWcArE+SETAqLKrmJz9HkT73
 JvjpNxuC5xbZ+4J/yBgaSlrh1Sd2i+cLtXzNftndJsiE8bsLMw09qnRtgyZtMjiGd7XN2BhbnBR
 RO3qRrFXEwntpdTPzHbs8a+S1xXGCeVbVKgWfkzcuel9H4TGqByb+6zSzkEpxmo38Agt5D/yYIQ
 dELD/16003/RrZ2xtraKeJ72lH62ckXJVyXXwjoQrysiGVxDAhvB+SQ2okXgKbbhWAudP7U5PYh
 qsmZdurZGwpzh6g==
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
X-Headers-End: 1ui8mT-0005uk-7K
X-Mailman-Approved-At: Sat, 02 Aug 2025 13:55:15 +0000
Subject: [Mjpeg-users] [PATCH 59/65] media: usb: hdpvr: Access v4l2_fh from
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
 drivers/media/usb/hdpvr/hdpvr-video.c | 24 +++++++++++++++---------
 1 file changed, 15 insertions(+), 9 deletions(-)

diff --git a/drivers/media/usb/hdpvr/hdpvr-video.c b/drivers/media/usb/hdpvr/hdpvr-video.c
index 6c6e467f85549e86598e73d29352a84de7df2f4d..8a5c2c5227ebe6f64bf44fff50dd4918f4f5394e 100644
--- a/drivers/media/usb/hdpvr/hdpvr-video.c
+++ b/drivers/media/usb/hdpvr/hdpvr-video.c
@@ -52,6 +52,11 @@ struct hdpvr_fh {
 	bool legacy_mode;
 };
 
+static inline struct hdpvr_fh *file_to_hdpvr_fh(struct file *file)
+{
+	return container_of(file_to_v4l2_fh(file), struct hdpvr_fh, fh);
+}
+
 static uint list_size(struct list_head *list)
 {
 	struct list_head *tmp;
@@ -589,7 +594,7 @@ static int vidioc_s_std(struct file *file, void *_fh,
 			v4l2_std_id std)
 {
 	struct hdpvr_device *dev = video_drvdata(file);
-	struct hdpvr_fh *fh = _fh;
+	struct hdpvr_fh *fh = file_to_hdpvr_fh(file);
 	u8 std_type = 1;
 
 	if (!fh->legacy_mode && dev->options.video_input == HDPVR_COMPONENT)
@@ -609,7 +614,8 @@ static int vidioc_g_std(struct file *file, void *_fh,
 			v4l2_std_id *std)
 {
 	struct hdpvr_device *dev = video_drvdata(file);
-	struct hdpvr_fh *fh = _fh;
+	struct hdpvr_fh *fh = file_to_hdpvr_fh(file);
+
 
 	if (!fh->legacy_mode && dev->options.video_input == HDPVR_COMPONENT)
 		return -ENODATA;
@@ -620,8 +626,8 @@ static int vidioc_g_std(struct file *file, void *_fh,
 static int vidioc_querystd(struct file *file, void *_fh, v4l2_std_id *a)
 {
 	struct hdpvr_device *dev = video_drvdata(file);
+	struct hdpvr_fh *fh = file_to_hdpvr_fh(file);
 	struct hdpvr_video_info vid_info;
-	struct hdpvr_fh *fh = _fh;
 	int ret;
 
 	*a = V4L2_STD_UNKNOWN;
@@ -640,7 +646,7 @@ static int vidioc_s_dv_timings(struct file *file, void *_fh,
 				    struct v4l2_dv_timings *timings)
 {
 	struct hdpvr_device *dev = video_drvdata(file);
-	struct hdpvr_fh *fh = _fh;
+	struct hdpvr_fh *fh = file_to_hdpvr_fh(file);
 	int i;
 
 	fh->legacy_mode = false;
@@ -663,7 +669,7 @@ static int vidioc_g_dv_timings(struct file *file, void *_fh,
 				    struct v4l2_dv_timings *timings)
 {
 	struct hdpvr_device *dev = video_drvdata(file);
-	struct hdpvr_fh *fh = _fh;
+	struct hdpvr_fh *fh = file_to_hdpvr_fh(file);
 
 	fh->legacy_mode = false;
 	if (dev->options.video_input)
@@ -676,7 +682,7 @@ static int vidioc_query_dv_timings(struct file *file, void *_fh,
 				    struct v4l2_dv_timings *timings)
 {
 	struct hdpvr_device *dev = video_drvdata(file);
-	struct hdpvr_fh *fh = _fh;
+	struct hdpvr_fh *fh = file_to_hdpvr_fh(file);
 	struct hdpvr_video_info vid_info;
 	bool interlaced;
 	int ret = 0;
@@ -718,7 +724,7 @@ static int vidioc_enum_dv_timings(struct file *file, void *_fh,
 				    struct v4l2_enum_dv_timings *timings)
 {
 	struct hdpvr_device *dev = video_drvdata(file);
-	struct hdpvr_fh *fh = _fh;
+	struct hdpvr_fh *fh = file_to_hdpvr_fh(file);
 
 	fh->legacy_mode = false;
 	memset(timings->reserved, 0, sizeof(timings->reserved));
@@ -734,7 +740,7 @@ static int vidioc_dv_timings_cap(struct file *file, void *_fh,
 				    struct v4l2_dv_timings_cap *cap)
 {
 	struct hdpvr_device *dev = video_drvdata(file);
-	struct hdpvr_fh *fh = _fh;
+	struct hdpvr_fh *fh = file_to_hdpvr_fh(file);
 
 	fh->legacy_mode = false;
 	if (dev->options.video_input)
@@ -994,7 +1000,7 @@ static int vidioc_g_fmt_vid_cap(struct file *file, void *_fh,
 				struct v4l2_format *f)
 {
 	struct hdpvr_device *dev = video_drvdata(file);
-	struct hdpvr_fh *fh = _fh;
+	struct hdpvr_fh *fh = file_to_hdpvr_fh(file);
 	int ret;
 
 	/*

-- 
2.49.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
