Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 42CAC43CE0C
	for <lists+mjpeg-users@lfdr.de>; Wed, 27 Oct 2021 17:55:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mflGk-0003q3-Bv; Wed, 27 Oct 2021 15:55:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <clabbe@baylibre.com>) id 1mfSMS-0002sO-3C
 for mjpeg-users@lists.sourceforge.net; Tue, 26 Oct 2021 19:43:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZX+m9eRP3G6qa3o26UuCwjfzdvb0rxacvbcUwg9LjVM=; b=kl0pAnEZHFonqzaGA8wDzaRqBm
 wUarj5g9mdrw07afw1sJ4Rqvpwew++F+6SADuC/Eg6JRp9pWSLlhQ81cw0VqTYOcVBvWfwXxlcWz/
 s2kHT+OnQ4/O0TqOa4bIylCADJYg0g2eTXhNCr/5ZT6gInkerYM1nj+rCwlRJMMFB4mM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZX+m9eRP3G6qa3o26UuCwjfzdvb0rxacvbcUwg9LjVM=; b=VwqZbiqtS850fY4RIC36pmxc7Y
 B+kRNBdX6CgSwndMZkwiOqkcYaw9d2IH5qenpFsOTdxYV91WT2JWX1ckH+DWMR6wrouwzRea+H0BH
 f1O5E2qviH3BLgE8QJUQupNcqldVcCUrt169g6C6abIKJrsdj0wAXMuxBcETa6WExCRk=;
Received: from mail-lj1-f179.google.com ([209.85.208.179])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mfSLx-00HZ29-V9
 for mjpeg-users@lists.sourceforge.net; Tue, 26 Oct 2021 19:43:51 +0000
Received: by mail-lj1-f179.google.com with SMTP id d13so804992ljg.0
 for <mjpeg-users@lists.sourceforge.net>; Tue, 26 Oct 2021 12:43:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZX+m9eRP3G6qa3o26UuCwjfzdvb0rxacvbcUwg9LjVM=;
 b=yTCQeaUgyQ77dr9b2Tas/r0wJ3HPcbupOrQjRBkua/PfAuEuXTXMwtxto/o3HU79is
 NmLl9oDzcOdghZbtMlbaHabKQ2UB3EAC63EGGX7nzfEttHH8JIuyEuu1m6pwU4Yxoy1S
 Tmqf/6fYkmrZXx2GePhaTP5vCWlzSUiTUKPOLVf+xkxmpXoqZSiyxfMcjG2kA8mQZr5W
 MDSLSvsLjpGFVthu/fU3iAmVWgXtm2cAmvGL/pGsZuS+9T3gCuAk9E5HaTJ8yYwZVbXv
 IU4NDVhcnr8XD+eekoSB5qnM4rOpYTcHQbfw1/mzq6kCVMQeXBNMWh0zWc7Nrqw5LaX+
 petQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZX+m9eRP3G6qa3o26UuCwjfzdvb0rxacvbcUwg9LjVM=;
 b=jen8IqgIRe2PafRyPhrNuD+B3PN2Y7GKaJJR8Xc8UZfM4JFekn3sm9Lzt/CMlNpTMP
 74yriA+TVWx1kROT5Vs8uKv+l02k3avWcBy9AqTc74GZe8SRipZQs5oLvBTusofdisYl
 sRhCLcA2nxhQjbzq+QK6+5xvI3IsTY6FaqXYHc7P1qHN1tGhN1AkctMJeZuc8voYqhZ9
 5LoJ9hvgiSXLTFcTKvddwIC6HEEp+fy0zvaACXF54e6Ed4X59vWbEEXDFGbaWLpvfHlc
 FMTyvls8ildpqEcWRKFINmLflPKk6Cs17Dx1oTZk7w7qZeK7jh8IzYbPe5BnCAAVkZnI
 3Bhg==
X-Gm-Message-State: AOAM533OnO/ZZWDWkXyAYYJL2mMrFycL0zwkkygnzGdQcfEmO1X7HrBJ
 NKoyJlX+uxp0KT0VAbuZDX9HeVrTzD6Zug==
X-Google-Smtp-Source: ABdhPJw3HDmUSQ8StzDpfTOvfI979TWeAuUk5h+MXHiF/2I1HBt1rTdwIYUJA+bXbYnM2R8M3B5XsA==
X-Received: by 2002:a5d:4b51:: with SMTP id w17mr35244771wrs.47.1635276862764; 
 Tue, 26 Oct 2021 12:34:22 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id s18sm17676123wrb.95.2021.10.26.12.34.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Oct 2021 12:34:22 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: mchehab@kernel.org,
	hverkuil@xs4all.nl,
	gregkh@linuxfoundation.org
Date: Tue, 26 Oct 2021 19:34:04 +0000
Message-Id: <20211026193416.1176797-3-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211026193416.1176797-1-clabbe@baylibre.com>
References: <20211026193416.1176797-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-Headers-End: 1mfSLx-00HZ29-V9
X-Mailman-Approved-At: Wed, 27 Oct 2021 15:55:09 +0000
Subject: [Mjpeg-users] [PATCH v3 02/14] staging: media: zoran: use
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
