Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AF36A42D16C
	for <lists+mjpeg-users@lfdr.de>; Thu, 14 Oct 2021 06:17:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1masBW-0006Dv-D0; Thu, 14 Oct 2021 04:17:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <clabbe@baylibre.com>) id 1maju6-0001Yj-SP
 for mjpeg-users@lists.sourceforge.net; Wed, 13 Oct 2021 19:27:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XCuCJfe1m2EBzP6uG/hjir3uZO33RFp6V2H2rUcCkfg=; b=PPg6MTj09JgKkfni/Mw7RfXL5D
 5l1SuL4aFeE2JZw3Fk1VV1o0X+g2JTjNQsdLiO1lCUHk15exqOhjK7gRQK+MOBJIFJXlaIhXDo2di
 AAvVTydekLt7tXnrlY9rQ0aa9LY88ZOvFN8CHX0Jc7xWVJ2kCOdiNYxaHLSFEGC1hOZ4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XCuCJfe1m2EBzP6uG/hjir3uZO33RFp6V2H2rUcCkfg=; b=Ri9KMFUueyelH2B7MTvGfLE5Pv
 mGzRPw0frfJsuz6lGOwCC+gVWdBPqy66uQPPl1TAJpsread96AWl8QrFnTjxw8a/UNoAWxHqlWud1
 llM1xSi5g12z6q910UcKb1e9KnwdTnEmr4LQWdTp9URzcnLIJqJwsU+AyPMHKplcElZs=;
Received: from mail-ed1-f50.google.com ([209.85.208.50])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1maju2-0001Gn-Lp
 for mjpeg-users@lists.sourceforge.net; Wed, 13 Oct 2021 19:27:06 +0000
Received: by mail-ed1-f50.google.com with SMTP id ec8so14554284edb.6
 for <mjpeg-users@lists.sourceforge.net>; Wed, 13 Oct 2021 12:27:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XCuCJfe1m2EBzP6uG/hjir3uZO33RFp6V2H2rUcCkfg=;
 b=nwkz5FHJqjhY71EanYsEZEn1qxRy5EmWN6Q7e5QkqnduaU7D6XDddsC1G6RWnFfIKF
 kns+vZnDzHrjg2F98Js4Iby1WFxmjSzBTC8Cf3lT7297mNv5SDPesLnQhSo3SkvO70UN
 J62nrMiFvuYi98Cp1JA6iE2x1lnHFUUFYSiJ6cIqkd4j5r3W38iUEYEN4fogJpDscf5s
 4pyZEK9hwra1CB3hiDRGW7q5glXE84uDK/unNRL3cY5gkL181lzfdkCIdggffLVDWkey
 5iTEDW5Uc6vvjE6BSDLi01nCLA/NgiiwkVVk731WHd/FTA8tliFN48TpXiYCVRLrxUBn
 peJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XCuCJfe1m2EBzP6uG/hjir3uZO33RFp6V2H2rUcCkfg=;
 b=qszy15J4SOlb+65hA+kdK5UTichpeKPpaCHmjALmo2v7P2PGG2B6wCBr92AiOXui2a
 q2PwDN9qo0LmDrOJDHQiUcY2KcJEg2NxYV7R9wzLh6Pb5I9uPatfRY4/A8MJqGc+VrA/
 1YxfhhpUVhIOWXdtzjLPT6+W2wRoB1mK00CsRWMGmQccqK9sTZCnV+uSxVde9hadtnaq
 yIZUJa2XBaDZ4voPyoPg2E8rwLSh7WNboOU5O6MWVVztjzLIq6lKE60VXm2Ovo7x+tDW
 TeLkUZB8fISGFabqW0+5vt/ECQKxzQk1bTJGUqZt3HgjKyFaY4FxmcsQmNAmoYNQF0TU
 7yjw==
X-Gm-Message-State: AOAM532xbOemjNZcEzKItykbef2HSxt3iOyuhfcCyk1BVWkZJ/SaKFv7
 Mq76aYxL/wtnCagw6oGGHDQjukYMlWSFYg==
X-Google-Smtp-Source: ABdhPJz7opz1h2jfYo83FVcdcNhIOCcBVzmCE5sHQ1ScMKsCEWGNSKBtV/IISxT5+z9y8ljQ5uQe+Q==
X-Received: by 2002:a5d:58ca:: with SMTP id o10mr1053060wrf.358.1634151504493; 
 Wed, 13 Oct 2021 11:58:24 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id e8sm573059wrg.48.2021.10.13.11.58.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 11:58:24 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: mchehab@kernel.org,
	hverkuil@xs4all.nl,
	gregkh@linuxfoundation.org
Date: Wed, 13 Oct 2021 18:58:12 +0000
Message-Id: <20211013185812.590931-11-clabbe@baylibre.com>
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
 Content preview: Reduces the size of the probe function by adding
 zoran_i2c_init/zoran_i2c_exit
 functions. Signed-off-by: Corentin Labbe <clabbe@baylibre.com> ---
 drivers/staging/media/zoran/zoran_card.c
 | 67 ++++++++++++++++++------ 1 file changed, 51 insertions(+), 16 deletions(-)
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.50 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.50 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1maju2-0001Gn-Lp
X-Mailman-Approved-At: Thu, 14 Oct 2021 04:17:36 +0000
Subject: [Mjpeg-users] [PATCH v2 10/10] staging: media: zoran: introduce
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
 drivers/staging/media/zoran/zoran_card.c | 67 ++++++++++++++++++------
 1 file changed, 51 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index 9bc5af34d909..fe4d867bf341 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -874,6 +874,53 @@ static int zoran_init_video_devices(struct zoran *zr)
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
+		pci_err(zr->pci_dev, "Fail to get decoder\n");
+		err = -EINVAL;
+		goto error_decoder;
+	}
+
+	if (zr->card.i2c_encoder) {
+		zr->encoder = v4l2_i2c_new_subdev(&zr->v4l2_dev, &zr->i2c_adapter,
+						  zr->card.i2c_encoder, 0,
+						  zr->card.addrs_encoder);
+		if (!zr->encoder) {
+			pci_err(zr->pci_dev, "Fail to get encoder\n");
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
@@ -1001,7 +1048,7 @@ static void zoran_remove(struct pci_dev *pdev)
 		videocodec_detach(zr->vfe);
 
 	/* unregister i2c bus */
-	zoran_unregister_i2c(zr);
+	zoran_i2c_exit(zr);
 	/* disable PCI bus-mastering */
 	zoran_set_pci_master(zr, 0);
 	/* put chip into reset */
@@ -1285,22 +1332,10 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
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
 
@@ -1377,7 +1412,7 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 zr_detach_codec:
 	videocodec_detach(zr->codec);
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
