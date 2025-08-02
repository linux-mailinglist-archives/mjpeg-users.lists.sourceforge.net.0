Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1413FB18ECF
	for <lists+mjpeg-users@lfdr.de>; Sat,  2 Aug 2025 15:55:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:To:In-Reply-To:References:Message-Id:MIME-Version:Date:From:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DDhLuGJz8ZiRt7X77nzAJE8j0k6+MHgANXXXXNKLr1I=; b=VaeX+h5mkv+8LiOxC78m6NPZrW
	XlYJReQI3sUZj1peeK2iXDEz1oTA/0DmipQ1VcmO01GJDNDk15XklLHiXxXd5iCJUTaCIq32t2MSF
	U2f//e0ogywsOVT7P7OyM2u6TQkqgNEndhWvlvTmcsS7wJFERfBTbBCCy55MOZu1EWqg=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1uiChk-0006Re-FA;
	Sat, 02 Aug 2025 13:55:20 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacopo.mondi@ideasonboard.com>) id 1ui8hB-00010q-1U
 for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:38:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GCT8PIxSQ81umA/AXX8QA/prHpS3xpUCn0+JSSYAixc=; b=dR5oUFT+vrFB1mrvqndEFQ46fF
 J/QIn4JOLTCFzGZlEJMLEofoaCWSI7EVGw3Ww6axzyemfGDOuKSzSHXrP4X/trsKq8s5RU7ZB6zTB
 wav27Lo8ux3Mc7BIXeLnQye44nY8DtcpABpkjH9erk5BJ9K1yI5MWB6Il/24YgVQmTww=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GCT8PIxSQ81umA/AXX8QA/prHpS3xpUCn0+JSSYAixc=; b=LuAr735RxQXhGGedSncHFSHDSc
 owQoklYEq5a44yx+l5Xj/86Hf7X1Cb6F+ogpQAoZ8KEjtdUliQV/nK3qW+lgYq0/tcOHRECIZ165c
 mYJ27cPEG/jSOzm24S/e3TuTm/7ojaxX086gETRCE02A+qg5MdAiQJGYrYtvDzqw6d+c=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ui8hA-0005Wn-At for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:38:28 +0000
Received: from [192.168.0.172] (mob-5-90-138-121.net.vodafone.it
 [5.90.138.121])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 1F3D640D7;
 Sat,  2 Aug 2025 11:29:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1754126997;
 bh=N/+SmX8uCSElsoQI/Kb0w5aCmhV7erqVc0DGwURG/AA=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=O2ythKO2VLeSyaJW1M/PqCX/Mkk5kckpbF0P3b/mXShykQUmZpyRwP7cnS0GIDbL/
 1DUlZhDvcIq3FFW01jGr4U4d4DEVv0toEN/a34f1d+8i68oIA7/0jOonpdg6HBRSO7
 wRvxI6vA7eAfOnezFzDfnkMhxtBedOLidMjxv5pM=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Sat, 02 Aug 2025 11:23:06 +0200
MIME-Version: 1.0
Message-Id: <20250802-media-private-data-v1-44-eb140ddd6a9d@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4093;
 i=jacopo.mondi@ideasonboard.com; h=from:subject:message-id;
 bh=N/+SmX8uCSElsoQI/Kb0w5aCmhV7erqVc0DGwURG/AA=;
 b=owEBbAKT/ZANAwAKAXI0Bo8WoVY8AcsmYgBojdj8GhGRoLbVmqgvZIfiBugvAzZbpSmTSf59f
 8yjByt2IQaJAjIEAAEKAB0WIQS1xD1IgJogio9YOMByNAaPFqFWPAUCaI3Y/AAKCRByNAaPFqFW
 PHoxD/dZpPaC6C0cHgs+6v+St9wjgRkVaZQPtX28YtuVqRe+UWHscNIwGphLs9NBDuLq0g5atP1
 LlhxmW2GY0FLrU4ODHwmd2p6qM2Z/1jKYgj7s1BQO2pqpNekk0WFWK/1MBsyFftm2KbE6oxHHb3
 MjzTehWud6ey9ZZ/xS0hq47jkIbh6C5rPk0jX8ArRlL/YT7DyODiZjLZ8k+HfWKXGaqHpCLH03e
 k/ubxOnY0OApTrAZHcAFipujf6N9fp7vOhuJC9xF14G7CDyfWpB9prIJmN0KTo0HIYmkwXijHZ7
 4hZq9Q6YOdfcUTg4V9X6r7bqBaPLXLGiqhMscoH26A1VxzfD8nW80Pdh81jYWLRnGY36eA+vI5l
 ifXsoAohqQtUSZNhDJVW7R4RAw4hSqkoQMRaDZp4V0oE6bE8IPS/MYKYYk6DB4BCctHM4IoY4p9
 YIuYtS8UzM4mMzVTAekk4U0uJPhk48PVxf6M62ZzNCIMVW/6zKhpm/neqruVAO8i+MvPzeIxTvs
 OgqunbBOS20rPOU/kLg7qxZXeDBSf2bxjfnD+vNmdF4d8meyw+aAL9iesbcUAUnh7p8+K1IXNXs
 wkwZ3h4Awk9cg/sCpbpXDN22PLzLj8gBJQ1zdSBXuK34VXa2RLneYzBhWuyXvnhKBo7xKyVWcy6
 m59/g+/Cysrlb
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
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ui8hA-0005Wn-At
X-Mailman-Approved-At: Sat, 02 Aug 2025 13:55:15 +0000
Subject: [Mjpeg-users] [PATCH 44/65] media: rockchip: rkvdec: Access v4l2_fh
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

