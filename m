Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CE85B18EF9
	for <lists+mjpeg-users@lfdr.de>; Sat,  2 Aug 2025 15:55:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:To:In-Reply-To:References:Message-Id:MIME-Version:Date:From:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J6sf1WhTHfm1RjLTNczLblhrNmhHKLjWxkzEZzcMf4g=; b=RInyOeRnvxFdxZpZ4i7kzHhVu0
	xjNHrrjtVpvS1gPXmczJso/RoHqJPwyPu+TpGWXhC+UkDZBUWqbNuWE4Ss6jfg/ptYq9WFBQtPndu
	lU38hz+zvEkn0t+OJbkPOGdaJNoOEnai83Y7chNTpFMbpRtxLMNev4/uTuvoVBA4DLuI=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1uiChy-0006jy-EK;
	Sat, 02 Aug 2025 13:55:34 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacopo.mondi@ideasonboard.com>) id 1ui8mn-0001BM-58
 for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:44:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BUCv+ieL3luUiCKmmpuJ72TZVcWHgzofrljdGphPpEs=; b=YKlJx8acWdhoh9EPLHV3DYwKn2
 fa+9WZfT1hidQZ8Cu46mxI3aUZnIz9NbPMwfiZEbfrCR+EdA4hnlJbNu8vmbfI/41aastPF0nhiXM
 r70B51AFjFnzfk/XsKkKvSiaqjyA870DTTtOD3dLqQvwDIbg4Fl3WhSeDr4q8yJ9p8/E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BUCv+ieL3luUiCKmmpuJ72TZVcWHgzofrljdGphPpEs=; b=MJKTR4JqP4FQ4mHh7Eev2s2xBa
 pptwA3tSy/dRNxQpe+ESJRpETyeiwXR1+Uea86qMmDH0r3WAZSUomMJecow0PDrqqitUqYLKa0bih
 SuahkUk4hN0ZLZat3rlZiHF3sNkBq37HBPJUjWCSmvShndFNgHkBvP8CDES4YK6wBuWU=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ui8mm-0005w4-7u for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:44:16 +0000
Received: from [192.168.0.172] (mob-5-90-138-121.net.vodafone.it
 [5.90.138.121])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id F10D443E9;
 Sat,  2 Aug 2025 11:33:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1754127197;
 bh=XdOe0hUHoRepWDL9PXLLZRQsffL0J6Xd5RC8oZQXv/4=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=SGcK94cr5R4K6fWMgc6ZO+cWOzWTlglfalvYGrPcJNwLCt+GKIXEGJuoXTrsoaIIU
 zgvR//X2BjB32zxJtwfdqC+Rvv2+rJfEfAm6OoS1STQ4+in0GNP1szooJYEFRKRCoW
 R9V8vHcB+jSKYpUdsUKtAFJ49PFsKYRa+N/VMN2E=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Sat, 02 Aug 2025 11:23:24 +0200
