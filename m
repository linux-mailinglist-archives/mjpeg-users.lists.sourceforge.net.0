Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A247B18EFD
	for <lists+mjpeg-users@lfdr.de>; Sat,  2 Aug 2025 15:55:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:To:In-Reply-To:References:Message-Id:MIME-Version:Date:From:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JIhwt+VF5K5uP2f8+6fEjCmxbRsgG9EfDjpGZPycFfo=; b=XtQTw7j5GftNAtBs3K/4GoFbuq
	sf1b3eqOCjM2Lb9h8TfV84ds2ymffe8YMipTpvVG5Vfuga0JV/c2t7amAZDnpF6OTG073HPyhdCTP
	mTVocex/aIall5O6Y84o6DsO3NY2eZegX98GvKcvGkPZTq0B/f9br8I1sK0nr/XJZWeQ=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1uiChz-0006mr-RZ;
	Sat, 02 Aug 2025 13:55:35 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacopo.mondi@ideasonboard.com>) id 1ui8nB-0000fV-PJ
 for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:44:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xVyu7zb4i+vAmltXy3rOL4h677GGzMZS2dhrlF6n7Z4=; b=B5exGUePyR+nynhW298ngc2a2c
 uUQwV9Y8uTDqlD9soQNjXqF2Q/2Mj2YpDZqQelmrPpa2R7Xm6RPs+eORyQLh6mdHeyH+ShQYI0QuC
 ZonGxdvWLvW3G6NjAVKTERcMAvgOGpXD9Vazp54/vq+mTQUQiZKrqiSjf0XxZiU1LAfg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xVyu7zb4i+vAmltXy3rOL4h677GGzMZS2dhrlF6n7Z4=; b=edQzypg5z66uW77Me9aF0w8DCF
 eFvm975VCuLSs6/bOGnwmisHqosi/WBbwD3pvAEed3YlVhOQ1zAzRIIVBmw7RMWM7ASXb3YYu5Rcc
 0Ipn5bL6FpP7Q4hhDJ7Z+xlPuHC2cNFDhWugAeN/bV8Jx8AFD9lem22R4oH8uC8E+O7g=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ui8nA-0005xz-Gp for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:44:41 +0000
Received: from [192.168.0.172] (mob-5-90-138-121.net.vodafone.it
 [5.90.138.121])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 6F1A939D0;
 Sat,  2 Aug 2025 11:32:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1754127181;
 bh=plUDcgbQkGw4JyRbthC79SLTx+gbob3U9axm5vZyPtk=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=SkX6QI0fVpdZyZWipUKoRAh6k0e+KWR2tAAJnBI4jQ23/Jqyuwg3nvBEqmr2hdkvu
 f3kK5CxdreRfQcAG/s/J8ryTY8EWe3hohBJEYgb614t2SVt/j3dRn/xosIhuT7TpD9
 IIMKMGph9jDhippZQMTJbMZkOzAa9CJnWTL5yD2w=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Sat, 02 Aug 2025 11:23:22 +0200
MIME-Version: 1.0
Message-Id: <20250802-media-private-data-v1-60-eb140ddd6a9d@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=7314;
 i=jacopo.mondi@ideasonboard.com; h=from:subject:message-id;
 bh=plUDcgbQkGw4JyRbthC79SLTx+gbob3U9axm5vZyPtk=;
 b=owEBbQKS/ZANAwAKAXI0Bo8WoVY8AcsmYgBojdj+Gv25IxJxmaQk2kge3awblRwS1LI4XdRw4
 Rr8AM7v8PyJAjMEAAEKAB0WIQS1xD1IgJogio9YOMByNAaPFqFWPAUCaI3Y/gAKCRByNAaPFqFW
 PKg0D/40XOP1ymiqV3UZQ3VXGNXxWoOIIzNeadTf1tfqQ0EWWeJ1hUxsU5M5ACuvX6TBofNvS50
 kh+QpYAgXd6q4dudHmxvocEcg8NOyRQ5uW2Cyrs/GqSqaN7SMh6q76tjdsA8tbXXh0o3oyDe36B
 qjtT/cC2i5fIerKN3xco2Cpff20JshnqvaKgBVIcK8Ze+iVAqqAiO2cWAFUOts/lJk+5kN9yRDN
 qfGrm8F90EMGjayFJq6JiDsE+d3pCUIY9ZQb+zaqdNUGPGc1FzzQbYmd744+C9o8qo3OBLOgGT+
 EFCV4vdHx7xoSCsRkBSiPnKCx/ztAthTj1AsUTGJyzsAGNRiTAJRIItVGRO8dXkgSv2+ZryniHl
 9Bf1/2lj18fmhHdihFTmpREVk0r5kVu3+GmZMdRqaZN8iG4yB6UzGURtlj6ejN+rF6yOolxUf+N
 k/p3Lk+q7ULyckIqziFqIJ4v0pihZUwPacSTI2LXjwAoqSK1EQngHats7fi1V1PVOVMHNqeHr+e
 +trroR5QY+A8Oa/hYZbYaDpK1CvEhT1pzcwWvkToNgcrwafRJc5WCAU2lDs9CF4KnQCrpvcLqMy
 SXVP98AjcOz2xZDPMONZFIfxUuwv4TEh+ccR0/QCEUpUVsLzM28z9M5iF1oaU3d6+ktbS7+13FQ
 O+Ls+rwA+ykB7OA==
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
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URI: ideasonboard.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1ui8nA-0005xz-Gp
X-Mailman-Approved-At: Sat, 02 Aug 2025 13:55:16 +0000
Subject: [Mjpeg-users] [PATCH 60/65] media: usb: uvc: Access v4l2_fh from
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
 drivers/media/usb/uvc/uvc_v4l2.c | 36 ++++++++++++++++++------------------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/media/usb/uvc/uvc_v4l2.c b/drivers/media/usb/uvc/uvc_v4l2.c
