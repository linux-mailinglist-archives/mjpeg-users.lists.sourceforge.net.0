Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B060B18EFB
	for <lists+mjpeg-users@lfdr.de>; Sat,  2 Aug 2025 15:55:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:To:In-Reply-To:References:Message-Id:MIME-Version:Date:From:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ImsEF/1IUuioH2Xj5moK80fajjm8Z4040kpNd2BYkbY=; b=Bv5QJt80RX+8CKmeFXTZPCw0l0
	8qLo2r1CtGeZD4zx5XRQbvjew+FmvwIBkFPx7bNAYnOHK0w0WTzY8aXWB51X0xU0IfPJdaHD7WtOI
	g9hVDg9dmWpo8xYWFHQeYs7sGIUpnUt8i9HdeUCa+V4sXnWh7wlRQTZTMtNMCS3nLb8g=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1uiChz-0006l7-5e;
	Sat, 02 Aug 2025 13:55:35 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacopo.mondi@ideasonboard.com>) id 1ui8n4-0001Bi-LO
 for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:44:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/aXPwI+8rIXSFqWf4amim+D9i5cTNUhPLotWSMVf048=; b=DXAfBxrvlSsMScvPicD5X2ilYM
 oFNopiAtypQjONFL9c9sM5nL+GzfJGPqQlngtaOZkOAjvHE2OEFJ8ezJM9QnFzcNwZPpIG/m98EDs
 eY4snviKG5OIiip5SkSvMtOsCQXQM6tmfognoX2f3AhesicrfcDiEKo0Bo5WW5MrAg8Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/aXPwI+8rIXSFqWf4amim+D9i5cTNUhPLotWSMVf048=; b=F02/N+OIZqyv/vmrHDwNHRvgLw
 vmqDOo8ycDitYi/6L6dXtqtHVQMQatGMkHDq2lYCiYmWqPvPfPp3JefaNEi4S0xO2Y085hLUwGgEf
 pP7dYwJuqIiGOT1MoNPdN71x06nq+UCUKxDQBe0mcw6ERg4nZvQQf8WA/CMp3/Do7Kfs=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ui8my-0005wz-HM for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:44:29 +0000
Received: from [192.168.0.172] (mob-5-90-138-121.net.vodafone.it
 [5.90.138.121])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 4C35D330E;
 Sat,  2 Aug 2025 11:26:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1754126774;
 bh=YeeZiet6PqHm7IlGh7t3GZOdydEI6jy4AdesJo+UFJ8=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=efEEkJTnS1kS5gUzaXOmI/yYslA+2pJMaHIkGKProANNbr8dxKaCBtqnVHS7MQhUm
 5O2inCnrkmxZUR7Sb/afzgyTKrbaPNf/CC1zw3zEX7ePOorKxhty47n27+ZtwThhbW
 xJ9x9IaW2d+ETCWGrE3pPgiKenybAl/eZ+xNKYmQ=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Sat, 02 Aug 2025 11:22:43 +0200
MIME-Version: 1.0
Message-Id: <20250802-media-private-data-v1-21-eb140ddd6a9d@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3292;
 i=jacopo.mondi@ideasonboard.com; h=from:subject:message-id;
 bh=sFLeSeZ18AiPz7TNtzZuErYTeuXEDyYERBW9KVUCez8=;
 b=owEBbQKS/ZANAwAKAXI0Bo8WoVY8AcsmYgBojdj5Ab8WMNqTk1vrNJmzEF9fusCZ5AJs5tg8p
 ikoDaHa4TGJAjMEAAEKAB0WIQS1xD1IgJogio9YOMByNAaPFqFWPAUCaI3Y+QAKCRByNAaPFqFW
 PIGXD/9X1mdSs4tmw4s1JTfYvMbuDI1kxi3A97kXvrt+El+sQRTisOHlSxLE9USoyAGm9PnoFPY
 icrGza2HD8EwUhtANb4EwK4SX8gRpvg5DXsHiY+BzBm4ZVvbrn4YKQ8EspQAqrqPqNpRCC3jLzn
 0GRaHqxDXvUIkwHB48fJQ6GV3QDhI0wZH4KOeyPYnI+UAT/tN3QLKewQVSIxCvc+x44Uz1UIfYt
 kdVvO1fp4phNaCAUHr+TNYEglxeQRmyTjF7EFg8glg2DIQvarhZjR2idgNmJRc32RfKKlrWhLLG
 qsc3G5XT4rTHdpVwmtUQZodlMjwJIMrLeeq3gmQLcuVkPx7WrqJFWrykMYjVSJW9boC6wQNseOL
 g/jwwARgjsbT4VVBTM34U4UGM25/qXegXPcvFArnizqPHj2jNKsfNiwqCk9hQvsaZb0hejeg2C6
 PIHxrsXkFRQdQNuT5CuoeTdUazuF9Y8PozrVwKktzkTD3iCYWR6uVAZwa5j/+W0fWDzMJe3etdR
 iL0DtcbzUnBRXuciDmUfTXXz4QqjEoF7LYYGV9gHpobdDmtnG6aN+YRDMpFr8/cXnc76JpLWK1O
 iZ4WMJ6IpVenQcUxz2evwcVueKdYxxj8eIkzeEvX3GLQmspDOksNr43SNDrl2k/d9vKpDQ7djH2
 UWeorQDKZwyuLsQ==
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
 In preparation for a tree-wide rework automated with coccinelle that will
 need to access a struct file pointer in the wave5_cleanup_instance() function, 
 pass it from the callers. There is not function [...] 
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
X-Headers-End: 1ui8my-0005wz-HM
X-Mailman-Approved-At: Sat, 02 Aug 2025 13:55:16 +0000
Subject: [Mjpeg-users] [PATCH 21/65] media: chips-media: wave5: Pass file
 pointer to wave5_cleanup_instance()
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
will need to access a struct file pointer in the
wave5_cleanup_instance() function, pass it from the callers. There is
not functional change yet.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
 drivers/media/platform/chips-media/wave5/wave5-helper.c  | 4 ++--
 drivers/media/platform/chips-media/wave5/wave5-helper.h  | 2 +-
 drivers/media/platform/chips-media/wave5/wave5-vpu-dec.c | 2 +-
 drivers/media/platform/chips-media/wave5/wave5-vpu-enc.c | 2 +-
 4 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/media/platform/chips-media/wave5/wave5-helper.c b/drivers/media/platform/chips-media/wave5/wave5-helper.c
