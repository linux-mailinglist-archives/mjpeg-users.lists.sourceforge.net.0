Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F2AB18EDB
	for <lists+mjpeg-users@lfdr.de>; Sat,  2 Aug 2025 15:55:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:To:In-Reply-To:References:Message-Id:MIME-Version:Date:From:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iaVrwfS6/GI7lV8eufYuDQFmVBQhU9RCr3qss3yQefE=; b=iDA4Zks5rJND9C+iK1wvv32/Xl
	rZsp89vwpdzL1XYV6Vh5caket9h3YQhLogef6PqO6ExlW35g0SFjI1fZUpPcw841/v3vUGTcmnzZp
	gZ8TXKvhi9Q1UIghAQfQmB7slU1AHB1l83nsqPOjpW/32cFU4dq3MNwZBVrBzxg4mgsw=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1uiCho-0006Vd-0B;
	Sat, 02 Aug 2025 13:55:24 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacopo.mondi@ideasonboard.com>) id 1ui8iG-0000ES-8L
 for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:39:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Yk/S6mP0G+LE4TcMdEujFIIfJo14yYCqih/s9G6UBEA=; b=YYzku4KdQ1NG5hEhTB/rz8tTBS
 3snt/i4WTpCeCStUupryALgV4wDP8YEpO/+Q7Ibt2SnXXhSTvIad1ODUd5BkahvB0bSSIQEdDbDgG
 IwpeJynBJG74eXf1FXLGS1bVpktSW0+t9fMfpiEzNv+MYXQ8k4+vqeXwJ6kwPjdKRoXc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Yk/S6mP0G+LE4TcMdEujFIIfJo14yYCqih/s9G6UBEA=; b=D5F2XX/ZNT14Cbvc4XnUol17ju
 HlAJfc7HuOlnANQpXSEQrBW7nHl0gi3MCutCU5+ZMwaoFf8xruhfA+FQBFSAlfQpfWCuZq+esZBUM
 n4LjUXCsR3iOQCj/o1RlAYkOGOeuMhHMmalnLqDqPkpip2h8LxtzfCNPS/sjdGj7Hi04=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ui8iE-0005bm-TE for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:39:36 +0000
Received: from [192.168.0.172] (mob-5-90-138-121.net.vodafone.it
 [5.90.138.121])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id A3DB13BFA;
 Sat,  2 Aug 2025 11:27:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1754126857;
 bh=EupQNZwVDEWPV0lRXOPIWwyqRXZFDT974pCYxdDmFr4=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=hpY78CmkVv74nSpWm7mIQCCiDoYD4+PYB95WVTP4W7eZHiEy+SV4qDjjuyt3l55ad
 Wo1Jomg7/kuakxont8Lj75UEoyxO/gXWRVep1Pym+B5WryRO5Bf/nqQHWEQxxF549z
 O+SKZiZJEXIhWbrbWhqqK7Mujk0z12AkXw6FIywc=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Sat, 02 Aug 2025 11:22:51 +0200
MIME-Version: 1.0
Message-Id: <20250802-media-private-data-v1-29-eb140ddd6a9d@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4042;
 i=jacopo.mondi@ideasonboard.com; h=from:subject:message-id;
 bh=EupQNZwVDEWPV0lRXOPIWwyqRXZFDT974pCYxdDmFr4=;
 b=owEBbQKS/ZANAwAKAXI0Bo8WoVY8AcsmYgBojdj6938RTcCW3JLF7q2TU/zTQB1aW4uCXzbSl
 KRPGOpR5M2JAjMEAAEKAB0WIQS1xD1IgJogio9YOMByNAaPFqFWPAUCaI3Y+gAKCRByNAaPFqFW
 PPEoEACtOVVZcE0Jno+wySkwxbtRcY7fcEkuzlP+5mpC4ISfqOV+gM1G/t+jhOBOQxI2V/sx6dj
 NffRk/kDtQ0yQ4OGn75YP9PwPU1u9Ho0ABWevDJPGYy5zNzO1Ho6BvS55kDKWQhWVZUBNHaX5q7
 ydYl8Kklpn3uECXV2WO4sJhJcOUYT1yZ4VZ7O6wNgmZjaL+XavqFPr05yLv4ATGvhCQK1zttCLo
 ZuyM2KYvgb2RWYqOlshgBkBj6Ry5xxAPHBGJltaqSdAms5rji4stoNX+CGpKTz/eZCE1XaM8lec
 KfphPeP6gNXjr4erndbjbZ5ZG4SszKQ0+yLymE6Wdj+DQvrPjHGjJCx1xRLzDG4PzvA3ILsaB2E
 cmu6TARWAS4IXzftMkQ7UsHq3BLGTqd1B/BroBVisfe+SI5XaE8KQyW7YdgWWMUPmgD6IqaQ0D8
 NG5HUaRIsNxYllVZYKG+EbXmU0cfD3ELrYPOBtInFkGy717UK1q8BcTX6XcC+G8qhbJZBsiGM6w
 SqUODvlIMVAPmeAe8idoPhTsaqG0rZJ6GHa13M4scN3OICYwSQoh2HrXwVz5Fs+X8Z993R2hRiR
 UuwCyI5NZ+aiwhmLknbWCncfbc/sPJStc5Q8ddqgjMoRv47AcoNqw7tZnQ+l3zMnhzdNFYcsO4x
 6BSqqLyKW3RHXBA==
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1ui8iE-0005bm-TE
X-Mailman-Approved-At: Sat, 02 Aug 2025 13:55:16 +0000
Subject: [Mjpeg-users] [PATCH 29/65] media: allegro: Access v4l2_fh from file
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

