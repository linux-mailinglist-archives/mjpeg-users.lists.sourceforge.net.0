Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C978B18F0B
	for <lists+mjpeg-users@lfdr.de>; Sat,  2 Aug 2025 15:55:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:To:In-Reply-To:References:Message-Id:MIME-Version:Date:From:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rlBJpKdXNjC5Ka14ZX0Ou+XlB7fy2jQME6ZFmqJBlwE=; b=DlNZUPE4AbWUEMPBH9E+al/YHM
	fVhmwIg1SqNLa6NbRwU+LzBd6Eo7zyGx9bY8/B7Q9UtIB/1/k0p2yhQuFLF8i0A0s+wsSxsM4zZIX
	XdlILqYLWHtOnKr+1uqE8TjwtQqc+QGj7xsDw16D60gqdUSb/ktv6wdnXpTXfFAYeYm4=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1uiCi5-0006vM-36;
	Sat, 02 Aug 2025 13:55:41 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacopo.mondi@ideasonboard.com>) id 1ui8rO-0000lb-DD
 for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:49:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8Fh29X2WLmCc5gKlrFBE1rSM6jfwZadtqtNFjZH/FfQ=; b=cTvl2SvlOsefIVexHKACrs78U0
 25zSOYjWWDr0mCHReVi+sinHSLMIP45vwn/fmSo4QWLySo99RJrThIyJ9BOe1hTZhbAZfZMHSmlwY
 LMK0XdP1HTq9wyuP/0LR+lsXqgyNMZw5QywMTJWf2taU8TkmsPQP5SC3hR1ZjCtdoQDY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8Fh29X2WLmCc5gKlrFBE1rSM6jfwZadtqtNFjZH/FfQ=; b=T7jCN84WWXvv+v2Puhc3yl9UFs
 V89MPbVhwAyzrRQq6YXeDMQed+M53t3EMXd09hk8yI4FPzq0Wh8ulVVSUFn5ejMLyu6hjY0OJVuQw
 a+k/U3dhExCCWDNuWqtgUQ0eHF84WokaHyE6Z48XOtwwoB9vsLsyzY5Ij4BOe6S8uOFg=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ui8rN-0006Ru-M9 for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:49:02 +0000
Received: from [192.168.0.172] (mob-5-90-138-121.net.vodafone.it
 [5.90.138.121])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 47C052F92;
 Sat,  2 Aug 2025 11:23:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1754126621;
 bh=Q7uNkMZiUR/bAyP4ReuiDNkh5bQApW2xlrBUgmJ6QKo=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=Qt496vmQr+qgRMEyIl/SE5sDskG6fnGheHq330f4+774KPf1LlMV6RbdNuJemqYqG
 X7RsbLsmtdNfm5DTLA3eAM1LHQYhURvKCf7WCrdPCz2daf9D16QJi8hfMMMcPN/sxp
 b+t4QKddTrOPi6Gw761qhfKA91B7QpjLKRcr2Ci0=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Sat, 02 Aug 2025 11:22:28 +0200
MIME-Version: 1.0
Message-Id: <20250802-media-private-data-v1-6-eb140ddd6a9d@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3116;
 i=jacopo.mondi@ideasonboard.com; h=from:subject:message-id;
 bh=k2a8LQETJyWR2lrXA5s/EIpHnltWb4lK+Y+yCXeLDbQ=;
 b=owEBbQKS/ZANAwAKAXI0Bo8WoVY8AcsmYgBojdj3Cd24ST01biVMwBnhdcgc4JexWZ1RRHGt6
 aNTUJytO6yJAjMEAAEKAB0WIQS1xD1IgJogio9YOMByNAaPFqFWPAUCaI3Y9wAKCRByNAaPFqFW
 PIrWEADEzYQUUXusyN/5PWZduwqYASEKZjv3DhemKWy8omxWHHGL3V9ygO/Zol0UXvAoIY9izDS
 hr345GKKuuTwjhpINb5X5WA4+XF2HALGBUqjz6HitPEAMfpIcgoY5YIKgXGr+AnFt8ek/O5XpPq
 xROsipH50X/KAV4TQvzwZ5uAd8jdhhp6ZaE0urbSbMnjXsUsPo9Gv/gV8U67dscDYaGZRWPgOWh
 wONEr4lo12lq8KatT2n4sCh3wwTrnZdZ7j+aFIr5RRQgk0X0FktXVvP54fkYznShPJweiwzsdNc
 0BfieQ+5ILTSxHpg4rUYUuCg7pffwRYZqZeiPA64J1dPt+F9w5cbsuosMjmv2Mmv/+boOXoedVI
 w14RJpIVw5Dk1DJVu8M/6cPCnVByEEur0OLw/5I3s4/Mbj5ETl5DGnxrbKAsvOk9QmlvLzcgRRy
 mNr7LP5r4VJvrlJpr06z1ySN664lNIxPVlHvSVtSHmPCDhi8k48ls7XU5eKOJLwRsTg2icjuNXw
 lSy/pVjVukWETb7QUZQgc9UCzsmzSM7LTMyAHMbG/n+GWLokosseFjabHRBRhH9O5W7u9hpnrnf
 96tc/uGLksh7ycinpXbc9zMBpKWIeTZGLVlIplk84LyM4vrwot3YFdmKPdK8EdTnZ9pD0MN3NPq
 ZeGWw2RI7zpMoLQ==
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
 Most V4L2 drivers store the v4l2_fh pointer in file->private_data. The
 uvcvideo
 driver instead stores the pointer to the driver-specific structure that embeds
 the v4l2_fh. Switch to storing the v4l2_f [...] 
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
X-Headers-End: 1ui8rN-0006Ru-M9
X-Mailman-Approved-At: Sat, 02 Aug 2025 13:55:15 +0000
Subject: [Mjpeg-users] [PATCH 06/65] media: usb: uvcvideo: Store v4l2_fh
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
uvcvideo driver instead stores the pointer to the driver-specific
structure that embeds the v4l2_fh. Switch to storing the v4l2_fh pointer
itself to standardize behaviour across drivers. This also prepares for
future refactoring that depends on v4l2_fh being stored in private_data.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
 drivers/media/usb/uvc/uvc_v4l2.c | 10 +++++-----
 drivers/media/usb/uvc/uvcvideo.h |  5 +++++
 2 files changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/media/usb/uvc/uvc_v4l2.c b/drivers/media/usb/uvc/uvc_v4l2.c
