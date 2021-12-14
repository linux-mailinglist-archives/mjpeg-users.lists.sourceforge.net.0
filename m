Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 21DC7474950
	for <lists+mjpeg-users@lfdr.de>; Tue, 14 Dec 2021 18:26:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mxBYu-0002RM-Et; Tue, 14 Dec 2021 17:26:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <clabbe@baylibre.com>) id 1mxAvB-0002r6-AM
 for mjpeg-users@lists.sourceforge.net; Tue, 14 Dec 2021 16:44:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uoSsJQeMeV1S/aZ9+Qs931neAcHv5KnV5JpeQ9wVWNQ=; b=RbSRvLh2dWl6ntKIaDMdlQZ6l/
 9221sTAmfJ+MKORxiroB/nmlKDZ//JBkReI9u0O4bLkzjxaP6pEr2hyDAV7xzMK7uOydaiMRHFKEG
 UnXJ0L2LcPUnYRKWfJPHSXlPzfsWYlNCeYHtaqOGy05yDwGT47SD2YfhOA7L0LNg4mC0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uoSsJQeMeV1S/aZ9+Qs931neAcHv5KnV5JpeQ9wVWNQ=; b=YQ6Auj5JhqnXbrDA4Jco7/UDMs
 WKs/avDlQhTIQy/UwytlkDk/wKrtriCup2kehUhKsQKhXsoCOyiNCLJSikPsIit9Q78hoyY8W8XeT
 SGdUPSqKgiOH4RKzT2/b6K+pAKTBl9io26fwv2xMn/PR+yhel/Q8fpa5C4xztvbW7Fp0=;
Received: from mail-wm1-f52.google.com ([209.85.128.52])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mxAvA-00FJQa-DH
 for mjpeg-users@lists.sourceforge.net; Tue, 14 Dec 2021 16:44:57 +0000
Received: by mail-wm1-f52.google.com with SMTP id p18so14687286wmq.5
 for <mjpeg-users@lists.sourceforge.net>; Tue, 14 Dec 2021 08:44:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uoSsJQeMeV1S/aZ9+Qs931neAcHv5KnV5JpeQ9wVWNQ=;
 b=NNYQ5qKRBHiVUROM7zfHeFUyjM9pi4CEzhvUmxRUxTqNKA15SkhIeGUFY73oBhN1BJ
 Ya8SOx6ibFbPhn01ud/oZQcHvDGqCPZbW9yr/rkH9kZ/9ZCOHPA+2pDk6o4wK36zPzVK
 85pTVJMSVzuy5TcH02TU24QA+JTeVOe9GmMSH9iWPt8ZzyRmVHTux1aAqkUcIJiPAWZa
 vITHXDfLBAhbpUHIbGBr7nbhWIHL4qBrFxsm0njunwqYysGA+AUNLejRzfEYkPLPOfBp
 4uYls4zmiJYQqlHcbU1ELFH3LfDEpnwMs78D3KpSZtVJwFTlmk3g6x911diNAiCrIk0D
 hUOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uoSsJQeMeV1S/aZ9+Qs931neAcHv5KnV5JpeQ9wVWNQ=;
 b=CFqx+bv1ojSra2nbPDSiXWdU2CzoXMSo8HjXaZGDJH3gIgvBypWq1LYaCYkklkiYRT
 /Uj7LJHvdcWw4eFCXQJcuJjuz7h+s84+JVWMy/qEFaZJkTok418t7Hqvobce3VFa+zqP
 N5KSFLWCOBuwRQYV+1wh70h+VzZnONeen/1kt3hTKMK06yv0YWe4l7kWoO6vHlEqRGls
 D5W+3maeLoFna+PmboWL2pFe2Cl9zv6AXP8t2ViX6tQBtKXUWKzYkbtbiJVZL7hxK4q2
 ku+Hx2q7GuGmbiBU6wbIZ05KuTArsxdf9NWyBnSnbHl3PorgxYURlejMmY2NU2Cxq2Sp
 m4Yw==
X-Gm-Message-State: AOAM532kIFbaxS8beoPFaEINFVNblUbiXLZflv+GGo2OfjMHZJfm8Qb5
 abCIo33icjjVsUtuJhmfdQnORIB0bvRTXR0m
X-Google-Smtp-Source: ABdhPJxiat8mqGQk0rzmDCTJ2P+wIrD4jaQUuNvztLW+VhHLOH/5Wduf2SjBu+iA3HIgB6sZD3Mlbg==
X-Received: by 2002:a05:600c:1548:: with SMTP id
 f8mr47272583wmg.67.1639498609517; 
 Tue, 14 Dec 2021 08:16:49 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id a9sm295116wrt.66.2021.12.14.08.16.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Dec 2021 08:16:49 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: mchehab@kernel.org,
	hverkuil@xs4all.nl,
	gregkh@linuxfoundation.org
