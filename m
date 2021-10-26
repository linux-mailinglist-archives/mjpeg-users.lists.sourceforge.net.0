Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE1E43CE05
	for <lists+mjpeg-users@lfdr.de>; Wed, 27 Oct 2021 17:55:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mflGl-0003r8-2J; Wed, 27 Oct 2021 15:55:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <clabbe@baylibre.com>) id 1mfU1m-0006jB-RO
 for mjpeg-users@lists.sourceforge.net; Tue, 26 Oct 2021 21:30:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hut926V20OH93089sBQ+FiKkhdXp4O3nTh6QgQgaA7A=; b=aEa9bkagYFQuQzE5HBVWbO6Lxn
 oz+61bgaxBzNt8JNcQJHaAVJICoId2cJo85ERg4YSZhPf21dHy5JInSHJ6fQZeycE+5r+9hhoSCVb
 Y6m1c749u8nlfgTjA/XEejeD6KN8tbR2FlKyB0Om4C6vtsxw8GAvw02mjhBb2f+mEwwQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hut926V20OH93089sBQ+FiKkhdXp4O3nTh6QgQgaA7A=; b=cu/vmgTmTgwlv9QAfrbxeeERi2
 W7xuq1rVT8Q0eKq7s5L/xXKh6Va9M9H6go52TwnzQTRoWBgpmMQydwPkTq0kc/VOBwl5xmY6q/bqC
 DRZNZxlNbON7IW/iCQORZlHAO6OmFLqs7AgtokUkfxlhvQXH3phqDwkdkljpM2Ur34gg=;
Received: from mail-lj1-f179.google.com ([209.85.208.179])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mfU1I-0006Qt-Or
 for mjpeg-users@lists.sourceforge.net; Tue, 26 Oct 2021 21:30:38 +0000
Received: by mail-lj1-f179.google.com with SMTP id 188so1158061ljj.4
 for <mjpeg-users@lists.sourceforge.net>; Tue, 26 Oct 2021 14:30:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hut926V20OH93089sBQ+FiKkhdXp4O3nTh6QgQgaA7A=;
 b=hwYicRb0OS5eN08waXU1zgwff1mW40qKsbV1jA3ufWbrmPO0WPZiu72m7rqcxsy29H
 SPQtiQW+kgnSXoLcG0ldncL9HAIPxArkazHr780V9pJdqzC4MES8yYAuzAllVfdEjaXB
 1YP10luLrWQx065ohS933ohmOdpnlL9iZhfuILLvxTR80aEzydOcNW3epM8WL0x+yeM0
 t1HKtKNv76Qlo7rM7Yb6AS5I0mIk/UgnqHMDXHONZ7EsqvUGKfJTwxo39xp+uNbdBSxA
 AuVAjPPY16D5/oh0ke7fI/D5y1/XGulQKI+5/11KkwqkyOtkDRUtLInTAdpOY3h1SV8i
 PvGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hut926V20OH93089sBQ+FiKkhdXp4O3nTh6QgQgaA7A=;
 b=HvY+5gytfQhEePaECfpxJG1DrG4V2+QY1HOit16lF01pITlU5HXFEvtXexmqMJJ/wm
 OGfDIvhx9WPKKaU6FbWf/UlnXKITKP+OsZsST1KFzBduRsRZ012Gcw7VMjwq/9dzHHEP
 VwrYXNLnakB3RJ5qVj2Vr9hyxDVXFc3zGpKoz19eyBKA9bXY0Oaw4zqkD1U7/mrLCXgm
 +Aol81KAKq3dSWxZQJmCQdjssHEsfQFSukG+0SLu0g9Hl2foU9vMbh2K+vr2et6xyMDd
 /6dZz9rUWQVmKoLoVMiyC+2T8Q24dGELX9mwZ31j/ERHgmaonS6pTV0KDXeeF9ZIooA6
 Mp1A==
X-Gm-Message-State: AOAM531tQe9Bf1Io4YI/TtwQTNjZmIi0DnZ8wVEBnYHJxVL6++hW2crJ
 F7CL0fkjm5kZ9bo5OJBxNrnaVBFsCJ/IAw==
X-Google-Smtp-Source: ABdhPJxScYyps8hFP9WRzxmofVYYVvklo7tQfqY4/lmq/LcdjqhV/KDBvBqcjIf8Fov710lMLMuqEg==
X-Received: by 2002:adf:f84b:: with SMTP id d11mr640730wrq.51.1635276863965;
 Tue, 26 Oct 2021 12:34:23 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id s18sm17676123wrb.95.2021.10.26.12.34.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Oct 2021 12:34:23 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: mchehab@kernel.org,
	hverkuil@xs4all.nl,
	gregkh@linuxfoundation.org
Date: Tue, 26 Oct 2021 19:34:06 +0000
Message-Id: <20211026193416.1176797-5-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211026193416.1176797-1-clabbe@baylibre.com>
References: <20211026193416.1176797-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-Headers-End: 1mfU1I-0006Qt-Or
X-Mailman-Approved-At: Wed, 27 Oct 2021 15:55:09 +0000
Subject: [Mjpeg-users] [PATCH v3 04/14] staging: media: zoran: add debugfs
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
