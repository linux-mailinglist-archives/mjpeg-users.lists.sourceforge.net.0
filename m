Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F1942D16F
	for <lists+mjpeg-users@lfdr.de>; Thu, 14 Oct 2021 06:17:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1masBV-0006DQ-V8; Thu, 14 Oct 2021 04:17:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <clabbe@baylibre.com>) id 1majrv-0001Jg-Vo
 for mjpeg-users@lists.sourceforge.net; Wed, 13 Oct 2021 19:24:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3LHPDY3kMpnJAm0T8AaCeTyE7uf/LEhpftdR1uzKAKo=; b=Uz6ChG+pcE2H38uvrZEbbC5MRD
 tu/IWTBl7SwKY1xVF0vC2mmNBxgoJ4pSINFigTRlWF9qR+ALuIKs4uA7kCAlDQpCz8Cg0L8taHkoB
 LwS/EaFjJQqpu/O5uAo5DdiRDhIJQ72chdzi8uP3AU1GO5WNGtFIrSyFzsLuGjby09FY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3LHPDY3kMpnJAm0T8AaCeTyE7uf/LEhpftdR1uzKAKo=; b=VgsmVHG8DxUo4IV5xIHwk9NhR/
 DBSfVQT3DNtxxeaaoEakGMHzy7iS4cCZ5RHGZ3M5ONI8hUyUSJVH7JAkH3le19keXfXg97eIOnc7y
 HGE6UvPDyJVp6igARrrJoiWiaRC+3NtRe4T7zo1/OR4wvfn0Z5llVripbVLyociuvPvY=;
Received: from mail-lf1-f45.google.com ([209.85.167.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1majrr-0000z5-Pr
 for mjpeg-users@lists.sourceforge.net; Wed, 13 Oct 2021 19:24:51 +0000
Received: by mail-lf1-f45.google.com with SMTP id c16so16270545lfb.3
 for <mjpeg-users@lists.sourceforge.net>; Wed, 13 Oct 2021 12:24:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3LHPDY3kMpnJAm0T8AaCeTyE7uf/LEhpftdR1uzKAKo=;
 b=HZr6vn6r95DGJh75IxvsNPy20JYk18tx0+R2HbzZTxZWxtuvkWgmEdQxbicqIAteHT
 YSy1owofRejoV7zFOPr0E6vU8BE0l0j61q6gCVCHVXSgyzwk6/gct7xr9K/Cmm9C1lUM
 91az4pu5wzKnYvyFmbzkemjCABbcdSyiRp+UF3CZvvVDWWyuDgq6b0RCfXQJsO/AIDZP
 eQj3OeH+f6gfNWoc1qD/tdazwDK/bZHvnviAqZf27J4WCYIeXS5Gn6EKkl9jcVo7tvJk
 TQJyU8nIE4GKoQxTOn4nuWq3P52h89sLq0tgCatqPuCOHXiBg8C3dupTmpIyLLZB6DJM
 7t6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3LHPDY3kMpnJAm0T8AaCeTyE7uf/LEhpftdR1uzKAKo=;
 b=6JvUtxd1zB5I2sVaCXIkGk1Y7MGbnP3osR9cczMmPP8PULFjVfiLt2tBWgAp9A/oVL
 Nohl1pAILApvx6M+rNkTj96BwD702TzilMzU1NImg8tsSKsf+stm97F7KNW7PMJsvWed
 VJgax/Jrtc3+VTYVKrGBHgQVU3Tg/fDE4+e4PVmBEDIc8wFxzTYII7hvQamJzu4zXF0D
 nHF9JUQjjInSWEqq+LPmylAjDrSuIVeU85tRRqJsUyu/QEjqDBoJPwjKRuw8QPUporNU
 lMjMJ3WRVye8IB9xQtJ8Diirx0mD3YLsXkE2TTZ5rsjUTvaVStlJexrSdO4NwB0Yufhi
 E9bQ==
X-Gm-Message-State: AOAM530jUNiOX5Lmgz8CanvBKAI0bmrv+dBAFSIYnTR0j85TEsVS1gmI
 812qxkmAi9Uq/VbvuCO+uetgGYg+HdLYRw==
X-Google-Smtp-Source: ABdhPJzvdZhsGfY6dZ6ucVvnv9IBWKAI3FFz6SFEXeKM7wFbmlQt8vov1bzfTxacvUBPQUi+OO87VA==
X-Received: by 2002:adf:f902:: with SMTP id b2mr1011711wrr.265.1634151502535; 
 Wed, 13 Oct 2021 11:58:22 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id e8sm573059wrg.48.2021.10.13.11.58.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 11:58:22 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: mchehab@kernel.org,
	hverkuil@xs4all.nl,
	gregkh@linuxfoundation.org
Date: Wed, 13 Oct 2021 18:58:09 +0000
Message-Id: <20211013185812.590931-8-clabbe@baylibre.com>
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
 Content preview: The vidmem parameter is no longer necessary since we removed
 framebuffer support. Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
 --- drivers/staging/media/zoran/zoran_card.c | 15 1 file changed,
 15 deletions(-)
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.45 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1majrr-0000z5-Pr
X-Mailman-Approved-At: Thu, 14 Oct 2021 04:17:36 +0000
Subject: [Mjpeg-users] [PATCH v2 07/10] staging: media: zoran: remove vidmem
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
index a0739d3462bb..a079fb6e27a3 100644
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
@@ -1163,10 +1152,6 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
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
