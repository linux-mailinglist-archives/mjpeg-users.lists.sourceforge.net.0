Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 04656B18EE1
	for <lists+mjpeg-users@lfdr.de>; Sat,  2 Aug 2025 15:55:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:To:In-Reply-To:References:Message-Id:MIME-Version:Date:From:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KKKcRagTddxv7TG0D//amJNV7zt14AM18Y19735MV8w=; b=joHC/1oARTw51NUO4g9NX0bmeG
	VXVazS8uwpEfY0jKuBrgrATlEdg1xX6zC0j+hdICJQaGRFSef4TzSVFujKudd5E5fZUt4xdHyRIqK
	13FkuMjHk9Xgp/6QVzqA5gG5XgnZmci+MzChxkCXRyMkjS701V6kJzv5mkFTZV0D8iLI=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1uiChp-0006Xw-SU;
	Sat, 02 Aug 2025 13:55:25 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacopo.mondi@ideasonboard.com>) id 1ui8ih-0000XA-PE
 for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:40:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2lq42s8JPiS4UoCYYPIR7tPht4xaETXG/gfBCxteWFI=; b=H4lEIyDwXTPIdN/20O2gaPlNFl
 I9Xbn+tXW9C+Q6dntd+cerHvbuSKwBx0Y/lEE6l0qlpPfNJqFWb5sticpKqeFVz6G1GpcYKXEjGF7
 gNyOeIMwNosjv9q4dxCwNJXQ1GgDFdljKjzUf8djEuHov7131i9RZTrT+e1ugTfTsbWk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2lq42s8JPiS4UoCYYPIR7tPht4xaETXG/gfBCxteWFI=; b=axvrOohqfRaK1ElB7MnwY487j3
 DlprRI4pynVbAjMpSLlWaOirvd33mgyl6gQBbeuFdvDWBgllQo8LSpBNZ+X6WHFXRnv22uGlQWWil
 cyC5w+bCS7UGsoRHWrCdXz8/2P9JF9YVhUkL4cooLxWO/4PnFPHi4Q3dhnEoc0D9vU1A=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ui8ih-0005e5-4C for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:40:03 +0000
Received: from [192.168.0.172] (mob-5-90-138-121.net.vodafone.it
 [5.90.138.121])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 92D654129;
 Sat,  2 Aug 2025 11:31:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1754127098;
 bh=gIu7Q4nN31+tN7fJeeN0sXg6UA/9FufXt5i86vLgD+Y=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=GL6CR5yUCjrJ8Di6FitQc05AJIWv3/YAnWtH8vT9/rbN5zj5cL2izsjDnupBw8yvE
 L0lWTuvumb2ZXhIQVExAoei84xv19KDAVimC9N9bAnzu0BKdzv61ucCiFN0qXJifX0
 hybuyN5nw7SUK45tB57L48cM/R8LXK+PwyxTM8CM=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Sat, 02 Aug 2025 11:23:13 +0200
MIME-Version: 1.0
Message-Id: <20250802-media-private-data-v1-51-eb140ddd6a9d@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4052;
 i=jacopo.mondi@ideasonboard.com; h=from:subject:message-id;
 bh=gIu7Q4nN31+tN7fJeeN0sXg6UA/9FufXt5i86vLgD+Y=;
 b=kA0DAAoBcjQGjxahVjwByyZiAGiN2P2hAJjeL4C7TG81g20mJ+/1CxQtsOthszQGUM0XJNW7W
 okCMwQAAQoAHRYhBLXEPUiAmiCKj1g4wHI0Bo8WoVY8BQJojdj9AAoJEHI0Bo8WoVY8h/YP/Rrz
 +Cuai5dHAU1rx/elvXgMyktAPuA4wu2VdL2V1bVM4s1xdxx9aSpDpB3gUm87g00dGiGAfgAh3wd
 mmcHoafszDQ2MPBlhouZzjL+DDhOTP8r84ZaJVQ/mMHppYjPnBC2zKjQf/ZUK3H2DRmwu+Nz5os
 qwTvV2AsKkC4z3J1dyTi/pbkk0rvsi/+gy1QgI7+EjE7oG3p6cx9UJGenTyylr9nd27N9lYe3cD
 IAAfl09YRRop4Wg+xsoENjcSbTjb/dHkOoneJKKYr9LAOozYGP43+LOcG5Wjk1na1F3zI6a7fBj
 KwpT5npGhEzVMR8XPK2JpEK8Lqj4Rftu7vY5sX8xEl9ZQboZx8gm/+ZbR46Z/mHtKU5rSO+iIpJ
 T7M11oVBNsDh8e65csMOcST1mudTVJ+tsi38V5gZVjTWYjL5OXUVBGKUDOEs9YXB7Y660wKt5NW
 Wlta5Uzg32G9b4/vkxuo0s+r+WMn2svTvFr2hXBiDFy+3mgSPTd2+u+c1m1bA2/K7wN5jC7Vi+g
 vhh3Nn6SjRE5nU0tGvhgnITb3nSIyvVRaD9R/3TGWkInsh3DiBfiANIct7tsVMxlob/5Fu6Kvmb
 z4kRAbF9Mx8TXDmfyqZ+5irZIWPNW3aa9qMZOCiRyndODnDB80Z54qfqJxCYsEitNZNWMDw+Ddv
 r/hZZ
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
X-Headers-End: 1ui8ih-0005e5-4C
X-Mailman-Approved-At: Sat, 02 Aug 2025 13:55:15 +0000
Subject: [Mjpeg-users] [PATCH 51/65] media: bdisp: Access v4l2_fh from file
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

