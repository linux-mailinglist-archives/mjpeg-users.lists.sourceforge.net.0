Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B58BA28059E
	for <lists+mjpeg-users@lfdr.de>; Thu,  1 Oct 2020 19:40:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1kO2Yq-0001eY-Ac; Thu, 01 Oct 2020 17:40:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mchehab@kernel.org>) id 1kNutD-0004JV-AQ
 for mjpeg-users@lists.sourceforge.net; Thu, 01 Oct 2020 09:28:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GU8DpmS0b4BdGoJRs6AkcmL83FaMZhTiXovBYzVFOdA=; b=Y90lOXDpwNKoQb8US/F5Wmdtx8
 4uyVgyIjtUipmDXnERzoe+mFRAc/wedcWddSDJwZTe0CF2HW6MVymR3QED2LFmt8nFIEYwHj1A0TQ
 XEhELHta1YmlJ/Hn2s66WAQfP8UWw9NTvPC+5z1bCaVTcxcvQt+E5PYxyZAzaQzVIcsw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:
 To:From:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=GU8DpmS0b4BdGoJRs6AkcmL83FaMZhTiXovBYzVFOdA=; b=j
 +s57Yt6TMNj9V9vD99LAU43btZFFDzFyUcAhzaBFfcyChVb9qaJN8H7ba5tQZEtyRY4cnti+lhPwL
 JZrKoXyS3zA7oEimWW+G/h/rtvNGo3uYeKJbM5nAUnt57zD4kbOUIq8piomLB4KUa8ub4IJ4ZgAYR
 pE+5KiJEem1fOLuc=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kNut6-00Cdnk-AL
 for mjpeg-users@lists.sourceforge.net; Thu, 01 Oct 2020 09:28:39 +0000
Received: from mail.kernel.org (ip5f5ad5d2.dynamic.kabel-deutschland.de
 [95.90.213.210])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A8F9821707;
 Thu,  1 Oct 2020 09:28:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601544498;
 bh=bRxCOT0GHdpfEP+hLDzCHh6ExwWYxA+B8cHCx7grTKU=;
 h=From:To:Cc:Subject:Date:From;
 b=n3LLptoC05AgdQddGfNE50eXUrN5MxYeojzcuiUzD6/qugKGw2n/lzmGkLFgY6Y+l
 FKHlShxYF+X6rliQ7qp6rAngJfAxmftkMBOvEOoGPFnagK6T+LJTJYOe89Qk7bI1Y9
 OsvGDEsyAwGeuAWxsMRH+Fg7r0FTH1+glGBGaJR0=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1kNusp-005Xag-QO; Thu, 01 Oct 2020 11:28:15 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Date: Thu,  1 Oct 2020 11:28:13 +0200
Message-Id: <21fd8f12edb27d269eefdbea172aa3a80e2aa6ce.1601544491.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kNut6-00Cdnk-AL
X-Mailman-Approved-At: Thu, 01 Oct 2020 17:40:06 +0000
Subject: [Mjpeg-users] [PATCH 1/3] media: zoran: use upper case for card
 types
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
Cc: devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, mjpeg-users@lists.sourceforge.net,
 Corentin Labbe <clabbe@baylibre.com>, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

Don't mix case there: let's just use uppercase, as this is
the common pattern for such define-like enums.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/zoran/zoran.h      |  8 ++++----
 drivers/staging/media/zoran/zoran_card.c | 20 ++++++++++----------
 2 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran.h b/drivers/staging/media/zoran/zoran.h
