Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ECEBC474947
	for <lists+mjpeg-users@lfdr.de>; Tue, 14 Dec 2021 18:26:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mxBYt-0002Po-4G; Tue, 14 Dec 2021 17:25:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <clabbe@baylibre.com>) id 1mxAt6-0002mW-GK
 for mjpeg-users@lists.sourceforge.net; Tue, 14 Dec 2021 16:42:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9d00CQxtuLbmKfZQEqLshscWS8poY4p1Q3lozDp6W9U=; b=V1MqZfNfID7lTCRPuh9TxqS7f1
 LvJJ8Cm5aJ1g5G1iV+01pDPBGf2LEkTj6zzUc2uISOQlq8CO3auUt2jh10ssrYJOMApIO9pcxVXtX
 192g+pJBX4KCQoTGv/WnnZ3JhlmKJ6Cno2cHyq4I0UY+UBWnwUduSTOTwDNi1VoL43j0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9d00CQxtuLbmKfZQEqLshscWS8poY4p1Q3lozDp6W9U=; b=mIsRYtDRzlozGQvlcxdNe389kw
 vAAGCfpi7O0sSUniTR2m/L/vLWJxYD2/Uh5527SQ/uktFTDvkyoJ+tzxjOgwY14Crsb9UOwpVYmVa
 /lLT9XACiYijmsFmj5LOfA4KVVtDrI1UqOci7ZpUHntOl14mHrccHbZlQHsWiJvemh9w=;
Received: from mail-wm1-f49.google.com ([209.85.128.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mxAt2-0007a5-Tf
 for mjpeg-users@lists.sourceforge.net; Tue, 14 Dec 2021 16:42:48 +0000
Received: by mail-wm1-f49.google.com with SMTP id z206so467248wmc.1
 for <mjpeg-users@lists.sourceforge.net>; Tue, 14 Dec 2021 08:42:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9d00CQxtuLbmKfZQEqLshscWS8poY4p1Q3lozDp6W9U=;
 b=SbE3bx+f/5vebISeux3XOeD2/aNUqaQrcGjt3G0WBt07k4+KjXOXMkOj2WEuEH+E3M
 I5IKN+AWdv18rkV7KuY46s0BFTo3fL6X/+pFlAxpWAN0peeUcujLQm7JX9fflkV92lZE
 kQXHf6kIL3cIqybWH0JG7yJZ+6UCSUm/aTgP5xxizgpx04PhaXggF1yukYCBLH/jnbbp
 8i/cW9pTBL59dp3zusGeCLQQpMCABRwJ75FHqp+tg5so3vDe4QPPyIrM3kMqsNBAe1Fq
 ng9a5vfhSgSB4oJF3KbJQeCjRQwxD4nSDi/69hoPIKYynBsekIzz9+kLEd9TiMS3c9lj
 2XjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9d00CQxtuLbmKfZQEqLshscWS8poY4p1Q3lozDp6W9U=;
 b=5QgSMKhTPldpQmv/+GV1oPJIinzHTttOGmCzuBGdMyJYuFizOi6JPr2AMmaeIktZgO
 597DeZcqF0gS11eTIXOuvyS5lY/Fkxra3/O0ns0Cd1wCqyuLWC1mc3AD+OQWzzorcH2h
 h687o2eyOp+z+ZBie7Ig5ZnekzPopCqJuLoEA0x1I6hL/2EgFQUwA0aFDv4QD0G8Kz6v
 VWzD+vYVkllMpDryAoIbv5lwsvAabs3gBZqk09+nCOcF71LNljx3PSgA2hFqCzJJLGF9
 KgzraaMIKqeiRyu6Liv+Sqny0TjuQGE/7cAQz30b+VP4Uf3aiTtXKpR40f+TXmmxQLE4
 GFsA==
X-Gm-Message-State: AOAM533QjpvpODZz8zrAQBN21efx7Xaiu7BpmLCTfEQbSjIJkWM9l1sD
 Z8mxjqkBAamgUs5vM4BnjNVDpl5G2w2mkTdK
X-Google-Smtp-Source: ABdhPJxT+E9CvwN1wHLmBTZX39LG4/yvi+mSQhr8wnCEGOY+hEFTHWQf2InARJC78rU3psWOJsVn1g==
X-Received: by 2002:a05:600c:1914:: with SMTP id
 j20mr47607517wmq.26.1639498605740; 
 Tue, 14 Dec 2021 08:16:45 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id a9sm295116wrt.66.2021.12.14.08.16.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Dec 2021 08:16:45 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: mchehab@kernel.org,
	hverkuil@xs4all.nl,
	gregkh@linuxfoundation.org
Date: Tue, 14 Dec 2021 16:16:23 +0000
Message-Id: <20211214161636.1886900-6-clabbe@baylibre.com>
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
 Content preview:  Now we have a debugfs, we can remove all PROCFS stuff. We
 keep videocodec_debugfs_show(), it will be used later Signed-off-by: Corentin
 Labbe <clabbe@baylibre.com> --- drivers/staging/media/zoran/videocodec.c
 | 24 + drivers/staging/media/zoran/videocodec.h | 3 +++ 2 files changed, 4
 inser [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.49 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.49 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1mxAt2-0007a5-Tf
X-Mailman-Approved-At: Tue, 14 Dec 2021 17:25:56 +0000
Subject: [Mjpeg-users] [PATCH v4 05/18] staging: media: zoran: videocode:
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
 drivers/staging/media/zoran/videocodec.c | 24 +-----------------------
 drivers/staging/media/zoran/videocodec.h |  3 +++
 2 files changed, 4 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/media/zoran/videocodec.c b/drivers/staging/media/zoran/videocodec.c
index 31019b5f377e..5bab7ba56257 100644
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
@@ -265,8 +257,7 @@ int videocodec_unregister(const struct videocodec *codec)
 }
 EXPORT_SYMBOL(videocodec_unregister);
 
-#ifdef CONFIG_PROC_FS
-static int proc_videocodecs_show(struct seq_file *m, void *v)
+int videocodec_debugfs_show(struct seq_file *m)
 {
 	struct codec_list *h = codeclist_top;
 	struct attached_list *a;
@@ -293,32 +284,19 @@ static int proc_videocodecs_show(struct seq_file *m, void *v)
 
 	return 0;
 }
-#endif
 
 /* ===================== */
 /* hook in driver module */
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
index 8a5003dda9f4..3a508d326049 100644
--- a/drivers/staging/media/zoran/videocodec.h
+++ b/drivers/staging/media/zoran/videocodec.h
@@ -123,6 +123,7 @@ M                       zr36055[1] 0001 0000c001 00000000 (zr36050[1])
 #ifndef __LINUX_VIDEOCODEC_H
 #define __LINUX_VIDEOCODEC_H
 
+#include <linux/debugfs.h>
 #include <linux/videodev2.h>
 
 #define CODEC_DO_COMPRESSION 0
@@ -305,4 +306,6 @@ extern int videocodec_unregister(const struct videocodec *);
 
 /* the other calls are directly done via the videocodec structure! */
 
+int videocodec_debugfs_show(struct seq_file *m);
+
 #endif				/*ifndef __LINUX_VIDEOCODEC_H */
-- 
2.32.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
