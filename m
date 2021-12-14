Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1144E47494C
	for <lists+mjpeg-users@lfdr.de>; Tue, 14 Dec 2021 18:26:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mxBYt-0002QS-Sm; Tue, 14 Dec 2021 17:25:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <clabbe@baylibre.com>) id 1mxAu6-0002oi-RU
 for mjpeg-users@lists.sourceforge.net; Tue, 14 Dec 2021 16:43:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hut926V20OH93089sBQ+FiKkhdXp4O3nTh6QgQgaA7A=; b=S9GD4YlwgJev8P9rvVZASNIej8
 fucoOlXL/sWctzlrokU1mI+cfB24vT7ykCDxT0+QlaD3zimDwgMUeVP8GPwL+EzGN5kbKzRalD+WS
 g8ZQquZeBx7Q0wMXe7iCj0JPgWLcSQ9+8ZMHLmZMEem+e28f42g1SJPYBQzd8//SEosg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hut926V20OH93089sBQ+FiKkhdXp4O3nTh6QgQgaA7A=; b=SHXItYWChqd+uUjsXBd+bO8VGH
 9Gpy1CtXUJtH4F6xhA+AYYhBJ+E8LIsCPO/AWLNqVuBJB6RkL97CEYlw8HdmnWMykpDDjSUHcuZA2
 Khz2hcZsSeQFcqa/JKSv83aZi8N22RTpCOfv0/ofz4F2pe/pnPK9KoIY/zfle9Mdji7M=;
Received: from mail-wm1-f46.google.com ([209.85.128.46])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mxAu2-00FJKQ-Ge
 for mjpeg-users@lists.sourceforge.net; Tue, 14 Dec 2021 16:43:50 +0000
Received: by mail-wm1-f46.google.com with SMTP id
 bg2-20020a05600c3c8200b0034565c2be15so394908wmb.0
 for <mjpeg-users@lists.sourceforge.net>; Tue, 14 Dec 2021 08:43:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hut926V20OH93089sBQ+FiKkhdXp4O3nTh6QgQgaA7A=;
 b=SlxcsL4nFKbjXPbah55EeCqyCseVZJjko6sedSwnNOxVdBj/lH7lnCTmXUaSY7neRq
 GJQGRuvnR2yi75Hq0hBpyZyPBNI6i1Z035V0PEUEclE86UAHMgLwMr9/viGidiRUgwlV
 xGEsI2tTZFLYPgJXIPgtAwC0fUsS2dw1ufnT3FqEKl9O5mgglLtKCiEL2XY1wa0vGmT5
 b9W2IHb8x4LnfY9AKOHgfB3/FlsGVQI4EkIda6OuSPPvhZYcXen8hbgLxO10uhATwOyT
 mIzyjSAKlUpTayWUald8zAbSynE3kvIxux28NOozK8WbTvBOv2JKF2M1zNDiHe5kAG+o
 JcxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hut926V20OH93089sBQ+FiKkhdXp4O3nTh6QgQgaA7A=;
 b=6pQ3X9V9npjOA1chkPRlbIqleNXhwxs7+Ti29SuJni7HvxNvrRQX+QjzLa4at6thdv
 FlQVpubI6bH3atmETgT4fMmBCvy5SGPj1XwP8+o+W5U8n/fbppHExiMeBs7MzpqeOarU
 2Nn57S3ffYc5rQJMgd62EmAe+oYaK6vpHF5HCOkpVkgS0X640YZ3KfV9uwbxExne4cS7
 RQJUZdIYWxQgsJ19sQ01NtYQbEGd8CKPKteWN2O491luf6N9iYzoY4d1zOVdFYsxyY6F
 xCJCxIzZQXclDPrJPRYQIx1inlA/4us+Th79BKUE+hYl/RYl5QYICk6oT4KziZtMRGAA
 +3Cw==
X-Gm-Message-State: AOAM532Dn4zGqN7d0MJRaXKkMLncjhJRHWywJL/5pUEwzhTX+QfYYAdn
 n3zYeGeRAVX9VSr3l4EJisTZpFZXb2X7/OZQ
X-Google-Smtp-Source: ABdhPJyLqAfusRVWFmULPpDBEmYjVePw93+cFLOzgza4/eC+u84tFZkh7nBf9qbrjGeF03It9IwQrA==
X-Received: by 2002:a7b:cbd8:: with SMTP id n24mr8115216wmi.150.1639498605031; 
 Tue, 14 Dec 2021 08:16:45 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id a9sm295116wrt.66.2021.12.14.08.16.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Dec 2021 08:16:44 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: mchehab@kernel.org,
	hverkuil@xs4all.nl,
	gregkh@linuxfoundation.org
