Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E40FCB18ECC
	for <lists+mjpeg-users@lfdr.de>; Sat,  2 Aug 2025 15:55:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:To:In-Reply-To:References:Message-Id:MIME-Version:Date:From:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S+9jfXaEh5O7I7KTLijEHWKuEvB0FcYMqP3RLl92BNU=; b=FakA6SSVnC52D09iDsGWMJ5SSO
	e/MqQq6f62qSYVkugbdcSef+I+mFe5/8lWB6bZAdXyOGrFaHyFKUEAKLQrWB9oWTh/JeX17s+h+he
	w54BmSAJA9KTyT8yzx9Ildklkn+93kXU605fY7vVzIElN7W0v1uEPC5ejEpe5SwZZB7Q=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1uiChj-0006RE-Ij;
	Sat, 02 Aug 2025 13:55:19 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacopo.mondi@ideasonboard.com>) id 1ui8h8-0005E1-Ma
 for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:38:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IMJC4cCit/kf4dQzsiqM9GqmQ+REEYvLkaV5PfTsOhc=; b=Jc2+etvG/XtDW0vT+Pp+NtM1mH
 4r1sTLBPD5ZYpH9sleZZpOuiEARLuHFDWOknHpqUqiSeuGRKjbAjGWV/7WTU0dvbGzm3DlyF7LrD6
 vN3yI66/WMU68elWT3NhexgbEXbRaXxLHRGrBx+2WM8HCAymT+SHtIa3NkIc24LJiSlQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IMJC4cCit/kf4dQzsiqM9GqmQ+REEYvLkaV5PfTsOhc=; b=IewmqoYcgb1FFY6bAlqC/7aRu3
 Lne1ww6huSDsoNAatnsL2LKxTbyltJt2rM+Jxv4I2EucYOxtYTRAuAA94wPWiS4bJ7xePZV/WzXEw
 TRmfQVsPPoVnAD+jN+xF3Do6npQm/mUT7ei2rDse5DPSQrZgcbBm4Ixfv8io+7qmTWAw=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ui8h3-0005WO-6r for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:38:21 +0000
Received: from [192.168.0.172] (mob-5-90-138-121.net.vodafone.it
 [5.90.138.121])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id D13D93EE9;
 Sat,  2 Aug 2025 11:29:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1754126950;
 bh=QMXN795g4JQ02dbn34MUgI1SrXfUXWeSvy7JvnRGT/4=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=a6yKtLO3p3dptqs8nDpC4CTqf6f17ThWt2kAQ1RtjLbHys7ZhKQtBaxqQGSFM14hJ
 lo2so0O2XgjC9oyqujkhkQVVJ41fDYV4TE+DbxU0VOqJKvsFvw9M/9U/KkF7+/glzq
 Xda2N5WbvBrVab8G1DXb+S/ilReE23HpnougskVQ=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Sat, 02 Aug 2025 11:23:01 +0200
MIME-Version: 1.0
Message-Id: <20250802-media-private-data-v1-39-eb140ddd6a9d@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=6555;
 i=jacopo.mondi@ideasonboard.com; h=from:subject:message-id;
 bh=QMXN795g4JQ02dbn34MUgI1SrXfUXWeSvy7JvnRGT/4=;
 b=owEBbQKS/ZANAwAKAXI0Bo8WoVY8AcsmYgBojdj8/oWIIARD+dfkmFv/taMUYIiUf/KYJk9vV
 f7+9cr+2++JAjMEAAEKAB0WIQS1xD1IgJogio9YOMByNAaPFqFWPAUCaI3Y/AAKCRByNAaPFqFW
 PKtxD/0WLPIL/mL1eF89kxSMM9GwOxEKdo8GLGfT13RWpduaSJTQpP/edD44lwWuTCc/Ppgs83F
 u9bd6x4dOVwYfaPQIN5wij1VrkrZ6Bukd6h598tHgoKq0LmK6g9AS6SSJyKCVG8ETu/fpF0ARpW
 1oq1soPH+lkWm2YsCf88hjEAeLKuLe6T2CZB8MolKhAQOKNFewTMquWE8SfXrpMELAUh97npU/h
 GzVOcyJRfI+Me9QDMgov6AQRy+qGdm2K6R0aK8XaHuDSUkdPw4breQtXzbxvHJujLsZ3Ylt4IrG
 5pTN90+UngJ1pYigkyC8u8WI8bF5BcOxKx+gjGXuO+zcdr++UiIKHU/iOzkeJvdSnBPE6XjtZEW
 DBYFVMgrlvKkBQ9pjwJIsek4GgkDSCUoTnyXtR5YpjSZLIOP2Hkxg/MYLR1K00HzGwNykLZfmwU
 gvHiAygX/esogRpR/rFyA6SnjaCLLoy/9Dak8v/a15IEWnRsw8DD6LGJGELTh5E3YGkkeFfBkWQ
 nk9hYsCX5zLegyyQZ6tjuv6HJc53gqm0Mq3KtJl8V5t46D4VXt+WsPiGrcRHyyYD8ibuJBlaHs2
 ocOq1NEyVZ4BCdDoTWV7kqUn46e9u4uWM6Owwwggr8iOtxOn3o1mz5KuPz3wd7z2Oc1LrqSZ3Ry
 yexlpARHGjG1bXg==
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
X-Headers-End: 1ui8h3-0005WO-6r
X-Mailman-Approved-At: Sat, 02 Aug 2025 13:55:15 +0000
Subject: [Mjpeg-users] [PATCH 39/65] media: imx-jpeg: Access v4l2_fh from
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

