Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F0F7B18F09
	for <lists+mjpeg-users@lfdr.de>; Sat,  2 Aug 2025 15:55:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:To:In-Reply-To:References:Message-Id:MIME-Version:Date:From:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HdIJGQAQRBwZ7AFNYvs0BPHg/9/wNbIcWXujhmQQhxk=; b=MsIHPA6TY83pIIO6D9BAkSzegY
	hcOMDXtPU1Z3W7WHgibDKZp4reS07BhiBW5MN8y+LwjDGmJyxSLDzyiL9XN0q2ID3nV4FYWgf3oAx
	/+DwEq5kWtYpmcFk3DZtL2Gk6NUK/yOAiRAcWW8fv1QOptxJ4At0r4GEgGGDku0CB4iA=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1uiCi4-0006uN-FM;
	Sat, 02 Aug 2025 13:55:40 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacopo.mondi@ideasonboard.com>) id 1ui8rH-0000kB-CC
 for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:48:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WbbX9nCjgx6Yk0HgNVd66eZuheuC89AdVXKnrYSOkbg=; b=fcWAy5WDN+hAqVEyL7QHQKqpKa
 bWZhlO6hGKv/zEmfSNWB4vJbkb0Fjb08rsSmfHb3aQqbEj256XQmv0yCRqxK5SPTYfvEzV/3k8/Oa
 EPlyrAWUQKqP9upoyFhgt70VAjDOkJtQUMBcA3S+HqAc7l8AYZfe0F6DbUspg36Y/mIg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WbbX9nCjgx6Yk0HgNVd66eZuheuC89AdVXKnrYSOkbg=; b=kwrWnKIf4hMopPRhYPuPK+e671
 HuHiecM7atHS/YbD0z5alSep//pLvO59J65YF8Aa5O2XWjy9qYp25SSiJEngrwgU5mRw7s9JgjdJR
 lLn84351bfnjCH0USzFsJ8/7fSYQlflo9mEGk+UjbBk5ZbiJAvQ+ccnfsbwkn174YIgc=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ui8rG-0006RP-Hz for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:48:55 +0000
Received: from [192.168.0.172] (mob-5-90-138-121.net.vodafone.it
 [5.90.138.121])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id A80C42F0D;
 Sat,  2 Aug 2025 11:24:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1754126683;
 bh=h5udZ1SzPumXnE7xu2zWQT6vfdKtMoA3NyZ01lPUHuA=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=iM9OfLxjFezRevsFSM+DHzmuj7nNeL7ocIFelwKtOOkub03t9gmFJnj5/MndtBa1u
 1XukpB+YRy0Co1GOWWW3SG+Dxx0BaUMXn+oMf3Bj0kz24biyJYcQAGPxrgLXbniG5N
 a+YY9PwN+Cv72yF31/RICanxWaiXB8p++jEUVsBE=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Sat, 02 Aug 2025 11:22:34 +0200
MIME-Version: 1.0
Message-Id: <20250802-media-private-data-v1-12-eb140ddd6a9d@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=6700;
 i=jacopo.mondi@ideasonboard.com; h=from:subject:message-id;
 bh=2/+7JKVHQ0FUPAMFvnWgDgM7Mra+DCKmELJTQXBkvDA=;
 b=owEBbQKS/ZANAwAKAXI0Bo8WoVY8AcsmYgBojdj4n5+bYKeplnUHvNaRht9BxmiwNfWLvjFfp
 RrwjLb0lYOJAjMEAAEKAB0WIQS1xD1IgJogio9YOMByNAaPFqFWPAUCaI3Y+AAKCRByNAaPFqFW
 PAmHD/4mhFhl/805WB3JLxIhy7zUPvIxr2/l7bll6BZb+Uwp4egXUM6l3Wr+RH/zsD/o7f2JO4p
 IKeuRxRQTW4A6Tbfa0RzfC6hysVeMWcv3mjkcBug3surPW4kuftKxbMbnm1t5Jk5jwN+j3H3q3P
 eCxZdeV65ONT4MJT2N8YblptRqH6aV9BdTdCP6b30dJwQy1e14T37qbNRtfHQBhxT7rML4K1DDj
 c6Qj1hrlyc/CkG07XT9hZUhGcwB7ra0b/2L7bp+8ijuhR0q7KGvXTKZ/Oq8SrINLvVgisiFfWKw
 iRc7K8Q7Rqk7503ezMkGbAskIlbn4kPaaSrCYUFQOGooexgaAGuevht3vw0PkMxW+lO+z3eqh1e
 hKtEbNAhnjZA5t0fxtpBNZK5XJqjsYLeEpSizSVzVVuEcMvMry+oTTLbhGcPrgRWtnqoh29L8QD
 YcRbxMcnzpw2+buRGdOHPm+9CUTmz71/80mKyigU7RFsBLwYY3+YIMBxSOu+l7XCVNKgq6AQ2ev
 hxXxr6rTciajnOManNEKxiWuM90o5SjS5WjkGDvJp+2GlRuEP0Hbq1HYXPjvSzbg11HgjbEHwfl
 o3wfhk1v6eO4g7gbV9Q4Z6NtQC7PxdjPkPVdcJC9akSlAlM/jjzolxFItGYzjltOT6bmjh193f3
 Dpt/CwXPkT8LQTA==
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
 The ivtv driver has a structure named ivtv_open_id that models an open file
 handle for the device. It embeds a v4l2_fh instance for file handles that
 correspond to a V4L2 video device, and stores a po [...] 
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
X-Headers-End: 1ui8rG-0006RP-Hz
X-Mailman-Approved-At: Sat, 02 Aug 2025 13:55:15 +0000
Subject: [Mjpeg-users] [PATCH 12/65] media: pci: ivtv: Don't create fake
 v4l2_fh
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

