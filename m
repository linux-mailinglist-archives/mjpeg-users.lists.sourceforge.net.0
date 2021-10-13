Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AC72542D16B
	for <lists+mjpeg-users@lfdr.de>; Thu, 14 Oct 2021 06:17:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1masBW-0006Dj-5w; Thu, 14 Oct 2021 04:17:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <clabbe@baylibre.com>) id 1majtH-00057E-8e
 for mjpeg-users@lists.sourceforge.net; Wed, 13 Oct 2021 19:26:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EkJ4cziLX4onCvAcIGYJLg+49tXxNFwoBxX9uTdyC70=; b=AD9lLOOMhiV8y1AFhV3cvHJT4G
 0+JoCsACdqeAXkPsfCUhozmMHOfL5xOLJusbSnWrW4E0rXa3szUwN2pE52YmG6eVD2tRovanTOIyb
 +vXWBjEcL9tfD/uyurdm/96X9ZKmA+/DfTSApwvGjnSqQQbjNBtxkak8G9aT3x0Mj8UA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EkJ4cziLX4onCvAcIGYJLg+49tXxNFwoBxX9uTdyC70=; b=PudlyoQklVr1XCtURgGB96DygR
 tYVj4rBmqmIfnhYuREbriUCnSks4W4FAqpOoGRHVyu433f5ZoezHZfsOLJRAFKp8xTMXtijZKeIi9
 woE0g9Hd3j78iElMUCBRC4AynJak2OMFilAI+aXKDmtPz6XkTg0FA9yhAbh4hMYmG1SI=;
Received: from mail-lf1-f53.google.com ([209.85.167.53])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1majtF-00964V-BF
 for mjpeg-users@lists.sourceforge.net; Wed, 13 Oct 2021 19:26:15 +0000
Received: by mail-lf1-f53.google.com with SMTP id y26so16442152lfa.11
 for <mjpeg-users@lists.sourceforge.net>; Wed, 13 Oct 2021 12:26:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EkJ4cziLX4onCvAcIGYJLg+49tXxNFwoBxX9uTdyC70=;
 b=XV+BOcJtF1hZeTxKarHMaQL9Ni43gVuKWBwRDss9l9yjAOMPAv47nhVVoJIUyzfOML
 v6U7UxtweoyWZx+3aeLEF4KIkfIji4dVsfuvNeQ1G6Qcm41tCO2o42PPKFHJGetILi9S
 WhYKyDYo+R2RtI5AHU1vDe2TcFuCCvbPeUnyzPuH7vDpuQXAx/5U4t+ZDPSJYKJiQQur
 Vdu9SaG45DTZm1g7lexw/wppRvP2/9ftrZATN2qzSdYE1q61Sl/9Jw0XL0FXYx0Nzlpm
 9N9Sb88FOoF4KKgDMGJmIqjFb2le8rX3C/WZe3Yj1LE3qNZjL0u1uQ6xRRf/CAmKEVcM
 u9gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EkJ4cziLX4onCvAcIGYJLg+49tXxNFwoBxX9uTdyC70=;
 b=6REPohtmhiqnCVLsZ2b2O22ttixyb/flfs3yE2WL6FIrv6wHzrTqduUlmOKRV2o+DH
 lhe/5fVH0Pw/1XxR15fd+PjvXKcx0AJt5APIkN0ma4IH3wPr2BVtpKmafE0hf8o1BX/Q
 QL6yNfOGdh6rDVfFqyAMSR9zohz/4KJqiqbOoQDotlQorWVKyp9jFrg+/iKd2T+Gj8CY
 qQIvE2XxWAuG9rNBpXUJK5KCYgNMQuqZX8cceNKI9SfMPbi8AUq6TkxUjuNO+tcfdJ0r
 /sI1tFfE8dBxpr5bD0VycFK7kyxHA5AGdS77dUdcqcmK+EmgB0j8GQ9sV1ftLQL+ESTQ
 CkWw==
X-Gm-Message-State: AOAM532zWKrMUqW2ywZaQUFirogcBNVEBZxh0/C8Qle/lMSc2h6JgkFm
 HlwWPViGaiMlV7vCdHcLA82QUNEO8+Pb4A==
