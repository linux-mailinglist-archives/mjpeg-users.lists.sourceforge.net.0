Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7615FB18EF3
	for <lists+mjpeg-users@lfdr.de>; Sat,  2 Aug 2025 15:55:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:To:In-Reply-To:References:Message-Id:MIME-Version:Date:From:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8F3KeygNlT/RauKN0tbV88XnaIw4USNlW/DrQiXnIv4=; b=a62aLyhhQdPw3K21PIT/26Y4tZ
	B9adXDHzSg6mYptQetvVv6woLew8FjMGiomJzl2Rzc2r+CkopsMTpYC0uoIQlBFf5dRHr6qbtP9lC
	vlXNLdUEca2uw2eNk+jLD01uQLhv76STzKk0lEas0aXjE7diDLFWKDqXItPbLCJxjA08=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1uiChw-0006gc-Ay;
	Sat, 02 Aug 2025 13:55:32 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacopo.mondi@ideasonboard.com>) id 1ui8mH-0000dl-RD
 for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:43:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fokcNpvly14/YYrJC6rHhufzSG2jML0FOxkV41dtVwQ=; b=DqFpy46JiIfBBXbskOjsjTAb23
 eYCbYnUQN7DmG88um05DherVg1ImA6m/bk7VfW+HxZHrRlwvYr8cFnfvZXE5MfEnFmK/UCjcnhtcA
 Z9mORHWFCkwaOcjCxP/6TA2OSU79KCeSZCt7erCT4G/pDeho1forct9r5946I1MD1nRc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fokcNpvly14/YYrJC6rHhufzSG2jML0FOxkV41dtVwQ=; b=PmVNCzVShqIlF3m2go0pXNyQzp
 yHv75eLhM0PlARf9LifmL6asCopXMCi/Pznf6D3Dv8O7alXmSMpmOZ2x9UO/dpYXzPY9OUZplz/To
 52Wz1G7JHkDFuTzSkVa5C3bPvhljbmQyWq0E/IAVkwEMaKVbG7fh3EnyDfIE5/amimoo=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ui8mH-0005tw-7F for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:43:45 +0000
Received: from [192.168.0.172] (mob-5-90-138-121.net.vodafone.it
 [5.90.138.121])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id E2D6730FB;
 Sat,  2 Aug 2025 11:24:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1754126692;
 bh=b7RMG5gKbuuF6gv8S+Uj2KKTs6XM6lsobaqxn6pl4VQ=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=gk3w0dlgcofaVXob0cmxl8yMO31aZvlLIP5dNDbKo5GN+5wPIeTV9Lm2ORxzAXc9q
 k5+FLvQAYlaUUa1kJh1WvioDAY3R/ZOTICtyWirY7Lq96AUzlXpK4qPEiJ/GIWg5RP
 8w8iLIua6QiOS0uuC7UD/aR2bOMEvGLDOuD/wwGE=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Sat, 02 Aug 2025 11:22:35 +0200
MIME-Version: 1.0
Message-Id: <20250802-media-private-data-v1-13-eb140ddd6a9d@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3584;
 i=jacopo.mondi@ideasonboard.com; h=from:subject:message-id;
 bh=xoIDFBRhMGMv4oe8TS+uJUoPhd8rKNXueeGPvdsLtfY=;
 b=owEBbQKS/ZANAwAKAXI0Bo8WoVY8AcsmYgBojdj4frLXYwpCxfo4ZpqKpoU9LXTbFeqaHunMr
 /yn/7NHhzqJAjMEAAEKAB0WIQS1xD1IgJogio9YOMByNAaPFqFWPAUCaI3Y+AAKCRByNAaPFqFW
 PPryEACXh4Keg40awBycOCQweW9WKXDN0UhcSzNg8faLq0NIOsrCU3oYLR3dMz4vYAhlzfGSFi0
 vqn6qO2LPe+ZmXjSVyJaJXyDjNDo+pzRTWl2toKrWplPdzOgk+cgtZX9MhTZs2edrBLCepiGmMm
 Nu4xsweyLEsP3us9ZxhJy6L5X1FVv5a6yVoy85WIbBAp+nHxjoGDxP6SUDoBrpk8Pfyl6+cIwzO
 rJty3YmxpSIB2JX0lum9rKPxO4UckOXnbDEP2WwP92vME5ewnUURSnfBS/NNRETxzt4oQHb4Zk4
 GgEjqxl4NnGf/cu7L2xTlfHwtVcagda/LbUnAkjCkak7NvCibfzhpqdNAQplgQj96yxQaTDGItx
 lr4YhKx916rR2nU0B+GKKQnMnapP+21PSUI/nHrc7LFvre4WStF38IVTTWMaVfIYnRUny5I4UZ+
 yhxg/qC2K27wR+PlqKw6ZoH7hit/PjiUZfQSzvKj4M6D2NV4B8D7lQB22k/2kMfA7ShJkI4u3HX
 YsfjXe0txPZ07xUZuMpwf93yl86YrU31oY0Fu9UlWLvINmMwBjLhiHeMvmwaANWSSUwfCgjb2VD
 4ohbl6n/IEG0oLZvqHlTD5on65ODc8rJFC3MmECELJ7oRJUG/keEolT9Sv39sWLZ6auuIdu8mU2
 0EofLwM3RKG2hrg==
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
 Some functions defined in vpu_v4l2.c are never used outside of that
 compilation
 unit. Make them static. Signed-off-by: Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>
 Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com> ---
 drivers/media/platform/amphion/vpu_v4l2.c
 | 12 +++++++++--- drivers/ [...] 
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
X-Headers-End: 1ui8mH-0005tw-7F
X-Mailman-Approved-At: Sat, 02 Aug 2025 13:55:15 +0000
Subject: [Mjpeg-users] [PATCH 13/65] media: amphion: Make some vpu_v4l2
 functions static
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