The ivtv driver has a structure named ivtv_open_id that models an open
file handle for the device. It embeds a v4l2_fh instance for file
handles that correspond to a V4L2 video device, and stores a pointer to
that v4l2_fh in struct ivtv_stream to identify which open file handle
owns a particular stream.

In addition to video devices, streams can be owned by ALSA PCM devices.
Those devices do not make use of the v4l2_fh instance for obvious
reasons, but the snd_ivtv_pcm_capture_open() function still initializes
a "fake" v4l2_fh for the sole purpose of using it as an open file handle
identifier. The v4l2_fh is not properly destroyed when the ALSA PCM
device is closed, leading to possible resource leaks.

Fortunately, the v4l2_fh instance pointed to by ivtv_stream is not
accessed, only the pointer value is used for comparison. Replace it with
a pointer to the ivtv_open_id structure that embeds the v4l2_fh, and
don't initialize the v4l2_fh for ALSA PCM devices.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
 drivers/media/pci/ivtv/ivtv-alsa-pcm.c |  2 --
 drivers/media/pci/ivtv/ivtv-driver.h   |  3 ++-
 drivers/media/pci/ivtv/ivtv-fileops.c  | 18 +++++++++---------
 drivers/media/pci/ivtv/ivtv-irq.c      |  4 ++--
 4 files changed, 13 insertions(+), 14 deletions(-)

diff --git a/drivers/media/pci/ivtv/ivtv-alsa-pcm.c b/drivers/media/pci/ivtv/ivtv-alsa-pcm.c
index 8f346d7da9c8defb12191c3addb12a118547b9a0..269a799ec046c67265484945acf89a5fbd40a3f4 100644
--- a/drivers/media/pci/ivtv/ivtv-alsa-pcm.c
+++ b/drivers/media/pci/ivtv/ivtv-alsa-pcm.c
@@ -148,14 +148,12 @@ static int snd_ivtv_pcm_capture_open(struct snd_pcm_substream *substream)
 
 	s = &itv->streams[IVTV_ENC_STREAM_TYPE_PCM];
 
-	v4l2_fh_init(&item.fh, &s->vdev);
 	item.itv = itv;
 	item.type = s->type;
 
 	/* See if the stream is available */
 	if (ivtv_claim_stream(&item, item.type)) {
 		/* No, it's already in use */
-		v4l2_fh_exit(&item.fh);
 		snd_ivtv_unlock(itvsc);
 		return -EBUSY;
 	}
diff --git a/drivers/media/pci/ivtv/ivtv-driver.h b/drivers/media/pci/ivtv/ivtv-driver.h
index cad548b28e360ecfe2bcb9fcb5d12cd8823c3727..38c4ceb04cf834906ed877b57c20fcbdb390da13 100644
--- a/drivers/media/pci/ivtv/ivtv-driver.h
+++ b/drivers/media/pci/ivtv/ivtv-driver.h
@@ -322,6 +322,7 @@ struct ivtv_queue {
 };
 
 struct ivtv;				/* forward reference */
