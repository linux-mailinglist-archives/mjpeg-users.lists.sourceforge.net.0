Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D36B18EEA
	for <lists+mjpeg-users@lfdr.de>; Sat,  2 Aug 2025 15:55:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:To:In-Reply-To:References:Message-Id:MIME-Version:Date:From:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qaA2Gp5F3Eo+t8spm0xAmSIhE8OT6Tib70PSWXFvP1M=; b=Rh757O3yx+ehPGDb8MRD/8Q9gA
	IunX3dBvy4NEd/+rF494CJeZjj0W7nf24wqRWXm2zNdbppUItvyhlgKcKDOJyzJ/bK06rP/hVTd/9
	sVZkemmK/0WesaDZu0hgCHWL2JY8aJ292qvBvWFBoUv6APCMfhAeLZCHPVOnRCJIXh/I=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1uiCht-0006c9-Au;
	Sat, 02 Aug 2025 13:55:29 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacopo.mondi@ideasonboard.com>) id 1ui8jU-0000Jj-Vd
 for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:40:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cbnlLMsSEwBOpdYkJBUdbdJ3sCnqMdAUMUg55Om8mLU=; b=mGsJMjO6MmifVVwrrBt3n/Q4TN
 c9BFeSvNCESNyxZjnZfAsmaa4qO0Ac4R0tl0Yoj5EL6HhEy8G1+lNCNI67hsESMACxahK4jHYn/Pq
 /4IIiNBJ+ebeK9lT3A06XuhFl8zGPVfnw2KVmfZycyh6qMA8W+9xYMQ/gI0XwAlcjLC8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cbnlLMsSEwBOpdYkJBUdbdJ3sCnqMdAUMUg55Om8mLU=; b=hnRxwYArwlNLjcCBqKxA9f0oP8
 7M2VPHy5LQ+eg/uO4FOOwkTtJJiaRv9h0DTCPHJh9ZR+vOQErjrdhlbJ20zawOBjx5gaBGGTNkE7S
 Uvc+Cj+kRJ2I98Ok65ObxeaK+nanh97H39dnMyV213Xx4QY8UsZq1oLj1af/cSZZzcxA=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ui8jU-0005ht-Ds for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:40:52 +0000
Received: from [192.168.0.172] (mob-5-90-138-121.net.vodafone.it
 [5.90.138.121])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 6DEE23BEE;
 Sat,  2 Aug 2025 11:26:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1754126816;
 bh=HdqTV2TqVG3xTLfbGl4o6SpK144p9tcquExNTCVb3xM=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=OO9QOTblMAkgskUy9NhCVy0rjAHmPgQWM6bWuLzw+9LAaGvQ5G5uak5fPUmzhc7a9
 U8l+E3KmF0b6LaMQA8JyLVCe4CA+V7nChInx7pw0vuXg6l2VpK1VeL7TesBhH5vZxX
 FEBSpY2WzWZICRwjwoWsJEx0izyRDjWL/w+Imr7I=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Sat, 02 Aug 2025 11:22:47 +0200
MIME-Version: 1.0
Message-Id: <20250802-media-private-data-v1-25-eb140ddd6a9d@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2903;
 i=jacopo.mondi@ideasonboard.com; h=from:subject:message-id;
 bh=SNuZtVIHrmVcr3R5kH7o/uJRVzpsSbXGwYD4D6selm0=;
 b=owEBbQKS/ZANAwAKAXI0Bo8WoVY8AcsmYgBojdj6LaQa+SLFMOTKITynXBcDjBhVc17MupIYb
 m/EanNcskSJAjMEAAEKAB0WIQS1xD1IgJogio9YOMByNAaPFqFWPAUCaI3Y+gAKCRByNAaPFqFW
 PH3ZEADDppWwmExeUaZboalbNKoFooUHo9mTZl3latfywSJFDQ4vKntNlu00f4TKpCHVCwPNYRP
 Jiz1VpEQNWWP/8tTszTLomUHNLhN80IfvRgEP/vN++8yjDDsugo8zjCpAf9YfS6my9rktj/SXkd
 qQTWkXPNrQXBQVN5uOHhAvuyRdtIt+VHOW5aogelbOMqKQv3g7vR+TRA/ftwXJ6YPMMlhBV/b+7
 B+LqJb41YcYDNKUAsPofBRsxRQ434U5RvYcDdnRO0eXk0a1x+y58SDSGOKEwcynOP1MXixu/5Od
 TlCb/lGu+kk5xgEr2dH9Csu7JVE6L2sFPTBJBg65824ZKnnnhHGYTrfqxG2s1xg3r9r3eaAlGJI
 5rwR+wk5vSzWgP1u70D39Gjt2nCCscrRr6RHYBYU43RCQEoVhAhCRQiMykSwofmOSfbjgXg91Z0
 z/Ala4dhgnUg2k9Vz9of64qtWHMqcIPrCNFaQGcVg4mfO36qDhOxvHoF+RV9rAj/QMEVdBi5Qno
 Y8wJH5mSgLpxBiUBOogCbEM/+YAiAgkMc4LfbF5d8r7FarwwlxlJaHNgC7pyVWnDqmqZrpZORkC
 tIs5GgZnv4eFPwhfrgfk3Lvhwvy+YwAZxY+6OXPSN3YQPQ3uWOVn8GNec0s92fRPLT8JFpESPji
 GgD9+aeYwi+/80Q==
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
 In preparation for a tree-wide rework automated with coccinelle that will
 need to access a struct file pointer in the venus_close_common() function,
 pass it from the callers. There is not functional c [...] 
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
X-Headers-End: 1ui8jU-0005ht-Ds
X-Mailman-Approved-At: Sat, 02 Aug 2025 13:55:15 +0000
Subject: [Mjpeg-users] [PATCH 25/65] media: qcom: venus: Pass file pointer
 to venus_close_common()
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

