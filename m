Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D3093387D54
	for <lists+mjpeg-users@lfdr.de>; Tue, 18 May 2021 18:26:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1lj2Xl-0002av-3s; Tue, 18 May 2021 16:26:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <clabbe@baylibre.com>) id 1lizR2-0001Rp-0w
 for mjpeg-users@lists.sourceforge.net; Tue, 18 May 2021 13:06:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lFCCf9Zadqmdb5+PTGtOnmwq2MMa2WLH4wJ8jc9X6CI=; b=Uwj64W0CirJ7G6TKzWXg5vkJAD
 wVpikvM/cy0PdalGRoEdOr2nxgEZr4KCyeuO4eKSMLJrKQMlzvW3QlhoG6B9P+RltLmM4VBLGGWk4
 +GKcr41iRRm/XQLM6DwpEW/MSdw3ef55Kq7r2VfA34DksumXzgXBG2nkLlIZxpoV/yuY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=lFCCf9Zadqmdb5+PTGtOnmwq2MMa2WLH4wJ8jc9X6CI=; b=M
 V4KfBSAgePipMrHs3HTCVeFSRXltGgKfUxUgwj4JtNs5Afo4BIPfh4imeFgTbWyoLkrCwxmmeNzZj
 JNv7UNKsE1FJPqaW2wLk7WtWXr9sV71dmCONn1HAYwRzajdiAiFFdBywfyuzenzAm73M+SrM1LDmx
 +dlEg4fy7FE59ZCc=;
Received: from mail-wm1-f43.google.com ([209.85.128.43])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lizQr-0002Oy-3d
 for mjpeg-users@lists.sourceforge.net; Tue, 18 May 2021 13:06:55 +0000
Received: by mail-wm1-f43.google.com with SMTP id b7so4791354wmh.5
 for <mjpeg-users@lists.sourceforge.net>; Tue, 18 May 2021 06:06:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lFCCf9Zadqmdb5+PTGtOnmwq2MMa2WLH4wJ8jc9X6CI=;
 b=hz3iR9DZKzar9RisXj35P/cH4E/OklwqizSwOuKA+P9jci3qo9hMZ5gzlW/sly9SSh
 6zunLWBZkCgMuU35+SsWvaK0mxu/AeNbjZseOjdVrexcKt09np5AIsYVvl2B52U9gDwc
 qJ2lshVMVJmcmbcghh+x2hJnN4IC33aSAG8DLhpiTMgsIiUNokQWYIFs6iNcIrimpGrJ
 jw1xNvkl30OO/7EfYyK5inByFH26Ikzqjvi9a/AhcQoUj6X/hPtfBuUdob4hkWtdp53s
 CSEergk0MLXB8nTpbipmSk4Ptrw1EFC5/4PT4O5RdVfnsU7ucVu3+afhx7bbXAG4Ft0X
 grQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lFCCf9Zadqmdb5+PTGtOnmwq2MMa2WLH4wJ8jc9X6CI=;
 b=G4o9ArcyER5TdppiNsYPtHIFqm9b9M5DROlNUiGB7fyYKnTWS+UJR+8mYBb5KFBjJn
 XBGEVJmI/WMboSxl1t+993UDN3gatsirugoRIwfZltjEKqPd1q5iF6lkE8T5eLZK6n+N
 v9FsNGzUaDldMfcixtJcbkpM4VR6kuvJSfFa5UZXKDzqCgnLIIXBQGdKmc9m0speI4en
 qa/oHzEXEbTlmpDTsm7eupwheLkqD1CY36cVeKZpdbpi9W/jdrw3CySf02QGblXAZIeD
 28cxgGCE6VNPfo4MsXy2+jJQf/rbqwsuF0VzeoKlHUY9F1rI3CK/enjkf52wUy82+g5C
 9l5Q==
X-Gm-Message-State: AOAM531c7uZf7si+aeM8Y3jUV5v9cViyBs6SRHooood63RlYQb7BA2pV
 rWyBAZLAGJvfO1fK8hm6H7D7WYNQCINnjA==
