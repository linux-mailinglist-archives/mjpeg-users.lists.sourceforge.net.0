Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F117B18EE2
	for <lists+mjpeg-users@lfdr.de>; Sat,  2 Aug 2025 15:55:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:To:In-Reply-To:References:Message-Id:MIME-Version:Date:From:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1D8MgIWITblzKkWyUx5Mh8yX7x/zR9mBzls2CSo8KQk=; b=cUL8qFBI3OpJV5AhzJsJt9x1PV
	w88Y38jr9ZEUVbpXDueaRl9Ge4uCLI0hFHAV8x0TZjSjmVz+P62+baPbgxQASelOdRyzjjfvG8jB4
	8oJ7851Zk2ARLzAnfn0fWPeOsQ7JVLN31NeMDEGO/Xp/VUReiK3LqecxWtFhg1cVxsBs=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1uiChq-0006YH-5d;
	Sat, 02 Aug 2025 13:55:26 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacopo.mondi@ideasonboard.com>) id 1ui8iq-0000I3-Ej
 for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:40:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nLGNPEDom6sHs3vhAks+lDfqy50gOL05JXCQ2LXF9UQ=; b=JwfB1ZgWRhoX/XcvGd1Wy+EoCn
 XVPgx+CcjtCI3KjXawYQtvS0+E7xA8M0vkSQV1PAY5FrXkZWwiPaBxkKma7XN9h2MBmghdyEAxvNH
 TnSOPavc8jwgAXUDdt75/bd4RlWTX85NpF5MD4z6JGcu9MuYOL6cb1E+UBBDc6J863W0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nLGNPEDom6sHs3vhAks+lDfqy50gOL05JXCQ2LXF9UQ=; b=EtAoBZbEF1i14RFbVuS3/kMJHX
 ZcjIx7fpaQsz/VrUaIVBjZn/V5WOcaexhPkp9fh7uKzujn+QCOrXC+dxzsxBPIJyvbxQQfAeu0NEK
 7LLGYAr3tGsUOylqO4QdJq2Hwr74BH5WON0k43lOvAQaLNTjeiUmQy8bAAG9H8NEdH9Q=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ui8ip-0005fA-Qw for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:40:12 +0000
Received: from [192.168.0.172] (mob-5-90-138-121.net.vodafone.it
 [5.90.138.121])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id F05833F8F;
 Sat,  2 Aug 2025 11:29:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1754126967;
 bh=M2x6tXzxCjjFAUXbEL3SC1QII47wQxoBv/wBb1wDsp0=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=i9zx++aQy/alvIpuEbDg4B8AZJJ6ljo40OX7t/PQh+QoqR2JKsunNOZik5UtJPOIh
 HkA0w1qtbec7i1eXH98uzHZHkmMQTSdGwYpy1rVrXNPF25rPMV/Q0resMuSAHRSHzr
 WRbwUjUj18J0V9ZzY59wjrgffWpq5xaH1xshksJw=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Sat, 02 Aug 2025 11:23:03 +0200