Date: Tue, 14 Dec 2021 16:16:28 +0000
Message-Id: <20211214161636.1886900-11-clabbe@baylibre.com>
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
 Content preview: Reduces the size of the probe function by adding
 zoran_i2c_init/zoran_i2c_exit
 functions. Signed-off-by: Corentin Labbe <clabbe@baylibre.com> ---
 drivers/staging/media/zoran/zoran_card.c
 | 73 ++++++++++++++++++------ 1 file changed, 54 insertions(+), 19 deletions(-)
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.52 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.52 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1mxAvA-00FJQa-DH
X-Mailman-Approved-At: Tue, 14 Dec 2021 17:25:54 +0000
Subject: [Mjpeg-users] [PATCH v4 10/18] staging: media: zoran: introduce
 zoran_i2c_init
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

Reduces the size of the probe function by adding zoran_i2c_init/zoran_i2c_exit
functions.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_card.c | 73 ++++++++++++++++++------
 1 file changed, 54 insertions(+), 19 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index 19eb3150074a..a00ad40244d0 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -931,6 +931,53 @@ static int zoran_init_video_devices(struct zoran *zr)
 	return err;
 }
 
+/*
+ * v4l2_device_unregister() will care about removing zr->encoder/zr->decoder
+ * via v4l2_i2c_subdev_unregister()
+ */
+static int zoran_i2c_init(struct zoran *zr)
+{
+	int err;
+
+	pci_info(zr->pci_dev, "Initializing i2c bus...\n");
+
+	err = zoran_register_i2c(zr);
+	if (err) {
+		pci_err(zr->pci_dev, "%s - cannot initialize i2c bus\n", __func__);
+		return err;
+	}
+
+	zr->decoder = v4l2_i2c_new_subdev(&zr->v4l2_dev, &zr->i2c_adapter,
+					  zr->card.i2c_decoder, 0,
+					  zr->card.addrs_decoder);
+	if (!zr->decoder) {
+		pci_err(zr->pci_dev, "Fail to get decoder %s\n", zr->card.i2c_decoder);
+		err = -EINVAL;
+		goto error_decoder;
+	}
+
+	if (zr->card.i2c_encoder) {
+		zr->encoder = v4l2_i2c_new_subdev(&zr->v4l2_dev, &zr->i2c_adapter,
+						  zr->card.i2c_encoder, 0,
+						  zr->card.addrs_encoder);
+		if (!zr->encoder) {
+			pci_err(zr->pci_dev, "Fail to get encoder %s\n", zr->card.i2c_encoder);
+			err = -EINVAL;
+			goto error_decoder;
+		}
+	}
+	return 0;
+
+error_decoder:
+	zoran_unregister_i2c(zr);
+	return err;
+}
+
+static void zoran_i2c_exit(struct zoran *zr)
+{
+	zoran_unregister_i2c(zr);
+}
+
 void zoran_open_init_params(struct zoran *zr)
 {
 	int i;
@@ -1059,7 +1106,7 @@ static void zoran_remove(struct pci_dev *pdev)
 	videocodec_exit(zr);
 
 	/* unregister i2c bus */
-	zoran_unregister_i2c(zr);
+	zoran_i2c_exit(zr);
 	/* disable PCI bus-mastering */
 	zoran_set_pci_master(zr, 0);
 	/* put chip into reset */
@@ -1340,22 +1387,10 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	}
 
 	zr36057_restart(zr);
-	/* i2c */
-	pci_info(zr->pci_dev, "Initializing i2c bus...\n");
 
-	if (zoran_register_i2c(zr) < 0) {
-		pci_err(pdev, "%s - can't initialize i2c bus\n", __func__);
+	err = zoran_i2c_init(zr);
+	if (err)
 		goto zr_free_irq;
-	}
-
-	zr->decoder = v4l2_i2c_new_subdev(&zr->v4l2_dev, &zr->i2c_adapter,
-					  zr->card.i2c_decoder, 0,
-					  zr->card.addrs_decoder);
-
-	if (zr->card.i2c_encoder)
-		zr->encoder = v4l2_i2c_new_subdev(&zr->v4l2_dev, &zr->i2c_adapter,
-						  zr->card.i2c_encoder, 0,
-						  zr->card.addrs_encoder);
 
 	pci_info(zr->pci_dev, "Initializing videocodec bus...\n");
 	err = videocodec_init(zr);
@@ -1370,15 +1405,15 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (zr->card.video_codec != 0) {
 		master_codec = zoran_setup_videocodec(zr, zr->card.video_codec);
 		if (!master_codec)
-			goto zr_unreg_i2c;
+			goto zr_unreg_videocodec;
 		zr->codec = videocodec_attach(master_codec);
 		if (!zr->codec) {
 			pci_err(pdev, "%s - no codec found\n", __func__);
-			goto zr_unreg_i2c;
+			goto zr_unreg_videocodec;
 		}
 		if (zr->codec->type != zr->card.video_codec) {
 			pci_err(pdev, "%s - wrong codec\n", __func__);
-			goto zr_detach_codec;
+			goto zr_unreg_videocodec;
 		}
 	}
 	if (zr->card.video_vfe != 0) {
@@ -1417,7 +1452,7 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 zr_unreg_videocodec:
 	videocodec_exit(zr);
 zr_unreg_i2c:
-	zoran_unregister_i2c(zr);
+	zoran_i2c_exit(zr);
 zr_free_irq:
 	btwrite(0, ZR36057_SPGPPCR);
 	pci_free_irq(zr->pci_dev, 0, zr);
-- 
2.32.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