X-Google-Smtp-Source: ABdhPJzSy40WfPhdwmshIXqLyiDyN0wXHif79hqRyhwDPulgerCWoG4o2VFd5eyuQ+IzM/rfmKmLtw==
X-Received: by 2002:a1c:4c10:: with SMTP id z16mr4887905wmf.134.1621341680913; 
 Tue, 18 May 2021 05:41:20 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id z3sm1677239wrq.42.2021.05.18.05.41.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 May 2021 05:41:20 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org,
	mchehab@kernel.org
Date: Tue, 18 May 2021 12:41:09 +0000
Message-Id: <20210518124113.1823055-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.43 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.43 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lizQr-0002Oy-3d
X-Mailman-Approved-At: Tue, 18 May 2021 16:26:04 +0000
Subject: [Mjpeg-users] [PATCH 1/5] staging: media: zoran: remove
 detect_guest_activity
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

The detect_guest_activity function is no longer used, so lets removed it.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_device.c | 46 ----------------------
 drivers/staging/media/zoran/zoran_device.h |  2 -
 2 files changed, 48 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_device.c b/drivers/staging/media/zoran/zoran_device.c
index cf788d9cd1df..7d2718744d18 100644
--- a/drivers/staging/media/zoran/zoran_device.c
+++ b/drivers/staging/media/zoran/zoran_device.c
@@ -166,52 +166,6 @@ static void dump_guests(struct zoran *zr)
 	}
 }
 
-void detect_guest_activity(struct zoran *zr)
-{
-	int timeout, i, j, res, guest[8], guest0[8], change[8][3];
-	ktime_t t0, t1;
-
-	/* do not print random data */
-	guest[0] = 0;
-	guest0[0] = 0;
-
-	dump_guests(zr);
-	pci_info(zr->pci_dev, "Detecting guests activity, please wait...\n");
-	for (i = 1; i < 8; i++) /* Don't read jpeg codec here */
-		guest0[i] = guest[i] = post_office_read(zr, i, 0);
-
-	timeout = 0;
-	j = 0;
-	t0 = ktime_get();
-	while (timeout < 10000) {
-		udelay(10);
-		timeout++;
-		for (i = 1; (i < 8) && (j < 8); i++) {
-			res = post_office_read(zr, i, 0);
-			if (res != guest[i]) {
-				t1 = ktime_get();
-				change[j][0] = ktime_to_us(ktime_sub(t1, t0));
-				t0 = t1;
-				change[j][1] = i;
-				change[j][2] = res;
-				j++;
-				guest[i] = res;
-			}
-		}
-		if (j >= 8)
-			break;
-	}
-
-	pci_info(zr->pci_dev, "Guests: %*ph\n", 8, guest0);
-
-	if (j == 0) {
-		pci_info(zr->pci_dev, "No activity detected.\n");
-		return;
-	}
-	for (i = 0; i < j; i++)
-		pci_info(zr->pci_dev, "%6d: %d => 0x%02x\n", change[i][0], change[i][1], change[i][2]);
-}
-
 /*
  * JPEG Codec access
  */
diff --git a/drivers/staging/media/zoran/zoran_device.h b/drivers/staging/media/zoran/zoran_device.h
index 24be19a61b6d..6c5d70238228 100644
--- a/drivers/staging/media/zoran/zoran_device.h
+++ b/drivers/staging/media/zoran/zoran_device.h
@@ -20,8 +20,6 @@ extern int post_office_wait(struct zoran *zr);
 extern int post_office_write(struct zoran *zr, unsigned int guest, unsigned int reg, unsigned int value);
 extern int post_office_read(struct zoran *zr, unsigned int guest, unsigned int reg);
 
-extern void detect_guest_activity(struct zoran *zr);
-
 extern void jpeg_codec_sleep(struct zoran *zr, int sleep);
 extern int jpeg_codec_reset(struct zoran *zr);
 
-- 
2.26.3



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
