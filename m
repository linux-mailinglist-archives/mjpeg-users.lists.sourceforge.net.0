Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B8151D2CB
	for <lists+mjpeg-users@lfdr.de>; Fri,  6 May 2022 10:06:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1nmsyw-0003qq-To; Fri, 06 May 2022 08:06:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ian@linux.cowan.aero>) id 1nmqW6-0002l2-Hb
 for mjpeg-users@lists.sourceforge.net; Fri, 06 May 2022 05:28:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0dA6jT+EL40ZJ+80iJLHF2mzSScBCF9xe9/bVhB5W28=; b=cqYC4wC0XLcFebqeNPrXF+Arz8
 MkIiWk4/98K/bzfh8RKVawdnoZ2c3kIKOSFN/Faz6+xBg5I+T5XSq4as10L0mCNxUc3Ivs9mhRFcw
 g3YH3nBjP1McN7wAqCUJbXmnnno4KwAGDWcA7nyGMcUut6eeN//RaeokHEFieTSsQf5g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=0dA6jT+EL40ZJ+80iJLHF2mzSScBCF9xe9/bVhB5W28=; b=f
 lIF6HGCoTKOsj1yqk1mLIZmrHKb0gaqsr5Q7/HkDOvbDKiLIqk35Wd9F+cM0xogB+9YhUxvYNpCjf
 AtyP6FXN+Q+ltJhbrVSaCAxLyK7hNLp9VDo7hk2l805BW9L/+54G78iBLvhO0E7PiP7O7lIwCuv2G
 ZAuDkmY9mqzwsiPA=;
Received: from dragonfly.birch.relay.mailchannels.net ([23.83.209.51])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nmqVv-002nTt-UC
 for mjpeg-users@lists.sourceforge.net; Fri, 06 May 2022 05:28:36 +0000
X-Sender-Id: dreamhost|x-authsender|ian@linux.cowan.aero
Received: from relay.mailchannels.net (localhost [127.0.0.1])
 by relay.mailchannels.net (Postfix) with ESMTP id 61A432C0E70;
 Fri,  6 May 2022 05:28:13 +0000 (UTC)
Received: from pdx1-sub0-mail-a243.dreamhost.com (unknown [127.0.0.6])
 (Authenticated sender: dreamhost)
 by relay.mailchannels.net (Postfix) with ESMTPA id D74002C0F78;
 Fri,  6 May 2022 05:28:12 +0000 (UTC)
ARC-Seal: i=1; s=arc-2022; d=mailchannels.net; t=1651814893; a=rsa-sha256;
 cv=none;
 b=Yg2xDVG4lFNdurDew2nkCoScQvcbN35P1j5R/YWLJE6ExSrTmSs70Fzf5Kd5/cBsc+yaeX
 Lz53rDTT89uralHWOz5MBChAwv9eE8yWcCCHR88MGTOKIvHN/r0yHFmG2J4/7ydyW5zED3
 OdTZGXJN/mxWZ38f80kkaUO9TbSqypT+8sjtQt4sXGI2Ice7t//DI2nYoAt43Qs4IQYQfo
 bnULBIyxlwIeiCTwRiX9oudSuX9j7iZI7y8bnAa/2rL/sVs9j3ezS8BneRkZNHEEYZRVr6
 dS7tQ42GXP+Yz6u4eP5Pup9enTny24GaziL+n1Noc85YJoArv17Vlor7esJohg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net; s=arc-2022; t=1651814893;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:dkim-signature;
 bh=0dA6jT+EL40ZJ+80iJLHF2mzSScBCF9xe9/bVhB5W28=;
 b=Dh8FTbUJUdfjHUmULAI8Q3XT9xaJ/G7D2xy476UYUEB3Ao9ezd8gjMW6VCtlyZN479r5WG
 EmphkvekoGLp3bDrnVABGZGEgc9gKsYMBBb2sdihg1pAmKcvqUPfeMWbAQbT6Vw4axav3M
 RkYo8se9/AP0RNVEmfO0cqZxwGrHPmoW5fTFTeAIqlcw1jpM7qIrkI1q9wVC4xp5m++WFJ
 RJdKvKkVUiMLyKDCKyZOVCWsiUdKsT/YwIZVRcITe1PjT0ft7x1fsuk6x82pgfvTjSXcSD
 613P213oAcZREPlSKmJxvWbIEmtjxtaoyZaWpNOzPNCX3kVZt89JI9JrztidyQ==
ARC-Authentication-Results: i=1; rspamd-fdd564cbf-jzqrc;
 auth=pass smtp.auth=dreamhost smtp.mailfrom=ian@linux.cowan.aero