While at it, remove the now unused mxc_jpeg_fh_to_ctx() macro.

Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
 drivers/media/platform/nxp/imx-jpeg/mxc-jpeg.c | 33 +++++++++++---------------
 1 file changed, 14 insertions(+), 19 deletions(-)

diff --git a/drivers/media/platform/nxp/imx-jpeg/mxc-jpeg.c b/drivers/media/platform/nxp/imx-jpeg/mxc-jpeg.c
index fa7d74d8c1aabd3bf74482e214165d8c1a7e89da..df3ccdf767baf0bf6687808e2c017063181a7220 100644
--- a/drivers/media/platform/nxp/imx-jpeg/mxc-jpeg.c
+++ b/drivers/media/platform/nxp/imx-jpeg/mxc-jpeg.c
@@ -644,11 +644,6 @@ static void print_mxc_buf(struct mxc_jpeg_dev *jpeg, struct vb2_buffer *buf,
 	}
 }
 
-static inline struct mxc_jpeg_ctx *mxc_jpeg_fh_to_ctx(struct v4l2_fh *fh)
-{
-	return container_of(fh, struct mxc_jpeg_ctx, fh);
-}
-
 static inline struct mxc_jpeg_ctx *mxc_jpeg_file_to_ctx(struct file *filp)
 {
 	return container_of(file_to_v4l2_fh(filp), struct mxc_jpeg_ctx, fh);
@@ -1610,7 +1605,7 @@ static int mxc_jpeg_decoder_cmd(struct file *file, void *priv,
 				struct v4l2_decoder_cmd *cmd)
 {
 	struct v4l2_fh *fh = file_to_v4l2_fh(file);
-	struct mxc_jpeg_ctx *ctx = mxc_jpeg_fh_to_ctx(fh);
+	struct mxc_jpeg_ctx *ctx = mxc_jpeg_file_to_ctx(file);
 	unsigned long flags;
 	int ret;
 
@@ -1643,7 +1638,7 @@ static int mxc_jpeg_encoder_cmd(struct file *file, void *priv,
 				struct v4l2_encoder_cmd *cmd)
 {
 	struct v4l2_fh *fh = file_to_v4l2_fh(file);
-	struct mxc_jpeg_ctx *ctx = mxc_jpeg_fh_to_ctx(fh);
+	struct mxc_jpeg_ctx *ctx = mxc_jpeg_file_to_ctx(file);
 	unsigned long flags;
 	int ret;
 
@@ -2260,7 +2255,7 @@ static int mxc_jpeg_querycap(struct file *file, void *priv,
 static int mxc_jpeg_enum_fmt_vid_cap(struct file *file, void *priv,
 				     struct v4l2_fmtdesc *f)
 {
-	struct mxc_jpeg_ctx *ctx = mxc_jpeg_fh_to_ctx(priv);
+	struct mxc_jpeg_ctx *ctx = mxc_jpeg_file_to_ctx(file);
 	struct mxc_jpeg_q_data *q_data = mxc_jpeg_get_q_data(ctx, f->type);
 
 	if (ctx->mxc_jpeg->mode == MXC_JPEG_ENCODE) {
@@ -2300,7 +2295,7 @@ static int mxc_jpeg_enum_fmt_vid_cap(struct file *file, void *priv,
 static int mxc_jpeg_enum_fmt_vid_out(struct file *file, void *priv,
 				     struct v4l2_fmtdesc *f)
 {
-	struct mxc_jpeg_ctx *ctx = mxc_jpeg_fh_to_ctx(priv);
+	struct mxc_jpeg_ctx *ctx = mxc_jpeg_file_to_ctx(file);
 	u32 type = ctx->mxc_jpeg->mode == MXC_JPEG_DECODE ?  MXC_JPEG_FMT_TYPE_ENC :
 							     MXC_JPEG_FMT_TYPE_RAW;
 	int ret;
@@ -2441,7 +2436,7 @@ static int mxc_jpeg_try_fmt(struct v4l2_format *f,
 static int mxc_jpeg_try_fmt_vid_cap(struct file *file, void *priv,
 				    struct v4l2_format *f)
 {
-	struct mxc_jpeg_ctx *ctx = mxc_jpeg_fh_to_ctx(priv);
+	struct mxc_jpeg_ctx *ctx = mxc_jpeg_file_to_ctx(file);
 	struct mxc_jpeg_dev *jpeg = ctx->mxc_jpeg;
 	struct device *dev = jpeg->dev;
 	struct mxc_jpeg_q_data tmp_q;
@@ -2460,7 +2455,7 @@ static int mxc_jpeg_try_fmt_vid_cap(struct file *file, void *priv,
 static int mxc_jpeg_try_fmt_vid_out(struct file *file, void *priv,
 				    struct v4l2_format *f)
 {
-	struct mxc_jpeg_ctx *ctx = mxc_jpeg_fh_to_ctx(priv);
+	struct mxc_jpeg_ctx *ctx = mxc_jpeg_file_to_ctx(file);
 	struct mxc_jpeg_dev *jpeg = ctx->mxc_jpeg;
 	struct device *dev = jpeg->dev;
 	struct mxc_jpeg_q_data tmp_q;
@@ -2512,20 +2507,20 @@ static int mxc_jpeg_s_fmt(struct mxc_jpeg_ctx *ctx,
 static int mxc_jpeg_s_fmt_vid_cap(struct file *file, void *priv,
 				  struct v4l2_format *f)
 {
-	return mxc_jpeg_s_fmt(mxc_jpeg_fh_to_ctx(priv), f);
+	return mxc_jpeg_s_fmt(mxc_jpeg_file_to_ctx(file), f);
 }
 
 static int mxc_jpeg_s_fmt_vid_out(struct file *file, void *priv,
 				  struct v4l2_format *f)
 {
 	int ret;
-	struct mxc_jpeg_ctx *ctx = mxc_jpeg_fh_to_ctx(priv);
+	struct mxc_jpeg_ctx *ctx = mxc_jpeg_file_to_ctx(file);
 	struct vb2_queue *dst_vq;
 	struct mxc_jpeg_q_data *q_data_cap;
 	enum v4l2_buf_type cap_type = V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE;
 	struct v4l2_format fc;
 
-	ret = mxc_jpeg_s_fmt(mxc_jpeg_fh_to_ctx(priv), f);
+	ret = mxc_jpeg_s_fmt(ctx, f);
 	if (ret)
 		return ret;
 
@@ -2554,7 +2549,7 @@ static int mxc_jpeg_s_fmt_vid_out(struct file *file, void *priv,
 static int mxc_jpeg_g_fmt_vid(struct file *file, void *priv,
 			      struct v4l2_format *f)
 {
-	struct mxc_jpeg_ctx *ctx = mxc_jpeg_fh_to_ctx(priv);
+	struct mxc_jpeg_ctx *ctx = mxc_jpeg_file_to_ctx(file);
 	struct mxc_jpeg_dev *jpeg = ctx->mxc_jpeg;
 	struct device *dev = jpeg->dev;
 	struct v4l2_pix_format_mplane   *pix_mp = &f->fmt.pix_mp;
@@ -2592,7 +2587,7 @@ static int mxc_jpeg_g_fmt_vid(struct file *file, void *priv,
 
 static int mxc_jpeg_dec_g_selection(struct file *file, void *fh, struct v4l2_selection *s)
 {
-	struct mxc_jpeg_ctx *ctx = mxc_jpeg_fh_to_ctx(fh);
+	struct mxc_jpeg_ctx *ctx = mxc_jpeg_file_to_ctx(file);
 	struct mxc_jpeg_q_data *q_data_cap;
 
 	if (s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE && s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE)
@@ -2621,7 +2616,7 @@ static int mxc_jpeg_dec_g_selection(struct file *file, void *fh, struct v4l2_sel
 
 static int mxc_jpeg_enc_g_selection(struct file *file, void *fh, struct v4l2_selection *s)
 {
-	struct mxc_jpeg_ctx *ctx = mxc_jpeg_fh_to_ctx(fh);
+	struct mxc_jpeg_ctx *ctx = mxc_jpeg_file_to_ctx(file);
 	struct mxc_jpeg_q_data *q_data_out;
 
 	if (s->type != V4L2_BUF_TYPE_VIDEO_OUTPUT && s->type != V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
@@ -2649,7 +2644,7 @@ static int mxc_jpeg_enc_g_selection(struct file *file, void *fh, struct v4l2_sel
 
 static int mxc_jpeg_g_selection(struct file *file, void *fh, struct v4l2_selection *s)
 {
-	struct mxc_jpeg_ctx *ctx = mxc_jpeg_fh_to_ctx(fh);
+	struct mxc_jpeg_ctx *ctx = mxc_jpeg_file_to_ctx(file);
 
 	if (ctx->mxc_jpeg->mode == MXC_JPEG_DECODE)
 		return mxc_jpeg_dec_g_selection(file, fh, s);
@@ -2659,7 +2654,7 @@ static int mxc_jpeg_g_selection(struct file *file, void *fh, struct v4l2_selecti
 
 static int mxc_jpeg_s_selection(struct file *file, void *fh, struct v4l2_selection *s)
 {
-	struct mxc_jpeg_ctx *ctx = mxc_jpeg_fh_to_ctx(fh);
+	struct mxc_jpeg_ctx *ctx = mxc_jpeg_file_to_ctx(file);
 	struct mxc_jpeg_q_data *q_data_out;
 
 	if (ctx->mxc_jpeg->mode != MXC_JPEG_ENCODE)

-- 
2.49.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