X-Google-Smtp-Source: ABdhPJzuFm4/bPvGn8Pv1Kj2vVWDnqqDFfIjX15GZ8PVSP7VWr+CFnw8Xr6HVydapFAHpcDu5+9HiQ==
X-Received: by 2002:a5d:6982:: with SMTP id g2mr1018418wru.51.1634151500819;
 Wed, 13 Oct 2021 11:58:20 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id e8sm573059wrg.48.2021.10.13.11.58.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 11:58:20 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: mchehab@kernel.org,
	hverkuil@xs4all.nl,
	gregkh@linuxfoundation.org
Date: Wed, 13 Oct 2021 18:58:06 +0000
Message-Id: <20211013185812.590931-5-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211013185812.590931-1-clabbe@baylibre.com>
References: <20211013185812.590931-1-clabbe@baylibre.com>
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
 | 9 ++++++ drivers/staging/media/zoran/zoran.h | 4 +++
 drivers/staging/media/zoran/zoran_card.c | 41 +++++++ [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.53 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.53 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1majtF-00964V-BF
X-Mailman-Approved-At: Thu, 14 Oct 2021 04:17:36 +0000
Subject: [Mjpeg-users] [PATCH v2 04/10] staging: media: zoran: add debugfs
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
 drivers/staging/media/zoran/Kconfig      |  9 ++++++
 drivers/staging/media/zoran/zoran.h      |  4 +++
 drivers/staging/media/zoran/zoran_card.c | 41 ++++++++++++++++++++++++
 3 files changed, 54 insertions(+)

diff --git a/drivers/staging/media/zoran/Kconfig b/drivers/staging/media/zoran/Kconfig
index 7874842033ca..06f79b91cda7 100644
--- a/drivers/staging/media/zoran/Kconfig
+++ b/drivers/staging/media/zoran/Kconfig
@@ -74,3 +74,12 @@ config VIDEO_ZORAN_AVS6EYES
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
diff --git a/drivers/staging/media/zoran/zoran.h b/drivers/staging/media/zoran/zoran.h
index b1ad2a2b914c..c37d064ff11d 100644
--- a/drivers/staging/media/zoran/zoran.h
+++ b/drivers/staging/media/zoran/zoran.h
@@ -18,6 +18,7 @@
 #ifndef _BUZ_H_
 #define _BUZ_H_
 
+#include <linux/debugfs.h>
 #include <media/v4l2-device.h>
 #include <media/v4l2-ctrls.h>
 #include <media/videobuf2-core.h>
@@ -295,6 +296,9 @@ struct zoran {
 	struct list_head queued_bufs;
 	spinlock_t queued_bufs_lock; /* Protects queued_bufs */
 	struct zr_buffer *inuse[BUZ_NUM_STAT_COM * 2];
+#ifdef CONFIG_VIDEO_ZORAN_DEBUG
+	struct dentry *dbgfs_dir;
+#endif
 };
 
 static inline struct zoran *to_zoran(struct v4l2_device *v4l2_dev)
diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index f1465fbf98af..6f29986a3fc2 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -945,6 +945,8 @@ static void zoran_remove(struct pci_dev *pdev)
 	if (!zr->initialized)
 		goto exit_free;
 
+	debugfs_remove_recursive(zr->dbgfs_dir);
+
 	zoran_queue_exit(zr);
 
 	/* unregister videocodec bus */
@@ -1051,6 +1053,39 @@ static const struct v4l2_ctrl_ops zoran_video_ctrl_ops = {
 	.s_ctrl = zoran_video_set_ctrl,
 };
 
+#ifdef CONFIG_VIDEO_ZORAN_DEBUG
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
+#endif
+
 /*
  *   Scan for a Buz card (actually for the PCI controller ZR36057),
  *   request the irq and map the io memory
@@ -1286,6 +1321,12 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	zr->map_mode = ZORAN_MAP_MODE_RAW;
 
+#ifdef CONFIG_VIDEO_ZORAN_DEBUG
+	zr->dbgfs_dir = debugfs_create_dir(ZR_DEVNAME(zr), NULL);
+	debugfs_create_file("debug", 0444,
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
