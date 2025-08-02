Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D2AB18EE6
	for <lists+mjpeg-users@lfdr.de>; Sat,  2 Aug 2025 15:55:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:To:In-Reply-To:References:Message-Id:MIME-Version:Date:From:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jl+kUJTAuysggT5d6Qug2Pw7F6kdBZgkiSaYHbj8hkE=; b=BXgwK2+JfDtqa7hlA81nIjTOjK
	CBkgQy+mONI4L3awEXINGQdCO4RCott/FnvvNmHH5JDRqP/P/uJbk/+fnnl8tjmHCp1FXzLiOC8M5
	HsyqAKLoG21i/2GTcq62lmZqd+h4PVJ1FwnvIPKlisn2LgQwCGmlAbCH6Ek+7NtwnYL4=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1uiChr-0006a5-L8;
	Sat, 02 Aug 2025 13:55:27 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacopo.mondi@ideasonboard.com>) id 1ui8jE-0000J5-EB
 for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:40:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hOMY/Wb6k3Ta9pVYnFqHmu4cAKmBsBERcuiz2DVpx80=; b=fDdjnyjsFvsQF2JFVzTB5HFzr8
 2bh0A16hocauL2Bcd1ornXNs+grVkadyK72EmfiYelxGygzddnZBWgvn33UXlIibJdLfbnC+ftyv0
 TS2Bdolc09ASg+zOVLZ3qtcc6KLeELMnIssHhJZb97ginoQdCcsrLdAimwKJGmguPba8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hOMY/Wb6k3Ta9pVYnFqHmu4cAKmBsBERcuiz2DVpx80=; b=M/rhof7wGjvK5DEdNAESoK+hfA
 BA2LhTERUX1UpwNkFIOlDQp3qe4mxXo2Ebht4YQW52UEiDmEfx0y4oUMym0zy69gaIXlhUmtsh2ga
 NR8mDfI3NcU/w9ioD4Mo6LHXHiL9DbLF7rJljn+Gcq6lZFOQGnugm36d+AtA9DH/hZFs=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ui8jD-0005gm-Qg for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:40:36 +0000
Received: from [192.168.0.172] (mob-5-90-138-121.net.vodafone.it
 [5.90.138.121])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 8152C3C67;
 Sat,  2 Aug 2025 11:28:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1754126893;
 bh=41vTx83z/Uwja6XVkgBfBZsgFkv9BjK18LAN6EVk9C4=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=pVvNcAuntI593b3+8JOouhdzGDFt2tmHaE57Nr/H0+gti/BMJpEEIFHA5+uFfKKEi
 /TinR7qedy9WiH2jyXomKJZiyq8x2qshMpdc2vFlrCpho2CEsAjd95XWFp6F9VNkLH
 qOhagXfR5W5AHnPYjhQSxrZyg7F3cCClyLs7v+n8=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Sat, 02 Aug 2025 11:22:55 +0200
MIME-Version: 1.0
Message-Id: <20250802-media-private-data-v1-33-eb140ddd6a9d@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2772;
 i=jacopo.mondi@ideasonboard.com; h=from:subject:message-id;
 bh=41vTx83z/Uwja6XVkgBfBZsgFkv9BjK18LAN6EVk9C4=;
 b=owEBbQKS/ZANAwAKAXI0Bo8WoVY8AcsmYgBojdj7pwyrSBi9rnZ2weNb65Z8p51fNTUj4IIin
 TQAaww2RVaJAjMEAAEKAB0WIQS1xD1IgJogio9YOMByNAaPFqFWPAUCaI3Y+wAKCRByNAaPFqFW
 PAMDD/9Ug9QwsOwqd/AgPzEvnOkucjAOnVc54Ut2Iym9meadtfaDDV1mc7FXlnf4QLXhPrr78BW
 mpb135tIptu5FHRKG7ysZfYALCQMddnU3UUQx0/gn5ZIZ5zPK4m9roV/TBUt4NtkFNAEaGV8NLQ
 9FEY9ol3rYLDbWKjxpoZe+VhhCMaZiOBw5yagf67MDewREcw+UUrbGSHW4ru40PKZciqbc/vj0e
 nQfpCOMoiEF91JYrkF/d2z0t/W67gr7LDYsHVhwa/juCbCz2Wu5KQFwJkwZkJNSo2XbrEJdiJ4w
 jnU91qYWYQryas5efYVfY85hlacIcp74d7FCyJCPUdYt8NZ/hyYn8/VfC6qTgKHjcL/9vUZ3uu+
 H32Q5uHhBqaFOo33iNE4+ZRkxfXJ5OcPoqWx+OWYYHE3044p0atCe5/EpNW+pdAD9SD5D+D4UTZ
 kv3SB4HWGcxMS+9txidCBc03zJCYCS8Vc6QIc/VosL0FGTOMEiMfJr6LSwuOipAKCDgNrX2V8sT
 OTZ9kYNFRnph4i25ZZq1/kHy+UJ5IMzKBGRFfCzBCuOngdJG5UtWh9IEQa9OTuiAJTnDo8qoqwT
 viKs/nKaDQkiXseRHCpINPwJEHsdfM+BRPU5LJEZzEfrGdcAxUCWkgHfZ07hCSfQ953aDjIBp9O
 TtEBNodMx+bGSzA==
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
X-Headers-End: 1ui8jD-0005gm-Qg
X-Mailman-Approved-At: Sat, 02 Aug 2025 13:55:15 +0000
Subject: [Mjpeg-users] [PATCH 33/65] media: m2m-deinterlace: Access v4l2_fh
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

Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
 drivers/media/platform/m2m-deinterlace.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/media/platform/m2m-deinterlace.c b/drivers/media/platform/m2m-deinterlace.c
