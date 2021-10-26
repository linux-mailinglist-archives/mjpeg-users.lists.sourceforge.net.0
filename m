Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB3C43CE0F
	for <lists+mjpeg-users@lfdr.de>; Wed, 27 Oct 2021 17:55:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mflGj-0003pV-Tm; Wed, 27 Oct 2021 15:55:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <clabbe@baylibre.com>) id 1mfSME-0001zi-Ku
 for mjpeg-users@lists.sourceforge.net; Tue, 26 Oct 2021 19:43:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nB4e6hJ4iiTdgUlpoHX4JiHqvuWD9iBvhiQUSGuoJO4=; b=Oom/kk4Ymd64zUhN0io0AkY2XO
 PcHtefKyU6MaBi0sl5uzkllYb4Zm8iWpl+kEahSyAgRj/KOsrpIwICgZJlJPHOUgb+PjghOYzWw7e
 0LsbxRRLLEwjICVW1QOTNUOa5RyRPIlM7OWrf/lwyW9Qw2d/PNmVbeVYsq429GHobUzM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nB4e6hJ4iiTdgUlpoHX4JiHqvuWD9iBvhiQUSGuoJO4=; b=PaadRqk2OIrM9GZGMKYI+qR99i
 mgNX2ihe5bhseHfIryHrU/LbMam+hD/eFng8m3JKTIE1OZCLfAJ34UrKhbxWVv5hgTpfPAm0PcUtO
 DSP/P5CAUDQIn6BhlZe5vK+IDQmLnUB7yl82CfI4aLzVGEXvbDBr6KFjeIc2f3MbuR80=;
Received: from mail-lf1-f48.google.com ([209.85.167.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mfSLk-0003bS-Hi
 for mjpeg-users@lists.sourceforge.net; Tue, 26 Oct 2021 19:43:38 +0000
Received: by mail-lf1-f48.google.com with SMTP id p16so1177424lfa.2
 for <mjpeg-users@lists.sourceforge.net>; Tue, 26 Oct 2021 12:43:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nB4e6hJ4iiTdgUlpoHX4JiHqvuWD9iBvhiQUSGuoJO4=;
 b=bp0jJ7ZceOzhwiLL2z456G+nLL1DoRI+t7YWJGoypcTUguXeiqTGtvK21TTZJ6H/mj
 vpMbX9pBg6JG8IMSV9aAKwktwpyGRUJdJrnI723z9KnyxGz5KLk9Xj2A2n/2esmLeF1L
 B2f6UkAPOzDe16/any8YTtfUY1W6NGOAC8VTni0Nhvp16xrBlydlHK2spZ7YBfaxj7Oa
 ejpNTtGBkchhJsF167fCIn4zXX5Fc4qGbu1QM4XaN0UrOnvxK4XUF8rv3is+oJfA+cc8
 fsEvpAwU+eNWZ1M65yh5knZsl9kBXc51/zjpoJ8k+OSaTzh3532S9rzbAO+8KTWXCT2u
 6eTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nB4e6hJ4iiTdgUlpoHX4JiHqvuWD9iBvhiQUSGuoJO4=;
 b=tCAgm1t6weT+/AXH+9mvRq1gTlJ2jWSwEcfMlGs9/vAWnM/9+mLFwlEq9vTEsV+OCQ
 cSNZVVj8cRzM1xqEqx7Q7v6/uDHXyTuZk4AiXrr6OvALO52UixP0TH8lpNATet414mSj
 Q1DKZiRbnW5/Amai0S3Crn9XFqtyZFdepH72bGQWOcYkIe+3ZXK3VdefyhjM0dy5RTZt
 saQvkW9howZt5rzO4rRVsMHMJ1VkT4/XCTSJ5tEZXPChBV6lMnuHc4U7N4E2HXxyhO1L
 KkFG6uNi3sAe31jRDjI6CGMlGiLUiTgqQcPZmdXVPre1ApG22R8AQ+Gje8f7Fqx5mktl
 yTtQ==
X-Gm-Message-State: AOAM533zVLyZuXDkzT3+iz9Nzs1IsRQTTokT9FHSL/fUt1v+Mzzme3JB
 jPf8OqeJd7fDBK3k78pQ29rIwFA7rK5PCQ==
X-Google-Smtp-Source: ABdhPJx7GDzTAKUUvLyZ4g8I5al81toghj6qSIHPBHe1j4P4cW1PVSQsjbfbH3fEcpgNIL1GiVo0nw==
X-Received: by 2002:adf:bd8a:: with SMTP id l10mr34362048wrh.159.1635276865839; 
 Tue, 26 Oct 2021 12:34:25 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id s18sm17676123wrb.95.2021.10.26.12.34.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Oct 2021 12:34:25 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: mchehab@kernel.org,
	hverkuil@xs4all.nl,
	gregkh@linuxfoundation.org
Date: Tue, 26 Oct 2021 19:34:09 +0000
Message-Id: <20211026193416.1176797-8-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211026193416.1176797-1-clabbe@baylibre.com>
References: <20211026193416.1176797-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-Headers-End: 1mfSLk-0003bS-Hi
X-Mailman-Approved-At: Wed, 27 Oct 2021 15:55:09 +0000
Subject: [Mjpeg-users] [PATCH v3 07/14] staging: media: zoran: remove vidmem
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
index a7750442ef9e..9cd49f85a56e 100644
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
@@ -1218,10 +1207,6 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
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
