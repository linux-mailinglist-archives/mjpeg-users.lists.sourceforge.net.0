Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D554B18F05
	for <lists+mjpeg-users@lfdr.de>; Sat,  2 Aug 2025 15:55:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:To:In-Reply-To:References:Message-Id:MIME-Version:Date:From:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IlIKhVLm6UYlOY1V6N7RRcRVSjf7xKtcoy72/Hi4zR0=; b=DVhvQAcA/alQ58CuxmBbxPxDd6
	IV33420oMMKh9dGH5Ru9axU9uH90uIUJ1/33nIUOHtnFkw5r5TJmIFCIZI4dfGjQRCyEFn73PYizf
	4/2XFYV2UReLqIgSYIwnAijN+EQGXIE/YIMS7nmxZNlpPbu8oeUybaO2y60QXGe7uVYA=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1uiCi3-0006s1-2V;
	Sat, 02 Aug 2025 13:55:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacopo.mondi@ideasonboard.com>) id 1ui8qr-0000jL-B2
 for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:48:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qvODO0ZNhtY2L0uk+40ky81n7+dSQrFUvajVsSfqT+c=; b=X017J9lt3oMI5H/JalA9e7qDKP
 ImhV8PnF3aJfspXHrKZetEdCvjlLjfgi2Inj27/+ADYiL78xmWNvVXdhe6f1usqg2m0Oih57guARg
 LSuXszy10jBuw9GdZPzscRTrP0Ae+c8TfBrET9bbVpg7EkV+i3ksUIMI99sT9SXrHeZ8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qvODO0ZNhtY2L0uk+40ky81n7+dSQrFUvajVsSfqT+c=; b=JKzfNfLMOHO3FURYD2ss7/X3z7
 7ZkIhIt5Rc9c3aY8ziKyxameBE1f6rN0cRExXsQHY8LLBWBD4sRLoViy196pngYLK+0idTOKlP4e7
 fNQxpIDPpXth0sEknvoevV6kRnxWDxXEvUKmxcIUDRhZhLz5qP1tjxADlAh+yRtQnfUs=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ui8qq-0006PW-QH for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:48:29 +0000
Received: from [192.168.0.172] (mob-5-90-138-121.net.vodafone.it
 [5.90.138.121])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id BCA411741;
 Sat,  2 Aug 2025 11:23:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1754126630;
 bh=6F3PmnRdTsR6MP0pAkheGJaZIteib7h3Mt38QOL4+ks=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=rAFxA493SWAD9TKKi/8m6Hv+f3yVH6PRa9hRM3hBnrJQOoaSrfgP62Rrltl40evok
 C5qla7DhplXPFGaijSw8DaDg6nxNxBBJidrW2Jc5A2cAuKm1xh4hu9gekA4a35DdgQ
 rE2UrWTUAmvbnSBwN7+1sWr/1aDIf4+mcroDG+YM=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Sat, 02 Aug 2025 11:22:29 +0200