MIME-Version: 1.0
Message-Id: <20250802-media-private-data-v1-41-eb140ddd6a9d@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2558;
 i=jacopo.mondi@ideasonboard.com; h=from:subject:message-id;
 bh=M2x6tXzxCjjFAUXbEL3SC1QII47wQxoBv/wBb1wDsp0=;
 b=owEBbQKS/ZANAwAKAXI0Bo8WoVY8AcsmYgBojdj8n9hAMD57A4gTd58HcmF9kOI9d41H8TaVb
 6NpnZLKiN6JAjMEAAEKAB0WIQS1xD1IgJogio9YOMByNAaPFqFWPAUCaI3Y/AAKCRByNAaPFqFW
 PPR3D/49Ma84Vh9j5F5lg+aITWx3vFs2W0Ao6fxs0ce6jAjUUycjjm5bMR9ul9yvs+bvwNYKCu/
 /unwZHnferqh4e3z6zoxuYb5CSXpIxc1jr4Kk/EqeGOiKOnn/YkW+utx+fsqKKsVIK3uLt6FOta
 IRAVmTSR8HwUKkhJhuyYlHsJGaAkKoWSm2XBBa+OSM7TrXCqm+6xGIl1iAYtuma4zB0R8Z1bTx8
 d1Kz+3QMgH29z52NvDsY4L+9bP3myDbJQBCBicACsU4DseVlbjXaqhtC8zrMi4wNQsxF3nyQg5w
 zw3tKqg+X/9n4dj8egNhtrzQ9fajVM1xp1exUiOe0JiH6u00E97/9DPUiXPiiAxpSpq4QTc1rd4
 aCPhF7bX6bqcgmnb1by/d1vqkuaASPi/VRmo9x4tykyyWZfd8rh6IOkiGJf5V/wFf9qJz6zuOSX
 kCEGX03VCm2ksn8iOZMB5bPilBNd060ETYyKNsSODxpRwLbmfaN7wBbl3oOwV5WOWLM7Wn0znRs
 uwu8gEf8zravjInXPbM2xA1mhcei9mOg3RyrE43J4rwjCagzVyEwvT7d8Bf731bR0ng6svImvD3
 p+kgM+LGY/7CfBWG3zHWNRPfvzpPzytKg/8ZNIqHfTSj0gqunclhwK7YXop3L5pAAwnCvhko2yA
 fM1004fYqBkAsEA==
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
X-Headers-End: 1ui8ip-0005fA-Qw
X-Mailman-Approved-At: Sat, 02 Aug 2025 13:55:15 +0000
Subject: [Mjpeg-users] [PATCH 41/65] media: nxp: mx2: Access v4l2_fh from
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
 drivers/media/platform/nxp/mx2_emmaprp.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/media/platform/nxp/mx2_emmaprp.c b/drivers/media/platform/nxp/mx2_emmaprp.c
index d23da93304bd6f55898cfb96319d2fa101036ca1..3aae8c0b690c0b1b0dd4f05a1c9184b089719a20 100644
--- a/drivers/media/platform/nxp/mx2_emmaprp.c
+++ b/drivers/media/platform/nxp/mx2_emmaprp.c
@@ -456,13 +456,13 @@ static int vidioc_g_fmt(struct emmaprp_ctx *ctx, struct v4l2_format *f)
 static int vidioc_g_fmt_vid_out(struct file *file, void *priv,
 				struct v4l2_format *f)
 {
-	return vidioc_g_fmt(priv, f);
+	return vidioc_g_fmt(file_to_emmaprp_ctx(file), f);
 }
 
 static int vidioc_g_fmt_vid_cap(struct file *file, void *priv,
 				struct v4l2_format *f)
 {
-	return vidioc_g_fmt(priv, f);
+	return vidioc_g_fmt(file_to_emmaprp_ctx(file), f);
 }
 
 static int vidioc_try_fmt(struct v4l2_format *f)
@@ -502,8 +502,8 @@ static int vidioc_try_fmt(struct v4l2_format *f)
 static int vidioc_try_fmt_vid_cap(struct file *file, void *priv,
 				  struct v4l2_format *f)
 {
+	struct emmaprp_ctx *ctx = file_to_emmaprp_ctx(file);
 	struct emmaprp_fmt *fmt;
-	struct emmaprp_ctx *ctx = priv;
 
 	fmt = find_format(f);
 	if (!fmt || !(fmt->types & MEM2MEM_CAPTURE)) {
@@ -519,8 +519,8 @@ static int vidioc_try_fmt_vid_cap(struct file *file, void *priv,
 static int vidioc_try_fmt_vid_out(struct file *file, void *priv,
 				  struct v4l2_format *f)
 {
+	struct emmaprp_ctx *ctx = file_to_emmaprp_ctx(file);
 	struct emmaprp_fmt *fmt;
-	struct emmaprp_ctx *ctx = priv;
 
 	fmt = find_format(f);
 	if (!fmt || !(fmt->types & MEM2MEM_OUTPUT)) {
@@ -580,7 +580,7 @@ static int vidioc_s_fmt_vid_cap(struct file *file, void *priv,
 	if (ret)
 		return ret;
 
-	return vidioc_s_fmt(priv, f);
+	return vidioc_s_fmt(file_to_emmaprp_ctx(file), f);
 }
 
 static int vidioc_s_fmt_vid_out(struct file *file, void *priv,
@@ -592,7 +592,7 @@ static int vidioc_s_fmt_vid_out(struct file *file, void *priv,
 	if (ret)
 		return ret;
 
-	return vidioc_s_fmt(priv, f);
+	return vidioc_s_fmt(file_to_emmaprp_ctx(file), f);
 }
 
 static const struct v4l2_ioctl_ops emmaprp_ioctl_ops = {

-- 
2.49.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
