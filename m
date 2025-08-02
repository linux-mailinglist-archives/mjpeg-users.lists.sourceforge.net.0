Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E91AB18EF8
	for <lists+mjpeg-users@lfdr.de>; Sat,  2 Aug 2025 15:55:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:To:In-Reply-To:References:Message-Id:MIME-Version:Date:From:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=E9B65vbrAJPgHKrU3XQsJmrKdCg1xv6sV5q7geOe0UY=; b=mnPqMikB6l0AGJc05AiHcMQJ02
	UX5sKanTBD309tzlElSRrcITMQWestEGWbAiJqkEPYcEJAITO4gGAXZRTIZyShaXcnUSVNMkCj/6s
	TKEnvNxTVRor2VPDOIWX1V3258LGtsqgRkCj+0rPRS7n3RNvpykU0JfXd2wiNnmcRJQo=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1uiChy-0006jS-37;
	Sat, 02 Aug 2025 13:55:34 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacopo.mondi@ideasonboard.com>) id 1ui8mn-0000Y4-5B
 for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:44:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BOQIcVCnDJuLbDdxo/mPvQJ+D+r8j4AKxLhSV0E3Z5w=; b=Bks7GAkPlgkkD5tqt2vn8dexyN
 /uMfAHH5ArfMHXT6SDeS1nVUdsy2zKET3cwlh4Br/8Cj0VPF3GrvS0zPQUl+8xTG0qCsc+rvFWWsM
 LRyKyoI0SH0GD0WkVRy4t/mM68xBwkEvxqZRSJAtavd11e0YjkElfAdZ+XP2zEJA8Hz4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BOQIcVCnDJuLbDdxo/mPvQJ+D+r8j4AKxLhSV0E3Z5w=; b=TP7uczUzPOhaeciPsnftjIDq3F
 q4Otk+5du9hLRfoOIo0nYNPJwoWh0f9QEtJA4FfccUKaaYhIVLRpEvH4r/ci+B6wry3CN4XUBSCDL
 emPlpK/dDC+QIuNjMuotKp/bXzADiD4y3wCR8uIvyZy8eMJ2E3oQWaAHR49MI54ywmmI=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ui8mm-0005w6-Jf for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:44:17 +0000
Received: from [192.168.0.172] (mob-5-90-138-121.net.vodafone.it
 [5.90.138.121])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 92F0C3484;
 Sat,  2 Aug 2025 11:25:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1754126756;
 bh=W7Xf+mYBvYt6o9va9RI60UvIC8rElGReU++HhnCmVfg=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=FmxGWJBO4E5gfmQ58+RSnlUN52ZRP+BEdoqkKtsfvQR6jjDAnirS/9gNoOYc57lfI
 RexzJSryXfalvYWYRWKmdwZ8L2tq10eTyRsJFwKGBOzBN7fqkrTHkfy8UsCflim1KR
 F/nX+wFryQEtYqk1VrqnVMHTDoDHwqd89mcMY3hM=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Sat, 02 Aug 2025 11:22:41 +0200
