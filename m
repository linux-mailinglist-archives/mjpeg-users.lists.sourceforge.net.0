Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B8442D170
	for <lists+mjpeg-users@lfdr.de>; Thu, 14 Oct 2021 06:17:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1masBW-0006EJ-T2; Thu, 14 Oct 2021 04:17:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <clabbe@baylibre.com>) id 1majqc-0001AR-W1
 for mjpeg-users@lists.sourceforge.net; Wed, 13 Oct 2021 19:23:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rNu7tGzS3a9nNAG4wYt+tSxCNINIYaiwOvt4CtHF4Gs=; b=m1n+32qrFfQiM7FxK/H4viDUMx
 uy+NEdWV6WgJbvp32hhwOiBymG+T4wZpROtiUggcHetdXItTC/SPxr07eyjuH4xNJz4nv+2uPmFS2
 /nKyllcUn841rH1ber8uhRrPmQ9pjkiCL1yxqQLoEOHf69ic6iDppeavEeNXbqy9//No=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rNu7tGzS3a9nNAG4wYt+tSxCNINIYaiwOvt4CtHF4Gs=; b=ZEVllxP88lAYPA6BUZC8typmgq
 xDDseGUCbCvt6lVy+kzKtmQ8pxoW5soZcH1CODEEu7f/dRT00SmCBj0fq9xe1nfd5ejHK1Zx/Rit1
 XOfc7Cxv16CHGTakKW4jnKydzAYR1JMaKWBb2XWwpJd+4q1p1ZwPxNYqSJv4FcWXhPCY=;
Received: from mail-wr1-f46.google.com ([209.85.221.46])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1majqY-0095iy-Ur
 for mjpeg-users@lists.sourceforge.net; Wed, 13 Oct 2021 19:23:30 +0000
Received: by mail-wr1-f46.google.com with SMTP id k7so11676677wrd.13
 for <mjpeg-users@lists.sourceforge.net>; Wed, 13 Oct 2021 12:23:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rNu7tGzS3a9nNAG4wYt+tSxCNINIYaiwOvt4CtHF4Gs=;
 b=bQL8cJwTetQRi7wJWtinf4IweToaAa7IwT8GlJMAwUncH5Ig6a3S5/fp4xd41Ag0qv
 Ymh15/WjH0C7BdXmn2cAlMyA0a+jT4XF1hr1CScg5ub96GCYFcBQDeYcU87tOPRaFW20
 g1Yj67rsoFvIc2u5mN+fJZlnhfd5vD6kjbqww7Dsg10KmOMpfen2qQ0ggEM+06MrgU1n
 REMzYftS6Em4YqZp+bEkwR5IBTALkD2POfnL1P8yDI6ACPZuxE7AA0Zd3b8uiLygwOVT
 Vva5EaewNxnAdY8wou1TTimWIA2XYhDqs40KGQtm3BgS4Ce/hcfKaAlNyKAKLnhR/6sV
 9VyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rNu7tGzS3a9nNAG4wYt+tSxCNINIYaiwOvt4CtHF4Gs=;
 b=2Wal/g7tdnoI/YMH+r7EaAw8d84g7Lji2ED+jwlqU//g4eewawzji46KcJMInpnIIq
 Y3nZ2rRSEzfTtVPpTuEU+h3QzLiiU7aY2XmmqTq4+L5xP5TZXY5cA4rXWcB4hci91BAM
 j54WQ/QWfA/VPavYmsRz6uVEM0xASLAyuNoQnm55TIVevrLSKMGOoJdaGefq7viMTCAA
 Q8qL1ZzDG3YiDETlUiCzxsb7XbKmFz1+ow6WGUmb/92HxT43pWCs+/tOAgRJDmnDjPKe
 ev7/JwgM0tPldlBvCEhdeJ3z1qQWXDEZ77YuQtj68tOidL75ksCPC7J2nKhJTg8yoW+l
 UncA==
X-Gm-Message-State: AOAM533mq7wQEoXkV65YxfgbipK8FCQFiuB8tpo6qbbVgYnBFQjr/GtE
 AHtvxrsWQmXVNQ+BlCyaH3TAiNqUTZhbHg==
X-Google-Smtp-Source: ABdhPJym/BQ+gvcyW+RLAZRdCdxHXNEUma6ef+jjFcJGlqSkU8HBxE3bmbBujd3Eh2yS6WmosQ7jbw==
X-Received: by 2002:adf:bc14:: with SMTP id s20mr1075733wrg.8.1634151501402;
 Wed, 13 Oct 2021 11:58:21 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id e8sm573059wrg.48.2021.10.13.11.58.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 11:58:21 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: mchehab@kernel.org,
	hverkuil@xs4all.nl,
	gregkh@linuxfoundation.org
