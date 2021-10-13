Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F8D42D174
	for <lists+mjpeg-users@lfdr.de>; Thu, 14 Oct 2021 06:17:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1masBX-0006Ez-9W; Thu, 14 Oct 2021 04:17:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <clabbe@baylibre.com>) id 1majug-0001cx-PC
 for mjpeg-users@lists.sourceforge.net; Wed, 13 Oct 2021 19:27:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZX+m9eRP3G6qa3o26UuCwjfzdvb0rxacvbcUwg9LjVM=; b=gYYsY0kFquLn6la2RaPAAURmgM
 DQpDf/Tyw3H/jOLntpgBls/igzZ8ZdEvmNfY+SRX3bKV6EsAyIlf0k59gkxjOvRSp8outmT6CZQyH
 0rcHM6T2bIHar9XsDsaoBDooWiJOik/6jq/eJjxSSv4mJD/FJBFngCKjfVg9U61ik904=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZX+m9eRP3G6qa3o26UuCwjfzdvb0rxacvbcUwg9LjVM=; b=HMTN98/fh5w3i3rdjBDIZXWhqF
 YSxDaijtpv7HlZGeckDGItz7YmeESxCM6uR8Nw3i4aX8BFKwnYcX4WsGAWZUV+2i026gzRCiHbrkU
 pQD0xd9L9OO4LnQWvVTEFmFyGu9ly3CsoqqUTkHqMGUpBTMLEi2EbsmhJUwTqQEZUwJY=;
Received: from mail-ed1-f43.google.com ([209.85.208.43])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1majug-0001MV-3M
 for mjpeg-users@lists.sourceforge.net; Wed, 13 Oct 2021 19:27:42 +0000
Received: by mail-ed1-f43.google.com with SMTP id p13so14909632edw.0
 for <mjpeg-users@lists.sourceforge.net>; Wed, 13 Oct 2021 12:27:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZX+m9eRP3G6qa3o26UuCwjfzdvb0rxacvbcUwg9LjVM=;
 b=0fraruSs5JA2w0zlm1r62hMvuaG/kbbnuWMCWFTQWqJsVmi2r/Ro+6EYSWtmqJvTYq
 w5ipymlSp5yAX+FxAGnY2hQnmmUxEbcoXoESQ5WNPIQIfRZ+4a56Kw5HTNsGol55NIJl
 gm/w8rVI5neU2OiqkPrOmgGoue0G36l2uL1ldpjo1qroSLzzoJ3P2+Zs7NQe4z30WCTu
 emnSgxxat5ShTB3byfnqT1/+C941aLMrH6T3LxFE/UWOZr6IRwSzRVtFAgLlZqgkFuXn
 G4NUol0ZVP7ugV6A6x0tSlFE51wGUDnjJnPsqvoqSXbtO7CEMQb18QzQOYhlSJyx3NXN
 1YeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZX+m9eRP3G6qa3o26UuCwjfzdvb0rxacvbcUwg9LjVM=;
 b=jhiLhJRPRfO5G5SJSYTx2NJM8Pjc/xqoj694in6+GG/Q5cVwmRmJ0Cx7Aewc4rR0Yy
 rCxB07gSg5RAo49duXEqccBgvvYxM1gXjdVJg+uffRgG6BH5h0sc2IdmC37vJJw2UPu7
 Q9vHDrHFFyXIQDmLbfKaCWclbBNwCNMTK/TGfrJ0powxtwdc4ivIwOfFh9sx/Hf36I9Z
 EUVc8zWl4mqd7o3Mf/F26n0rGhaavzwdh2SdAj+WHSVZtBPqlxg9NH05guVgjcochaag
 kDVAIrqb62EUglpZI9EtAgDRA8fKwrztuYwhboMNoYXz1YawtZVqMXNaFR/+5O1HCTEo
 Ovtg==
X-Gm-Message-State: AOAM531YbUOLyUeJ+HFRyDaz5mymqk579V9jfe0YpGwIOHt4ENiBI/zy
 Splt7hVzcOn1Qhw7AOTqXd6AyV1I5Onkzg==
X-Google-Smtp-Source: ABdhPJxS28AO2ivLhxy8BOINPOGg4Vely5WZFA0d6sD5YfIE+u2saP5/Q0HFdclbPDIcewy4i5gghQ==
X-Received: by 2002:a5d:6481:: with SMTP id o1mr1105102wri.60.1634151499697;
 Wed, 13 Oct 2021 11:58:19 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id e8sm573059wrg.48.2021.10.13.11.58.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 11:58:19 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: mchehab@kernel.org,
	hverkuil@xs4all.nl,
	gregkh@linuxfoundation.org
Date: Wed, 13 Oct 2021 18:58:04 +0000
Message-Id: <20211013185812.590931-3-clabbe@baylibre.com>
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
 Content preview:  Simplify code by using module_pci_driver() Signed-off-by:
 Corentin Labbe <clabbe@baylibre.com> ---
 drivers/staging/media/zoran/zoran_card.c
 | 21 + 1 file changed, 1 insertion(+), 20 deletions(-) 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.43 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.43 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1majug-0001MV-3M
X-Mailman-Approved-At: Thu, 14 Oct 2021 04:17:36 +0000
Subject: [Mjpeg-users] [PATCH v2 02/10] staging: media: zoran: use
 module_pci_driver
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

Simplify code by using module_pci_driver()

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_card.c | 21 +--------------------
 1 file changed, 1 insertion(+), 20 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index 3bc0e64f1007..f1465fbf98af 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -1314,23 +1314,4 @@ static struct pci_driver zoran_driver = {
 	.remove = zoran_remove,
 };
 
-static int __init zoran_init(void)
-{
-	int res;
-
-	res = pci_register_driver(&zoran_driver);
-	if (res) {
-		pr_err("Unable to register ZR36057 driver\n");
-		return res;
-	}
-
-	return 0;
-}
-
-static void __exit zoran_exit(void)
-{
-	pci_unregister_driver(&zoran_driver);
-}
-
-module_init(zoran_init);
-module_exit(zoran_exit);
+module_pci_driver(zoran_driver);
-- 
2.32.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
