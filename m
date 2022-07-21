Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B130E57D966
	for <lists+mjpeg-users@lfdr.de>; Fri, 22 Jul 2022 06:19:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1oEk8O-0000DU-6f; Fri, 22 Jul 2022 04:19:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <abhijeet.srivastava2308@gmail.com>)
 id 1oEXfx-0002yS-Nm
 for mjpeg-users@lists.sourceforge.net; Thu, 21 Jul 2022 15:01:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JeYFtSPDsXNaZXYrTwjNhCXDJakI4RnMXmS/UIy+7LE=; b=RxWt7iwRF/sIzurNON90/dQDI4
 gY3e0Z7et7T10veEHEXFqvOnuYTYaPKXy4S/gJO2QdcVapQSBLuAx0arMzYrDVWWycgJ0/MpwfLke
 xHHWW1VUotdqM8Ua+qxMoRIiEqpEdySgOzK5146wvTDRX8pQ5Q59Sigy+6kT6YlyQskM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=JeYFtSPDsXNaZXYrTwjNhCXDJakI4RnMXmS/UIy+7LE=; b=B
 2MAHbQ1FOpUNyzhLtTHhI1tuveoeuq9qEN9xObm5JOXu/+HcyKUqWGvGDgY6jD4QeR+Ei594IWEpN
 8Kj8+QtAns24v25j9VtA7kdW20onMKzEIsZh+FPd5aBgZtQOVf5LU98Nx+mQtxRCTiLL3m4FnSYdL
 SuMEVPETLxlWNg+o=;
Received: from mail-pf1-f171.google.com ([209.85.210.171])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oEXfv-0062Od-Ng
 for mjpeg-users@lists.sourceforge.net; Thu, 21 Jul 2022 15:01:17 +0000
Received: by mail-pf1-f171.google.com with SMTP id d10so1975215pfd.9
 for <mjpeg-users@lists.sourceforge.net>; Thu, 21 Jul 2022 08:01:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JeYFtSPDsXNaZXYrTwjNhCXDJakI4RnMXmS/UIy+7LE=;
 b=SVI/XP2iFa0W/zveXCJv51PNfqhga0CSOUN0fdkEHmWKHobZSaspDG5RxXsDDBQQqg
 RVmpCBXdniVucnHYKvXWxGWrWRfdQONRjg9GxkpSroCpDslUTIiYU59DjdUe6B2agKPZ
 GaFIXlE5jLO7WhGb6HlBMZOzntlBElwDKLDYzMFq5AypUsw+OVfafHs47V98mpqpuVAb
 iyIEuTBDHaO/ARlR4Rr3yuHYTuzMiy2UyKpSTbG2PxkdSXZXarucw66nUuISrAZPsKLy
 mswB1Au0PV3twyhlMa8mCayZdFXNmVbCQM508g/pUuOIcNpxpA+2aXWsuHN4aBcFzdMt
 oPJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JeYFtSPDsXNaZXYrTwjNhCXDJakI4RnMXmS/UIy+7LE=;
 b=BjedAtn0/Fo+DWkecPOLYgyM+7Sb33OpD/FwUDFjDsRMUwKeVRutVrRvK2UGggvwR0
 Gl0kLQNeLBWayl72uMq0pM9jK5AzdcQuQ5mh+4x2jW78DR7jEfdHrs2kA8kcRnAtiCu7
 wMSCBHHVxzWTsGAtIC4/BN+GlJa3CfOTGtC6iT0S4z3rNh5THodQ5kY37BBOklu3nv+9
 QV4iw7TpR2XK7n53aiK9IQyvpstAjSXXhtfk0fyxnzyCwXDvzeRgJQNSqs7/4N6AtM2r
 rLoI8r5SLOzX2nR12AX2Qr5CvPBuCXZjpCp4AhZtrmB/JONGlDgSmCFJnS8xdS6jZPrV
 xNYA==
X-Gm-Message-State: AJIora+e8paPqIRZORJG1E5efIC8+ujlGSt3ijTP5HfoD7mSc8eB/Y4n
 1IE/GXkyVUwm3ZqWRmGqahg=
X-Google-Smtp-Source: AGRyM1vqv9W28F3bZ6fQOjrj7iN3NNLa2Q9GtVzBpwKiJnnbbWIJzHWbkOsSDolpAd3EeOmw30U7Lw==
X-Received: by 2002:a63:ce4a:0:b0:419:c8f4:d2a3 with SMTP id
 r10-20020a63ce4a000000b00419c8f4d2a3mr32246515pgi.515.1658415666756; 
 Thu, 21 Jul 2022 08:01:06 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:d01c:7038:6d29:af18:34a6:1c34])
 by smtp.googlemail.com with ESMTPSA id
 e25-20020aa79819000000b0052aaff953aesm1851897pfl.115.2022.07.21.08.01.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Jul 2022 08:01:06 -0700 (PDT)
From: Abhijeet Srivastava <abhijeet.srivastava2308@gmail.com>
To: 
Date: Thu, 21 Jul 2022 20:30:49 +0530
Message-Id: <20220721150055.52096-1-abhijeet.srivastava2308@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Warning found by checkpatch.pl script. Signed-off-by:
 Abhijeet
 Srivastava --- drivers/staging/media/zoran/zoran_card.c | 4 ++-- 1 file
 changed, 2 insertions(+),
 2 deletions(-) diff --git a/drivers/staging/media/zoran/zoran_card.c
 b/drivers/staging/media/zoran/zoran_card.c index 26f978a1cc72..0c138d47d0c3
 100644 --- a/drivers/staging/media/zoran/zoran_card.c +++ b/drivers/st [...]
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [abhijeet.srivastava2308[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [abhijeet.srivastava2308[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.210.171 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.171 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1oEXfv-0062Od-Ng
X-Mailman-Approved-At: Fri, 22 Jul 2022 04:19:19 +0000
Subject: [Mjpeg-users] [PATCH] media: staging: media: zoran: Removed braces
 for single statement block
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
Cc: abhijeet.srivastava2308@gmail.com, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, mjpeg-users@lists.sourceforge.net,
 Corentin Labbe <clabbe@baylibre.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

Warning found by checkpatch.pl script.

Signed-off-by: Abhijeet Srivastava <abhijeet.srivastava2308@gmail.com>
---
 drivers/staging/media/zoran/zoran_card.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index 26f978a1cc72..0c138d47d0c3 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -1038,9 +1038,9 @@ static int zr36057_init(struct zoran *zr)
 	zr->stat_com = dma_alloc_coherent(&zr->pci_dev->dev,
 					  BUZ_NUM_STAT_COM * sizeof(u32),
 					  &zr->p_sc, GFP_KERNEL);
-	if (!zr->stat_com) {
+	if (!zr->stat_com) 
 		return -ENOMEM;
-	}
+
 	for (j = 0; j < BUZ_NUM_STAT_COM; j++)
 		zr->stat_com[j] = cpu_to_le32(1); /* mark as unavailable to zr36057 */
 
-- 
2.34.1



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