Date: Wed, 13 Oct 2021 18:58:07 +0000
Message-Id: <20211013185812.590931-6-clabbe@baylibre.com>
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
 Content preview:  Now we have a debugfs, we can remove all PROCFS stuff. We
 keep videocodec_debugfs_show(), it will be used later Signed-off-by: Corentin
 Labbe <clabbe@baylibre.com> --- drivers/staging/media/zoran/videocodec.c
 | 24 ++ drivers/staging/media/zoran/videocodec.h | 5 +++++ 2 files changed,
 7 ins [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.46 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.46 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1majqY-0095iy-Ur
X-Mailman-Approved-At: Thu, 14 Oct 2021 04:17:37 +0000
Subject: [Mjpeg-users] [PATCH v2 05/10] staging: media: zoran: videocode:
 remove procfs
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

Now we have a debugfs, we can remove all PROCFS stuff.
We keep videocodec_debugfs_show(), it will be used later

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/videocodec.c | 24 ++----------------------
 drivers/staging/media/zoran/videocodec.h |  5 +++++
 2 files changed, 7 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/media/zoran/videocodec.c b/drivers/staging/media/zoran/videocodec.c
index 31019b5f377e..3d5a83a07e07 100644
--- a/drivers/staging/media/zoran/videocodec.c
+++ b/drivers/staging/media/zoran/videocodec.c
@@ -16,14 +16,6 @@
 #include <linux/types.h>
 #include <linux/slab.h>
 
-// kernel config is here (procfs flag)
-
-#ifdef CONFIG_PROC_FS
-#include <linux/proc_fs.h>
-#include <linux/seq_file.h>
-#include <linux/uaccess.h>
-#endif
-
 #include "videocodec.h"
 
 static int videocodec_debug;
@@ -265,8 +257,8 @@ int videocodec_unregister(const struct videocodec *codec)
 }
 EXPORT_SYMBOL(videocodec_unregister);
 
-#ifdef CONFIG_PROC_FS
-static int proc_videocodecs_show(struct seq_file *m, void *v)
+#ifdef CONFIG_VIDEO_ZORAN_DEBUG
+int videocodec_debugfs_show(struct seq_file *m)
 {
 	struct codec_list *h = codeclist_top;
 	struct attached_list *a;
@@ -300,25 +292,13 @@ static int proc_videocodecs_show(struct seq_file *m, void *v)
 /* ===================== */
 static int __init videocodec_init(void)
 {
-#ifdef CONFIG_PROC_FS
-	static struct proc_dir_entry *videocodec_proc_entry;
-#endif
-
 	pr_info("Linux video codec intermediate layer: %s\n", VIDEOCODEC_VERSION);
 
-#ifdef CONFIG_PROC_FS
-	videocodec_proc_entry = proc_create_single("videocodecs", 0, NULL, proc_videocodecs_show);
-	if (!videocodec_proc_entry)
-		pr_err("videocodec: can't init procfs.\n");
-#endif
 	return 0;
 }
 
 static void __exit videocodec_exit(void)
 {
-#ifdef CONFIG_PROC_FS
-	remove_proc_entry("videocodecs", NULL);
-#endif
 }
 
 module_init(videocodec_init);
diff --git a/drivers/staging/media/zoran/videocodec.h b/drivers/staging/media/zoran/videocodec.h
index 8a5003dda9f4..f2e17566795e 100644
--- a/drivers/staging/media/zoran/videocodec.h
+++ b/drivers/staging/media/zoran/videocodec.h
@@ -123,6 +123,7 @@ M                       zr36055[1] 0001 0000c001 00000000 (zr36050[1])
 #ifndef __LINUX_VIDEOCODEC_H
 #define __LINUX_VIDEOCODEC_H
 
+#include <linux/debugfs.h>
 #include <linux/videodev2.h>
 
 #define CODEC_DO_COMPRESSION 0
@@ -305,4 +306,8 @@ extern int videocodec_unregister(const struct videocodec *);
 
 /* the other calls are directly done via the videocodec structure! */
 
+#ifdef CONFIG_VIDEO_ZORAN_DEBUG
+int videocodec_debugfs_show(struct seq_file *m);
+#endif
+
 #endif				/*ifndef __LINUX_VIDEOCODEC_H */
-- 
2.32.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