MIME-Version: 1.0
Message-Id: <20250802-media-private-data-v1-7-eb140ddd6a9d@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2287;
 i=jacopo.mondi@ideasonboard.com; h=from:subject:message-id;
 bh=d1NV4J7Giad62JgBsrW5PwS1cT7NJmAZ57UHAI1qwVg=;
 b=owEBbQKS/ZANAwAKAXI0Bo8WoVY8AcsmYgBojdj4d2z3dXIt37s+JMRVX5xja57etKpuYf7wo
 w1WB8WrjYGJAjMEAAEKAB0WIQS1xD1IgJogio9YOMByNAaPFqFWPAUCaI3Y+AAKCRByNAaPFqFW
 PKm9D/9cOtEDkLOKZwjwKkZQThkzdJmTDjhOz4PDCmlo2gyCGRkvtl9sCDXyx6IFzek1RzaMV4M
 ojKA+L06VoolHAjP9McH2iYSVvbx9IGkWX6g2bQaw3b4RPQJt/TaMpqmMxBrCs0OlCQhqhOnLTo
 lmwiFYLW9XqtmrQcOVEHPuEKna2X1pKfKX73eOm/WlDOVbksbN6uMkOrk/9sHkshZS3imopwIoX
 OywTU1stICqKyghDw7nC/v7lllKShDBaOkrbkIfS+XlLpWdPwv50HF/2WzOn25+D36ttakcZBx6
 Cjyskopw7Td+2t/zKTZcYtj28/U0xC9N1OOwgTwVwyhQXKRzdd/5gOnKqBYifJSQhATNhCwY85f
 CWb9xknx3/Y5pjngkIj0YVOKy2DD9Bbocipp9rSF7BbQvOZhnEZZFQyFTd6zmLoAvAKXZJU6R/A
 W2jjCmzX7MNuVSa9j/F923fad/g2S9VaJmrlYL4AeUxKa1VhKCwhNlyFHa2/KzDgkPh7AWQ99Xa
 pMofXhpiIAdlCkX7rNpdqkiIRlytrnbhqnAhUFQtMpZohW6hBxc1ECBKdMaayvVssNdvDhuQTsn
 PSFFLv/XcnpqSj64xb73UcbzR2357sniQCZsr+79OOKiwECemqEy9EDBOhL/zSH0EenrSWHKifx
 8W0FfhQ7Q2FtIew==
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
 Most V4L2 drivers store the v4l2_fh pointer in file->private_data. The most
 driver instead stores the pointer to the driver-specific structure that embeds
 the v4l2_fh. Switch to storing the v4l2_fh po [...] 
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
X-Headers-End: 1ui8qq-0006PW-QH
X-Mailman-Approved-At: Sat, 02 Aug 2025 13:55:15 +0000
Subject: [Mjpeg-users] [PATCH 07/65] media: staging: most: Store v4l2_fh
 pointer in file->private_data
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

Most V4L2 drivers store the v4l2_fh pointer in file->private_data. The
most driver instead stores the pointer to the driver-specific structure
that embeds the v4l2_fh. Switch to storing the v4l2_fh pointer itself to
standardize behaviour across drivers. This also prepares for future
refactoring that depends on v4l2_fh being stored in private_data.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
 drivers/staging/most/video/video.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/most/video/video.c b/drivers/staging/most/video/video.c
index 2b3cdb1ce1404cd13655c780f1215c364ce1a70f..bce7ffeac8fe50d3442f4993ae49ab5fc96ec3cd 100644
--- a/drivers/staging/most/video/video.c
+++ b/drivers/staging/most/video/video.c
@@ -52,6 +52,11 @@ struct comp_fh {
 	u32 offs;
 };
 
+static inline struct comp_fh *to_comp_fh(struct file *filp)
+{
+	return container_of(filp->private_data, struct comp_fh, fh);
+}
+
 static LIST_HEAD(video_devices);
 static DEFINE_SPINLOCK(list_lock);
 
@@ -91,7 +96,7 @@ static int comp_vdev_open(struct file *filp)
 
 	fh->mdev = mdev;
 	v4l2_fh_init(&fh->fh, vdev);
-	filp->private_data = fh;
+	filp->private_data = &fh->fh;
 
 	v4l2_fh_add(&fh->fh);
 
@@ -115,7 +120,7 @@ static int comp_vdev_open(struct file *filp)
 
 static int comp_vdev_close(struct file *filp)
 {
-	struct comp_fh *fh = filp->private_data;
+	struct comp_fh *fh = to_comp_fh(filp);
 	struct most_video_dev *mdev = fh->mdev;
 	struct mbo *mbo, *tmp;
 
@@ -151,7 +156,7 @@ static int comp_vdev_close(struct file *filp)
 static ssize_t comp_vdev_read(struct file *filp, char __user *buf,
 			      size_t count, loff_t *pos)
 {
-	struct comp_fh *fh = filp->private_data;
+	struct comp_fh *fh = to_comp_fh(filp);
 	struct most_video_dev *mdev = fh->mdev;
 	int ret = 0;
 
@@ -200,7 +205,7 @@ static ssize_t comp_vdev_read(struct file *filp, char __user *buf,
 
 static __poll_t comp_vdev_poll(struct file *filp, poll_table *wait)
 {
-	struct comp_fh *fh = filp->private_data;
+	struct comp_fh *fh = to_comp_fh(filp);
 	struct most_video_dev *mdev = fh->mdev;
 	__poll_t mask = 0;
 

-- 
2.49.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
