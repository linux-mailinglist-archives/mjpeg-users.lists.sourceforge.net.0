Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CCACAB18EEE
	for <lists+mjpeg-users@lfdr.de>; Sat,  2 Aug 2025 15:55:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:To:In-Reply-To:References:Message-Id:MIME-Version:Date:From:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vEnkP6oAoeYmmJ0N5xnmtLMZUpYXdjIEAmGDeGi9FrY=; b=XcoY8ekQgMJKiiQCVbsgy7HznO
	OFOCKzhrky+MldBPOTSI3jlswCOcD3Y7lZC68RxlQwzp4ABk13WHQZNJm95lNbrAn42+GYYmuuNNZ
	Gd5rC4rpui8hJ7Ff48WRLBoeU7RHX8rUXYb1DBe/Eu9cd7B3g9wc6A+5QiASqs2aOSYU=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1uiChu-0006e9-M4;
	Sat, 02 Aug 2025 13:55:30 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacopo.mondi@ideasonboard.com>) id 1ui8ls-0005hN-Pz
 for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:43:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Nwpd7n42RW/sUxRvpGCQVPPvOf7xFOt7WTjDlvjoHdg=; b=KDhWCkUa79Yon2v/2ZcxsivOow
 PU0j+PzL26tg/+qRT5i62G6Jj7IgO/8+8zXxASnrzI2UAzq/dUS742ssFzxYLZvgRq4kSYB7jjFWy
 v0eu5x4ToneO5voijrkgQTdgJYoo+g6HA+CtwujJDXdZZUi7Dk/ctb1AxAzOhC18By2Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Nwpd7n42RW/sUxRvpGCQVPPvOf7xFOt7WTjDlvjoHdg=; b=XQYmoBSemGQx3AW7mq+EcofnAL
 5dk1K9eRZlWBmQKRMZ8etHbIl867/auBDBe66EsM6rSoyCj1ratj4M7noNVGqG+0Lx7GeZHh48qQG
 0Fhc5CR8I28253haoChBuE+MtoiFl5A/5HUKCXdFJxikIvxBu0Bzc1IH2hXKlgiA4xgI=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ui8ls-0005rP-UN for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:43:21 +0000
Received: from [192.168.0.172] (mob-5-90-138-121.net.vodafone.it
 [5.90.138.121])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 1FBB9305C;
 Sat,  2 Aug 2025 11:24:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1754126658;
 bh=OM/rWlEKQ8f8HPIrakLZ0WhLkd4bPI6pfIRVXjyRJJM=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=ib/AkYuzsNuKTt+lp42wfbltoMJtD5Sd4hsrRjAcqAMEf9SCjBWcBnbuX50vt5Prw
 0UzYkmWn2/xlChWVoyTLLj93l8MP3fB+FzbSXSdwBfPD7QAOfvUBlQUbRUwAu4vGMY
 U9QTUuKMZnkPvtECT7b6OO11EXVtXW0+EZ9EHjHY=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Sat, 02 Aug 2025 11:22:32 +0200
MIME-Version: 1.0
Message-Id: <20250802-media-private-data-v1-10-eb140ddd6a9d@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1550;
 i=jacopo.mondi@ideasonboard.com; h=from:subject:message-id;
 bh=HdAr4YyOcrocqziACBpasSPBf3zgC1qgSFvP/LJn3YQ=;
 b=owEBbQKS/ZANAwAKAXI0Bo8WoVY8AcsmYgBojdj41aVvy6Rjwij+qj6xHx4PUZkLAhV3n8zM3
 AY+rL2WR0OJAjMEAAEKAB0WIQS1xD1IgJogio9YOMByNAaPFqFWPAUCaI3Y+AAKCRByNAaPFqFW
 PKCIEACt+1llOB444L1nlesDr3J1k37KiM1p/lvO6eUrnhStXc7r3O+OFl93UfBTj2+YjQ1caYY
 lM7LmFaSuXHnMP3gnTbmwc7szdGB5nwBaaWC9+7tE6KC/GuBE1stlpZYiCRrETy9kBkUDbsLcMB
 pSR60pJm6pAxmSr1D3CVrswOfnMdiRhcXVgCs/M6wWA1TZQDGu1qfLANLutXJWrDgLOmQVnVYId
 Xb5aTkYhFgPduOVyaTA0P9lWEOMK8dsJnw7NwPugtQ01l9D6qPoZpRkbOQtm/+6HALFV6kJZPUp
 6Lq3E0DGPuQUILws3PZXfBKC2EtOdoCEkR4VzIfdQ8h5OJdyyuMrIPHpBX9FtUbLtx/6kdQOiBH
 RfDgaYS9Y2A+IfP22V4VXYEl9+g6Db6WmbDheJO4/jdhs8jYwMXmVH1AL6M34Lj49outPp4tIpd
 mhYXqOjZbqNvmBGTF1dG0IKQ8wJQV+IzJbe25fkw7pYBwUv7OE15TBk/xbxjms7VbMXF18QG6S9
 K4HHENXpy5GWX4kBs39GNpKJsBs4YBofJrpM0iHhNZnRFg0cXgqvt+7ryv1721kfPoBeOnx4g9r
 Ak3tPK/iYLW+h4M2QumwTv8Gy8yj077pLHiVgy+bJ58QTy/ARoWSLHL4dpCJH57fMvm59jr2FtI
 fkrkiqymIOZa3eQ==
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
 Accessing file->private_data manually to retrieve the v4l2_fh pointer is
 error-prone, as the field is a void * and will happily cast implicitly to
 any pointer type. 
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
X-Headers-End: 1ui8ls-0005rP-UN
X-Mailman-Approved-At: Sat, 02 Aug 2025 13:55:15 +0000
Subject: [Mjpeg-users] [PATCH 10/65] media: nvidia: tegra-vde: Replace
 file->private_data access
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

Accessing file->private_data manually to retrieve the v4l2_fh pointer is
error-prone, as the field is a void * and will happily cast implicitly
to any pointer type.

The tegra-vde driver accesses file->private_data in the tegra_open()
function, right after setting the field to &ctx->fh. Replace the
accesses with usage of &ctx->fh.

No functional change is intended, this only paves the way to remove
direct accesses to file->private_data and make V4L2 drivers safer.
Other accesses to the field will be addressed separately.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
 drivers/media/platform/nvidia/tegra-vde/v4l2.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/nvidia/tegra-vde/v4l2.c b/drivers/media/platform/nvidia/tegra-vde/v4l2.c
index 531a85e3fe49ad0aa94fb96cbc7a84d474faae94..393dc3f07d5c78ff5ab0ae7b6368914859564458 100644
--- a/drivers/media/platform/nvidia/tegra-vde/v4l2.c
+++ b/drivers/media/platform/nvidia/tegra-vde/v4l2.c
@@ -836,10 +836,10 @@ static int tegra_open(struct file *file)
 	v4l2_fh_add(&ctx->fh);
 
 	tegra_reset_coded_fmt(ctx);
-	tegra_try_coded_fmt(file, file->private_data, &ctx->coded_fmt);
+	tegra_try_coded_fmt(file, &ctx->fh, &ctx->coded_fmt);
 
 	tegra_reset_decoded_fmt(ctx);
-	tegra_try_decoded_fmt(file, file->private_data, &ctx->decoded_fmt);
+	tegra_try_decoded_fmt(file, &ctx->fh, &ctx->decoded_fmt);
 
 	return 0;
 

-- 
2.49.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