While at it remove the only left user of fh_to_channel() and remove
the macro completely.

Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
 drivers/media/platform/allegro-dvt/allegro-core.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/media/platform/allegro-dvt/allegro-core.c b/drivers/media/platform/allegro-dvt/allegro-core.c
index 5e3b1f5d7206d84b8ccb9ea3b3f3f1fe75becf99..81c6afcf2d06f9e39015e49d355346238c5033d8 100644
--- a/drivers/media/platform/allegro-dvt/allegro-core.c
+++ b/drivers/media/platform/allegro-dvt/allegro-core.c
@@ -197,8 +197,6 @@ static const struct regmap_config allegro_sram_config = {
 	.cache_type = REGCACHE_NONE,
 };
 
-#define fh_to_channel(__fh) container_of(__fh, struct allegro_channel, fh)
-
 struct allegro_channel {
 	struct allegro_dev *dev;
 	struct v4l2_fh fh;
@@ -3284,7 +3282,7 @@ static int allegro_enum_fmt_vid(struct file *file, void *fh,
 static int allegro_g_fmt_vid_cap(struct file *file, void *fh,
 				 struct v4l2_format *f)
 {
-	struct allegro_channel *channel = fh_to_channel(fh);
+	struct allegro_channel *channel = file_to_channel(file);
 
 	f->fmt.pix.field = V4L2_FIELD_NONE;
 	f->fmt.pix.width = channel->width;
@@ -3326,7 +3324,7 @@ static int allegro_try_fmt_vid_cap(struct file *file, void *fh,
 static int allegro_s_fmt_vid_cap(struct file *file, void *fh,
 				 struct v4l2_format *f)
 {
-	struct allegro_channel *channel = fh_to_channel(fh);
+	struct allegro_channel *channel = file_to_channel(file);
 	struct vb2_queue *vq;
 	int err;
 
@@ -3350,7 +3348,7 @@ static int allegro_s_fmt_vid_cap(struct file *file, void *fh,
 static int allegro_g_fmt_vid_out(struct file *file, void *fh,
 				 struct v4l2_format *f)
 {
-	struct allegro_channel *channel = fh_to_channel(fh);
+	struct allegro_channel *channel = file_to_channel(file);
 
 	f->fmt.pix.field = V4L2_FIELD_NONE;
 
@@ -3397,7 +3395,7 @@ static int allegro_try_fmt_vid_out(struct file *file, void *fh,
 static int allegro_s_fmt_vid_out(struct file *file, void *fh,
 				 struct v4l2_format *f)
 {
-	struct allegro_channel *channel = fh_to_channel(fh);
+	struct allegro_channel *channel = file_to_channel(file);
 	int err;
 
 	err = allegro_try_fmt_vid_out(file, fh, f);
@@ -3438,7 +3436,7 @@ static int allegro_channel_cmd_start(struct allegro_channel *channel)
 static int allegro_encoder_cmd(struct file *file, void *fh,
 			       struct v4l2_encoder_cmd *cmd)
 {
-	struct allegro_channel *channel = fh_to_channel(fh);
+	struct allegro_channel *channel = file_to_channel(file);
 	int err;
 
 	err = v4l2_m2m_ioctl_try_encoder_cmd(file, fh, cmd);
@@ -3488,7 +3486,7 @@ static int allegro_ioctl_streamon(struct file *file, void *priv,
 				  enum v4l2_buf_type type)
 {
 	struct v4l2_fh *fh = file_to_v4l2_fh(file);
-	struct allegro_channel *channel = fh_to_channel(fh);
+	struct allegro_channel *channel = file_to_channel(file);
 	int err;
 
 	if (type == V4L2_BUF_TYPE_VIDEO_CAPTURE) {
@@ -3503,7 +3501,7 @@ static int allegro_ioctl_streamon(struct file *file, void *priv,
 static int allegro_g_parm(struct file *file, void *fh,
 			  struct v4l2_streamparm *a)
 {
-	struct allegro_channel *channel = fh_to_channel(fh);
+	struct allegro_channel *channel = file_to_channel(file);
 	struct v4l2_fract *timeperframe;
 
 	if (a->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
@@ -3520,7 +3518,7 @@ static int allegro_g_parm(struct file *file, void *fh,
 static int allegro_s_parm(struct file *file, void *fh,
 			  struct v4l2_streamparm *a)
 {
-	struct allegro_channel *channel = fh_to_channel(fh);
+	struct allegro_channel *channel = file_to_channel(file);
 	struct v4l2_fract *timeperframe;
 	int div;
 

-- 
2.49.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
