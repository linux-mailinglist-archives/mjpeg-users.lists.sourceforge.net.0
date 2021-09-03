Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7978C400979
	for <lists+mjpeg-users@lfdr.de>; Sat,  4 Sep 2021 05:49:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mMMfv-0004kp-52; Sat, 04 Sep 2021 03:49:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <clabbe@baylibre.com>) id 1mMF5g-0000Y8-K6
 for mjpeg-users@lists.sourceforge.net; Fri, 03 Sep 2021 19:43:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rNu7tGzS3a9nNAG4wYt+tSxCNINIYaiwOvt4CtHF4Gs=; b=gAWvJx41NpwOqzALUGnYeanIkh
 gmfLRPU+xAeXzlV+xFbg0vpwngiswc+2QwgRYXHmjzyX4/VGEXwmDWEyFYSFVeFat4odns+8qi+uI
 OIWtUaAKXOEYaZauBXTQls2HB5idpyXBR1+NHfymv649IPw+SZfGlUNqGFWV1K50zk1o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rNu7tGzS3a9nNAG4wYt+tSxCNINIYaiwOvt4CtHF4Gs=; b=ROFo6A1ysn4gkMhjTZYIrIft06
 ChdeT98tpKn5kkFI3zgwaD2cd66ZbBwhiI2VWZLp+JY/cxdfbcm5kfUn1cFfpavwmDXf+WdZDWuoy
 GTnEGnBuqftDzmixPk44mXNjYQ34KfQSGl5Vqeq+4QIGacggzOql/0jfJ8XzreFwYstE=;
Received: from mail-wm1-f52.google.com ([209.85.128.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mMF5b-0002q3-Tp
 for mjpeg-users@lists.sourceforge.net; Fri, 03 Sep 2021 19:43:07 +0000
Received: by mail-wm1-f52.google.com with SMTP id
 k20-20020a05600c0b5400b002e87ad6956eso252166wmr.1
 for <mjpeg-users@lists.sourceforge.net>; Fri, 03 Sep 2021 12:43:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rNu7tGzS3a9nNAG4wYt+tSxCNINIYaiwOvt4CtHF4Gs=;
 b=Xap9Jdp3nzLYXuzX32nrhw5vkzT1dDYR3MNIXg7pN55dkMpHOBgILXtjoi/0CpNJUT
 63mcMP6L3e2KSvgdFo0ajFxR8H1fasMGux4Kl/9IeKCkNQPv0R2FLyFGx3OEaD9leGQf
 uEAVanoTg6Dx0vBBZx4p+zx1769Z/Cujx4m6uPosPv+Z7FoF7zP0gBjRI24O2ZHernDX
 1y4TAHtQwWRubWdxYKC3prXPHLCKqvyORE4MAYeZUikm10WRQNCRcaB/eSClVKGd7OeF
 IZ2zDxMz8nW/UDk1lXjimKbEWxVHd1yRHmIgaV0qDyJwidxEM9s2Fi2znGaueMwoJG9Z
 k/4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rNu7tGzS3a9nNAG4wYt+tSxCNINIYaiwOvt4CtHF4Gs=;
 b=a13yVwSTpT9q6dIZbCuQm4+em0FYM2cbJFC/b7uiyg4VZELveTYLvc3yNwdcRSJdVR
 jtWii11pnnbwMS8pas2TEXu7/p8SmBT1DFW5ZDCSd3anvQ4cW831lO5pK2N8Chc4RBSV
 jijtqV/sih509p9EbRMtn3qkP6XMfUHQW1b/1SRGkSInq/3fSfau6ASyVRcwYp/7NSby
 vqdXhoheb1lkb5CAL7YZx0KL5wtQ/xkrGwgi60nFxYJsfv7IcOcii4oji9enw6QK6EH0
 gRMt7IiI9Emho8mATw5/WHS2PYIgjdnXkHfx1zCOL6QLTTn4E4sXVpoJvHrA19wDgPgh
 IWFw==
X-Gm-Message-State: AOAM532qjae471LwAw+c0MABgQrSHGn2WaWM/OjYGIbViSXHum988zqe
 JqWm5+iEprbSiL31BdIehaxRk61UgZoILJbeY7I=
X-Google-Smtp-Source: ABdhPJxPYLlcKPA8eUsd93XN+XvF6EEahu/0KHEr3E3wj111ZphQbGeXblq1MpJXfQlxXxyOT4tKeA==
X-Received: by 2002:a1c:a50c:: with SMTP id o12mr273659wme.4.1630696556778;
 Fri, 03 Sep 2021 12:15:56 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id a133sm253397wme.5.2021.09.03.12.15.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Sep 2021 12:15:56 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org,
	mchehab@kernel.org
Date: Fri,  3 Sep 2021 19:15:37 +0000
Message-Id: <20210903191540.3052775-6-clabbe@baylibre.com>
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
 trust [209.85.128.52 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.52 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1mMF5b-0002q3-Tp
X-Mailman-Approved-At: Sat, 04 Sep 2021 03:49:00 +0000
Subject: [Mjpeg-users] [PATCH 5/8] staging: media: zoran: videocode: remove
 procfs
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
