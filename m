Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AAB7B18EDE
	for <lists+mjpeg-users@lfdr.de>; Sat,  2 Aug 2025 15:55:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:To:In-Reply-To:References:Message-Id:MIME-Version:Date:From:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NdoJmzzKOAZf6sOsBgEvsRRQbRNLIwMp0i8mPwfb+zc=; b=D0gAiAGR13EdLAxB12ZCChcFHN
	NUN6hLCHOQSCJ6jMv+UHJk5Ex21S2bEAO5dS/d82yrlqcJOOUCR4w0HRbG0yCAAY6zqeVktGEorGz
	UvPejS3BBkd6N2xNRQ4dh3wOWUa/R9Rj1Zci8OOD3lvDFUE63XjU26XozT791oECLIA0=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1uiCho-0006Wl-Ug;
	Sat, 02 Aug 2025 13:55:24 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacopo.mondi@ideasonboard.com>) id 1ui8iS-00013Z-By
 for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:39:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=w9Y2H/8OqLDBmIFTjdHGvz0eFRZmpsWhnlKk41L4YWg=; b=B5Msx7ezwFTJUlRQclR9GfGe42
 ZS431SfVpk0fTdlW61HOdikROy18lt9FsU6k65ZxqsHudPVSMgxNVLYqJv/kWGSR/BLfImY340UyP
 VPelPQDpdYvIi9JTGwNHsKykuai8nZYxkUWXVJzWD/t5ND/E7FqWZDEmGqETbnzaMIGg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=w9Y2H/8OqLDBmIFTjdHGvz0eFRZmpsWhnlKk41L4YWg=; b=m7iKfB11K+yUlmAonJbWTk4vho
 281HLlUoDJhcpLnfCwZCclMDdpQJBJcLtKNRGAH5wOwgLz6uaR7g+5yeA82fWnqKLl7tyoIjXxwhL
 NRkA2xKJ1hurDEl2k12heYMWhRh44jD65Jc1e8n+VAEzn1EbjyyzM1NUTq/xZp6wkSf8=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ui8iR-0005cR-LH for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:39:48 +0000
Received: from [192.168.0.172] (mob-5-90-138-121.net.vodafone.it
 [5.90.138.121])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id AE6443B8B;
 Sat,  2 Aug 2025 11:27:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1754126845;
 bh=50vYXEGhZeTzddTpY4VW3qqWt6o/oRzLVr9heRBb344=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=bO9ZV45xEGgF6pwv4xOp/UHbDpRuyn3tsM5Ps8cKLkUxOwstVyEmE52BbRzyaxnPi
 RejLuvxRjfRvLuJdJHjNNrN9exsHVyD1VwXr3a55aLgI0Cc7LVsjh6E6VonxeaDjK6
 ZFCSwB7kkcd7rfn+xRvUFNpPtTnXo2hQg3lcZ0EU=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Sat, 02 Aug 2025 11:22:50 +0200
MIME-Version: 1.0
Message-Id: <20250802-media-private-data-v1-28-eb140ddd6a9d@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=6102;
 i=jacopo.mondi@ideasonboard.com; h=from:subject:message-id;
 bh=50vYXEGhZeTzddTpY4VW3qqWt6o/oRzLVr9heRBb344=;
 b=owEBbQKS/ZANAwAKAXI0Bo8WoVY8AcsmYgBojdj6BS2OkLRIRXzaVdf/zNJM4Q4XKjnvniijd
 fboQzcTYIyJAjMEAAEKAB0WIQS1xD1IgJogio9YOMByNAaPFqFWPAUCaI3Y+gAKCRByNAaPFqFW
 PFmQD/wOSAarhR1JioG20KiYPWKE7F1VDzwex19iOgZ3opz7/FURvUVDym7b666cyh2qCgiZgwH
 UptIgDpZRKRd949B8/ze4g0rQq9lEcIFAoTG6ELQzVXKlE4Xo1A1AywpEIuSDOqss2HguWiclXD
 xlkbmtDShmuRY8o79e9VNxhlDzDuYGgkXYcwTWTuYiKYmp1/x9HQq8XxdkJmIsB4jlkVIxsv+En
 Vys4x++KRGGfLo8TcaE48yyO7w/avATN3ZsZhHaEJ32Kp/0USpuNsgrNSrrH4BOvF88Ut3gVBVS
 6wrvQqkiePkw95y4c7bN6bCoWdAsWxEvV91DhkHXO1q8K3q8hISLyJc8HKtlCruwfZmJJg44jQo
 T5ClGMTBO0xYbiL2e+Y/5zdGRR31dIKoS6ptm3CvqlQ/CbrguuS/Rfz/4Tb/36mMr/+fe9AyuZu
 x9BchltjTcciuZHQChHl+P+qI7bQTTo9EZJgoIw+xWyffKaCxVvRJGPuWtGslIb+dqcqJGY4f8q
 8o42ieKDM8ILzrxk+neDKYp2tkMbesSWcUwpwP3kG084u+8ei9qJCbrkg1qBrLBgxloK9IuPKE0
 yvbsJLuB1QptIUH2eYuA9guw/0Lr5vX6S9RUldh4Ki7dAAt7pk3mVT4S6neF9Fmhq5AlYtN/4Kr
 CkVxUsTH44vt4mg==