While at it, remove the now unused fh_to_rkvdec_ctx() macro.

Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
 drivers/media/platform/rockchip/rkvdec/rkvdec.c | 14 +++++++-------
 drivers/media/platform/rockchip/rkvdec/rkvdec.h |  5 -----
 2 files changed, 7 insertions(+), 12 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec.c b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
index 481c2488f9ac64e70869ed21e5053cfbc4ed6e0e..9fa80ab3c62b7753e6c992aefd106ee99ed375e4 100644
--- a/drivers/media/platform/rockchip/rkvdec/rkvdec.c
+++ b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
@@ -354,7 +354,7 @@ static int rkvdec_try_capture_fmt(struct file *file, void *priv,
 				  struct v4l2_format *f)
 {
 	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
-	struct rkvdec_ctx *ctx = fh_to_rkvdec_ctx(priv);
+	struct rkvdec_ctx *ctx = file_to_rkvdec_ctx(file);
 	const struct rkvdec_coded_fmt_desc *coded_desc;
 
 	/*
@@ -387,7 +387,7 @@ static int rkvdec_try_output_fmt(struct file *file, void *priv,
 				 struct v4l2_format *f)
 {
 	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
-	struct rkvdec_ctx *ctx = fh_to_rkvdec_ctx(priv);
+	struct rkvdec_ctx *ctx = file_to_rkvdec_ctx(file);
 	const struct rkvdec_coded_fmt_desc *desc;
 
 	desc = rkvdec_find_coded_fmt_desc(pix_mp->pixelformat);
@@ -418,7 +418,7 @@ static int rkvdec_try_output_fmt(struct file *file, void *priv,
 static int rkvdec_s_capture_fmt(struct file *file, void *priv,
 				struct v4l2_format *f)
 {
-	struct rkvdec_ctx *ctx = fh_to_rkvdec_ctx(priv);
+	struct rkvdec_ctx *ctx = file_to_rkvdec_ctx(file);
 	struct vb2_queue *vq;
 	int ret;
 
@@ -439,7 +439,7 @@ static int rkvdec_s_capture_fmt(struct file *file, void *priv,
 static int rkvdec_s_output_fmt(struct file *file, void *priv,
 			       struct v4l2_format *f)
 {
-	struct rkvdec_ctx *ctx = fh_to_rkvdec_ctx(priv);
+	struct rkvdec_ctx *ctx = file_to_rkvdec_ctx(file);
 	struct v4l2_m2m_ctx *m2m_ctx = ctx->fh.m2m_ctx;
 	const struct rkvdec_coded_fmt_desc *desc;
 	struct v4l2_format *cap_fmt;
@@ -504,7 +504,7 @@ static int rkvdec_s_output_fmt(struct file *file, void *priv,
 static int rkvdec_g_output_fmt(struct file *file, void *priv,
 			       struct v4l2_format *f)
 {
-	struct rkvdec_ctx *ctx = fh_to_rkvdec_ctx(priv);
+	struct rkvdec_ctx *ctx = file_to_rkvdec_ctx(file);
 
 	*f = ctx->coded_fmt;
 	return 0;
@@ -513,7 +513,7 @@ static int rkvdec_g_output_fmt(struct file *file, void *priv,
 static int rkvdec_g_capture_fmt(struct file *file, void *priv,
 				struct v4l2_format *f)
 {
-	struct rkvdec_ctx *ctx = fh_to_rkvdec_ctx(priv);
+	struct rkvdec_ctx *ctx = file_to_rkvdec_ctx(file);
 
 	*f = ctx->decoded_fmt;
 	return 0;
@@ -532,7 +532,7 @@ static int rkvdec_enum_output_fmt(struct file *file, void *priv,
 static int rkvdec_enum_capture_fmt(struct file *file, void *priv,
 				   struct v4l2_fmtdesc *f)
 {
-	struct rkvdec_ctx *ctx = fh_to_rkvdec_ctx(priv);
+	struct rkvdec_ctx *ctx = file_to_rkvdec_ctx(file);
 	u32 fourcc;
 
 	fourcc = rkvdec_enum_decoded_fmt(ctx, f->index, ctx->image_fmt);
diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec.h b/drivers/media/platform/rockchip/rkvdec/rkvdec.h
index 35effe9467845fdfc4ffea432211d1d2e75a08b0..481aaa4bffe975fa106fb22e78bef90ade86a6cf 100644
--- a/drivers/media/platform/rockchip/rkvdec/rkvdec.h
+++ b/drivers/media/platform/rockchip/rkvdec/rkvdec.h
@@ -124,11 +124,6 @@ struct rkvdec_ctx {
 	void *priv;
 };
 
-static inline struct rkvdec_ctx *fh_to_rkvdec_ctx(struct v4l2_fh *fh)
-{
-	return container_of(fh, struct rkvdec_ctx, fh);
-}
-
 static inline struct rkvdec_ctx *file_to_rkvdec_ctx(struct file *filp)
 {
 	return container_of(file_to_v4l2_fh(filp), struct rkvdec_ctx, fh);

-- 
2.49.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
