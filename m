Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D190EB18EDD
	for <lists+mjpeg-users@lfdr.de>; Sat,  2 Aug 2025 15:55:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:To:In-Reply-To:References:Message-Id:MIME-Version:Date:From:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=g4CI4DSH/w7ttYRNhiMdTFAbA4s5KUemDfdOOM26meM=; b=mK1C9IGqUybSHj8LGqqbw1M3Y5
	gRU7ZLLz6Xt/iMjPMacqys9Cnlkrt0SV/yZQz7oLt32R3sTZbMsJBPgb1YsnfSdp9/6YyKP7N/zjj
	ZzDbbIZiqwj/f4kBU8mVZ4x1QbTmcR88nBc96TMi5fuAhLPwxVYKUmwN3c3ssRDCxuKs=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1uiCho-0006WD-L8;
	Sat, 02 Aug 2025 13:55:24 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacopo.mondi@ideasonboard.com>) id 1ui8iO-0000TZ-L2
 for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:39:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FhRjaZdXJDVNFox2TTpFVfJOkJlp5cTaw+qHC0CsM8w=; b=b8JNMDZiBUqZv/phLc9l/59clF
 xvdLLFzzg80Tk+XlvFpF4c+Gklr/fct+Q/v1Ai9hS+DG/e0V7HgZGqXHuXK4rpyup/a36bTegi3Pa
 1x+Ed2YVD2JQIjOMVzjQ6oE3/9Tj0C1TDabJLEt9ivV7IkBNEoxXLSYDbRFwTmHA1cLA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FhRjaZdXJDVNFox2TTpFVfJOkJlp5cTaw+qHC0CsM8w=; b=f46sdAbBKUEO4AItrVQFElpzZq
 KFKCIbsX7NSu6SYrVYNJFuWUe/7hzqxmI3sTVndV3A56uAbXzEgHC5eiTxJZass6eYCF3bWyzXnAz
 +J7x9MRdcqE4sxcbaqLreiD8I6Dge4wfxyenL8z91jUPTZZNfPr/nM1XsczQtlCeBtOI=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ui8iN-0005cH-V8 for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:39:44 +0000
Received: from [192.168.0.172] (mob-5-90-138-121.net.vodafone.it
 [5.90.138.121])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id A389B4341;
 Sat,  2 Aug 2025 11:31:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1754127126;
 bh=ZvKqCdGZE5NgMq9FgjAr1nh972WU8DfmRgsFRNhSxA0=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=ZXo/EEzcfsoL0MCa0VKqSc4UA5axyvQVuHLoi9PYTpH5UJUkT2i4azMziity5n17n
 lOZZ5sH5vxI65RRDd2i3s0YLyAHu39FQGq7oZqXow2Kk85lFObsrct7vP3YMhsD9au
 MTS/L47BsL2tMyoLNdIZZFgOLwJ9TOKGzzcImVHg=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Sat, 02 Aug 2025 11:23:16 +0200