While at it, remove the now unused fh_to_ctx() macro.

Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
 drivers/media/platform/st/sti/bdisp/bdisp-v4l2.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/media/platform/st/sti/bdisp/bdisp-v4l2.c b/drivers/media/platform/st/sti/bdisp/bdisp-v4l2.c
index fc7945d29bccc2fdf0fc48fc14d6698b321418d9..56169b70652d3aaf7c3c395a630a29023cbd9722 100644
--- a/drivers/media/platform/st/sti/bdisp/bdisp-v4l2.c
+++ b/drivers/media/platform/st/sti/bdisp/bdisp-v4l2.c
@@ -33,8 +33,6 @@
 #define BDISP_MIN_H             1
 #define BDISP_MAX_H             8191
 
-#define fh_to_ctx(__fh) container_of(__fh, struct bdisp_ctx, fh)
-
 static inline struct bdisp_ctx *file_to_ctx(struct file *filp)
 {
 	return container_of(file_to_v4l2_fh(filp), struct bdisp_ctx, fh);
@@ -686,7 +684,7 @@ static const struct v4l2_file_operations bdisp_fops = {
 static int bdisp_querycap(struct file *file, void *fh,
 			  struct v4l2_capability *cap)
 {
-	struct bdisp_ctx *ctx = fh_to_ctx(fh);
+	struct bdisp_ctx *ctx = file_to_ctx(file);
 	struct bdisp_dev *bdisp = ctx->bdisp_dev;
 
 	strscpy(cap->driver, bdisp->pdev->name, sizeof(cap->driver));
@@ -698,7 +696,7 @@ static int bdisp_querycap(struct file *file, void *fh,
 
 static int bdisp_enum_fmt(struct file *file, void *fh, struct v4l2_fmtdesc *f)
 {
-	struct bdisp_ctx *ctx = fh_to_ctx(fh);
+	struct bdisp_ctx *ctx = file_to_ctx(file);
 	const struct bdisp_fmt *fmt;
 
 	if (f->index >= ARRAY_SIZE(bdisp_formats))
@@ -718,7 +716,7 @@ static int bdisp_enum_fmt(struct file *file, void *fh, struct v4l2_fmtdesc *f)
 
 static int bdisp_g_fmt(struct file *file, void *fh, struct v4l2_format *f)
 {
-	struct bdisp_ctx *ctx = fh_to_ctx(fh);
+	struct bdisp_ctx *ctx = file_to_ctx(file);
 	struct v4l2_pix_format *pix;
 	struct bdisp_frame *frame  = ctx_get_frame(ctx, f->type);
 
@@ -742,7 +740,7 @@ static int bdisp_g_fmt(struct file *file, void *fh, struct v4l2_format *f)
 
 static int bdisp_try_fmt(struct file *file, void *fh, struct v4l2_format *f)
 {
-	struct bdisp_ctx *ctx = fh_to_ctx(fh);
+	struct bdisp_ctx *ctx = file_to_ctx(file);
 	struct v4l2_pix_format *pix = &f->fmt.pix;
 	const struct bdisp_fmt *format;
 	u32 in_w, in_h;
@@ -792,7 +790,7 @@ static int bdisp_try_fmt(struct file *file, void *fh, struct v4l2_format *f)
 
 static int bdisp_s_fmt(struct file *file, void *fh, struct v4l2_format *f)
 {
-	struct bdisp_ctx *ctx = fh_to_ctx(fh);
+	struct bdisp_ctx *ctx = file_to_ctx(file);
 	struct vb2_queue *vq;
 	struct bdisp_frame *frame;
 	struct v4l2_pix_format *pix;
@@ -845,8 +843,8 @@ static int bdisp_s_fmt(struct file *file, void *fh, struct v4l2_format *f)
 static int bdisp_g_selection(struct file *file, void *fh,
 			     struct v4l2_selection *s)
 {
+	struct bdisp_ctx *ctx = file_to_ctx(file);
 	struct bdisp_frame *frame;
-	struct bdisp_ctx *ctx = fh_to_ctx(fh);
 
 	frame = ctx_get_frame(ctx, s->type);
 	if (IS_ERR(frame)) {
@@ -923,8 +921,8 @@ static int is_rect_enclosed(struct v4l2_rect *a, struct v4l2_rect *b)
 static int bdisp_s_selection(struct file *file, void *fh,
 			     struct v4l2_selection *s)
 {
+	struct bdisp_ctx *ctx = file_to_ctx(file);
 	struct bdisp_frame *frame;
-	struct bdisp_ctx *ctx = fh_to_ctx(fh);
 	struct v4l2_rect *in, out;
 	bool valid = false;
 
@@ -1001,7 +999,7 @@ static int bdisp_s_selection(struct file *file, void *fh,
 
 static int bdisp_streamon(struct file *file, void *fh, enum v4l2_buf_type type)
 {
-	struct bdisp_ctx *ctx = fh_to_ctx(fh);
+	struct bdisp_ctx *ctx = file_to_ctx(file);
 
 	if ((type == V4L2_BUF_TYPE_VIDEO_OUTPUT) &&
 	    !bdisp_ctx_state_is_set(BDISP_SRC_FMT, ctx)) {

-- 
2.49.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