X-Developer-Key: i=jacopo.mondi@ideasonboard.com; a=openpgp;
 fpr=72392EDC88144A65C701EA9BA5826A2587AD026B
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Now that it is guaranteed that file->private_data is set to
 point to the 'struct v4l2_fh' initialised by v4l2_fh_add() the v4l2-ioctl
 layer can be modified to retrieve the v4l2_fh pointer from the fil [...] 
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
X-Headers-End: 1ui8iR-0005cR-LH
X-Mailman-Approved-At: Sat, 02 Aug 2025 13:55:15 +0000
Subject: [Mjpeg-users] [PATCH 28/65] media: v4l2-ioctl: Access v4l2_fh from
 private_data
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

Now that it is guaranteed that file->private_data is set to point to the
'struct v4l2_fh' initialised by v4l2_fh_add() the v4l2-ioctl layer can
be modified to retrieve the v4l2_fh pointer from the file *.

As the __video_do_ioctl() function, that calls all the handlers modified
by this patch goes as:

static long __video_do_ioctl(struct file *file,
		unsigned int cmd, void *arg)
{
	void *fh = file->private_data;

	...

	ret = info->func(ops, file, fh, arg);

}

This patch introduces no functional changes and makes it possible to
remove in future the 'fh' argument to all ioctl handlers.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
 drivers/media/v4l2-core/v4l2-ioctl.c | 46 ++++++++++++++++++++----------------
 1 file changed, 26 insertions(+), 20 deletions(-)

