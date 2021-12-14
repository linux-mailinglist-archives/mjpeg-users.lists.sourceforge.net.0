Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AEF40474954
	for <lists+mjpeg-users@lfdr.de>; Tue, 14 Dec 2021 18:26:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mxBYv-0002Sx-7R; Tue, 14 Dec 2021 17:26:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <clabbe@baylibre.com>) id 1mxAxA-0002F3-VS
 for mjpeg-users@lists.sourceforge.net; Tue, 14 Dec 2021 16:47:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CZZLzZT+BfXZxuiWnfdsUBig8FB5HFw4bFDfrJMVxBE=; b=AjeTGpDKB6WPLI157uYI3WZDYq
 EFgQ0SxWAjdNV92LXTfL5BJym6E29p1/3nvNgl+0nF+yz/1hRViD2A6Cj16r7aKmiQlA2+uh6bMhT
 FKUL7r6GiJjQqIft6cjZPXvONxfGTCqnUYHsfKtw57beknmPvCj0bGW8RMsSe3A3/hNM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CZZLzZT+BfXZxuiWnfdsUBig8FB5HFw4bFDfrJMVxBE=; b=KSSU0W+3B3geionDWb1ZAX9Ahp
 XuDdDkG/rLYZwK6QgB9CNGfGmh8T2AXnAxjZO25dkL3TofFdv6hbDAF94KrKpvTWKbXdp5GGb4MVd
 mYmzYZFP7bC92WMQtIaj8HeVCHqfmeVgh7NqSsr5ftPGSGFmaEtvdZEDjrqIPq4Hc4N8=;
