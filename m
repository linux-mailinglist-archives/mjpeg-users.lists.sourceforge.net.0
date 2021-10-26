Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4834743CE0E
	for <lists+mjpeg-users@lfdr.de>; Wed, 27 Oct 2021 17:55:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mflGk-0003px-7Y; Wed, 27 Oct 2021 15:55:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <clabbe@baylibre.com>) id 1mfSMP-00021Q-Cr
 for mjpeg-users@lists.sourceforge.net; Tue, 26 Oct 2021 19:43:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CZZLzZT+BfXZxuiWnfdsUBig8FB5HFw4bFDfrJMVxBE=; b=SEGyTDvEKfoH3+ukfb5tnB+QTL
 dPy6YNajWFfHYdfMQTczGQ6ip+pmTf23c/ZC4sIHOHhhBPZs8gkud8MaggBNnkVrMSBVLopR2YCex
 j+oy3aQfNzkKF+VTGO41+LVZw7aG69bfJSVrsFXPQJsweiOSRvWKdNQxuybXVZgviHp8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CZZLzZT+BfXZxuiWnfdsUBig8FB5HFw4bFDfrJMVxBE=; b=E65jSl6i8RcBM2Dw654wD9dkFZ
 wx4bYTbacyTDqlBNZy0rG0XW2pArF3WMo+n18NfMEpd5TZE4aKruhTJovsFLCvKQnJfhqCgTwCLmP
 BOUaoFrspULNbdD1L7xAWf4gdDfEoi7U9T1i2VZE7FFF5NV0/spElAdoqDsOaz1ET+Qc=;
Received: from mail-wm1-f47.google.com ([209.85.128.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mfSLv-0003bv-A5
 for mjpeg-users@lists.sourceforge.net; Tue, 26 Oct 2021 19:43:49 +0000
Received: by mail-wm1-f47.google.com with SMTP id
 y205-20020a1c7dd6000000b0032cc8c2800fso3300868wmc.4
 for <mjpeg-users@lists.sourceforge.net>; Tue, 26 Oct 2021 12:43:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CZZLzZT+BfXZxuiWnfdsUBig8FB5HFw4bFDfrJMVxBE=;
 b=rRr21svHPiBAMdumbdWFs9HRYbo1FEhV1gCA5PYy/5gKiUF/dLd2saj0FlQdCPsveV
 MDOzEqZJi5AqzbRQRtW0a6WaB37F0q+jLEDpVSc7RKnxCGiLONc4C4UaRbyBWgDbEnwa
 KI981m1SmHoqf0W8yVQUf78VzVAc9MYa+/x9rnk0X30gAj8Hr5qnyF/iMarwawInow2e
 caYiaGXBMVUPurNvAY30SYLcg/IW6SMK5uIf7J+KnR/GCaS9VEyg9RXeQLk31k3AZQot
 VY2VuoDGfOLaW2KnRzF/5DzWNQHmojB6vmZBKd4b5PyImIDVywj/3gqS5KDUlTyO8+16
 IeZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CZZLzZT+BfXZxuiWnfdsUBig8FB5HFw4bFDfrJMVxBE=;
 b=26pd8E8YsYBr/SWcRSapGsxaoYIgFI+XxSAjWXxRhCLxBz+5wr+AKL0kx9EoRWhZCE
 HbE+OpVUzCewJcrYy+OEBhwS1P9mDiDHK+p2mAgId2QCXJQ0Bi5WvTBl/oI3qYPTalE6
 /YY2v4axYGi2T+t8bjrrxFgfrPrLRDKwCKyv0jNHMe7rxuL3LUxwW5V+fLWu6XtZWJ7v
 Ip87BWkmM+NIgU8+V5KaOFPTJ5oLNLkByBc3CIC0zIk5TDpEYxTyd1CuOGGoPLzS2Tfi
 Gw3ppDKF/55Pyx3Bk2gKJedmK73rZTREy0/k+2J+N34weCwDUSjySkl0QNjzIw9ye9Rd
 p8OA==
X-Gm-Message-State: AOAM532vYV74TLSIv8CFJYIOi/r2GJJ5GqwyDM2VBpq2nYo3eP4hJxtu
 B2YPsXmYaLu/UsriSH/399e6jyEyt1OVhA==
X-Google-Smtp-Source: ABdhPJwR28XnboVDVbzayuMMW8KqBjRDLTstmZAW2sJePVpmjZ8z0qbOJsjxcheRlJC9GkcnwkYVdg==
X-Received: by 2002:a1c:9d0d:: with SMTP id g13mr713096wme.39.1635276867093;
 Tue, 26 Oct 2021 12:34:27 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id s18sm17676123wrb.95.2021.10.26.12.34.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Oct 2021 12:34:26 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: mchehab@kernel.org,
	hverkuil@xs4all.nl,
	gregkh@linuxfoundation.org
Date: Tue, 26 Oct 2021 19:34:11 +0000
Message-Id: <20211026193416.1176797-10-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211026193416.1176797-1-clabbe@baylibre.com>
References: <20211026193416.1176797-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-Headers-End: 1mfSLv-0003bv-A5
X-Mailman-Approved-At: Wed, 27 Oct 2021 15:55:10 +0000
Subject: [Mjpeg-users] [PATCH v3 09/14] staging: media: zoran: move config
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