index 031dea0ee61c6c5afddf7ff47d67d85826f16d8d..ed8ff04a899da0a3c9e0f037dac2c9548c98920f 100644
--- a/drivers/media/platform/chips-media/wave5/wave5-helper.c
+++ b/drivers/media/platform/chips-media/wave5/wave5-helper.c
@@ -27,7 +27,7 @@ const char *state_to_str(enum vpu_instance_state state)
 	}
 }
 
-void wave5_cleanup_instance(struct vpu_instance *inst)
+void wave5_cleanup_instance(struct vpu_instance *inst, struct file *filp)
 {
 	int i;
 
@@ -78,7 +78,7 @@ int wave5_vpu_release_device(struct file *filp,
 		}
 	}
 
-	wave5_cleanup_instance(inst);
+	wave5_cleanup_instance(inst, filp);
 
 	return ret;
 }
diff --git a/drivers/media/platform/chips-media/wave5/wave5-helper.h b/drivers/media/platform/chips-media/wave5/wave5-helper.h
index 9937fce553fc33000bd31abcfc6d7345f6f7e485..976a402e426ff329490717925a08a76d777cbe3e 100644
--- a/drivers/media/platform/chips-media/wave5/wave5-helper.h
+++ b/drivers/media/platform/chips-media/wave5/wave5-helper.h
@@ -14,7 +14,7 @@
 #define MAX_FMTS	12
 
 const char *state_to_str(enum vpu_instance_state state);
-void wave5_cleanup_instance(struct vpu_instance *inst);
+void wave5_cleanup_instance(struct vpu_instance *inst, struct file *filp);
 int wave5_vpu_release_device(struct file *filp,
 			     int (*close_func)(struct vpu_instance *inst, u32 *fail_res),
 			     char *name);
diff --git a/drivers/media/platform/chips-media/wave5/wave5-vpu-dec.c b/drivers/media/platform/chips-media/wave5/wave5-vpu-dec.c
index fd71f0c43ac37a0bb56f669d4b89d6054cb181d5..f3188d720ed3e183f3400816a9c939014213711d 100644
--- a/drivers/media/platform/chips-media/wave5/wave5-vpu-dec.c
+++ b/drivers/media/platform/chips-media/wave5/wave5-vpu-dec.c
@@ -1840,7 +1840,7 @@ static int wave5_vpu_open_dec(struct file *filp)
 	return 0;
 
 cleanup_inst:
-	wave5_cleanup_instance(inst);
+	wave5_cleanup_instance(inst, filp);
 	return ret;
 }
 
diff --git a/drivers/media/platform/chips-media/wave5/wave5-vpu-enc.c b/drivers/media/platform/chips-media/wave5/wave5-vpu-enc.c
index 1e5fc5f8b856c5329b2c6007649285a28749b6aa..b69a1206fa12c2ff5f3a32d269b8fd3b80a597aa 100644
--- a/drivers/media/platform/chips-media/wave5/wave5-vpu-enc.c
+++ b/drivers/media/platform/chips-media/wave5/wave5-vpu-enc.c
@@ -1784,7 +1784,7 @@ static int wave5_vpu_open_enc(struct file *filp)
 	return 0;
 
 cleanup_inst:
-	wave5_cleanup_instance(inst);
+	wave5_cleanup_instance(inst, filp);
 	return ret;
 }
 

-- 
2.49.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