index 372fadfd9a01..7217a64fe59b 100644
--- a/drivers/staging/media/zoran/zoran.h
+++ b/drivers/staging/media/zoran/zoran.h
@@ -75,11 +75,11 @@ enum card_type {
 	UNKNOWN = -1,
 
 	/* Pinnacle/Miro */
-	DC10_old,		/* DC30 like */
-	DC10_new,		/* DC10plus like */
-	DC10plus,
+	DC10_OLD,		/* DC30 like */
+	DC10_NEW,		/* DC10_PLUS like */
+	DC10_PLUS,
 	DC30,
-	DC30plus,
+	DC30_PLUS,
 
 	/* Linux Media Labs */
 	LML33,
diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index 84a5d52517cd..8d56d039a686 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -104,8 +104,8 @@ MODULE_VERSION(ZORAN_VERSION);
 	.subvendor = (subven), .subdevice = (subdev), .driver_data = (data) }
 
 static const struct pci_device_id zr36067_pci_tbl[] = {
-	ZR_DEVICE(PCI_VENDOR_ID_MIRO, PCI_DEVICE_ID_MIRO_DC10PLUS, DC10plus),
-	ZR_DEVICE(PCI_VENDOR_ID_MIRO, PCI_DEVICE_ID_MIRO_DC30PLUS, DC30plus),
+	ZR_DEVICE(PCI_VENDOR_ID_MIRO, PCI_DEVICE_ID_MIRO_DC10PLUS, DC10_PLUS),
+	ZR_DEVICE(PCI_VENDOR_ID_MIRO, PCI_DEVICE_ID_MIRO_DC30PLUS, DC30_PLUS),
 	ZR_DEVICE(PCI_VENDOR_ID_ELECTRONICDESIGNGMBH, PCI_DEVICE_ID_LML_33R10, LML33R10),
 	ZR_DEVICE(PCI_VENDOR_ID_IOMEGA, PCI_DEVICE_ID_IOMEGA_BUZ, BUZ),
 	ZR_DEVICE(PCI_ANY_ID, PCI_ANY_ID, NUM_CARDS),
@@ -311,7 +311,7 @@ static const unsigned short bt866_addrs[] = { 0x44, I2C_CLIENT_END };
 
 static struct card_info zoran_cards[NUM_CARDS] = {
 	{
-		.type = DC10_old,
+		.type = DC10_OLD,
 		.name = "DC10(old)",
 		.i2c_decoder = "vpx3220a",
 		.addrs_decoder = vpx3220_addrs,
@@ -340,7 +340,7 @@ static struct card_info zoran_cards[NUM_CARDS] = {
 		.input_mux = 0,
 		.init = &dc10_init,
 	}, {
-		.type = DC10_new,
+		.type = DC10_NEW,
 		.name = "DC10(new)",
 		.i2c_decoder = "saa7110",
 		.addrs_decoder = saa7110_addrs,
@@ -369,8 +369,8 @@ static struct card_info zoran_cards[NUM_CARDS] = {
 		.input_mux = 0,
 		.init = &dc10plus_init,
 	}, {
-		.type = DC10plus,
-		.name = "DC10plus",
+		.type = DC10_PLUS,
+		.name = "DC10_PLUS",
 		.i2c_decoder = "saa7110",
 		.addrs_decoder = saa7110_addrs,
 		.i2c_encoder = "adv7175",
@@ -430,8 +430,8 @@ static struct card_info zoran_cards[NUM_CARDS] = {
 		.input_mux = 0,
 		.init = &dc10_init,
 	}, {
-		.type = DC30plus,
-		.name = "DC30plus",
+		.type = DC30_PLUS,
+		.name = "DC30_PLUS",
 		.i2c_decoder = "vpx3220a",
 		.addrs_decoder = vpx3220_addrs,
 		.i2c_encoder = "adv7175",
@@ -694,7 +694,7 @@ int zoran_check_jpg_settings(struct zoran *zr,
 		break;
 	case 4:
 
-		if (zr->card.type == DC10_new) {
+		if (zr->card.type == DC10_NEW) {
 			pci_dbg(zr->pci_dev, "%s - HDec by 4 is not supported on the DC10\n", __func__);
 			err0++;
 			break;
@@ -715,7 +715,7 @@ int zoran_check_jpg_settings(struct zoran *zr,
 		/* We have to check the data the user has set */
 
 		if (settings->HorDcm != 1 && settings->HorDcm != 2 &&
-		    (zr->card.type == DC10_new || settings->HorDcm != 4)) {
+		    (zr->card.type == DC10_NEW || settings->HorDcm != 4)) {
 			settings->HorDcm = clamp(settings->HorDcm, 1, 2);
 			err0++;
 		}
-- 
2.26.2



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