diff --git a/drivers/media/v4l2-core/v4l2-ioctl.c b/drivers/media/v4l2-core/v4l2-ioctl.c
index 8c81852c30466865eca36fd41923f6d05dbf9293..44c2f5ef3dae407d9786c5278d13efc982be2ff0 100644
--- a/drivers/media/v4l2-core/v4l2-ioctl.c
+++ b/drivers/media/v4l2-core/v4l2-ioctl.c
@@ -2297,8 +2297,8 @@ static int v4l_queryctrl(const struct v4l2_ioctl_ops *ops,
 	struct video_device *vfd = video_devdata(file);
 	struct v4l2_query_ext_ctrl qec = {};
 	struct v4l2_queryctrl *p = arg;
-	struct v4l2_fh *vfh =
-		test_bit(V4L2_FL_USES_V4L2_FH, &vfd->flags) ? fh : NULL;
+	struct v4l2_fh *vfh = test_bit(V4L2_FL_USES_V4L2_FH, &vfd->flags) ?
+			      file_to_v4l2_fh(file) : NULL;
 	int ret;
 
 	if (vfh && vfh->ctrl_handler)
@@ -2322,8 +2322,8 @@ static int v4l_query_ext_ctrl(const struct v4l2_ioctl_ops *ops,
 {
 	struct video_device *vfd = video_devdata(file);
 	struct v4l2_query_ext_ctrl *p = arg;
-	struct v4l2_fh *vfh =
-		test_bit(V4L2_FL_USES_V4L2_FH, &vfd->flags) ? fh : NULL;
+	struct v4l2_fh *vfh = test_bit(V4L2_FL_USES_V4L2_FH, &vfd->flags) ?
+			      file_to_v4l2_fh(file) : NULL;
 
 	if (vfh && vfh->ctrl_handler)
 		return v4l2_query_ext_ctrl(vfh->ctrl_handler, p);
@@ -2339,8 +2339,8 @@ static int v4l_querymenu(const struct v4l2_ioctl_ops *ops,
 {
 	struct video_device *vfd = video_devdata(file);
 	struct v4l2_querymenu *p = arg;
-	struct v4l2_fh *vfh =
-		test_bit(V4L2_FL_USES_V4L2_FH, &vfd->flags) ? fh : NULL;
+	struct v4l2_fh *vfh = test_bit(V4L2_FL_USES_V4L2_FH, &vfd->flags) ?
+			      file_to_v4l2_fh(file) : NULL;
 
 	if (vfh && vfh->ctrl_handler)
 		return v4l2_querymenu(vfh->ctrl_handler, p);
@@ -2356,8 +2356,8 @@ static int v4l_g_ctrl(const struct v4l2_ioctl_ops *ops,
 {
 	struct video_device *vfd = video_devdata(file);
 	struct v4l2_control *p = arg;
-	struct v4l2_fh *vfh =
-		test_bit(V4L2_FL_USES_V4L2_FH, &vfd->flags) ? fh : NULL;
+	struct v4l2_fh *vfh = test_bit(V4L2_FL_USES_V4L2_FH, &vfd->flags) ?
+			      file_to_v4l2_fh(file) : NULL;
 	struct v4l2_ext_controls ctrls;
 	struct v4l2_ext_control ctrl;
 
@@ -2388,8 +2388,8 @@ static int v4l_s_ctrl(const struct v4l2_ioctl_ops *ops,
 {
 	struct video_device *vfd = video_devdata(file);
 	struct v4l2_control *p = arg;
-	struct v4l2_fh *vfh =
-		test_bit(V4L2_FL_USES_V4L2_FH, &vfd->flags) ? fh : NULL;
+	struct v4l2_fh *vfh = test_bit(V4L2_FL_USES_V4L2_FH, &vfd->flags) ?
+			      file_to_v4l2_fh(file) : NULL;
 	struct v4l2_ext_controls ctrls;
 	struct v4l2_ext_control ctrl;
 	int ret;
@@ -2418,8 +2418,8 @@ static int v4l_g_ext_ctrls(const struct v4l2_ioctl_ops *ops,
 {
 	struct video_device *vfd = video_devdata(file);
 	struct v4l2_ext_controls *p = arg;
-	struct v4l2_fh *vfh =
-		test_bit(V4L2_FL_USES_V4L2_FH, &vfd->flags) ? fh : NULL;
+	struct v4l2_fh *vfh = test_bit(V4L2_FL_USES_V4L2_FH, &vfd->flags) ?
+			      file_to_v4l2_fh(file) : NULL;
 
 	p->error_idx = p->count;
 	if (vfh && vfh->ctrl_handler)
@@ -2439,8 +2439,8 @@ static int v4l_s_ext_ctrls(const struct v4l2_ioctl_ops *ops,
 {
 	struct video_device *vfd = video_devdata(file);
 	struct v4l2_ext_controls *p = arg;
-	struct v4l2_fh *vfh =
-		test_bit(V4L2_FL_USES_V4L2_FH, &vfd->flags) ? fh : NULL;
+	struct v4l2_fh *vfh = test_bit(V4L2_FL_USES_V4L2_FH, &vfd->flags) ?
+			      file_to_v4l2_fh(file) : NULL;
 
 	p->error_idx = p->count;
 	if (vfh && vfh->ctrl_handler)
@@ -2460,8 +2460,8 @@ static int v4l_try_ext_ctrls(const struct v4l2_ioctl_ops *ops,
 {
 	struct video_device *vfd = video_devdata(file);
 	struct v4l2_ext_controls *p = arg;
-	struct v4l2_fh *vfh =
-		test_bit(V4L2_FL_USES_V4L2_FH, &vfd->flags) ? fh : NULL;
+	struct v4l2_fh *vfh = test_bit(V4L2_FL_USES_V4L2_FH, &vfd->flags) ?
+			      file_to_v4l2_fh(file) : NULL;
 
 	p->error_idx = p->count;
 	if (vfh && vfh->ctrl_handler)
@@ -2756,19 +2756,25 @@ static int v4l_dbg_g_chip_info(const struct v4l2_ioctl_ops *ops,
 static int v4l_dqevent(const struct v4l2_ioctl_ops *ops,
 				struct file *file, void *fh, void *arg)
 {
-	return v4l2_event_dequeue(fh, arg, file->f_flags & O_NONBLOCK);
+	struct v4l2_fh *vfh = file_to_v4l2_fh(file);
+
+	return v4l2_event_dequeue(vfh, arg, file->f_flags & O_NONBLOCK);
 }
 
 static int v4l_subscribe_event(const struct v4l2_ioctl_ops *ops,
 				struct file *file, void *fh, void *arg)
 {
-	return ops->vidioc_subscribe_event(fh, arg);
+	struct v4l2_fh *vfh = file_to_v4l2_fh(file);
+
+	return ops->vidioc_subscribe_event(vfh, arg);
 }
 
 static int v4l_unsubscribe_event(const struct v4l2_ioctl_ops *ops,
 				struct file *file, void *fh, void *arg)
 {
-	return ops->vidioc_unsubscribe_event(fh, arg);
+	struct v4l2_fh *vfh = file_to_v4l2_fh(file);
+
+	return ops->vidioc_unsubscribe_event(vfh, arg);
 }
 
 static int v4l_g_sliced_vbi_cap(const struct v4l2_ioctl_ops *ops,
@@ -3072,7 +3078,7 @@ static long __video_do_ioctl(struct file *file,
 	bool write_only = false;
 	struct v4l2_ioctl_info default_info;
 	const struct v4l2_ioctl_info *info;
-	void *fh = file->private_data;
+	void *fh = file_to_v4l2_fh(file);
 	struct v4l2_fh *vfh = NULL;
 	int dev_debug = vfd->dev_debug;
 	long ret = -ENOTTY;

-- 
2.49.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