MIME-Version: 1.0
Message-Id: <20250802-media-private-data-v1-62-eb140ddd6a9d@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1544;
 i=jacopo.mondi@ideasonboard.com; h=from:subject:message-id;
 bh=loLIKoL1ckx0+Do+cmV4JLVH2b3g2wpBnTvZTq5U/K0=;
 b=owEBbQKS/ZANAwAKAXI0Bo8WoVY8AcsmYgBojdj/dlk/dxL7K7IYPuPuktjeyd8m0BEMDDL5V
 dGk/8P0KaWJAjMEAAEKAB0WIQS1xD1IgJogio9YOMByNAaPFqFWPAUCaI3Y/wAKCRByNAaPFqFW
 PKJ6D/9X8HRdjahHSdhz5uUldd/PeaMg0s7lr8HBc8sXBSyTJTJ7X4vpyBjbQuWFRN5tHSqT0Zd
 IiN0LjHlvvNaO8nDUeGNJQX9/nYx2/BgMrR0lD11hujdp8j5D6T3yqpF8tVG4HOmf0vykUOmfav
 LtkqeLwZ92Ycxyw3L9Dpz2nd4dGGX2KI8kdTXCt+xTaCijUASZiqye1MVhU3jjOOCtYa5j60eTQ
 7YcG4u10tCUyh38H4ysnFlwPZXiLfTEZhcH7hQmk84aH8LP6xcAJE69xsfZrWSd9aga/QBuS6+W
 vOi4UdCMMINpPW+UcDTt/wJgbV0g1Z9qzjw505d4SjNX7/XgZaiGrWl3SGJsEUOCtzutvNrxxNo
 2ApceQE3LYD0OAu3OCjt0DOOYwTVdTkgKlhp7Gc21zkQWw5kPtjFPtgYnpvNSS9tPNBdbXaxvYb
 3fYpJcyafppTgtZYzMoBk4INFxmUoyZOS2437cq3AJT2YKHI9FgC9tKdJUn3uywMdFrxIlTMZk/
 EBjnEHhw2O6oyu5OfTnK7uiAChKQ5mB7uV1a2YGTnB2AFlJxyxiMV/oVStMF2npE2Uz5WBPpgsq
 +a7F7oJity3uP3TrCCAarrvHnB1icd0y+dAbmSz+kK7ENi7ckr86IJQ6or2369uTso9ahDAq6YD
 WL+Za2l7ALyDORA==
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
 The v4l2_ctrl_log_status() function retrieves the v4l2_fh from the file with
 file_to_v4l2_fh() before checking the V4L2_FL_USES_V4L2_FH to see if the
 device makes use of v4l2_fh. While this doesn't ca [...] 
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
X-Headers-End: 1ui8mm-0005w4-7u
X-Mailman-Approved-At: Sat, 02 Aug 2025 13:55:15 +0000
Subject: [Mjpeg-users] [PATCH 62/65] media: v4l2-ctrls: Move v4l2_fh
 retrieval after V4L2_FL_USES_V4L2_FH check
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

The v4l2_ctrl_log_status() function retrieves the v4l2_fh from the file
with file_to_v4l2_fh() before checking the V4L2_FL_USES_V4L2_FH to see
if the device makes use of v4l2_fh. While this doesn't cause any
practical issue given the current implementation of file_to_v4l2_fh(),
it is cleaner to retrieve the v4l2_fh after checking the flag. This
could prevent future issues if the implementation of file_to_v4l2_fh()
changes.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
 drivers/media/v4l2-core/v4l2-ctrls-api.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/media/v4l2-core/v4l2-ctrls-api.c b/drivers/media/v4l2-core/v4l2-ctrls-api.c
index d46b2c8f3d23596293210125b148c3da99c52cac..b0bba8eec143968b127368ee7de8bca76b427dbd 100644
--- a/drivers/media/v4l2-core/v4l2-ctrls-api.c
+++ b/drivers/media/v4l2-core/v4l2-ctrls-api.c
@@ -1253,11 +1253,14 @@ EXPORT_SYMBOL(v4l2_querymenu);
 int v4l2_ctrl_log_status(struct file *file, void *fh)
 {
 	struct video_device *vfd = video_devdata(file);
-	struct v4l2_fh *vfh = file_to_v4l2_fh(file);
 
-	if (test_bit(V4L2_FL_USES_V4L2_FH, &vfd->flags) && vfd->v4l2_dev)
+	if (test_bit(V4L2_FL_USES_V4L2_FH, &vfd->flags) && vfd->v4l2_dev) {
+		struct v4l2_fh *vfh = file_to_v4l2_fh(file);
+
 		v4l2_ctrl_handler_log_status(vfh->ctrl_handler,
 					     vfd->v4l2_dev->name);
+	}
+
 	return 0;
 }
 EXPORT_SYMBOL(v4l2_ctrl_log_status);

-- 
2.49.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
