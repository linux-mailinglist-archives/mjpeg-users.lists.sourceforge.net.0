Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C9306B18EF1
	for <lists+mjpeg-users@lfdr.de>; Sat,  2 Aug 2025 15:55:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:To:In-Reply-To:References:Message-Id:MIME-Version:Date:From:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qMk48aRGQj1p+CymGlHFoZ6JBjZaVf2WuPIew8+spV4=; b=O6DOe4roEjiV/pZn4JF/kpaUXn
	c31nE5duOg7Fj+NhPSUQUgulTnxwiXZvtlA4jAP5hYqG4hHvIxTKDl6yECuR2Pa2TSDxrnyMtYP52
	vbqoT8lfRM2B31Esg2gkRG30WlD2oN6wpN+LiAs+Rddeo/GIx6nJuGVo7OzahtGHFidg=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1uiChv-0006fd-Lk;
	Sat, 02 Aug 2025 13:55:31 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacopo.mondi@ideasonboard.com>) id 1ui8m5-0000TT-Rj
 for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:43:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Aw5BcSUT61NUdMEZl4e3upk2hKTfUHa+DShhszBaZb0=; b=E49tjutH9S0Q9o1K35Mn1dhdNy
 3DXwI7zGpkz8x1uF1sJNU3YdVQLnRTFtaiGPJKNs1JdRm2UaxwZ7mkHj49WPkWEh78Sm0pf6e1NoS
 YE2YWzzSP05zZwB8iIjEb1xfCjVVq347ftoFijHmjhSy+w7vW8eq/BtnkxcpgZg2glfg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Aw5BcSUT61NUdMEZl4e3upk2hKTfUHa+DShhszBaZb0=; b=nBWvLNVNGgnZo2mwVnjSuYjzZd
 LUW3UFFxn02kPn5J6T/3UlhiyD4F+YdUxIm3c/Xukszt9UhCZQYw0ID/HYdIs3eDPF4GWk0Mz8tPb
 6wsr7OCqY5KfeEyufL6efVe3jdYOyBmvOCt6WM0haDSp0h/k/UfphssyvNMqnTkuebrc=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ui8m5-0005tE-Av for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:43:33 +0000
Received: from [192.168.0.172] (mob-5-90-138-121.net.vodafone.it
 [5.90.138.121])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id B634132CE;
 Sat,  2 Aug 2025 11:25:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1754126720;
 bh=PZJ1dtH8nmhfLvI56JLBdPdVDA0PB4szlI4XA3Wq6yw=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=OTFLVa011NnEd62Pg03uYC4ijQ+I7C7eKlpJ/1lEAKQn52ln5poN59ByaM1OP/BJJ
 1bGZzAQl8d3H7dkSml1kQTy9Mv+ol4VjnBH3vkVhOgfYLCUFuf44EaIzs77SisC9gp
 9NTv3iC0LTAsfBWAeEubFS1vkreWcTWYo8AiEHoc=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Sat, 02 Aug 2025 11:22:38 +0200
MIME-Version: 1.0
Message-Id: <20250802-media-private-data-v1-16-eb140ddd6a9d@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1332;
 i=jacopo.mondi@ideasonboard.com; h=from:subject:message-id;
 bh=3mdLRukve15yg0XhGTxj6WeSGHvr7vlZ9xqEhBw1Ap8=;
 b=owEBbQKS/ZANAwAKAXI0Bo8WoVY8AcsmYgBojdj5Aqu9VSv4VW4JgzhkKv4IejFT1+wHP4iEB
 k8A3tbKR0+JAjMEAAEKAB0WIQS1xD1IgJogio9YOMByNAaPFqFWPAUCaI3Y+QAKCRByNAaPFqFW
 PMs+D/95ql+AofdksJ9+zTLY+7aOcDVLMQvYbA3pgfKJARD2L8GaSgT26Bs+muoW5SxO55NXUua
 M1AsJL8/xTGUpkmb9QB6bqbkIQqfW0MAU/R6prYbSr2QVa7palsTZqZuzU1Ngf/aJWjOMes52Hg
 FEqpmzq1bF+rXHMuiK4CKcExsn3a5ww/jpd1mJQ2dKh44gRYjXhv+JEsMUBsXfF8bjZsjHKBEdR
 xiGrMTt07gugBQDNa0zaJIV9bvYRqzDBh6zrx6VG9cCqltgdvn6qa4E5xuD2wJNOYo5f8jHzICK
 jzkTlBzDRuJ9pyNfQwcPM2CucUdG6ESpU38FP080jZnPDHGqOEOpZSPTNi1r6lkQyBZov0Oidmh
 AFDsX3+1yLe/Q36ytvuP/eRkK0QCU3T0AreReNKzLe/MkxA9MOs8v8n5Jg+hO60DSPMhzyIOzF8
 TTUgxC1Rv7kDtLKhwRVAgFmypxz+Yl7XdTm7v5nA8aqCQJTHjNzPSMZbDP4mIlzCVNWGztU2CKb
 OF8H9KNqJaiUO3BJPX1eqCOacTSvtuI/Z3y9X0/HTPfwXXZNSkaLm1Wp2oPcWu4T8H6XTH9dO4t
 JIh7O8nImH8gE4dCTNvxjXypvMugfjCkwL4iM/yXf0Ilmp25VoACwNJCB3vA67AyhaVa+5Pd786
 vgFeamTgOOjrY+A==
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
 The paragraph in the v4l2_fh_del() documentation that indicates the function
 sets filp->private_data was added in the wrong place. It is meant for
 v4l2_fh_open(). Move it to where it belongs. 
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
X-Headers-End: 1ui8m5-0005tE-Av
X-Mailman-Approved-At: Sat, 02 Aug 2025 13:55:15 +0000
Subject: [Mjpeg-users] [PATCH 16/65] media: v4l2-fh: Move piece of
 documentation to correct function
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

The paragraph in the v4l2_fh_del() documentation that indicates the
function sets filp->private_data was added in the wrong place. It is
meant for v4l2_fh_open(). Move it to where it belongs.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
 include/media/v4l2-fh.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/include/media/v4l2-fh.h b/include/media/v4l2-fh.h
index 823fa8ebeb8fbe36f05a1c31d3d3a9b7bba4de4d..14e7136e693f0a7b8b25959200603028e0db36ac 100644
--- a/include/media/v4l2-fh.h
+++ b/include/media/v4l2-fh.h
@@ -101,6 +101,9 @@ void v4l2_fh_add(struct v4l2_fh *fh);
  *
  * It allocates a v4l2_fh and inits and adds it to the &struct video_device
  * associated with the file pointer.
+ *
+ * On error filp->private_data will be %NULL, otherwise it will point to
+ * the &struct v4l2_fh.
  */
 int v4l2_fh_open(struct file *filp);
 
@@ -109,9 +112,6 @@ int v4l2_fh_open(struct file *filp);
  *
  * @fh: pointer to &struct v4l2_fh
  *
- * On error filp->private_data will be %NULL, otherwise it will point to
- * the &struct v4l2_fh.
- *
  * .. note::
  *    Must be called in v4l2_file_operations->release\(\) handler if the driver
  *    uses &struct v4l2_fh.

-- 
2.49.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
