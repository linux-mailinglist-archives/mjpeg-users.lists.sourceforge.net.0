Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B10400978
	for <lists+mjpeg-users@lfdr.de>; Sat,  4 Sep 2021 05:49:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mMMfu-0004kd-Tc; Sat, 04 Sep 2021 03:49:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <clabbe@baylibre.com>) id 1mMF3J-0002Cc-Mz
 for mjpeg-users@lists.sourceforge.net; Fri, 03 Sep 2021 19:40:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZX+m9eRP3G6qa3o26UuCwjfzdvb0rxacvbcUwg9LjVM=; b=K4xz+pELCY1ufE3WKI8PzhG2PH
 D8JPNZnXITawZKSMBLf73Jdri47t9mG8nS5GYXe7xweKn6L/Z4pdziKPCBKl0NDu/RbC5suNiVqQY
 regci36Ot64POWRrRNAx7AcvFtH0QYAmZ655HuCuwd9Mkw0WpoIw7cUhiwF9czI5r4hw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZX+m9eRP3G6qa3o26UuCwjfzdvb0rxacvbcUwg9LjVM=; b=VONkULEaQu95VDHmkSQZEaOJi5
 nnzWKJ3Eo6FNe2snUrH4TJBz+DOOvJsVA2R4qxIcy7fgmmw+kK3N2B0mprbFGvQzbUcxROEvSohQb
 a6wWGTsRftXYkXmKKc8A48R0oWNBHIcJy4y9ABfd6QepU2vQFPdiu3j47SCfkkN7wE6s=;
Received: from mail-wm1-f54.google.com ([209.85.128.54])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mMF3J-00DRCs-3W
 for mjpeg-users@lists.sourceforge.net; Fri, 03 Sep 2021 19:40:41 +0000
Received: by mail-wm1-f54.google.com with SMTP id
 z9-20020a7bc149000000b002e8861aff59so289722wmi.0
 for <mjpeg-users@lists.sourceforge.net>; Fri, 03 Sep 2021 12:40:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZX+m9eRP3G6qa3o26UuCwjfzdvb0rxacvbcUwg9LjVM=;
 b=Ns2hVXrhoznNB3oQH1t3+j6ATt0VKG0o6PldIrMPznDbonpNc1JD3nxHMg2SOs8UB8
 BEJjTrpy4wiOEyUr11OotV8A6rA4sifBneYuht28Gc5LpQI9C+bPdJBSE6ikH5bmDNGw
 cqzxmpIGpbK7/VhLW70smCjFmbueWXY/fc7MfM+Yo1sG39GmR9+QMyasxlMaKklG5Fa9
 YKT09M1sYE4rW2rJLeVh/AkKNItUQk636prFyQ7ozincLTr+iQbEo9cuWtfCqbFvC++B
 trzuWRKuU4MdJ04uS0RxcaGjecHNZL6OGlx33M5+rYVeDG0ngluExiFl0ZClBTh/zNXG
 0hMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZX+m9eRP3G6qa3o26UuCwjfzdvb0rxacvbcUwg9LjVM=;
 b=kL7MrUce8kz+sPjgSAAijU3/qnHiIpjU4pNdAjOMVtzEWiYmGF5fWeapEky1qMA4zD
 lMfoH2tFGJJlIpq1+t/Tf7YJS1Rg5aprz2XwM38y/Wq45BhFB6kvYQ0zaRan/8EokpDU
 nfaF3r7iDOw2s51OC3lA9m/b/oO/82hBlHmWtcvcfuNLWJZbVE29G+CX6WYe42WeE4mj
 8sGltURoWst6HRr9fGM1gZaOfvH6Ruf4DI7sKSnHnGXqQjs5y/jsy6xrjhxQZ2ljb0xd
 xyDe4lPHVHTyHAKRMBSWxy/dxPT4CnYqxvfdDHYuc/hWyfNfss8USVkLqaTDGGX6P8Ea
 tSjg==
X-Gm-Message-State: AOAM5306ysXxL3uhpn9NhPOPR1yjlYS1p2rkPal4HQH7i8gULgJ4mNnq
 NvqgyXkLkn8/xaY6Ps03qiLJY24bXfPxtahq6F8=
X-Google-Smtp-Source: ABdhPJxE0dUX5u4RNf/Wx18X+2EXKv90xIdKm7MsrBaO5GUKwN6yqejEQKaf0pkgyJ7eVksRjDUa2Q==
X-Received: by 2002:a05:600c:acd:: with SMTP id
 c13mr327456wmr.28.1630696555125; 
 Fri, 03 Sep 2021 12:15:55 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id a133sm253397wme.5.2021.09.03.12.15.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Sep 2021 12:15:54 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org,
	mchehab@kernel.org
Date: Fri,  3 Sep 2021 19:15:34 +0000
Message-Id: <20210903191540.3052775-3-clabbe@baylibre.com>
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
 Content preview:  Simplify code by using module_pci_driver() Signed-off-by:
 Corentin Labbe <clabbe@baylibre.com> ---
 drivers/staging/media/zoran/zoran_card.c
 | 21 + 1 file changed, 1 insertion(+), 20 deletions(-) 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.54 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.54 listed in wl.mailspike.net]
X-Headers-End: 1mMF3J-00DRCs-3W
X-Mailman-Approved-At: Sat, 04 Sep 2021 03:49:00 +0000
Subject: [Mjpeg-users] [PATCH 2/8] staging: media: zoran: use
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