MIME-Version: 1.0
Message-Id: <20250802-media-private-data-v1-19-eb140ddd6a9d@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2008;
 i=jacopo.mondi@ideasonboard.com; h=from:subject:message-id;
 bh=UzWhpz4xRfaNWR/lEJP22EOtdoViE3HjL6eKhJD+k4E=;
 b=owEBbQKS/ZANAwAKAXI0Bo8WoVY8AcsmYgBojdj5QI9RGxRjTZ4i0/Oxsr0jsuAyLpLtzBDRp
 lLra/Ptx/+JAjMEAAEKAB0WIQS1xD1IgJogio9YOMByNAaPFqFWPAUCaI3Y+QAKCRByNAaPFqFW
 PLxcD/9DQ1eh+7ORvSewCGfbUsdvwcusgLEdfimWMtixIHeb8GHjJBgZDHWANs4tzRhizZXc00D
 eB14EgzGTuYSfBh+SeiIQc2W821bIB4AF47VJ7paLr+6Ehpkjta3Z9R8684aE4hVEiozkIjYbTm
 YDe7CD5rgm8Jxkr6rX3dnXVv3MwvobNjhi4ZLVj6k9GQi4Knz4hcfrM/vftFhzLuQJ7iO0z72Pt
 kNNyNzwedzcS25WOSLeBekAuKEUA5on008vbsIrI+w6ZkD1g3nPmRoK0ak2y8wZBKOFoxpWVg41
 hHb++Y41ZeyaCZqGPftDkbkZiTaN/mlWTMoxSmxYGEQK98fuyUmJlocZW7DqkRmRr+0QaBXBuUX
 2P/KOa1ID1yyoeGLNOtc/IJoi0NMW/2fxW504y5sisWA36Esidq6GNT+5Brx9IwS98eXy8ujgHC
 OeQ9v8xXeq/kiAy1xvlranHBEXkvrjxMJrC+Mh8Q075Ps5z2MIKmHxhkZ3hp3a0UEtZOHnSr1w3
 e++lQSZIhkz5edb0mFzoBAz4eZuAcMxacVvDKu6o0H//a5qBlxcGCrWKfBGmMCamzv5ClbFVnOg
 WvJO6KxSYl0EQPtZIbie3YGK/346Ea3AjdRLlWbUUCy1XZ+IuhfreqtwvYzPbTByCucwYBv86xb
 RdlrEzhdk+VnUcg==
X-Developer-Key: i=jacopo.mondi@ideasonboard.com; a=openpgp;
 fpr=72392EDC88144A65C701EA9BA5826A2587AD026B
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
 The custom video_open() function in the camss driver open-codes the
 v4l2_fh_open()
 helper, with an additional mutex that protects the whole function. Given
 that the function does not modify any data g [...] 
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
X-Headers-End: 1ui8mm-0005w6-Jf
X-Mailman-Approved-At: Sat, 02 Aug 2025 13:55:15 +0000
Subject: [Mjpeg-users] [PATCH 19/65] media: camss: Replace .open() file
 operation with v4l2_fh_open()
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

The custom video_open() function in the camss driver open-codes the
v4l2_fh_open() helper, with an additional mutex that protects the whole
function. Given that the function does not modify any data guarded by
the lock, there's no need for using the mutex and the function can be
replaced by v4l2_fh_open().

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
 drivers/media/platform/qcom/camss/camss-video.c | 32 +------------------------
 1 file changed, 1 insertion(+), 31 deletions(-)

diff --git a/drivers/media/platform/qcom/camss/camss-video.c b/drivers/media/platform/qcom/camss/camss-video.c
index 8d05802d1735a35cb1a1a0a81c6666b1517dd2e6..c5d02f9ebc6aa9bfd6910944f3d40a2e5f0a908f 100644
--- a/drivers/media/platform/qcom/camss/camss-video.c
+++ b/drivers/media/platform/qcom/camss/camss-video.c
@@ -604,36 +604,6 @@ static const struct v4l2_ioctl_ops msm_vid_ioctl_ops = {
  * V4L2 file operations
  */
 
-static int video_open(struct file *file)
-{
-	struct video_device *vdev = video_devdata(file);
-	struct camss_video *video = video_drvdata(file);
-	struct v4l2_fh *vfh;
-	int ret;
-
-	mutex_lock(&video->lock);
-
-	vfh = kzalloc(sizeof(*vfh), GFP_KERNEL);
-	if (vfh == NULL) {
-		ret = -ENOMEM;
-		goto error_alloc;
-	}
-
-	v4l2_fh_init(vfh, vdev);
-	v4l2_fh_add(vfh);
-
-	file->private_data = vfh;
-
-	mutex_unlock(&video->lock);
-
-	return 0;
-
-error_alloc:
-	mutex_unlock(&video->lock);
-
-	return ret;
-}
-
 static int video_release(struct file *file)
 {
 	vb2_fop_release(file);
@@ -646,7 +616,7 @@ static int video_release(struct file *file)
 static const struct v4l2_file_operations msm_vid_fops = {
 	.owner          = THIS_MODULE,
 	.unlocked_ioctl = video_ioctl2,
-	.open           = video_open,
+	.open           = v4l2_fh_open,
 	.release        = video_release,
 	.poll           = vb2_fop_poll,
 	.mmap		= vb2_fop_mmap,

-- 
2.49.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
