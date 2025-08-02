Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7167DB18EDC
	for <lists+mjpeg-users@lfdr.de>; Sat,  2 Aug 2025 15:55:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:To:In-Reply-To:References:Message-Id:MIME-Version:Date:From:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zspKtJqn6QOyFCq3EpLKObwLEdfIHzaoNOo+5VHe/WA=; b=lLOYqbkowUwV6w34a5DiDMW8k8
	I2FKALLID+im6gNyhQyvLJWMEjn2thxa0PWWaF7vA0sNMarUHtUzHR4x8/IfT6JSfy7nlh+ZnzzJC
	Ax4uptRMsdZKzevUpg/hUgMZb9fnMS+mmq4/V2lyiCES+k5d8gxSHOtQyxt8R8EhPQxU=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1uiCho-0006Vv-AF;
	Sat, 02 Aug 2025 13:55:24 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacopo.mondi@ideasonboard.com>) id 1ui8iG-0005MA-PK
 for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:39:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=suCThTzjyuHQkeZA4Jsohjv7qrMMp677xLqFl4IjbXI=; b=Y6vtCplfXfU1YeiLC0cCirACcs
 L+ZpeZ20lSHo18AB6fDdvM6cXT5HOZPQJr2uFKmNeNQnYO2XWpN7Mns2Z3uxlOXX1LY2RA7TDxoj1
 PodmCtcDHcEssBbTif2BSPZqctMOpyIWyni6ferF01ALJhiqmX1BOvUeyC8pqvqVR3Fo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=suCThTzjyuHQkeZA4Jsohjv7qrMMp677xLqFl4IjbXI=; b=DcoZTY3fC+uwFjzh7wimk0ywOm
 vleXxTfvQ+XngNHmTuTdCq2c/xkW4gnnWAzRpFntwP6GMtG2khkvaIqYoiDl8Iq0dEoQSoYPraxwV
 8ZNVpRIcd5OLZFjQHsoNeLG3Xig4jK4T0c3+YG4HalztKtha/zyQm8wCTK1u9rXkePhI=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ui8iG-0005bt-VR for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:39:37 +0000
Received: from [192.168.0.172] (mob-5-90-138-121.net.vodafone.it
 [5.90.138.121])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id ACBF54335;
 Sat,  2 Aug 2025 11:31:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1754127108;
 bh=Gv9lbTXbRA6yPchkZ3lS+TOW5kUSmV4lOuM2BHAl6rc=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=prjR2qMEqDFUpRAMyRMQie2Nv0psrCvqJct/SVaw4UJ1ZnQGtwemB81zuwIxfhYmA
 UT5xqYwRWk4pliCkOwyDtOZIWgQ02ealWQ9qhJOwpXw0HYOuCGUOVZSW9E4Olza9D9
 1kBxLlAAFwfvVJtSUCBdG3fkfFioLN9du/EPH7ao=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Sat, 02 Aug 2025 11:23:14 +0200
