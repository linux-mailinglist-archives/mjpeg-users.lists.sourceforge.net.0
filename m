Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 503B843CE11
	for <lists+mjpeg-users@lfdr.de>; Wed, 27 Oct 2021 17:55:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mflGj-0003p3-Dj; Wed, 27 Oct 2021 15:55:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <clabbe@baylibre.com>) id 1mfSKY-0002n9-U0
 for mjpeg-users@lists.sourceforge.net; Tue, 26 Oct 2021 19:41:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Cc85KOSJveTQ5eUslKSoOpG1/P3POvZ1CMxkHgm/5RE=; b=WvCTjvN3u90KCmAbyme9Uxf5pf
 yJemSaxlGaVIpjzovcbz5Y9yhu/PReKAU2cpnCaoDPMt8H4JDwPfhRe7Z5NoTP2I8WN00I3SqN9Nd
 XIWpPRs9PHDqObso9+t0MWGpcY7OyMH0VPbFGaEBt5WoUa91e6XChvnxADVfMTbj9d4U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Cc85KOSJveTQ5eUslKSoOpG1/P3POvZ1CMxkHgm/5RE=; b=G6ciSFWegg5Rc5MRF5UsOGZJfA
 VTQRMkYQXR7T0cCgi7+SBX/EhrctMFjrxLFiXwrMGgkebODwqHGT9An4sGJ/pWEtNEa3Utl5IE5Hg
 WosS3pFQ9GIyujYR0f0+rdLkGni5ESIBIQalePJBscyC+/jZuplJkPXmXZBMjigBrstc=;
Received: from mail-wr1-f53.google.com ([209.85.221.53])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mfSK4-00HYwQ-Fp
 for mjpeg-users@lists.sourceforge.net; Tue, 26 Oct 2021 19:41:54 +0000
Received: by mail-wr1-f53.google.com with SMTP id d13so123771wrf.11
 for <mjpeg-users@lists.sourceforge.net>; Tue, 26 Oct 2021 12:41:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Cc85KOSJveTQ5eUslKSoOpG1/P3POvZ1CMxkHgm/5RE=;
 b=a+Tw8M7KiCpS/uDFd7J9rLnYg5xQG+jIr8gHWlt7uBoI2Ze2b529Ooc8auhvLEBw2J
 U9uwY3Z169oyZTp9rk7nyosnea1+4NUTBkVXClvA+4EuoIWCOKFUqQ2LJ+rqJSveyCjF
 RhruVOlM/5zqpnMr5hnfzpQEnVC5pefBRa/n2XtluPjW7L+cBjSS0B25LqPcoin/VQoB
 krlSlhffMJZKfwWfuqyaBKiiyzoAddrLpoFbeRoYOB6/tefaWxXgMFaxCcUr98wji4TS
 5xp4Q+wzJBGjtectV8G3RmkfufOhz5merWf3RxJlGiTOMEUq7/hrXelqgIaaNksJxTrB
 MSiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Cc85KOSJveTQ5eUslKSoOpG1/P3POvZ1CMxkHgm/5RE=;
 b=ytQnLsMkrydaT8Qk5/BOenCRrxHvQ6SOc+lKEfINauWlbnoT3DkATWuN+9kMA5azt2
 ReqWJSX7vBqMxT7qeFBZgQWHmtK57ESYAH0zx4W4o1p89mHhBX3L5rUubBYisyAoPH+8
 ov5TXaDRJHZi++fHT9n4lqCP1K2scQZ0m0lyFQwb2tf4dsiZXRtDbsNFHZHaNHmc2FEa
 SGIvlZp4xGl+KqEoBR/4eLLBWABfTlgSWnNr2GKpY5azKaN/0ivry7snNWXq8w2yLFXX
 7evCnIJEPmtVtRqgLR9qld7awjZBbc8Y+y3ea1351tJQIKkmFzAgmbM3gaE+RDZ+GF5X
 BPXw==
X-Gm-Message-State: AOAM533QhSIwDLWXav/9XRYbNx99umMtmv2GPXXD98fVjCw4suz9xx5d
 MP2hz0Pixmo7kOouF3kDNJofn8FhyPhgdQ==
X-Google-Smtp-Source: ABdhPJwbZ1HH6HexlbirMtB7l7gse7d6xFzByPgFEx1knA/2CtOxerTTlACrZAh3dncNeE4NahIf3A==
X-Received: by 2002:adf:9c02:: with SMTP id f2mr34769077wrc.201.1635276868867; 
 Tue, 26 Oct 2021 12:34:28 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id s18sm17676123wrb.95.2021.10.26.12.34.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Oct 2021 12:34:28 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: mchehab@kernel.org,
	hverkuil@xs4all.nl,
	gregkh@linuxfoundation.org
Date: Tue, 26 Oct 2021 19:34:14 +0000
Message-Id: <20211026193416.1176797-13-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211026193416.1176797-1-clabbe@baylibre.com>
References: <20211026193416.1176797-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-Headers-End: 1mfSK4-00HYwQ-Fp
X-Mailman-Approved-At: Wed, 27 Oct 2021 15:55:09 +0000
Subject: [Mjpeg-users] [PATCH v3 12/14] staging: media: zoran: clean unused
 code
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

It remains some unused code from old zoran buffer handling.
Let's remove them.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran.h        | 14 ---------
 drivers/staging/media/zoran/zoran_card.c   | 36 ----------------------
 drivers/staging/media/zoran/zoran_device.h |  2 --
 drivers/staging/media/zoran/zoran_driver.c |  2 --
 4 files changed, 54 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran.h b/drivers/staging/media/zoran/zoran.h