MIME-Version: 1.0
Message-Id: <20250802-media-private-data-v1-54-eb140ddd6a9d@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=5314;
 i=jacopo.mondi@ideasonboard.com; h=from:subject:message-id;
 bh=CbTiDL7FaHYjSvCqveksypLiZlWBs+5bYF3cQ2sKHO0=;
 b=owEBbQKS/ZANAwAKAXI0Bo8WoVY8AcsmYgBojdj+lwkDLh/f2fAT4DbemdRP1NEXwtCLWEulL
 0mj3tdsleyJAjMEAAEKAB0WIQS1xD1IgJogio9YOMByNAaPFqFWPAUCaI3Y/gAKCRByNAaPFqFW
 PCyVD/9ZvVxYe+kKWfjMKd1gPcchNYPcCnnB9QNb0/iOSUaZB1x8Njr2SeKLeDXOuOxxIMQiz9P
 6enRBLF1KwDYciWImRSrgBo6FEgFSlfyirZsjERXxJ8TWU+ZWEqmFmJw5QoTentbcc3BYIdBER2
 pBR9J83jgE9Qgz8RwlrXUAIFc0Lu1HyOScJ1U5I6eMgm9fdfwQF4eQta2LjroTFYpY9b/mxIipF
 3IdKC9KXADMaC9jdgOKLGXAiKW1/x7x+WdpyRqh1gnTjb73+OXg8HLqmb//XioVMc6mB/pRp6Al
 t/KnsKCXelL+Xv0tkK7Ox7KobRN1G83G7ICsAmQ1mZfyG5zgvYCQ3qUFsKNm+YQs40odlXG794M
 5BoByEfzxbVwlrvWnLSZLGawdVtm72mtO5hXk9lIKgVD9Gq6x2N6/MXBWFgRgiFPPa5oIkpUWke
 zj050fb32iGn01ouJNo/DcbyC3DcvSZKXKn2Z5akPRqj/AfNU1ybXdXKtd8DQqIQzwc4ND/ez6q
 TauCRrh8KNMZAoHlV63x48z8cVTXiGiAJo7zhFWBWKxcGAt/TKbN3LIsQAKAFCkVydWPp0r+/zn
 10ukeG9UeMYKPVpecH4n6yQ5g9ufCTaCLjqHf0UixURCC120DZCEGfyNwp+n/pr1auQZ6TCoPJH
 TV3J2u1bDozZx4g==
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
 To prepare for the introduction of video_device_state as second argument
 of the v4l2_ioctl_ops handler, access the v4l2_fh from file->private_data
 instead of using void *priv. 
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
X-Headers-End: 1ui8iN-0005cH-V8
X-Mailman-Approved-At: Sat, 02 Aug 2025 13:55:15 +0000
Subject: [Mjpeg-users] [PATCH 54/65] media: hantro: Access v4l2_fh from
 file->private_data
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

To prepare for the introduction of video_device_state as second argument
of the v4l2_ioctl_ops handler, access the v4l2_fh from
file->private_data instead of using void *priv.

The file->private_data is initialized to point to the v4l2_fh
by the usage of v4l2_fh_init() in the v4l2_file_operations.open()
handler.

While at it remove the only left user of fh_to_ctx() and remove
the macro completely.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
 drivers/media/platform/verisilicon/hantro.h      |  5 -----
 drivers/media/platform/verisilicon/hantro_v4l2.c | 22 +++++++++++-----------
 2 files changed, 11 insertions(+), 16 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro.h b/drivers/media/platform/verisilicon/hantro.h