index 51c2f206cb1f601ec2f3d07fffbf63c86f4cdc01..e07e57d4206baa5e7a467298cb240c3a2cd57cd8 100644
--- a/drivers/media/platform/m2m-deinterlace.c
+++ b/drivers/media/platform/m2m-deinterlace.c
@@ -517,13 +517,13 @@ static int vidioc_g_fmt(struct deinterlace_ctx *ctx, struct v4l2_format *f)
 static int vidioc_g_fmt_vid_out(struct file *file, void *priv,
 				struct v4l2_format *f)
 {
-	return vidioc_g_fmt(priv, f);
+	return vidioc_g_fmt(file_to_ctx(file), f);
 }
 
 static int vidioc_g_fmt_vid_cap(struct file *file, void *priv,
 				struct v4l2_format *f)
 {
-	return vidioc_g_fmt(priv, f);
+	return vidioc_g_fmt(file_to_ctx(file), f);
 }
 
 static int vidioc_try_fmt(struct v4l2_format *f, struct deinterlace_fmt *fmt)
@@ -544,8 +544,8 @@ static int vidioc_try_fmt(struct v4l2_format *f, struct deinterlace_fmt *fmt)
 static int vidioc_try_fmt_vid_cap(struct file *file, void *priv,
 				  struct v4l2_format *f)
 {
+	struct deinterlace_ctx *ctx = file_to_ctx(file);
 	struct deinterlace_fmt *fmt;
-	struct deinterlace_ctx *ctx = priv;
 
 	fmt = find_format(f);
 	if (!fmt || !(fmt->types & MEM2MEM_CAPTURE))
@@ -638,20 +638,20 @@ static int vidioc_s_fmt_vid_cap(struct file *file, void *priv,
 	ret = vidioc_try_fmt_vid_cap(file, priv, f);
 	if (ret)
 		return ret;
-	return vidioc_s_fmt(priv, f);
+	return vidioc_s_fmt(file_to_ctx(file), f);
 }
 
 static int vidioc_s_fmt_vid_out(struct file *file, void *priv,
 				struct v4l2_format *f)
 {
-	struct deinterlace_ctx *ctx = priv;
+	struct deinterlace_ctx *ctx = file_to_ctx(file);
 	int ret;
 
 	ret = vidioc_try_fmt_vid_out(file, priv, f);
 	if (ret)
 		return ret;
 
-	ret = vidioc_s_fmt(priv, f);
+	ret = vidioc_s_fmt(ctx, f);
 	if (!ret)
 		ctx->colorspace = f->fmt.pix.colorspace;
 
@@ -661,8 +661,8 @@ static int vidioc_s_fmt_vid_out(struct file *file, void *priv,
 static int vidioc_streamon(struct file *file, void *priv,
 			   enum v4l2_buf_type type)
 {
+	struct deinterlace_ctx *ctx = file_to_ctx(file);
 	struct deinterlace_q_data *s_q_data, *d_q_data;
-	struct deinterlace_ctx *ctx = priv;
 
 	s_q_data = get_q_data(V4L2_BUF_TYPE_VIDEO_OUTPUT);
 	d_q_data = get_q_data(V4L2_BUF_TYPE_VIDEO_CAPTURE);

-- 
2.49.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