Date: Tue, 14 Dec 2021 16:16:22 +0000
Message-Id: <20211214161636.1886900-5-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211214161636.1886900-1-clabbe@baylibre.com>
References: <20211214161636.1886900-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Add debugfs for displaying zoran debug and stats information.
 Signed-off-by: Corentin Labbe <clabbe@baylibre.com> ---
 drivers/staging/media/zoran/Kconfig
 | 1 + drivers/staging/media/zoran/zoran.h | 2 ++
 drivers/staging/media/zoran/zoran_card.c
 | 36 +++++++++++++ [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.46 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.46 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1mxAu2-00FJKQ-Ge
X-Mailman-Approved-At: Tue, 14 Dec 2021 17:25:54 +0000
Subject: [Mjpeg-users] [PATCH v4 04/18] staging: media: zoran: add debugfs
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
Cc: Corentin Labbe <clabbe@baylibre.com>, mjpeg-users@lists.sourceforge.net,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

Add debugfs for displaying zoran debug and stats information.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/Kconfig      |  1 +
 drivers/staging/media/zoran/zoran.h      |  2 ++
 drivers/staging/media/zoran/zoran_card.c | 36 ++++++++++++++++++++++++
 3 files changed, 39 insertions(+)

diff --git a/drivers/staging/media/zoran/Kconfig b/drivers/staging/media/zoran/Kconfig
index 7874842033ca..6d6e4c93f873 100644
--- a/drivers/staging/media/zoran/Kconfig
+++ b/drivers/staging/media/zoran/Kconfig
@@ -2,6 +2,7 @@ config VIDEO_ZORAN
 	tristate "Zoran ZR36057/36067 Video For Linux (Deprecated)"
 	depends on PCI && I2C_ALGOBIT && VIDEO_V4L2
 	depends on !ALPHA
+	depends on DEBUG_FS
 	select VIDEOBUF2_DMA_CONTIG
 	help
 	  Say Y for support for MJPEG capture cards based on the Zoran
diff --git a/drivers/staging/media/zoran/zoran.h b/drivers/staging/media/zoran/zoran.h
index b1ad2a2b914c..981cb63ac9af 100644
--- a/drivers/staging/media/zoran/zoran.h
+++ b/drivers/staging/media/zoran/zoran.h
@@ -18,6 +18,7 @@
 #ifndef _BUZ_H_
 #define _BUZ_H_
 
+#include <linux/debugfs.h>
 #include <media/v4l2-device.h>
 #include <media/v4l2-ctrls.h>
 #include <media/videobuf2-core.h>
@@ -295,6 +296,7 @@ struct zoran {
 	struct list_head queued_bufs;
 	spinlock_t queued_bufs_lock; /* Protects queued_bufs */
 	struct zr_buffer *inuse[BUZ_NUM_STAT_COM * 2];
+	struct dentry *dbgfs_dir;
 };
 
 static inline struct zoran *to_zoran(struct v4l2_device *v4l2_dev)
diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index f1465fbf98af..28a3363a8838 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -945,6 +945,8 @@ static void zoran_remove(struct pci_dev *pdev)
 	if (!zr->initialized)
 		goto exit_free;
 
+	debugfs_remove_recursive(zr->dbgfs_dir);
+
 	zoran_queue_exit(zr);
 
 	/* unregister videocodec bus */
@@ -1051,6 +1053,37 @@ static const struct v4l2_ctrl_ops zoran_video_ctrl_ops = {
 	.s_ctrl = zoran_video_set_ctrl,
 };
 
+static int zoran_debugfs_show(struct seq_file *seq, void *v)
+{
+	struct zoran *zr = seq->private;
+
+	seq_printf(seq, "Running mode %x\n", zr->running);
+	seq_printf(seq, "Codec mode %x\n", zr->codec_mode);
+	seq_printf(seq, "Norm %llx\n", zr->norm);
+	seq_printf(seq, "Input %d\n", zr->input);
+	seq_printf(seq, "Buffersize %d\n", zr->buffer_size);
+
+	seq_printf(seq, "V4L width %dx%d\n", zr->v4l_settings.width, zr->v4l_settings.height);
+	seq_printf(seq, "V4L bytesperline %d\n", zr->v4l_settings.bytesperline);
+
+	seq_printf(seq, "JPG decimation %u\n", zr->jpg_settings.decimation);
+	seq_printf(seq, "JPG hor_dcm %u\n", zr->jpg_settings.hor_dcm);
+	seq_printf(seq, "JPG ver_dcm %u\n", zr->jpg_settings.ver_dcm);
+	seq_printf(seq, "JPG tmp_dcm %u\n", zr->jpg_settings.tmp_dcm);
+	seq_printf(seq, "JPG odd_even %u\n", zr->jpg_settings.odd_even);
+	seq_printf(seq, "JPG crop %dx%d %d %d\n",
+		zr->jpg_settings.img_x,
+		zr->jpg_settings.img_y,
+		zr->jpg_settings.img_width,
+		zr->jpg_settings.img_height);
+
+	seq_printf(seq, "Prepared %u\n", zr->prepared);
+	seq_printf(seq, "Queued %u\n", zr->queued);
+	return 0;
+}
+
+DEFINE_SHOW_ATTRIBUTE(zoran_debugfs);
+
 /*
  *   Scan for a Buz card (actually for the PCI controller ZR36057),
  *   request the irq and map the io memory
@@ -1286,6 +1319,9 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	zr->map_mode = ZORAN_MAP_MODE_RAW;
 
+	zr->dbgfs_dir = debugfs_create_dir(ZR_DEVNAME(zr), NULL);
+	debugfs_create_file("debug", 0444, zr->dbgfs_dir, zr,
+			    &zoran_debugfs_fops);
 	return 0;
 
 zr_detach_vfe:
-- 
2.32.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
