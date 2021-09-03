Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 89AF340097D
	for <lists+mjpeg-users@lfdr.de>; Sat,  4 Sep 2021 05:49:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mMMfv-0004lD-KC; Sat, 04 Sep 2021 03:49:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <clabbe@baylibre.com>) id 1mMFkg-0008TU-KF
 for mjpeg-users@lists.sourceforge.net; Fri, 03 Sep 2021 20:25:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UWYtJJBsa0LLLZRoFXWiICK8It/s64t7LfobsR7d4kA=; b=Aa3C5F4yS2EG5/tcp2GykTKWht
 tUJRSucvtuJc2+iJ/h4somEbP1NY81HyB2PUCPiKX47Ta38CpWrgYTq40buIRrCGKkrfHbycInPb0
 qYfAqsOLhPynJRoNQINsXczc9oNh3Qxv4NHev8m57LTFMfaiJfr3J4qbucsCK6ZfTsOA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UWYtJJBsa0LLLZRoFXWiICK8It/s64t7LfobsR7d4kA=; b=hzkZpeawTUQc+gAUUeupzSGFYz
 xH9wMOaclT6uwkY+RxYHOB1NDRqOaYPlJCNrS0yC42LCKDHlXN9Z7x3HeySrhL6jj64LkoFGdobxA
 t7z2cHOAptS3HZzrF2PAMRCPWCu8xVAWjHpjQc4TOx+n/U0NYM7FVBjzB05fco6Jj2J8=;
Received: from mail-lf1-f46.google.com ([209.85.167.46])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mMFkf-00DV0V-Fg
 for mjpeg-users@lists.sourceforge.net; Fri, 03 Sep 2021 20:25:30 +0000
Received: by mail-lf1-f46.google.com with SMTP id k13so625528lfv.2
 for <mjpeg-users@lists.sourceforge.net>; Fri, 03 Sep 2021 13:25:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UWYtJJBsa0LLLZRoFXWiICK8It/s64t7LfobsR7d4kA=;
 b=rB986yscxcriQHyHhrHHPg6S1PvOrT/OtOk7NUbcuALTTlkDK70ocS7L5eUFN+fPYT
 EdExfceHzEG1Tb5jYm4MfFYrUnySIt067kVl+XDYVkOhqW7g0qr/HhVXDIo8Lk8OkZUK
 /Kn1vZufyjby6Dw3iG2RGRoCozXKBUXn0lcQrVrIe9TQdULaJNHoTPqfgdZnU1IUmWAj
 AJM46Vc46LUESLpoIlhr8Kz8zKsiS5KEyrNKk6fnK7RzfjS8+xJFoecDu1KK49mJbdlA
 8Uu1Jq5cShTkDS/4lJE4yZR6Ui5Ms2kwm1FAV0eXcXuOIL8wMqAVZWA3hDVKg/aUmCcZ
 SjLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UWYtJJBsa0LLLZRoFXWiICK8It/s64t7LfobsR7d4kA=;
 b=J6EFNKvh3Fi+TvHJo+XWNrlFjAPr/8+4fIjl4GHMRdRHMQddk9aWG6gTd//jgRknnK
 u5nuSHFeHtIJDtgv9dM1DXvMwp0/zzimChPGUtVthWdKdudQKaGQSUuYwsPDme8/6hJ1
 4kU+8QTlNKJNpy1dzwb+q2tOdqRH4VyFkvUN0FI7zf6IPU9EtSlcxW2ZBbVj4e/lkc4h
 qoQ0qksvafAJilPZvJi2QlQRA5TpOdrrUEkNCBtxZCFiOrKXixZyUGRLHRPiAcCd3oJn
 mhtKhZVSv72K+9xE250v7c9o43blqewflRAgutICo7cnE8cUbBKzgDtTZypKrAsyYREp
 /tIA==
X-Gm-Message-State: AOAM533tJd7uECROIfDi85Ns6yzOg0ITyUh/a/fzjww+udkK8W4gl5xG
 2fEp7yI0BEQxHukztT98VVILkN/cz/UnI+auHgA=
X-Google-Smtp-Source: ABdhPJwDRmmJwYZ+p6duGwUWbZ5Qfro1RZoo3m3FiRZuEr03QDGrxID0djV4Vdvbq0byvZJtpIEw/g==
X-Received: by 2002:adf:cd0f:: with SMTP id w15mr618635wrm.346.1630696555673; 
 Fri, 03 Sep 2021 12:15:55 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id a133sm253397wme.5.2021.09.03.12.15.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Sep 2021 12:15:55 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org,
	mchehab@kernel.org