Some functions defined in vpu_v4l2.c are never used outside of that
compilation unit. Make them static.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
 drivers/media/platform/amphion/vpu_v4l2.c | 12 +++++++++---
 drivers/media/platform/amphion/vpu_v4l2.h |  8 --------
 2 files changed, 9 insertions(+), 11 deletions(-)

diff --git a/drivers/media/platform/amphion/vpu_v4l2.c b/drivers/media/platform/amphion/vpu_v4l2.c
index 74668fa362e24fd34829b500e99c8455a9413fc1..306d94e0f8e79faaacfa35b28e5786860f7bd1ca 100644
--- a/drivers/media/platform/amphion/vpu_v4l2.c
+++ b/drivers/media/platform/amphion/vpu_v4l2.c
@@ -24,6 +24,11 @@
 #include "vpu_msgs.h"
 #include "vpu_helpers.h"
 
+static char *vpu_type_name(u32 type)
+{
+	return V4L2_TYPE_IS_OUTPUT(type) ? "output" : "capture";
+}
+
 void vpu_inst_lock(struct vpu_inst *inst)
 {
 	mutex_lock(&inst->lock);
@@ -42,7 +47,7 @@ dma_addr_t vpu_get_vb_phy_addr(struct vb2_buffer *vb, u32 plane_no)
 			vb->planes[plane_no].data_offset;
 }
 
-unsigned int vpu_get_vb_length(struct vb2_buffer *vb, u32 plane_no)
+static unsigned int vpu_get_vb_length(struct vb2_buffer *vb, u32 plane_no)
 {
 	if (plane_no >= vb->num_planes)
 		return 0;
@@ -81,7 +86,7 @@ void vpu_v4l2_set_error(struct vpu_inst *inst)
 	vpu_inst_unlock(inst);
 }
 
-int vpu_notify_eos(struct vpu_inst *inst)
+static int vpu_notify_eos(struct vpu_inst *inst)
 {
 	static const struct v4l2_event ev = {
 		.id = 0,
@@ -573,7 +578,8 @@ static void vpu_vb2_buf_finish(struct vb2_buffer *vb)
 		call_void_vop(inst, on_queue_empty, q->type);
 }
 
-void vpu_vb2_buffers_return(struct vpu_inst *inst, unsigned int type, enum vb2_buffer_state state)
+static void vpu_vb2_buffers_return(struct vpu_inst *inst, unsigned int type,
+				   enum vb2_buffer_state state)
 {
 	struct vb2_v4l2_buffer *buf;
 
diff --git a/drivers/media/platform/amphion/vpu_v4l2.h b/drivers/media/platform/amphion/vpu_v4l2.h
index 56f2939fa84d07b7ea07e889ab5ad3bb7ca9ab5c..4a87b06ae520306ede356b6f3309d8b4a67c204a 100644
--- a/drivers/media/platform/amphion/vpu_v4l2.h
+++ b/drivers/media/platform/amphion/vpu_v4l2.h
@@ -26,15 +26,12 @@ void vpu_skip_frame(struct vpu_inst *inst, int count);
 struct vb2_v4l2_buffer *vpu_find_buf_by_sequence(struct vpu_inst *inst, u32 type, u32 sequence);
 struct vb2_v4l2_buffer *vpu_find_buf_by_idx(struct vpu_inst *inst, u32 type, u32 idx);
 void vpu_v4l2_set_error(struct vpu_inst *inst);
-int vpu_notify_eos(struct vpu_inst *inst);
 int vpu_notify_source_change(struct vpu_inst *inst);
 int vpu_set_last_buffer_dequeued(struct vpu_inst *inst, bool eos);
-void vpu_vb2_buffers_return(struct vpu_inst *inst, unsigned int type, enum vb2_buffer_state state);
 int vpu_get_num_buffers(struct vpu_inst *inst, u32 type);
 bool vpu_is_source_empty(struct vpu_inst *inst);
 
 dma_addr_t vpu_get_vb_phy_addr(struct vb2_buffer *vb, u32 plane_no);
-unsigned int vpu_get_vb_length(struct vb2_buffer *vb, u32 plane_no);
 static inline struct vpu_format *vpu_get_format(struct vpu_inst *inst, u32 type)
 {
 	if (V4L2_TYPE_IS_OUTPUT(type))
@@ -43,11 +40,6 @@ static inline struct vpu_format *vpu_get_format(struct vpu_inst *inst, u32 type)
 		return &inst->cap_format;
 }
 
-static inline char *vpu_type_name(u32 type)
-{
-	return V4L2_TYPE_IS_OUTPUT(type) ? "output" : "capture";
-}
-
 static inline int vpu_vb_is_codecconfig(struct vb2_v4l2_buffer *vbuf)
 {
 #ifdef V4L2_BUF_FLAG_CODECCONFIG

-- 
2.49.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
