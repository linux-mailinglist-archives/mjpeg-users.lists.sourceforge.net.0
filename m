Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CAE1400974
	for <lists+mjpeg-users@lfdr.de>; Sat,  4 Sep 2021 05:49:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mMMfv-0004l7-GY; Sat, 04 Sep 2021 03:49:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <clabbe@baylibre.com>) id 1mMFSS-0008El-Sh
 for mjpeg-users@lists.sourceforge.net; Fri, 03 Sep 2021 20:06:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1NmIdsFD86RNjphoyemqsLToxbge8B3EnKqYSVZuo2Y=; b=lKnMBFQUQY0kM+Kn/9wczMg5kf
 4+UsKvgJQlN+xjsX4f3hLZFLQ4HPKpHmI7iX53BkoF4ztMb0ZbhCEwhfjPSlcgzJOfbQV4gozk+cu
 +20C04b4gn8bwoWXfbOfRgBbfvwNmnU97TB9EQM7VONbkz7hU0paXQB4Y5UI7YBINm90=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1NmIdsFD86RNjphoyemqsLToxbge8B3EnKqYSVZuo2Y=; b=Fdff3WI4nk+JO0dhTY+66pT9x9
 MIBS1U1CfMHCpSfy7wTORRntuaTpAqsGRVr91IuxDaCf/r1Yp88IyIs0+GHSZgQ976Rg+zGChwpaH
 x4YJIXoRP4Wmxre2uKStVSCzuOkuRtboMplfehDIuInPV/H3QKBixhjhzSBKHU+0wu4U=;
Received: from mail-lf1-f41.google.com ([209.85.167.41])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mMFSO-0004jU-7O
 for mjpeg-users@lists.sourceforge.net; Fri, 03 Sep 2021 20:06:38 +0000
Received: by mail-lf1-f41.google.com with SMTP id x27so517966lfu.5
 for <mjpeg-users@lists.sourceforge.net>; Fri, 03 Sep 2021 13:06:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1NmIdsFD86RNjphoyemqsLToxbge8B3EnKqYSVZuo2Y=;
 b=1HbmBCWKRfy/qbtCLMcic0WLmk59QE/9OleagyarLaL0dgHqjZxZsNru4qAcQtKSSm
 EtCH0k9rSDSF9dylLch0P563QPQftBsKbtgqccH4mR/ktgv2z9wSLwKt9f3KEHpq+2Zv
 NJ7apVSm0V9CFPFJ2+HB2b7QxMB4zy0D48mVG/wAvpaurwX0xcdvI+06htLwc9BqFnqp
 l0qWTkzGqa/udvtbmP3u0pD8IHNANdDY/pyCh9mpjLjhKoPQQyhz6exBU4mrobHU81MC
 JfurgV6i26oVOqKdrA/An5NEOn4OsUZ6gcnjka8CqMNlwwGx4IFQeexTeBS7DgtkuN+h
 +lCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1NmIdsFD86RNjphoyemqsLToxbge8B3EnKqYSVZuo2Y=;
 b=PBr/UBtp8SPn4UmTKUwxdKfdhVvYxYIV8Bx41r8/jAfRqQ9X9ZV7Frt4Xi1pxVJ4BA
 5+M+Be3s4HHnAfmKs7dBBNm3kMAtkI9dkRc8HtS7o2VdKULGJBe/b7lZfmofjb6U+Paa
 hceM/HiDL0rIPz7P4+1vg/kVLkB8OMzgJSo/EDndX5in3Gwmvik0rRIh0Rc/qjmCFEu0
 afqj6w+A+GUtK5xIKGMjkFYtWlnFQ8ubIMaukzeVvbkdu8sNZ8p7Eq3Y+zSCGhYESbtY
 i4O/N6kdPpMmEgkblY8O1PYcvr/vFYCqnb5thcC56MfJb+jY0IynG2GHsrUnsrHC4EOp
 enow==
X-Gm-Message-State: AOAM530EvI1myQCWv0mMJjXobS3wBpt2MTA7CBcgFelmM4jaxuPqJMda
 mpk9Bev4wlfi2sN6ebtHYFEAHYn901zCyTdgiDQ=