+struct ivtv_open_id;
 
 struct ivtv_stream {
 	/* These first four fields are always set, even if the stream
@@ -331,7 +332,7 @@ struct ivtv_stream {
 	const char *name;		/* name of the stream */
 	int type;			/* stream type */
 
-	struct v4l2_fh *fh;		/* pointer to the streaming filehandle */
+	struct ivtv_open_id *id;	/* pointer to the streaming ivtv_open_id */
 	spinlock_t qlock;		/* locks access to the queues */
 	unsigned long s_flags;		/* status flags, see above */
 	int dma;			/* can be PCI_DMA_TODEVICE, PCI_DMA_FROMDEVICE or PCI_DMA_NONE */
diff --git a/drivers/media/pci/ivtv/ivtv-fileops.c b/drivers/media/pci/ivtv/ivtv-fileops.c
index cc91695a5b7605dcd964bd2c68bb12f645dc302f..67964a3c382c6627a7b3ce6380a2da97dcc47c3d 100644
--- a/drivers/media/pci/ivtv/ivtv-fileops.c
+++ b/drivers/media/pci/ivtv/ivtv-fileops.c
@@ -39,16 +39,16 @@ int ivtv_claim_stream(struct ivtv_open_id *id, int type)
 
 	if (test_and_set_bit(IVTV_F_S_CLAIMED, &s->s_flags)) {
 		/* someone already claimed this stream */
-		if (s->fh == &id->fh) {
+		if (s->id == id) {
 			/* yes, this file descriptor did. So that's OK. */
 			return 0;
 		}
-		if (s->fh == NULL && (type == IVTV_DEC_STREAM_TYPE_VBI ||
+		if (s->id == NULL && (type == IVTV_DEC_STREAM_TYPE_VBI ||
 					 type == IVTV_ENC_STREAM_TYPE_VBI)) {
 			/* VBI is handled already internally, now also assign
 			   the file descriptor to this stream for external
 			   reading of the stream. */
-			s->fh = &id->fh;
+			s->id = id;
 			IVTV_DEBUG_INFO("Start Read VBI\n");
 			return 0;
 		}
@@ -56,7 +56,7 @@ int ivtv_claim_stream(struct ivtv_open_id *id, int type)
 		IVTV_DEBUG_INFO("Stream %d is busy\n", type);
 		return -EBUSY;
 	}
-	s->fh = &id->fh;
+	s->id = id;
 	if (type == IVTV_DEC_STREAM_TYPE_VBI) {
 		/* Enable reinsertion interrupt */
 		ivtv_clear_irq_mask(itv, IVTV_IRQ_DEC_VBI_RE_INSERT);
@@ -94,7 +94,7 @@ void ivtv_release_stream(struct ivtv_stream *s)
 	struct ivtv *itv = s->itv;
 	struct ivtv_stream *s_vbi;
 
-	s->fh = NULL;
+	s->id = NULL;
 	if ((s->type == IVTV_DEC_STREAM_TYPE_VBI || s->type == IVTV_ENC_STREAM_TYPE_VBI) &&
 		test_bit(IVTV_F_S_INTERNAL_USE, &s->s_flags)) {
 		/* this stream is still in use internally */
@@ -126,7 +126,7 @@ void ivtv_release_stream(struct ivtv_stream *s)
 		/* was already cleared */
 		return;
 	}
-	if (s_vbi->fh) {
+	if (s_vbi->id) {
 		/* VBI stream still claimed by a file descriptor */
 		return;
 	}
@@ -359,7 +359,7 @@ static ssize_t ivtv_read(struct ivtv_stream *s, char __user *ubuf, size_t tot_co
 	size_t tot_written = 0;
 	int single_frame = 0;
 
-	if (atomic_read(&itv->capturing) == 0 && s->fh == NULL) {
+	if (atomic_read(&itv->capturing) == 0 && s->id == NULL) {
 		/* shouldn't happen */
 		IVTV_DEBUG_WARN("Stream %s not initialized before read\n", s->name);
 		return -EIO;
@@ -831,7 +831,7 @@ void ivtv_stop_capture(struct ivtv_open_id *id, int gop_end)
 		     id->type == IVTV_ENC_STREAM_TYPE_VBI) &&
 		    test_bit(IVTV_F_S_INTERNAL_USE, &s->s_flags)) {
 			/* Also used internally, don't stop capturing */
-			s->fh = NULL;
+			s->id = NULL;
 		}
 		else {
 			ivtv_stop_v4l2_encode_stream(s, gop_end);
@@ -915,7 +915,7 @@ int ivtv_v4l2_close(struct file *filp)
 	v4l2_fh_exit(fh);
 
 	/* Easy case first: this stream was never claimed by us */
-	if (s->fh != &id->fh)
+	if (s->id != id)
 		goto close_done;
 
 	/* 'Unclaim' this stream */
diff --git a/drivers/media/pci/ivtv/ivtv-irq.c b/drivers/media/pci/ivtv/ivtv-irq.c
index 748c14e879632ae6f62c3cc1981a168b01ed060d..20ba5ae9c6d1d0e6e4d856d1f083e30a0f9be321 100644
--- a/drivers/media/pci/ivtv/ivtv-irq.c
+++ b/drivers/media/pci/ivtv/ivtv-irq.c
@@ -305,7 +305,7 @@ static void dma_post(struct ivtv_stream *s)
 			ivtv_process_vbi_data(itv, buf, 0, s->type);
 			s->q_dma.bytesused += buf->bytesused;
 		}
-		if (s->fh == NULL) {
+		if (s->id == NULL) {
 			ivtv_queue_move(s, &s->q_dma, NULL, &s->q_free, 0);
 			return;
 		}
@@ -330,7 +330,7 @@ static void dma_post(struct ivtv_stream *s)
 		set_bit(IVTV_F_I_HAVE_WORK, &itv->i_flags);
 	}
 
-	if (s->fh)
+	if (s->id)
 		wake_up(&s->waitq);
 }
 

-- 
2.49.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
