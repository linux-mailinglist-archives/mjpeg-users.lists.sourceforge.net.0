Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 950A7B18ED6
	for <lists+mjpeg-users@lfdr.de>; Sat,  2 Aug 2025 15:55:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:To:In-Reply-To:References:Message-Id:MIME-Version:Date:From:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V3f50awfCZc3Lc7iocEJ/JKPJda1EMcQn9urHufnOqg=; b=kuMnaqZ/qgNm+L+kPs79Nd5BGJ
	K/8SvdEmU6a2q5xErvBQRmZ4tpNmKcVEoSseZH1gXZ9WUbOtKewMAd9WSWxecfQlJ6ZlWD2zHTLbQ
	XXkx6WrsQoaN1WoPxg7t3zyXKTizUV+2yuq/5R0nLE+gzyRzQLBgVFntRXTm6g1HMlzU=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1uiChm-0006TW-DM;
	Sat, 02 Aug 2025 13:55:22 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacopo.mondi@ideasonboard.com>) id 1ui8hm-0000SZ-7F
 for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:39:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qVSeCQwvwlGZAl9WI2KGkY3vIBFCmoLKqsuWDhUdfo4=; b=Fe3mxyv9ujxPpZuMsVAWZOGaps
 swpnk4TBSFgFJewLG39ewaPS/FVlaD4Bcp++iMS/dpx4UzibELzzGqalDVNihq/05rQsHCT3e/h7u
 xZLKe/ZPtp3De46UMrfVoizkm3HRqNKCZmPkwDuHgDutZCizVIsvG906/TjAaMuAUuzQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qVSeCQwvwlGZAl9WI2KGkY3vIBFCmoLKqsuWDhUdfo4=; b=i2goDPyVANZNrET9jA8CuvvARS
 AVbZJgL+1+y5pzkUIxNQ6g2iRxg2AbT0/EX9PhLzP3DrxD08gWlcibepd5PQUfhEt18m4BY24K9OF
 PpnausmEehoWBRNU05zuh2F7tcRtV2sL3NGrBWALTRvTcLNXHRvdh/+Mdt0E8bCwP3bI=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ui8hl-0005Zr-4S for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:39:05 +0000
Received: from [192.168.0.172] (mob-5-90-138-121.net.vodafone.it
 [5.90.138.121])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id B8B6E3BA3;
 Sat,  2 Aug 2025 11:26:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1754126807;
 bh=8wi3ERfqhNF0n7Qty7pg2iRliLtnhljmMkGSJfQ6Hsg=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=DkuGu4xRR6LJyt/BrWYiHj5iOqv5dhewfJ3hwKWatqKNWw5aye9NwZagv3kmssPOE
 CrfWdtKhJm9DcJj5g5CzQoYrcgh3RGvIuF70mp5W3SdrzZoyvluCyQ+wrLAQhg/E1L
 kIcY0MpBFSbqgFuWM94vhNjwhFsmlkdbx86x8gLE=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Sat, 02 Aug 2025 11:22:46 +0200
MIME-Version: 1.0
Message-Id: <20250802-media-private-data-v1-24-eb140ddd6a9d@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3646;
 i=jacopo.mondi@ideasonboard.com; h=from:subject:message-id;
 bh=9GluRJsNYGFG25N0tAt2DCmvfQ/RCr9Ew1fkTJNt5v4=;
 b=owEBbQKS/ZANAwAKAXI0Bo8WoVY8AcsmYgBojdj6pttk4jyKbwjBxeL0idYh0vr/bLr00peVD
 JUZKh9W0+eJAjMEAAEKAB0WIQS1xD1IgJogio9YOMByNAaPFqFWPAUCaI3Y+gAKCRByNAaPFqFW
 PGDoEAC13XyW/5FISnksj3XUPDtzKAE0wQOpV6Bci/1SfoKU0HQM/iCHDx/sMO0qeSd99+64lGr
 gJRtPOLtn6N8BKObyNPsfUp+mWuBnx5vmSe1Pbde63K6+drX2xvFoiAzbIXnfK/fP2jlpBnAICK
 iZ7dRTBReQ8v0opu20jNW6evMyN4a342ga3+7vMBOf1np9sErNiaYIRsx2+Mq0B1KKNt4GwPE9b
 /YHZKp48kNiJwFv7WAuSZ8wYIXV3GYqG1YO06xSSauUp59H7rcKz5wKKjIZ5cHdAXPgZ1wM6Akr
 NQxbA8bQhpJaT0rDQsMXokHC3odLdwITPD51wRddL6FhZUMxNbvaKJFhf3wkgf6WZYxqM+i+7rf
 X7+lGVUksiq9uD+OSHUXhpHdk/H1zA/StHIrmyB7hKWi0ZEePGrRi/aSWxmlmrq1BGxSZ5l2S/s
 PN0iJUN26Xym+8+JpsmsyKda1QyFgIcOSURmg2inMwMEv/ZOM+pQf3GLCsWUCJ1HY9NP0U1GOq2
 Sp2PJ7STeJ8BbL0TKF0XPsE5gpeUaSL7Lf++MdERh/p3bzNfElGYTtAOI/KyrGFjriYijVcxmG4
 cVjjRgPCaqBajc6c6NNGpl61zEF0t1FzWrpJ3QcYADnGeyIHJ3WMiAyfCjoJfptKbkkoVeX3w2Y
 56CTWDdhVyiViXw==
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
 The second argument to the iris_get_inst() function is never used. Drop it.
 Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
 Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com> ---
 drivers/media/platform/qcom/iris/iris_vidc.c
 | 18 +++++++++--------- [...] 
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
X-Headers-End: 1ui8hl-0005Zr-4S
X-Mailman-Approved-At: Sat, 02 Aug 2025 13:55:16 +0000
Subject: [Mjpeg-users] [PATCH 24/65] media: qcom: iris: Drop unused argument
 to iris_get_inst()
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