X-Google-Smtp-Source: ABdhPJxR56Efcyt43sCJExSiASr0RQSzm9RG7u10CGLRdOHwTEMias0MFbSqvXFemkwhCmDQpYUAIg==
X-Received: by 2002:a5d:5441:: with SMTP id w1mr612235wrv.280.1630696556242;
 Fri, 03 Sep 2021 12:15:56 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id a133sm253397wme.5.2021.09.03.12.15.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Sep 2021 12:15:56 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org,
	mchehab@kernel.org
Date: Fri,  3 Sep 2021 19:15:36 +0000
Message-Id: <20210903191540.3052775-5-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210903191540.3052775-1-clabbe@baylibre.com>
References: <20210903191540.3052775-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: baylibre.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.41 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.41 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1mMFSO-0004jU-7O
X-Mailman-Approved-At: Sat, 04 Sep 2021 03:49:00 +0000
Subject: [Mjpeg-users] [PATCH 4/8] staging: media: zoran: add debugfs
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
 drivers/staging/media/zoran/Kconfig      | 10 ++++++
 drivers/staging/media/zoran/zoran.h      |  5 +++
 drivers/staging/media/zoran/zoran_card.c | 39 ++++++++++++++++++++++++
 3 files changed, 54 insertions(+)

diff --git a/drivers/staging/media/zoran/Kconfig b/drivers/staging/media/zoran/Kconfig
index 7874842033ca..7d2d3c2431b1 100644
--- a/drivers/staging/media/zoran/Kconfig
+++ b/drivers/staging/media/zoran/Kconfig
@@ -74,3 +74,13 @@ config VIDEO_ZORAN_AVS6EYES
 	select VIDEO_KS0127 if MEDIA_SUBDRV_AUTOSELECT
 	help
 	  Support for the AverMedia 6 Eyes video surveillance card.
+
+config VIDEO_ZORAN_DEBUG
+	bool "Enable zoran debugfs"
+	depends on VIDEO_ZORAN
+	depends on DEBUG_FS
+	help
+	  Say y to enable zoran debug file.
+	  This will create /sys/kernel/debug/CARD_NAME/debug for displaying
+	  stats and debug information.
+
diff --git a/drivers/staging/media/zoran/zoran.h b/drivers/staging/media/zoran/zoran.h
index b1ad2a2b914c..8c271005f14d 100644
--- a/drivers/staging/media/zoran/zoran.h
+++ b/drivers/staging/media/zoran/zoran.h
@@ -18,6 +18,7 @@
 #ifndef _BUZ_H_
 #define _BUZ_H_
 
+#include <linux/debugfs.h>
 #include <media/v4l2-device.h>
 #include <media/v4l2-ctrls.h>
 #include <media/videobuf2-core.h>
@@ -295,6 +296,10 @@ struct zoran {
 	struct list_head queued_bufs;
 	spinlock_t queued_bufs_lock; /* Protects queued_bufs */
 	struct zr_buffer *inuse[BUZ_NUM_STAT_COM * 2];
+#ifdef CONFIG_VIDEO_ZORAN_DEBUG
+	struct dentry *dbgfs_dir;
+	struct dentry *dbgfs_file;
+#endif
 };
 
 static inline struct zoran *to_zoran(struct v4l2_device *v4l2_dev)
diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index f1465fbf98af..1ed8ed2f4f7f 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -1051,6 +1051,39 @@ static const struct v4l2_ctrl_ops zoran_video_ctrl_ops = {
 	.s_ctrl = zoran_video_set_ctrl,
 };
 
+#ifdef CONFIG_VIDEO_ZORAN_DEBUG
+static int zoran_debugfs_show(struct seq_file *seq, void *v)
+{
+	struct zoran *zr = seq->private;
+
+	seq_printf(seq, "Running mode %x\n", zr->running);
+	seq_printf(seq, "Codec mode %x\n", zr->codec_mode);
+	seq_printf(seq, "Norm %x\n", zr->norm);
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
+#endif
+
 /*
  *   Scan for a Buz card (actually for the PCI controller ZR36057),
  *   request the irq and map the io memory
@@ -1286,6 +1319,12 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	zr->map_mode = ZORAN_MAP_MODE_RAW;
 
+#ifdef CONFIG_VIDEO_ZORAN_DEBUG
+	zr->dbgfs_dir = debugfs_create_dir(ZR_DEVNAME(zr), NULL);
+	zr->dbgfs_file = debugfs_create_file("debug", 0444,
+					      zr->dbgfs_dir, zr,
+					      &zoran_debugfs_fops);
+#endif
 	return 0;
 
 zr_detach_vfe:
-- 
2.32.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
