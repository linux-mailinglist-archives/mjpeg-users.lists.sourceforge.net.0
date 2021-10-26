Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3332043CE08
	for <lists+mjpeg-users@lfdr.de>; Wed, 27 Oct 2021 17:55:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mflGj-0003oy-8G; Wed, 27 Oct 2021 15:55:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <clabbe@baylibre.com>) id 1mfSKB-0004YG-UL
 for mjpeg-users@lists.sourceforge.net; Tue, 26 Oct 2021 19:41:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=swEGGVp8+HI45UprzcHEDFUC6TlCIZ4vzEzvc39jOtk=; b=gObcrp3ZLlh5wjpYYUf1ukaT3M
 3D4GtAS2H1kc8bj+anVc3JRjhnb7osqMA5Xl33sgRQol9yNn3aQacu5DksIpzNsDQDkoAnKP2yG0K
 WfPHXnsI9GU8btSWeFZF4OtcK9dR4BSozjGEGkyjgCIh3ipXI5J7uXwHwer5xoqn4QEg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=swEGGVp8+HI45UprzcHEDFUC6TlCIZ4vzEzvc39jOtk=; b=ilgjmtSJojFKC7nf3hvbmqHrfD
 m/gYJ+gCckWW/M9KAvJHbcqn2UFv4zexGN/ytIhSuqp+YZmOGV5AgtN2Sy+Fg6q0pbwjq2M8LCLLe
 P3IyKTzLuXllv/s0wPuhIn8BKrB5T2tA5W+dsuj28GJtjwLAkVJWyxkJmjHIyfHb5jww=;
Received: from mail-lj1-f171.google.com ([209.85.208.171])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mfSJh-0003VP-Qr
 for mjpeg-users@lists.sourceforge.net; Tue, 26 Oct 2021 19:41:31 +0000
Received: by mail-lj1-f171.google.com with SMTP id o26so730215ljj.2
 for <mjpeg-users@lists.sourceforge.net>; Tue, 26 Oct 2021 12:41:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=swEGGVp8+HI45UprzcHEDFUC6TlCIZ4vzEzvc39jOtk=;
 b=AP2b0sFj6Hhl3C/23pSETWqc+SJ1kCmJLy6DsZi22SBcfGMHyt659cW6XPvasxm5rl
 fhf/N7N4pthI4u5PZKqapZZd7LsjpuWnwMt2XcUte3AseU/64/qoUrWCI3OwDvo2gXON
 oUEUbAH3YcP5tZoICiXBau8EUNrmGW93lwoyYt8MruOM8PhI2pilDQvPmot+SU73abeY
 j6NaxxcCzt199Fnke4bjyYHEUcfqQCjzeUzkRy7zedN1Bmngxn7hSvSbIZc0ra3VVq59
 /AYqoZEWc1HGgC9OKez0wPANUy7n2ecM3/5oZACc3a88ma/JyzvBN9QGgLd5JlN3zoRo
 2LYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=swEGGVp8+HI45UprzcHEDFUC6TlCIZ4vzEzvc39jOtk=;
 b=WE9m0VRag5cvUYi30FghF9bERpJwGM1oyV7E+GoywLA2dLjhEYaBnSDjlmnprU5Bzw
 oYHRRXMWE/HIOcI6VP6asRhlUZ3IlunYBgfTpeOxknm5Kw/DY2xDrJeQIwcbjD1gUBmJ
 sOzcsbZNeTEqO+uETsPq8cEyyvGNZWt1kpsxohZz5ObBBzT9jMBMwi0L3luk+EdUhcDP
 aN0FYw4Jlqw+oysFnyGm/GvJxmLZYN7MeqvjYH13XOkQBcB/k7QqcK6CxwZ+axZrfbYu
 CIUq74LsgtOE9GNd/YvmQcCcm2NG7zZfGOOguyV6zpAW0IYvdKGH13zRLwKnQp9gXrrC
 inww==
X-Gm-Message-State: AOAM530LJmjPK3z9sDMZEWvL8RXiyS9t17SmUPEfc11sQamWYIVOsTU3
 GoOh5m0f2kD2SO4PWHlosjXfgYn1EazdbA==