index 0f10714f1953945472e11d8c8ad87f8ec009b39f..e0fdc4535b2d73c5260057b0a89aee67a4732dd2 100644
--- a/drivers/media/platform/verisilicon/hantro.h
+++ b/drivers/media/platform/verisilicon/hantro.h
@@ -382,11 +382,6 @@ extern int hantro_debug;
 	pr_err("%s:%d: " fmt, __func__, __LINE__, ##args)
 
 /* Structure access helpers. */
-static __always_inline struct hantro_ctx *fh_to_ctx(struct v4l2_fh *fh)
-{
-	return container_of(fh, struct hantro_ctx, fh);
-}
-
 static __always_inline struct hantro_ctx *file_to_ctx(struct file *filp)
 {
 	return container_of(file_to_v4l2_fh(filp), struct hantro_ctx, fh);
diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
index 7c3515cf7d64a090adfb8d8aff368f9a617f8c8a..6bcd892e7bb49c654aae5841664d68c1692064bd 100644
--- a/drivers/media/platform/verisilicon/hantro_v4l2.c
+++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
@@ -185,7 +185,7 @@ static int vidioc_querycap(struct file *file, void *priv,
 static int vidioc_enum_framesizes(struct file *file, void *priv,
 				  struct v4l2_frmsizeenum *fsize)
 {
-	struct hantro_ctx *ctx = fh_to_ctx(priv);
+	struct hantro_ctx *ctx = file_to_ctx(file);
 	const struct hantro_fmt *fmt;
 
 	fmt = hantro_find_format(ctx, fsize->pixel_format);
@@ -217,7 +217,7 @@ static int vidioc_enum_fmt(struct file *file, void *priv,
 			   struct v4l2_fmtdesc *f, bool capture)
 
 {
-	struct hantro_ctx *ctx = fh_to_ctx(priv);
+	struct hantro_ctx *ctx = file_to_ctx(file);
 	const struct hantro_fmt *fmt, *formats;
 	unsigned int num_fmts, i, j = 0;
 	bool skip_mode_none, enum_all_formats;
@@ -297,7 +297,7 @@ static int vidioc_g_fmt_out_mplane(struct file *file, void *priv,
 				   struct v4l2_format *f)
 {
 	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
-	struct hantro_ctx *ctx = fh_to_ctx(priv);
+	struct hantro_ctx *ctx = file_to_ctx(file);
 
 	vpu_debug(4, "f->type = %d\n", f->type);
 
@@ -310,7 +310,7 @@ static int vidioc_g_fmt_cap_mplane(struct file *file, void *priv,
 				   struct v4l2_format *f)
 {
 	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
-	struct hantro_ctx *ctx = fh_to_ctx(priv);
+	struct hantro_ctx *ctx = file_to_ctx(file);
 
 	vpu_debug(4, "f->type = %d\n", f->type);
 
@@ -398,13 +398,13 @@ static int hantro_try_fmt(const struct hantro_ctx *ctx,
 static int vidioc_try_fmt_cap_mplane(struct file *file, void *priv,
 				     struct v4l2_format *f)
 {
-	return hantro_try_fmt(fh_to_ctx(priv), &f->fmt.pix_mp, f->type);
+	return hantro_try_fmt(file_to_ctx(file), &f->fmt.pix_mp, f->type);
 }
 
 static int vidioc_try_fmt_out_mplane(struct file *file, void *priv,
 				     struct v4l2_format *f)
 {
-	return hantro_try_fmt(fh_to_ctx(priv), &f->fmt.pix_mp, f->type);
+	return hantro_try_fmt(file_to_ctx(file), &f->fmt.pix_mp, f->type);
 }
 
 static void
@@ -648,19 +648,19 @@ static int hantro_set_fmt_cap(struct hantro_ctx *ctx,
 static int
 vidioc_s_fmt_out_mplane(struct file *file, void *priv, struct v4l2_format *f)
 {
-	return hantro_set_fmt_out(fh_to_ctx(priv), &f->fmt.pix_mp, HANTRO_AUTO_POSTPROC);
+	return hantro_set_fmt_out(file_to_ctx(file), &f->fmt.pix_mp, HANTRO_AUTO_POSTPROC);
 }
 
 static int
 vidioc_s_fmt_cap_mplane(struct file *file, void *priv, struct v4l2_format *f)
 {
-	return hantro_set_fmt_cap(fh_to_ctx(priv), &f->fmt.pix_mp);
+	return hantro_set_fmt_cap(file_to_ctx(file), &f->fmt.pix_mp);
 }
 
 static int vidioc_g_selection(struct file *file, void *priv,
 			      struct v4l2_selection *sel)
 {
-	struct hantro_ctx *ctx = fh_to_ctx(priv);
+	struct hantro_ctx *ctx = file_to_ctx(file);
 
 	/* Crop only supported on source. */
 	if (!ctx->is_encoder ||
@@ -691,7 +691,7 @@ static int vidioc_g_selection(struct file *file, void *priv,
 static int vidioc_s_selection(struct file *file, void *priv,
 			      struct v4l2_selection *sel)
 {
-	struct hantro_ctx *ctx = fh_to_ctx(priv);
+	struct hantro_ctx *ctx = file_to_ctx(file);
 	struct v4l2_rect *rect = &sel->r;
 	struct vb2_queue *vq;
 
@@ -738,7 +738,7 @@ static const struct v4l2_event hantro_eos_event = {
 static int vidioc_encoder_cmd(struct file *file, void *priv,
 			      struct v4l2_encoder_cmd *ec)
 {
-	struct hantro_ctx *ctx = fh_to_ctx(priv);
+	struct hantro_ctx *ctx = file_to_ctx(file);
 	int ret;
 
 	ret = v4l2_m2m_ioctl_try_encoder_cmd(file, priv, ec);

-- 
2.49.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