MIME-Version: 1.0
Message-Id: <20250802-media-private-data-v1-52-eb140ddd6a9d@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2303;
 i=jacopo.mondi@ideasonboard.com; h=from:subject:message-id;
 bh=Gv9lbTXbRA6yPchkZ3lS+TOW5kUSmV4lOuM2BHAl6rc=;
 b=owEBbQKS/ZANAwAKAXI0Bo8WoVY8AcsmYgBojdj9vdOmSnLOUwNwZy60z/PGCExXr86n8sWQN
 A1xKQtQDdiJAjMEAAEKAB0WIQS1xD1IgJogio9YOMByNAaPFqFWPAUCaI3Y/QAKCRByNAaPFqFW
 PM7LEADD+AAAj6JZRdP++0YsTAt4fObDpya+EVPh0Cb6TnbK5FzsF4T3lKA6HhvS/ZooVnw7Qt6
 ZpWIDwjI5j7u+vUeC1Do3HIjmUMHE7dy6rPcFFFYJ8i/gRomOvyDoOZs+iBbQp/jNPmks7dD1/0
 XvAOPjC8OwzdASEGKKnYyY7Nlx9vpxlhz/1PlG7c69xJu7QXyP6Oh14W7IEpbixZCSduafhQWDy
 anWvYa0l/kB3kjG0SvbpfqoyCoYyS7dOmtMccsrqvkN6Jg/P3cMEXaqjm7u+YPuwI6hbNbNzThW
 2A6reQ1Ppsheu3gX/KTOuV1GbuBoEtugJuj2SYYrN2tkIwcs+b070nlaGrUjnaCjBR6vrl5rgg9
 3r/tBLDf4cYBpghzvw9pWiNuxfaYcPmGta1lFZvZD6EvNKv7qpCJeubCbOY7+y4fSXliKRWunTv
 A6ghHNWLKUjZeIEG/SB9kODMGrjXog5eevGf8bg3APXdUQewvBQ5wtPLBJ5hDKa/nrrOpatS+73
 S33mhSyYAbGnXk/FvdKW0CyYkhKhFYpAJD/G4PEFPl/KfH0FgL98LWJRailHu0zYoRvIN47ABBk
 A+HmZuJVgKFOB0gKqfCbqdNp9mK0h6YBD2sX8h0jI/O1LvaFppcRnZAMDdydv7fRr+pji3KSqGE
 /UkNMoMG/NlhRdg==
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
X-Headers-End: 1ui8iG-0005bt-VR
X-Mailman-Approved-At: Sat, 02 Aug 2025 13:55:16 +0000
Subject: [Mjpeg-users] [PATCH 52/65] media: st: delta: Access v4l2_fh from
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

While at it, remove the now unused fh_to_ctx() macro.

Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
 drivers/media/platform/st/sti/delta/delta-v4l2.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/media/platform/st/sti/delta/delta-v4l2.c b/drivers/media/platform/st/sti/delta/delta-v4l2.c
index adff43271b2dc059abbbf82d90cd13482f6bca30..6c1a53c771f746813a6062cb3ffc139250ff7146 100644
--- a/drivers/media/platform/st/sti/delta/delta-v4l2.c
+++ b/drivers/media/platform/st/sti/delta/delta-v4l2.c
@@ -24,8 +24,6 @@
 
 #define DELTA_PREFIX "[---:----]"
 
-#define to_ctx(__fh) container_of(__fh, struct delta_ctx, fh)
-
 static inline struct delta_ctx *file_to_ctx(struct file *filp)
 {
 	return container_of(file_to_v4l2_fh(filp), struct delta_ctx, fh);
@@ -727,7 +725,7 @@ static int delta_s_fmt_frame(struct file *file, void *fh, struct v4l2_format *f)
 static int delta_g_selection(struct file *file, void *fh,
 			     struct v4l2_selection *s)
 {
-	struct delta_ctx *ctx = to_ctx(fh);
+	struct delta_ctx *ctx = file_to_ctx(file);
 	struct delta_frameinfo *frameinfo = &ctx->frameinfo;
 	struct v4l2_rect crop;
 
@@ -809,7 +807,7 @@ static int delta_try_decoder_cmd(struct file *file, void *fh,
 	return 0;
 }
 
-static int delta_decoder_stop_cmd(struct delta_ctx *ctx, void *fh)
+static int delta_decoder_stop_cmd(struct delta_ctx *ctx)
 {
 	const struct delta_dec *dec = ctx->dec;
 	struct delta_dev *delta = ctx->dev;
@@ -872,14 +870,14 @@ static int delta_decoder_stop_cmd(struct delta_ctx *ctx, void *fh)
 static int delta_decoder_cmd(struct file *file, void *fh,
 			     struct v4l2_decoder_cmd *cmd)
 {
-	struct delta_ctx *ctx = to_ctx(fh);
+	struct delta_ctx *ctx = file_to_ctx(file);
 	int ret = 0;
 
 	ret = delta_try_decoder_cmd(file, fh, cmd);
 	if (ret)
 		return ret;
 
-	return delta_decoder_stop_cmd(ctx, fh);
+	return delta_decoder_stop_cmd(ctx);
 }
 
 static int delta_subscribe_event(struct v4l2_fh *fh,

-- 
2.49.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