X-Sender-Id: dreamhost|x-authsender|ian@linux.cowan.aero
X-MC-Relay: Neutral
X-MailChannels-SenderId: dreamhost|x-authsender|ian@linux.cowan.aero
X-MailChannels-Auth-Id: dreamhost
X-Bored-Descriptive: 396a819c38b86c9f_1651814893244_2034114551
X-MC-Loop-Signature: 1651814893244:2277536638
X-MC-Ingress-Time: 1651814893244
Received: from pdx1-sub0-mail-a243.dreamhost.com (pop.dreamhost.com
 [64.90.62.162]) (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
 by 100.120.38.172 (trex/6.7.1); Fri, 06 May 2022 05:28:13 +0000
Received: from localhost.localdomain (unknown [69.12.38.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 (Authenticated sender: ian@linux.cowan.aero)
 by pdx1-sub0-mail-a243.dreamhost.com (Postfix) with ESMTPSA id 4KvfH003mrz2M; 
 Thu,  5 May 2022 22:28:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.cowan.aero;
 s=dreamhost; t=1651814892;
 bh=0dA6jT+EL40ZJ+80iJLHF2mzSScBCF9xe9/bVhB5W28=;
 h=From:To:Cc:Subject:Date:Content-Transfer-Encoding;
 b=1gMNUGpJqSsaK7jLCkEZAv7l8lp1tF5c3N7tvJIPR4rI6v/QBZGWT0hOMbyl5RZT9
 s9N8oSmmkEiULdzfQPPXEhfMfxwmrtjDx3/j3wycroJAJ3+YGXNSJiQgQ2vCACEcfB
 /7NbMQ00PiyoKnMD5EV/AQnQXRlhxWZYVceNQRyclWvbk3sR3cA00O4xghsMPii1tF
 8oGmgkzeIH6Ng79NODYjuiuvVo7MxCFVGtJ27P7z1GW2sVZe96xAmJX4sBdR9CwVPP
 Uo/zcyF6p18eObAr7fxeiouZydyFErMm6Z6SaeCpJ9DKeKA1ipI0/WvcRHUE5zL+TA
 WMu3LPWlPfgbQ==
From: Ian Cowan <ian@linux.cowan.aero>
To: Corentin Labbe <clabbe@baylibre.com>
Date: Fri,  6 May 2022 01:28:00 -0400
Message-Id: <20220506052800.191910-1-ian@linux.cowan.aero>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This adds the zrdev_dbg() (pointing to pci_dbg()),
 zrdev_err()
 (pointing to pci_err()), and zrdev_info() (pointing to pci_info()) macros
 to the zoran drivers. These are the preferred method for debugg [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [23.83.209.51 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1nmqVv-002nTt-UC
X-Mailman-Approved-At: Fri, 06 May 2022 08:06:34 +0000
Subject: [Mjpeg-users] [PATCH v3 1/4] staging: media: zoran: add logging
 macros
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 mjpeg-users@lists.sourceforge.net, Ian Cowan <ian@linux.cowan.aero>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

This adds the zrdev_dbg() (pointing to pci_dbg()), zrdev_err() (pointing
to pci_err()), and zrdev_info() (pointing to pci_info()) macros to the
zoran drivers. These are the preferred method for debugging and this
will allow to extract the device from the zoran struct to make the call.

Signed-off-by: Ian Cowan <ian@linux.cowan.aero>
---
 drivers/staging/media/zoran/zoran.h | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/staging/media/zoran/zoran.h b/drivers/staging/media/zoran/zoran.h
index 654c95fa5aba..4f7f71d8e93c 100644
--- a/drivers/staging/media/zoran/zoran.h
+++ b/drivers/staging/media/zoran/zoran.h
@@ -19,6 +19,7 @@
 #define _BUZ_H_
 
 #include <linux/debugfs.h>
+#include <linux/pci.h>
 #include <media/v4l2-device.h>
 #include <media/v4l2-ctrls.h>
 #include <media/videobuf2-core.h>
@@ -301,6 +302,18 @@ static inline struct zoran *to_zoran(struct v4l2_device *v4l2_dev)
 
 #endif
 
+/*
+ * Debugging macros
+ */
+#define zrdev_dbg(zr, format, args...) \
+	pci_dbg(zr->pci_dev, format, ##args) \
+
+#define zrdev_err(zr, format, args...) \
+	pci_err(zr->pci_dev, format, ##args) \
+
+#define zrdev_info(zr, format, args...) \
+	pci_info(zr->pci_dev, format, ##args) \
+
 int zoran_queue_init(struct zoran *zr, struct vb2_queue *vq, int dir);
 void zoran_queue_exit(struct zoran *zr);
 int zr_set_buf(struct zoran *zr);
-- 
2.35.1



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