X-Google-Smtp-Source: ABdhPJwrZRrtHioQOddQjP2HQ1bNLKGF3uQJky4wtgQOcnlEykmxKlLP/UvYZ8qD1frUXD/rO4JK2A==
X-Received: by 2002:a05:6000:18a8:: with SMTP id
 b8mr18157726wri.340.1635276862201; 
 Tue, 26 Oct 2021 12:34:22 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id s18sm17676123wrb.95.2021.10.26.12.34.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Oct 2021 12:34:21 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: mchehab@kernel.org,
	hverkuil@xs4all.nl,
	gregkh@linuxfoundation.org
Date: Tue, 26 Oct 2021 19:34:03 +0000
Message-Id: <20211026193416.1176797-2-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211026193416.1176797-1-clabbe@baylibre.com>
References: <20211026193416.1176797-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-Headers-End: 1mfSJh-0003VP-Qr
X-Mailman-Approved-At: Wed, 27 Oct 2021 15:55:09 +0000
Subject: [Mjpeg-users] [PATCH v3 01/14] staging: media: zoran: move module
 parameter checks to zoran_probe
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

We need to empty zoran_init() for removing it later.
Furthermore, this permit to use pci_xxx instead of pr_xxx for prettier
printing.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_card.c | 64 ++++++++++++------------
 1 file changed, 33 insertions(+), 31 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index f259585b0689..3bc0e64f1007 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -1067,6 +1067,39 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	unsigned int nr;
 	int err;
 
+	pci_info(pdev, "Zoran MJPEG board driver version %s\n", ZORAN_VERSION);
+
+	/* check the parameters we have been given, adjust if necessary */
+	if (v4l_nbufs < 2)
+		v4l_nbufs = 2;
+	if (v4l_nbufs > VIDEO_MAX_FRAME)
+		v4l_nbufs = VIDEO_MAX_FRAME;
+	/* The user specifies the in KB, we want them in byte (and page aligned) */
+	v4l_bufsize = PAGE_ALIGN(v4l_bufsize * 1024);
+	if (v4l_bufsize < 32768)
+		v4l_bufsize = 32768;
+	/* 2 MB is arbitrary but sufficient for the maximum possible images */
+	if (v4l_bufsize > 2048 * 1024)
+		v4l_bufsize = 2048 * 1024;
+	if (jpg_nbufs < 4)
+		jpg_nbufs = 4;
+	if (jpg_nbufs > BUZ_MAX_FRAME)
+		jpg_nbufs = BUZ_MAX_FRAME;
+	jpg_bufsize = PAGE_ALIGN(jpg_bufsize * 1024);
+	if (jpg_bufsize < 8192)
+		jpg_bufsize = 8192;
+	if (jpg_bufsize > (512 * 1024))
+		jpg_bufsize = 512 * 1024;
+	/* Use parameter for vidmem or try to find a video card */
+	if (vidmem)
+		pci_info(pdev, "%s: Using supplied video memory base address @ 0x%lx\n",
+			 ZORAN_NAME, vidmem);
+
+	/* some mainboards might not do PCI-PCI data transfer well */
+	if (pci_pci_problems & (PCIPCI_FAIL | PCIAGP_FAIL | PCIPCI_ALIMAGIK))
+		pci_warn(pdev, "%s: chipset does not support reliable PCI-PCI DMA\n",
+			 ZORAN_NAME);
+
 	err = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(32));
 	if (err)
 		return -ENODEV;
@@ -1285,37 +1318,6 @@ static int __init zoran_init(void)
 {
 	int res;
 
-	pr_info("Zoran MJPEG board driver version %s\n", ZORAN_VERSION);
-
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
-	/* Use parameter for vidmem or try to find a video card */
-	if (vidmem)
-		pr_info("%s: Using supplied video memory base address @ 0x%lx\n", ZORAN_NAME, vidmem);
-
-	/* some mainboards might not do PCI-PCI data transfer well */
-	if (pci_pci_problems & (PCIPCI_FAIL | PCIAGP_FAIL | PCIPCI_ALIMAGIK))
-		pr_warn("%s: chipset does not support reliable PCI-PCI DMA\n", ZORAN_NAME);
-
 	res = pci_register_driver(&zoran_driver);
 	if (res) {
 		pr_err("Unable to register ZR36057 driver\n");
-- 
2.32.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