index 09677ed639ae9252a57ce09cdbcfd567ad7aabc2..10196d62f287502b0dd472ac68ec6914ca4eb06b 100644
--- a/drivers/media/usb/uvc/uvc_v4l2.c
+++ b/drivers/media/usb/uvc/uvc_v4l2.c
@@ -391,7 +391,7 @@ static int uvc_v4l2_try_format(struct uvc_streaming *stream,
 static int uvc_ioctl_g_fmt(struct file *file, void *fh,
 			   struct v4l2_format *fmt)
 {
-	struct uvc_fh *handle = fh;
+	struct uvc_fh *handle = to_uvc_fh(file);
 	struct uvc_streaming *stream = handle->stream;
 	const struct uvc_format *format;
 	const struct uvc_frame *frame;
@@ -427,7 +427,7 @@ static int uvc_ioctl_g_fmt(struct file *file, void *fh,
 static int uvc_ioctl_s_fmt(struct file *file, void *fh,
 			   struct v4l2_format *fmt)
 {
-	struct uvc_fh *handle = fh;
+	struct uvc_fh *handle = to_uvc_fh(file);
 	struct uvc_streaming *stream = handle->stream;
 	struct uvc_streaming_control probe;
 	const struct uvc_format *format;
@@ -460,7 +460,7 @@ static int uvc_ioctl_g_parm(struct file *file, void *fh,
 			    struct v4l2_streamparm *parm)
 {
 	u32 numerator, denominator;
-	struct uvc_fh *handle = fh;
+	struct uvc_fh *handle = to_uvc_fh(file);
 	struct uvc_streaming *stream = handle->stream;
 
 	if (parm->type != stream->type)
@@ -496,7 +496,7 @@ static int uvc_ioctl_g_parm(struct file *file, void *fh,
 static int uvc_ioctl_s_parm(struct file *file, void *fh,
 			    struct v4l2_streamparm *parm)
 {
-	struct uvc_fh *handle = fh;
+	struct uvc_fh *handle = to_uvc_fh(file);
 	struct uvc_streaming *stream = handle->stream;
 	struct uvc_streaming_control probe;
 	struct v4l2_fract timeperframe;
@@ -641,7 +641,7 @@ static int uvc_ioctl_querycap(struct file *file, void *fh,
 static int uvc_ioctl_enum_fmt(struct file *file, void *fh,
 			      struct v4l2_fmtdesc *fmt)
 {
-	struct uvc_fh *handle = fh;
+	struct uvc_fh *handle = to_uvc_fh(file);
 	struct uvc_streaming *stream = handle->stream;
 	enum v4l2_buf_type type = fmt->type;
 	const struct uvc_format *format;
@@ -665,7 +665,7 @@ static int uvc_ioctl_enum_fmt(struct file *file, void *fh,
 static int uvc_ioctl_try_fmt(struct file *file, void *fh,
 			     struct v4l2_format *fmt)
 {
-	struct uvc_fh *handle = fh;
+	struct uvc_fh *handle = to_uvc_fh(file);
 	struct uvc_streaming *stream = handle->stream;
 	struct uvc_streaming_control probe;
 
@@ -675,7 +675,7 @@ static int uvc_ioctl_try_fmt(struct file *file, void *fh,
 static int uvc_ioctl_enum_input(struct file *file, void *fh,
 				struct v4l2_input *input)
 {
-	struct uvc_fh *handle = fh;
+	struct uvc_fh *handle = to_uvc_fh(file);
 	struct uvc_video_chain *chain = handle->chain;
 	const struct uvc_entity *selector = chain->selector;
 	struct uvc_entity *iterm = NULL;
@@ -717,7 +717,7 @@ static int uvc_ioctl_enum_input(struct file *file, void *fh,
 
 static int uvc_ioctl_g_input(struct file *file, void *fh, unsigned int *input)
 {
-	struct uvc_fh *handle = fh;
+	struct uvc_fh *handle = to_uvc_fh(file);
 	struct uvc_video_chain *chain = handle->chain;
 	u8 *buf;
 	int ret;
@@ -745,7 +745,7 @@ static int uvc_ioctl_g_input(struct file *file, void *fh, unsigned int *input)
 
 static int uvc_ioctl_s_input(struct file *file, void *fh, unsigned int input)
 {
-	struct uvc_fh *handle = fh;
+	struct uvc_fh *handle = to_uvc_fh(file);
 	struct uvc_streaming *stream = handle->stream;
 	struct uvc_video_chain *chain = handle->chain;
 	u8 *buf;
@@ -780,7 +780,7 @@ static int uvc_ioctl_s_input(struct file *file, void *fh, unsigned int input)
 static int uvc_ioctl_query_ext_ctrl(struct file *file, void *fh,
 				    struct v4l2_query_ext_ctrl *qec)
 {
-	struct uvc_fh *handle = fh;
+	struct uvc_fh *handle = to_uvc_fh(file);
 	struct uvc_video_chain *chain = handle->chain;
 
 	return uvc_query_v4l2_ctrl(chain, qec);
@@ -808,7 +808,7 @@ static int uvc_ctrl_check_access(struct uvc_video_chain *chain,
 static int uvc_ioctl_g_ext_ctrls(struct file *file, void *fh,
 				 struct v4l2_ext_controls *ctrls)
 {
-	struct uvc_fh *handle = fh;
+	struct uvc_fh *handle = to_uvc_fh(file);
 	struct uvc_video_chain *chain = handle->chain;
 	struct v4l2_ext_control *ctrl = ctrls->controls;
 	unsigned int i;
@@ -892,7 +892,7 @@ static int uvc_ioctl_s_try_ext_ctrls(struct uvc_fh *handle,
 static int uvc_ioctl_s_ext_ctrls(struct file *file, void *fh,
 				 struct v4l2_ext_controls *ctrls)
 {
-	struct uvc_fh *handle = fh;
+	struct uvc_fh *handle = to_uvc_fh(file);
 
 	return uvc_ioctl_s_try_ext_ctrls(handle, ctrls, VIDIOC_S_EXT_CTRLS);
 }
@@ -900,7 +900,7 @@ static int uvc_ioctl_s_ext_ctrls(struct file *file, void *fh,
 static int uvc_ioctl_try_ext_ctrls(struct file *file, void *fh,
 				   struct v4l2_ext_controls *ctrls)
 {
-	struct uvc_fh *handle = fh;
+	struct uvc_fh *handle = to_uvc_fh(file);
 
 	return uvc_ioctl_s_try_ext_ctrls(handle, ctrls, VIDIOC_TRY_EXT_CTRLS);
 }
@@ -908,7 +908,7 @@ static int uvc_ioctl_try_ext_ctrls(struct file *file, void *fh,
 static int uvc_ioctl_querymenu(struct file *file, void *fh,
 			       struct v4l2_querymenu *qm)
 {
-	struct uvc_fh *handle = fh;
+	struct uvc_fh *handle = to_uvc_fh(file);
 	struct uvc_video_chain *chain = handle->chain;
 
 	return uvc_query_v4l2_menu(chain, qm);
@@ -917,7 +917,7 @@ static int uvc_ioctl_querymenu(struct file *file, void *fh,
 static int uvc_ioctl_g_selection(struct file *file, void *fh,
 				 struct v4l2_selection *sel)
 {
-	struct uvc_fh *handle = fh;
+	struct uvc_fh *handle = to_uvc_fh(file);
 	struct uvc_streaming *stream = handle->stream;
 
 	if (sel->type != stream->type)
@@ -951,7 +951,7 @@ static int uvc_ioctl_g_selection(struct file *file, void *fh,
 static int uvc_ioctl_enum_framesizes(struct file *file, void *fh,
 				     struct v4l2_frmsizeenum *fsize)
 {
-	struct uvc_fh *handle = fh;
+	struct uvc_fh *handle = to_uvc_fh(file);
 	struct uvc_streaming *stream = handle->stream;
 	const struct uvc_format *format = NULL;
 	const struct uvc_frame *frame = NULL;
@@ -991,7 +991,7 @@ static int uvc_ioctl_enum_framesizes(struct file *file, void *fh,
 static int uvc_ioctl_enum_frameintervals(struct file *file, void *fh,
 					 struct v4l2_frmivalenum *fival)
 {
-	struct uvc_fh *handle = fh;
+	struct uvc_fh *handle = to_uvc_fh(file);
 	struct uvc_streaming *stream = handle->stream;
 	const struct uvc_format *format = NULL;
 	const struct uvc_frame *frame = NULL;
@@ -1063,7 +1063,7 @@ static int uvc_ioctl_subscribe_event(struct v4l2_fh *fh,
 static long uvc_ioctl_default(struct file *file, void *fh, bool valid_prio,
 			      unsigned int cmd, void *arg)
 {
-	struct uvc_fh *handle = fh;
+	struct uvc_fh *handle = to_uvc_fh(file);
 	struct uvc_video_chain *chain = handle->chain;
 
 	switch (cmd) {

-- 
2.49.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
