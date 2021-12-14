Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 069AA474949
	for <lists+mjpeg-users@lfdr.de>; Tue, 14 Dec 2021 18:26:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mxBYt-0002QI-Km; Tue, 14 Dec 2021 17:25:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <clabbe@baylibre.com>) id 1mxAww-0001ea-Ic
 for mjpeg-users@lists.sourceforge.net; Tue, 14 Dec 2021 16:46:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UWYtJJBsa0LLLZRoFXWiICK8It/s64t7LfobsR7d4kA=; b=WkgdSPwcmFF7bx8OcBPmEQGLiQ
 bp8hneQYiXt9morfN/QolELTs2C1s4HGVioNW3f4rOaKgAwHId+MgkalKfYuKEPXpJwEMUe/mP9Ng
 4bgvbE1iTFZUuzgjuR6oIshJQ+WVOyw4VszTVDDjl622uFj5YQ0A1DZyydAhtLISPIMk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UWYtJJBsa0LLLZRoFXWiICK8It/s64t7LfobsR7d4kA=; b=MVvHW3lNt+u3vKHXkL+Pw8bL9A
 sQvqhVsBozggVYFJCO/k3zIODxnEvMub4Nc7LZLcea0agJFskc5XiZAo4Eum/KP9+q2b9W/4fre1y
 CrKpjOOW6UDjNNmhJRtwXZbOPMX/UnBubDHphj0ay7p6CfHjZXTi4A9SH9ggoXOnL1vs=;
Received: from mail-wm1-f41.google.com ([209.85.128.41])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mxAwr-00FJa3-Re
 for mjpeg-users@lists.sourceforge.net; Tue, 14 Dec 2021 16:46:42 +0000
Received: by mail-wm1-f41.google.com with SMTP id
 o19-20020a1c7513000000b0033a93202467so14141217wmc.2
 for <mjpeg-users@lists.sourceforge.net>; Tue, 14 Dec 2021 08:46:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UWYtJJBsa0LLLZRoFXWiICK8It/s64t7LfobsR7d4kA=;
 b=EoLYu7UrfWuEECfodtsBV6dRc4ZWw3wP1d2U+PETqSM2bMXzttgdgy/Uua7i+BB9gn
 ctespFvmt74uAPf3DxYTt1jHERuSpp7idcolqLysFGmcCj5Xjmjcm1mjGu1MXn/yyF1R
 l8DzKPIbOmaBprMAbWxCWPHSkqlHSsbPP9jxVfLtHEMZrnv77HxT/QVSssWXLDkANuJr
 mO/UVzPTL1h9mgCRcUlcvXdRPMtHGXjtRjDxLph7ZXuNIfAh5KTzaLlMfwAQ6wQnQ3jR
 tJgt+dBKoYoOEktOUu76hjEDSi/H/xdizIBzOsfEH65rrGn6mWXXnzJ2zXyLoZPdd6a5
 nXXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UWYtJJBsa0LLLZRoFXWiICK8It/s64t7LfobsR7d4kA=;
 b=qAE7YL4DcAQ66ZtZiJq44e7p7xPKGVTwJTWbBwiTcDm/iKDeKHc1rxhGMFk9NnKFi4
 2VaR4BD5tJ/YolCffZ9uX256WdP64MWmMfqU9xeYNjTcaEsvtdpW3DLZ/ja7JMrOraUP
 rF11Ot/yJKxMHRsQlWHLKFioXnDaJubudmBssqveW8dso43PqldGG+lbAOau4B9zfoWT
 0Xn+CQmXkiqGJDHMriy75/iSTucaMaXrOisL/cTgBLatHB+cSguqnVOqWtka6yyk4wX5
 i94Cjf3GHTbiOuttv4FFOr81wrCSY0tRXCbFeHYhqP8RXCLJUb3ZKKb3/8TIddxLGA/k
 xJPw==
X-Gm-Message-State: AOAM532R0sHORyujBkhLrbhOUfSEm3uyH4gK4rVxnJ8iZKfZto1Xamdq
 G8kptkjuX0777lWfQ91OslwcX47c9UJa0kLo
X-Google-Smtp-Source: ABdhPJzPLZE0PqbYXIioP2UpsgERidaQz1L0B50wH1vp5+pcv0LlJw/R0RApXnewr2UT68g0nTwzWw==
X-Received: by 2002:a1c:6a13:: with SMTP id f19mr8236047wmc.89.1639498604343; 
 Tue, 14 Dec 2021 08:16:44 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id a9sm295116wrt.66.2021.12.14.08.16.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Dec 2021 08:16:44 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: mchehab@kernel.org,
	hverkuil@xs4all.nl,
	gregkh@linuxfoundation.org
Date: Tue, 14 Dec 2021 16:16:21 +0000
Message-Id: <20211214161636.1886900-4-clabbe@baylibre.com>
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
 no trust [209.85.128.41 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.41 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1mxAwr-00FJa3-Re
X-Mailman-Approved-At: Tue, 14 Dec 2021 17:25:54 +0000
Subject: [Mjpeg-users] [PATCH v4 03/18] staging: media: zoran: rename debug
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