index 160f9cf6e6dbdbf39e3eff56a5d5ea1d977fbe22..6dd329a972fda5c2574231b8526105676df3d4a1 100644
--- a/drivers/media/usb/uvc/uvc_v4l2.c
+++ b/drivers/media/usb/uvc/uvc_v4l2.c
@@ -603,14 +603,14 @@ static int uvc_v4l2_open(struct file *file)
 	v4l2_fh_add(&handle->vfh);
 	handle->chain = stream->chain;
 	handle->stream = stream;
-	file->private_data = handle;
+	file->private_data = &handle->vfh;
 
 	return 0;
 }
 
 static int uvc_v4l2_release(struct file *file)
 {
-	struct uvc_fh *handle = file->private_data;
+	struct uvc_fh *handle = to_uvc_fh(file);
 	struct uvc_streaming *stream = handle->stream;
 
 	uvc_dbg(stream->dev, CALLS, "%s\n", __func__);
@@ -626,7 +626,7 @@ static int uvc_v4l2_release(struct file *file)
 static int uvc_ioctl_querycap(struct file *file, void *fh,
 			      struct v4l2_capability *cap)
 {
-	struct uvc_fh *handle = file->private_data;
+	struct uvc_fh *handle = to_uvc_fh(file);
 	struct uvc_video_chain *chain = handle->chain;
 	struct uvc_streaming *stream = handle->stream;
 
@@ -1170,7 +1170,7 @@ static int uvc_v4l2_put_xu_query(const struct uvc_xu_control_query *kp,
 static long uvc_v4l2_compat_ioctl32(struct file *file,
 		     unsigned int cmd, unsigned long arg)
 {
-	struct uvc_fh *handle = file->private_data;
+	struct uvc_fh *handle = to_uvc_fh(file);
 	union {
 		struct uvc_xu_control_mapping xmap;
 		struct uvc_xu_control_query xqry;
@@ -1221,7 +1221,7 @@ static long uvc_v4l2_compat_ioctl32(struct file *file,
 static long uvc_v4l2_unlocked_ioctl(struct file *file,
 				    unsigned int cmd, unsigned long arg)
 {
-	struct uvc_fh *handle = file->private_data;
+	struct uvc_fh *handle = to_uvc_fh(file);
 	unsigned int converted_cmd = v4l2_translate_cmd(cmd);
 	int ret;
 
diff --git a/drivers/media/usb/uvc/uvcvideo.h b/drivers/media/usb/uvc/uvcvideo.h
index 757254fc4fe930ae61c9d0425f04d4cd074a617e..8b56252030480b8a5d2ef6de24902b544357ff02 100644
--- a/drivers/media/usb/uvc/uvcvideo.h
+++ b/drivers/media/usb/uvc/uvcvideo.h
@@ -637,6 +637,11 @@ struct uvc_fh {
 	unsigned int pending_async_ctrls;
 };
 
+static inline struct uvc_fh *to_uvc_fh(struct file *filp)
+{
+	return container_of(filp->private_data, struct uvc_fh, vfh);
+}
+
 /* ------------------------------------------------------------------------
  * Debugging, printing and logging
  */

-- 
2.49.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