In preparation for a tree-wide rework automated with coccinelle that
will need to access a struct file pointer in the venus_close_common()
function, pass it from the callers. There is not functional change yet.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
 drivers/media/platform/qcom/venus/core.c | 2 +-
 drivers/media/platform/qcom/venus/core.h | 2 +-
 drivers/media/platform/qcom/venus/vdec.c | 2 +-
 drivers/media/platform/qcom/venus/venc.c | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/media/platform/qcom/venus/core.c b/drivers/media/platform/qcom/venus/core.c
index 4c049c694d9c43845c4c0eb51e260808dc9136ac..5e1ace16a4903999c7fd7a985317dae8dd2410ba 100644
--- a/drivers/media/platform/qcom/venus/core.c
+++ b/drivers/media/platform/qcom/venus/core.c
@@ -596,7 +596,7 @@ static __maybe_unused int venus_runtime_suspend(struct device *dev)
 	return ret;
 }
 
-void venus_close_common(struct venus_inst *inst)
+void venus_close_common(struct venus_inst *inst, struct file *filp)
 {
 	/*
 	 * Make sure we don't have IRQ/IRQ-thread currently running
diff --git a/drivers/media/platform/qcom/venus/core.h b/drivers/media/platform/qcom/venus/core.h
index 3c0c5f9dbe7bd54975e44ae87ee3df442305c0fe..db7b69b91db5649bbd9cad0866f0853f796897ac 100644
--- a/drivers/media/platform/qcom/venus/core.h
+++ b/drivers/media/platform/qcom/venus/core.h
@@ -573,5 +573,5 @@ is_fw_rev_or_older(struct venus_core *core, u32 vmajor, u32 vminor, u32 vrev)
 		(core)->venus_ver.rev <= vrev);
 }
 
-void venus_close_common(struct venus_inst *inst);
+void venus_close_common(struct venus_inst *inst, struct file *filp);
 #endif
diff --git a/drivers/media/platform/qcom/venus/vdec.c b/drivers/media/platform/qcom/venus/vdec.c
index 29b0d6a5303d7ae08ac25a10e402ba65120eb666..d10ca6d89f6d76c052b27b1154c8dd9c49466e23 100644
--- a/drivers/media/platform/qcom/venus/vdec.c
+++ b/drivers/media/platform/qcom/venus/vdec.c
@@ -1755,7 +1755,7 @@ static int vdec_close(struct file *file)
 
 	vdec_pm_get(inst);
 	cancel_work_sync(&inst->delayed_process_work);
-	venus_close_common(inst);
+	venus_close_common(inst, file);
 	ida_destroy(&inst->dpb_ids);
 	vdec_pm_put(inst, false);
 
diff --git a/drivers/media/platform/qcom/venus/venc.c b/drivers/media/platform/qcom/venus/venc.c
index c0a0ccdded8015bf3c99ab2dff404a64afca8dff..0838d64ce8fee5dd8299d5c394e97910f10f7ee3 100644
--- a/drivers/media/platform/qcom/venus/venc.c
+++ b/drivers/media/platform/qcom/venus/venc.c
@@ -1537,7 +1537,7 @@ static int venc_close(struct file *file)
 	struct venus_inst *inst = to_inst(file);
 
 	venc_pm_get(inst);
-	venus_close_common(inst);
+	venus_close_common(inst, file);
 	inst->enc_state = VENUS_ENC_STATE_DEINIT;
 	venc_pm_put(inst, false);
 

-- 
2.49.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