Received: from mail-wm1-f44.google.com ([209.85.128.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mxAxB-00081L-86
 for mjpeg-users@lists.sourceforge.net; Tue, 14 Dec 2021 16:47:01 +0000
Received: by mail-wm1-f44.google.com with SMTP id
 o19-20020a1c7513000000b0033a93202467so14141811wmc.2
 for <mjpeg-users@lists.sourceforge.net>; Tue, 14 Dec 2021 08:47:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CZZLzZT+BfXZxuiWnfdsUBig8FB5HFw4bFDfrJMVxBE=;
 b=ZbsiTILxVwE+Mq5B2ldENFVbQR3Ef5AQqGKImqM0vYBNKQRq4VXebDs+VzMeA7lNyo
 9k54ajpM/gxe33caNzDBWOZGapQ0IWdBl6+aBicSLAhYUXs5WRO0ssUhuFxr3Gn82cVs
 03Nt9F7xT7O4eWf+Zqe3d9VAyldbE/boIdNFU7a+SlGYaFFfSHQtotbOkBOgH4gzJBYh
 9xMDVLENbS5jCHEPoXwukvV4uaetTmqJBdxJA7aeh3LiYv3devjViiEVL1LA+WUVmFZy
 pMyw/b/Cng9TZw4ko0qDgDvlEMTQzoMfifNSVOuvUipev7O6ZubH9f2kXIzvI8ZpVu/d
 280g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CZZLzZT+BfXZxuiWnfdsUBig8FB5HFw4bFDfrJMVxBE=;
 b=cYJ29iK1BFjHQiAm3qE1m75vPabzvxMBJUpQWFrYAGM5tx+iKLqj2sJ9BNSeaO96LP
 uBgcnnaWo9Pf41tfD4diATFd3ZlTH9xWY/GiDkkS2LD51VLPOwkcReGhnWxvb8ql+HDE
 bZFMkeG+96/BXzXjnvapuO0f+zMGLzFDGYThNf8/1P+GjYMt4aiJhv8NUg2UPd62wxx9
 iW0Vnnt7yuFTsC5oolw6fOv9n6x1P7uXlrdClBXjPYoHi/vkAg7Fl98R2k9S94u6+tic
 R1H5sE0YTj18WuEZolIMw4opOpFSGRbgMf8MtXwwa2eNKWyXzYiAck2uQia9xhGPqFoU
 QtIQ==
X-Gm-Message-State: AOAM532zhq8xe0Ov9dvvMxinPVmaYNSjMQJvKSbVfyf3o95Nbd8/8da8
 NYOWgcuQDqZogAhUw/SO2EnzLiJai49Uhrhl
X-Google-Smtp-Source: ABdhPJybmeQUJDbSW+3oV4zoGrLw5BsgeTTY17hfAtBVbVlqViN7SPJa0Cp1TzI6xxs3Sofx3yGN+A==
X-Received: by 2002:a7b:c1c5:: with SMTP id a5mr47072072wmj.149.1639498608721; 
 Tue, 14 Dec 2021 08:16:48 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id a9sm295116wrt.66.2021.12.14.08.16.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Dec 2021 08:16:48 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: mchehab@kernel.org,
	hverkuil@xs4all.nl,
	gregkh@linuxfoundation.org
Date: Tue, 14 Dec 2021 16:16:27 +0000
Message-Id: <20211214161636.1886900-10-clabbe@baylibre.com>
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
 Content preview:  Since all kconfigs for card selection are bool, this causes
 all selected modules to be always built-in. Prevent this by moving selects
 to the main tristate kconfig. By doing this,
 remove also all "if MEDIA_SUBDRV_AUTOSELECT"
 which are wrong, since zoran always need them to work. 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.44 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.44 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1mxAxB-00081L-86
X-Mailman-Approved-At: Tue, 14 Dec 2021 17:25:54 +0000
Subject: [Mjpeg-users] [PATCH v4 09/18] staging: media: zoran: move config
 select on primary kconfig
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

Since all kconfigs for card selection are bool, this causes all selected modules
to be always built-in.
Prevent this by moving selects to the main tristate kconfig.

By doing this, remove also all "if MEDIA_SUBDRV_AUTOSELECT" which are
wrong, since zoran always need them to work.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/Kconfig | 23 ++++++++++-------------
 1 file changed, 10 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/media/zoran/Kconfig b/drivers/staging/media/zoran/Kconfig
index 4067fa93d44d..faef008b8554 100644
--- a/drivers/staging/media/zoran/Kconfig
+++ b/drivers/staging/media/zoran/Kconfig
@@ -4,6 +4,16 @@ config VIDEO_ZORAN
 	depends on !ALPHA
 	depends on DEBUG_FS
 	select VIDEOBUF2_DMA_CONTIG
+	select VIDEO_ADV7170 if VIDEO_ZORAN_LML33R10
+	select VIDEO_ADV7175 if VIDEO_ZORAN_DC10 || VIDEO_ZORAN_DC30
+	select VIDEO_BT819 if VIDEO_ZORAN_LML33
+	select VIDEO_BT856 if VIDEO_ZORAN_LML33 || VIDEO_ZORAN_AVS6EYES
+	select VIDEO_BT866 if VIDEO_ZORAN_AVS6EYES
+	select VIDEO_KS0127 if VIDEO_ZORAN_AVS6EYES
+	select VIDEO_SAA711X if VIDEO_ZORAN_BUZ || VIDEO_ZORAN_LML33R10
+	select VIDEO_SAA7110 if VIDEO_ZORAN_DC10
+	select VIDEO_SAA7185 if VIDEO_ZORAN_BUZ
+	select VIDEO_VPX3220 if VIDEO_ZORAN_DC30
 	help
 	  Say Y for support for MJPEG capture cards based on the Zoran
 	  36057/36067 PCI controller chipset. This includes the Iomega
@@ -17,8 +27,6 @@ config VIDEO_ZORAN
 config VIDEO_ZORAN_DC30
 	bool "Pinnacle/Miro DC30(+) support"
 	depends on VIDEO_ZORAN
-	select VIDEO_ADV7175 if MEDIA_SUBDRV_AUTOSELECT
-	select VIDEO_VPX3220 if MEDIA_SUBDRV_AUTOSELECT
 	help
 	  Support for the Pinnacle/Miro DC30(+) MJPEG capture/playback
 	  card. This also supports really old DC10 cards based on the
@@ -35,16 +43,12 @@ config VIDEO_ZORAN_ZR36060
 config VIDEO_ZORAN_BUZ
 	bool "Iomega Buz support"
 	depends on VIDEO_ZORAN_ZR36060
-	select VIDEO_SAA711X if MEDIA_SUBDRV_AUTOSELECT
-	select VIDEO_SAA7185 if MEDIA_SUBDRV_AUTOSELECT
 	help
 	  Support for the Iomega Buz MJPEG capture/playback card.
 
 config VIDEO_ZORAN_DC10
 	bool "Pinnacle/Miro DC10(+) support"
 	depends on VIDEO_ZORAN_ZR36060
-	select VIDEO_SAA7110 if MEDIA_SUBDRV_AUTOSELECT
-	select VIDEO_ADV7175 if MEDIA_SUBDRV_AUTOSELECT
 	help
 	  Support for the Pinnacle/Miro DC10(+) MJPEG capture/playback
 	  card.
@@ -52,8 +56,6 @@ config VIDEO_ZORAN_DC10
 config VIDEO_ZORAN_LML33
 	bool "Linux Media Labs LML33 support"
 	depends on VIDEO_ZORAN_ZR36060
-	select VIDEO_BT819 if MEDIA_SUBDRV_AUTOSELECT
-	select VIDEO_BT856 if MEDIA_SUBDRV_AUTOSELECT
 	help
 	  Support for the Linux Media Labs LML33 MJPEG capture/playback
 	  card.
@@ -61,8 +63,6 @@ config VIDEO_ZORAN_LML33
 config VIDEO_ZORAN_LML33R10
 	bool "Linux Media Labs LML33R10 support"
 	depends on VIDEO_ZORAN_ZR36060
-	select VIDEO_SAA711X if MEDIA_SUBDRV_AUTOSELECT
-	select VIDEO_ADV7170 if MEDIA_SUBDRV_AUTOSELECT
 	help
 	  support for the Linux Media Labs LML33R10 MJPEG capture/playback
 	  card.
@@ -70,8 +70,5 @@ config VIDEO_ZORAN_LML33R10
 config VIDEO_ZORAN_AVS6EYES
 	bool "AverMedia 6 Eyes support"
 	depends on VIDEO_ZORAN_ZR36060
-	select VIDEO_BT856 if MEDIA_SUBDRV_AUTOSELECT
-	select VIDEO_BT866 if MEDIA_SUBDRV_AUTOSELECT
-	select VIDEO_KS0127 if MEDIA_SUBDRV_AUTOSELECT
 	help
 	  Support for the AverMedia 6 Eyes video surveillance card.
-- 
2.32.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
