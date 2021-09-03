Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B3F400977
	for <lists+mjpeg-users@lfdr.de>; Sat,  4 Sep 2021 05:49:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mMMfv-0004kj-1H; Sat, 04 Sep 2021 03:49:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <clabbe@baylibre.com>) id 1mMF5Q-0002UE-EV
 for mjpeg-users@lists.sourceforge.net; Fri, 03 Sep 2021 19:42:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=S2oJzZ74OeEcmMoVJIdNJVgmv6TrWggcYk6PbcNXqcA=; b=ketXykIuWZJ2SIYyJEKPLdLpEA
 5ZZUzQihzxqQtu4mW3mf4wBGR60Ag3KEr5QC6a+zsGvSzv6m/w0SgnTjizLEThTjBkfJNPoWTsaNp
 rtg/JzKJ1AgE/4VW2yzeUI5KNsF3W2ECtWCvX0zGRXfEdosbzrllr+Zr6XURtfMo4MBs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=S2oJzZ74OeEcmMoVJIdNJVgmv6TrWggcYk6PbcNXqcA=; b=luN82YooKq7TnhoKb9ylo6zlMG
 r9Rn7WyDj1NoG4GzbwMiwBgbO+xSTwLsycLd+bSgryn50/o+TeHNexZ1cn95porNzU7P7ONxtS8DZ
 gC9ioVoOoSnZcDKuxM5gd3vHNUXVMEWsdpzwK/pvwFHwaS1WxO5wJsHLRZb1rH5ycKS4=;
Received: from mail-lj1-f179.google.com ([209.85.208.179])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mMF5P-00DRKm-NG
 for mjpeg-users@lists.sourceforge.net; Fri, 03 Sep 2021 19:42:52 +0000
Received: by mail-lj1-f179.google.com with SMTP id s12so541514ljg.0
 for <mjpeg-users@lists.sourceforge.net>; Fri, 03 Sep 2021 12:42:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=S2oJzZ74OeEcmMoVJIdNJVgmv6TrWggcYk6PbcNXqcA=;
 b=jNgwdW1p3xj0RM90Do8456wdjIRfDCsh4vybcYl2iWW2CidxOPlTp7DxXlNTl74KBY
 tLjkuBb8owrgChfEaWHrYAFpQHHG5B7o5PeAf/EHVbX/eoGDQBwmLpFoHKC0YXxsZxmh
 thko7SfHUlELsKHkemOtaMIKB0h1zLjEvjNQ7x4B/B+gHg7h4cr1mpdXfiiqWFf1iQ/j
 FuQelESiVBPAdrwIXtV756GPh5qTo4Fusd55Vy1iQV3ttTLsTz9EiXAaN5PYK0QbEmMj
 GB5rhHpDCrEd5vuE6CAEo+zKYre6I/EA351KS8QSXQuVFIABi0DNbojsD/PTLUhRZO6q
 2F+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=S2oJzZ74OeEcmMoVJIdNJVgmv6TrWggcYk6PbcNXqcA=;
 b=CxRRVzajDakk2fqhG+pTDbj4TliiJR8yhO20SjQng5py8cU5irgMfQPXrcT+S4o1Ci
 ms3u6QDSI81MRFUDA4gRulifc+x/nZD54tEyQMo/bVI+FeWWuBKg3XuLkZNzbiiORYTZ
 zgbVIZBw4Irc3yVMUynNTwEc479yzIOcpAuXPST9H2YUO1fQB3s0sB2/nQhekGTpm23I
 wnZQAQoH60K2GIUDeKbY34jxAd/xOX2d/j0wIj+4bN2txXB/wRC49/s2e38kPJcjgsmX
 iCDfhNZNiaGqIY7QcijOYiG6WUHeLZ27MQu+NF77MAuNg+ncicgnJFELKf+FF9reBxHm
 zwyQ==
X-Gm-Message-State: AOAM532AVUM2IYASRT32jcu9mP/6mMA1sG+PVmV2zFZ/KVfa/HTlGzwv
 uT1EfTa36TMPsDurFOciVuA4/VCdhQHtdpHosTQ=
X-Google-Smtp-Source: ABdhPJx9tLMskYowPxGHdc+Ey3r7w6n2qnsZASLpq17hpXjVJFgsvKBcpJUgcNgWPrLV1exSOcWOUg==
X-Received: by 2002:adf:9f51:: with SMTP id f17mr583205wrg.301.1630696558023; 
 Fri, 03 Sep 2021 12:15:58 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id a133sm253397wme.5.2021.09.03.12.15.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Sep 2021 12:15:57 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org,
	mchehab@kernel.org
Date: Fri,  3 Sep 2021 19:15:39 +0000
Message-Id: <20210903191540.3052775-8-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210903191540.3052775-1-clabbe@baylibre.com>
References: <20210903191540.3052775-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The vidmem parameter is no longer necessary since we removed
 framebuffer support. Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
 --- drivers/staging/media/zoran/zoran_card.c | 15 1 file changed,
 15 deletions(-)
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.179 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.179 listed in wl.mailspike.net]
X-Headers-End: 1mMF5P-00DRKm-NG
X-Mailman-Approved-At: Sat, 04 Sep 2021 03:49:00 +0000
Subject: [Mjpeg-users] [PATCH 7/8] staging: media: zoran: remove vidmem
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

The vidmem parameter is no longer necessary since we removed framebuffer
support.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_card.c | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index 7b2e1d1c4622..ed74f04994da 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -39,17 +39,6 @@ static int card[BUZ_MAX] = { [0 ... (BUZ_MAX - 1)] = -1 };
 module_param_array(card, int, NULL, 0444);
 MODULE_PARM_DESC(card, "Card type");
 
-/*
- * The video mem address of the video card. The driver has a little database
- * for some videocards to determine it from there. If your video card is not
- * in there you have either to give it to the driver as a parameter or set
- * in a VIDIOCSFBUF ioctl
- */
-
-static unsigned long vidmem;	/* default = 0 - Video memory base address */
-module_param_hw(vidmem, ulong, iomem, 0444);
-MODULE_PARM_DESC(vidmem, "Default video memory base address");
-
 /* Default input and video norm at startup of the driver. */
 
 static unsigned int default_input;	/* default 0 = Composite, 1 = S-Video */
@@ -1161,10 +1150,6 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		jpg_bufsize = 8192;
 	if (jpg_bufsize > (512 * 1024))
 		jpg_bufsize = 512 * 1024;
-	/* Use parameter for vidmem or try to find a video card */
-	if (vidmem)
-		pci_info(pdev, "%s: Using supplied video memory base address @ 0x%lx\n",
-			 ZORAN_NAME, vidmem);
 
 	/* some mainboards might not do PCI-PCI data transfer well */
 	if (pci_pci_problems & (PCIPCI_FAIL | PCIAGP_FAIL | PCIPCI_ALIMAGIK))
-- 
2.32.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