index c36b33f42b16..654c95fa5aba 100644
--- a/drivers/staging/media/zoran/zoran.h
+++ b/drivers/staging/media/zoran/zoran.h
@@ -54,22 +54,8 @@ static inline struct zr_buffer *vb2_to_zr_buffer(struct vb2_buffer *vb)
 #define BUZ_NUM_STAT_COM    4
 #define BUZ_MASK_STAT_COM   3
 
-#define BUZ_MAX_FRAME     256	/* Must be a power of 2 */
-#define BUZ_MASK_FRAME    255	/* Must be BUZ_MAX_FRAME-1 */
-
 #define BUZ_MAX_INPUT       16
 
-#if VIDEO_MAX_FRAME <= 32
-#   define   V4L_MAX_FRAME   32
-#elif VIDEO_MAX_FRAME <= 64
-#   define   V4L_MAX_FRAME   64
-#else
-#   error   "Too many video frame buffers to handle"
-#endif
-#define   V4L_MASK_FRAME   (V4L_MAX_FRAME - 1)
-
-#define MAX_FRAME (BUZ_MAX_FRAME > VIDEO_MAX_FRAME ? BUZ_MAX_FRAME : VIDEO_MAX_FRAME)
-
 #include "zr36057.h"
 
 enum card_type {
diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index 4ea2fbf189b9..59df1e7691f9 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -60,20 +60,6 @@ static int video_nr[BUZ_MAX] = { [0 ... (BUZ_MAX - 1)] = -1 };
 module_param_array(video_nr, int, NULL, 0444);
 MODULE_PARM_DESC(video_nr, "Video device number (-1=Auto)");
 
-int v4l_nbufs = 4;
-int v4l_bufsize = 864;		/* Everybody should be able to work with this setting */
-module_param(v4l_nbufs, int, 0644);
-MODULE_PARM_DESC(v4l_nbufs, "Maximum number of V4L buffers to use");
-module_param(v4l_bufsize, int, 0644);
-MODULE_PARM_DESC(v4l_bufsize, "Maximum size per V4L buffer (in kB)");
-
-int jpg_nbufs = 32;
-int jpg_bufsize = 512;		/* max size for 100% quality full-PAL frame */
-module_param(jpg_nbufs, int, 0644);
-MODULE_PARM_DESC(jpg_nbufs, "Maximum number of JPG buffers to use");
-module_param(jpg_bufsize, int, 0644);
-MODULE_PARM_DESC(jpg_bufsize, "Maximum size per JPG buffer (in kB)");
-
 /* 1=Pass through TV signal when device is not used */
 /* 0=Show color bar when device is not used (LML33: only if lml33dpath=1) */
 int pass_through;
@@ -1253,28 +1239,6 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	pci_info(pdev, "Zoran MJPEG board driver version %s\n", ZORAN_VERSION);
 
-	/* check the parameters we have been given, adjust if necessary */
-	if (v4l_nbufs < 2)
-		v4l_nbufs = 2;
-	if (v4l_nbufs > VIDEO_MAX_FRAME)
-		v4l_nbufs = VIDEO_MAX_FRAME;
-	/* The user specifies the in KB, we want them in byte (and page aligned) */
-	v4l_bufsize = PAGE_ALIGN(v4l_bufsize * 1024);
-	if (v4l_bufsize < 32768)
-		v4l_bufsize = 32768;
-	/* 2 MB is arbitrary but sufficient for the maximum possible images */
-	if (v4l_bufsize > 2048 * 1024)
-		v4l_bufsize = 2048 * 1024;
-	if (jpg_nbufs < 4)
-		jpg_nbufs = 4;
-	if (jpg_nbufs > BUZ_MAX_FRAME)
-		jpg_nbufs = BUZ_MAX_FRAME;
-	jpg_bufsize = PAGE_ALIGN(jpg_bufsize * 1024);
-	if (jpg_bufsize < 8192)
-		jpg_bufsize = 8192;
-	if (jpg_bufsize > (512 * 1024))
-		jpg_bufsize = 512 * 1024;
-
 	/* some mainboards might not do PCI-PCI data transfer well */
 	if (pci_pci_problems & (PCIPCI_FAIL | PCIAGP_FAIL | PCIPCI_ALIMAGIK))
 		pci_warn(pdev, "%s: chipset does not support reliable PCI-PCI DMA\n",
diff --git a/drivers/staging/media/zoran/zoran_device.h b/drivers/staging/media/zoran/zoran_device.h
index 6c5d70238228..322b04c55d41 100644
--- a/drivers/staging/media/zoran/zoran_device.h
+++ b/drivers/staging/media/zoran/zoran_device.h
@@ -47,9 +47,7 @@ extern void zr36057_restart(struct zoran *zr);
 
 extern const struct zoran_format zoran_formats[];
 
-extern int v4l_nbufs;
 extern int v4l_bufsize;
-extern int jpg_nbufs;
 extern int jpg_bufsize;
 extern int pass_through;
 
diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
index 551db338c7f7..31993c266976 100644
--- a/drivers/staging/media/zoran/zoran_driver.c
+++ b/drivers/staging/media/zoran/zoran_driver.c
@@ -153,8 +153,6 @@ static __u32 zoran_v4l2_calc_bufsize(struct zoran_jpg_settings *settings)
 		result <<= 1;
 	}
 
-	if (result > jpg_bufsize)
-		return jpg_bufsize;
 	if (result < 8192)
 		return 8192;
 
-- 
2.32.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