The second argument to the iris_get_inst() function is never used. Drop
it.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
 drivers/media/platform/qcom/iris/iris_vidc.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/media/platform/qcom/iris/iris_vidc.c b/drivers/media/platform/qcom/iris/iris_vidc.c
index 73c96498759cbde8e1d9870336023e7773f6f28b..64ebec2ca6b3d58118ac1a6f4ddeed2e43de6d5b 100644
--- a/drivers/media/platform/qcom/iris/iris_vidc.c
+++ b/drivers/media/platform/qcom/iris/iris_vidc.c
@@ -69,7 +69,7 @@ static void iris_remove_session(struct iris_inst *inst)
 	mutex_unlock(&core->lock);
 }
 
-static inline struct iris_inst *iris_get_inst(struct file *filp, void *fh)
+static inline struct iris_inst *iris_get_inst(struct file *filp)
 {
 	return container_of(file_to_v4l2_fh(filp), struct iris_inst, fh);
 }
@@ -251,7 +251,7 @@ static void iris_check_num_queued_internal_buffers(struct iris_inst *inst, u32 p
 
 int iris_close(struct file *filp)
 {
-	struct iris_inst *inst = iris_get_inst(filp, NULL);
+	struct iris_inst *inst = iris_get_inst(filp);
 
 	v4l2_ctrl_handler_free(&inst->ctrl_handler);
 	v4l2_m2m_ctx_release(inst->m2m_ctx);
@@ -276,14 +276,14 @@ int iris_close(struct file *filp)
 
 static int iris_enum_fmt(struct file *filp, void *fh, struct v4l2_fmtdesc *f)
 {
-	struct iris_inst *inst = iris_get_inst(filp, NULL);
+	struct iris_inst *inst = iris_get_inst(filp);
 
 	return iris_vdec_enum_fmt(inst, f);
 }
 
 static int iris_try_fmt_vid_mplane(struct file *filp, void *fh, struct v4l2_format *f)
 {
-	struct iris_inst *inst = iris_get_inst(filp, NULL);
+	struct iris_inst *inst = iris_get_inst(filp);
 	int ret;
 
 	mutex_lock(&inst->lock);
@@ -295,7 +295,7 @@ static int iris_try_fmt_vid_mplane(struct file *filp, void *fh, struct v4l2_form
 
 static int iris_s_fmt_vid_mplane(struct file *filp, void *fh, struct v4l2_format *f)
 {
-	struct iris_inst *inst = iris_get_inst(filp, NULL);
+	struct iris_inst *inst = iris_get_inst(filp);
 	int ret;
 
 	mutex_lock(&inst->lock);
@@ -307,7 +307,7 @@ static int iris_s_fmt_vid_mplane(struct file *filp, void *fh, struct v4l2_format
 
 static int iris_g_fmt_vid_mplane(struct file *filp, void *fh, struct v4l2_format *f)
 {
-	struct iris_inst *inst = iris_get_inst(filp, NULL);
+	struct iris_inst *inst = iris_get_inst(filp);
 	int ret = 0;
 
 	mutex_lock(&inst->lock);
@@ -326,7 +326,7 @@ static int iris_g_fmt_vid_mplane(struct file *filp, void *fh, struct v4l2_format
 static int iris_enum_framesizes(struct file *filp, void *fh,
 				struct v4l2_frmsizeenum *fsize)
 {
-	struct iris_inst *inst = iris_get_inst(filp, NULL);
+	struct iris_inst *inst = iris_get_inst(filp);
 	struct platform_inst_caps *caps;
 
 	if (fsize->index)
@@ -359,7 +359,7 @@ static int iris_querycap(struct file *filp, void *fh, struct v4l2_capability *ca
 
 static int iris_g_selection(struct file *filp, void *fh, struct v4l2_selection *s)
 {
-	struct iris_inst *inst = iris_get_inst(filp, NULL);
+	struct iris_inst *inst = iris_get_inst(filp);
 
 	if (s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
 		return -EINVAL;
@@ -394,7 +394,7 @@ static int iris_subscribe_event(struct v4l2_fh *fh, const struct v4l2_event_subs
 static int iris_dec_cmd(struct file *filp, void *fh,
 			struct v4l2_decoder_cmd *dec)
 {
-	struct iris_inst *inst = iris_get_inst(filp, NULL);
+	struct iris_inst *inst = iris_get_inst(filp);
 	int ret = 0;
 
 	mutex_lock(&inst->lock);

-- 
2.49.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