Date: Fri,  3 Sep 2021 19:15:35 +0000
Message-Id: <20210903191540.3052775-4-clabbe@baylibre.com>
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
 Content preview:  All zoran module will be merged, so to prevent conflict, the
 debug module parameter need to be renamed Signed-off-by: Corentin Labbe
 <clabbe@baylibre.com>
 --- drivers/staging/media/zoran/videocodec.c | 8 ++++----
 drivers/staging/media/zoran/zr36016.c
 | 12 ++++++------ drivers/staging/media/zoran/zr3605 [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.46 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.46 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mMFkf-00DV0V-Fg
X-Mailman-Approved-At: Sat, 04 Sep 2021 03:49:00 +0000
Subject: [Mjpeg-users] [PATCH 3/8] staging: media: zoran: rename debug
 module parameter
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

All zoran module will be merged, so to prevent conflict, the debug
module parameter need to be renamed

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/videocodec.c |  8 ++++----
 drivers/staging/media/zoran/zr36016.c    | 12 ++++++------
 drivers/staging/media/zoran/zr36050.c    |  8 ++++----
 drivers/staging/media/zoran/zr36060.c    |  9 ++++-----
 4 files changed, 18 insertions(+), 19 deletions(-)

diff --git a/drivers/staging/media/zoran/videocodec.c b/drivers/staging/media/zoran/videocodec.c
index 28031d3fd757..31019b5f377e 100644
--- a/drivers/staging/media/zoran/videocodec.c
+++ b/drivers/staging/media/zoran/videocodec.c
@@ -26,13 +26,13 @@
 
 #include "videocodec.h"
 
-static int debug;
-module_param(debug, int, 0);
-MODULE_PARM_DESC(debug, "Debug level (0-4)");
+static int videocodec_debug;
+module_param(videocodec_debug, int, 0);
+MODULE_PARM_DESC(videocodec_debug, "Debug level (0-4)");
 
 #define dprintk(num, format, args...) \
 	do { \
-		if (debug >= num) \
+		if (videocodec_debug >= num) \
 			printk(format, ##args); \
 	} while (0)
 
diff --git a/drivers/staging/media/zoran/zr36016.c b/drivers/staging/media/zoran/zr36016.c
index 9b350a885879..50605460a44b 100644
--- a/drivers/staging/media/zoran/zr36016.c
+++ b/drivers/staging/media/zoran/zr36016.c
@@ -22,14 +22,14 @@
 /* amount of chips attached via this driver */
 static int zr36016_codecs;
 
-/* debugging is available via module parameter */
-static int debug;
-module_param(debug, int, 0);
-MODULE_PARM_DESC(debug, "Debug level (0-4)");
+static int zr36016_debug;
+module_param(zr36016_debug, int, 0);
+MODULE_PARM_DESC(zr36016_debug, "Debug level (0-4)");
+
 
 #define dprintk(num, format, args...) \
 	do { \
-		if (debug >= num) \
+		if (zr36016_debug >= num) \
 			printk(format, ##args); \
 	} while (0)
 
@@ -120,7 +120,7 @@ static u8 zr36016_read_version(struct zr36016 *ptr)
 
 static int zr36016_basic_test(struct zr36016 *ptr)
 {
-	if (debug) {
+	if (zr36016_debug) {
 		int i;
 
 		zr36016_writei(ptr, ZR016I_PAX_LO, 0x55);
diff --git a/drivers/staging/media/zoran/zr36050.c b/drivers/staging/media/zoran/zr36050.c
index c62af27f2683..4dc7927fefc3 100644
--- a/drivers/staging/media/zoran/zr36050.c
+++ b/drivers/staging/media/zoran/zr36050.c
@@ -32,13 +32,13 @@
 static int zr36050_codecs;
 
 /* debugging is available via module parameter */
-static int debug;
-module_param(debug, int, 0);
-MODULE_PARM_DESC(debug, "Debug level (0-4)");
+static int zr36050_debug;
+module_param(zr36050_debug, int, 0);
+MODULE_PARM_DESC(zr36050_debug, "Debug level (0-4)");
 
 #define dprintk(num, format, args...) \
 	do { \
-		if (debug >= num) \
+		if (zr36050_debug >= num) \
 			printk(format, ##args); \
 	} while (0)
 
diff --git a/drivers/staging/media/zoran/zr36060.c b/drivers/staging/media/zoran/zr36060.c
index 1c3af11b5f24..7904d5b1f402 100644
--- a/drivers/staging/media/zoran/zr36060.c
+++ b/drivers/staging/media/zoran/zr36060.c
@@ -34,14 +34,13 @@ static bool low_bitrate;
 module_param(low_bitrate, bool, 0);
 MODULE_PARM_DESC(low_bitrate, "Buz compatibility option, halves bitrate");
 
-/* debugging is available via module parameter */
-static int debug;
-module_param(debug, int, 0);
-MODULE_PARM_DESC(debug, "Debug level (0-4)");
+static int zr36060_debug;
+module_param(zr36060_debug, int, 0);
+MODULE_PARM_DESC(zr36060_debug, "Debug level (0-4)");
 
 #define dprintk(num, format, args...) \
 	do { \
-		if (debug >= num) \
+		if (zr36060_debug >= num) \
 			printk(format, ##args); \
 	} while (0)
 
-- 
2.32.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
