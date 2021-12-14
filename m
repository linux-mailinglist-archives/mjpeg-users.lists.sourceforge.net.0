Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED7D47494B
	for <lists+mjpeg-users@lfdr.de>; Tue, 14 Dec 2021 18:26:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mxBYs-0002PM-SB; Tue, 14 Dec 2021 17:25:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <clabbe@baylibre.com>) id 1mxAqu-0001Y2-SQ
 for mjpeg-users@lists.sourceforge.net; Tue, 14 Dec 2021 16:40:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZX+m9eRP3G6qa3o26UuCwjfzdvb0rxacvbcUwg9LjVM=; b=O4Hjb3yIGuQrSy2faZMiqCRbfI
 522K4FDoMF3iDgctausCCYwvR0xiTGkMMx/OKqvxBxLaO25yqfLgAudrqlWsjg2Yh5a80tp5Vbn0Y
 hle3UFZODQCZo1m/RW0kwreT/OxGQ2GufSABWsd215PSNJhhOVDqivj561ERJ+uVPses=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZX+m9eRP3G6qa3o26UuCwjfzdvb0rxacvbcUwg9LjVM=; b=BfUQ9yAm8SQ5G8xnOk4z2e/bcY
 +gBf++enH0HZIQyUmx53KVOGlsBvmhGmw1iAjLdkRwsF04+hKX3TMeqNnJ7D+JGGWJ5yXLvP2F707
 9bQVXLl+SaRRC9u4wN9LcDNhtQLcmD0WJwg2TSff/ImxvOI08fUQ4VXgaUzU29D8/G10=;
Received: from mail-wm1-f53.google.com ([209.85.128.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mxAqu-0007Tf-AV
 for mjpeg-users@lists.sourceforge.net; Tue, 14 Dec 2021 16:40:32 +0000
Received: by mail-wm1-f53.google.com with SMTP id
 a83-20020a1c9856000000b00344731e044bso1246821wme.1
 for <mjpeg-users@lists.sourceforge.net>; Tue, 14 Dec 2021 08:40:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZX+m9eRP3G6qa3o26UuCwjfzdvb0rxacvbcUwg9LjVM=;
 b=T7EoM7c6Sk022NWt5q8QI8ShLGTFYSNYidgGL8J4+k0ABRAXcsARMRQMbJ0Zc5gLME
 vwl/OnAi09m6K9yCcSLj3M4uiDaS9NG1ibkgun+W+I9+ETW13U2juydwXkKP6CNaccE7
 2ubatLNZY9OiZS/uiWFGCltszRFE0qfrVtx9t+RdUyaeUKny+ETTNkjlzlBKjdGV5Ps+
 OtZI2/oK3d5/+Dx7Ptdw2Uj4y1QvK6Nyy6K8jlkdUxxCsxlTUyc7cOmxOzdtzafk3fUs
 rzOt6SNbm0SYqDNG0V7Kzcs/UaXuuMQfmk9TDaBkodkpUpYuwNlpPpFVdj7ZYd0twO/M
 /RoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZX+m9eRP3G6qa3o26UuCwjfzdvb0rxacvbcUwg9LjVM=;
 b=YJrLJp6bvWUGrbedOMH2UnmiSSw55XojPBMr5A51zwnZZyNyqp1TQGEVtUXkAosB4G
 /cdqa+4FEq1Ukitlhja0+fPy2F/ISfjmA7PUSFttzOZFOkVFP9eQodNd8C+m3kPvoC8i
 g63P43vtObhsW92+0p12iAPxLqYTeh3mD+Z1X2YBBpiinEIqRx4336fPIt5QciOUdPq6
 LVTm3SDvPXiTpDddaBi47FuxOlX4GXbWVTLzsbQMjzChGPoUH8AptK9E0mhVJGGqNDnj
 Wbk98MWOO9Jay+JpPaBXWs9qiI490aGnAH9f1jfit1r/DqVjrL0rljsrBsy5B2loxrzd
 cQOA==
X-Gm-Message-State: AOAM533mGK4fmK75CMhUuQMEutwzB14goHxyX3MX8jXMVfuEEAVi/dn/
 bBvsswAkCSpGcktPZ/mZO5Mdo1wDm0zfx63s
X-Google-Smtp-Source: ABdhPJw6Q5uDW7bfECCayVdeOzj/tVZOc9GBRSpmdGpoot4fKLzdcuBHluJ/v6BPqVrCAASIM86lFw==
X-Received: by 2002:a05:600c:3b28:: with SMTP id
 m40mr47730200wms.100.1639498603551; 
 Tue, 14 Dec 2021 08:16:43 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id a9sm295116wrt.66.2021.12.14.08.16.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Dec 2021 08:16:43 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: mchehab@kernel.org,
	hverkuil@xs4all.nl,
	gregkh@linuxfoundation.org
Date: Tue, 14 Dec 2021 16:16:20 +0000
Message-Id: <20211214161636.1886900-3-clabbe@baylibre.com>
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
 Content preview:  Simplify code by using module_pci_driver() Signed-off-by:
 Corentin Labbe <clabbe@baylibre.com> ---
 drivers/staging/media/zoran/zoran_card.c
 | 21 + 1 file changed, 1 insertion(+), 20 deletions(-) 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.53 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.53 listed in list.dnswl.org]
X-Headers-End: 1mxAqu-0007Tf-AV
X-Mailman-Approved-At: Tue, 14 Dec 2021 17:25:55 +0000
Subject: [Mjpeg-users] [PATCH v4 02/18] staging: media: zoran: use
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
