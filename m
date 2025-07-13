Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C8238B0637A
	for <lists+mjpeg-users@lfdr.de>; Tue, 15 Jul 2025 17:51:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:MIME-Version:Message-ID:Date:To:From:Sender:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=sMAi7d2b9YKLh4f8QqMyZsZlyFpWhg8R1FgtArHIsCo=; b=dS4n3iL3T4Mom9t9gLu+uGWs7+
	D6iD7gWrCLV+z0YNHoU8oTs0adfnKTsozOODjp2bmHML7CzoXXr4QbMr0G+ENqvrCytdRZ0MNQUQo
	y1LDYJFxsd58mskXiWjSTNMJUktexKuJPXTO1z6I1Tc/d6oPmQnhqN4pSCHcNZdQa5bw=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1ubhvk-0006qG-LO;
	Tue, 15 Jul 2025 15:50:56 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux@treblig.org>) id 1ub12L-0005Ml-46
 for mjpeg-users@lists.sourceforge.net;
 Sun, 13 Jul 2025 18:02:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KhHj/5VYrCrDjXwAFx8MG3eFf+YqsuNGtQA1PpGFXwM=; b=Aa9U2s6fhpVdXXwKA7mAjIg0s9
 oZJBzNEiQTPWd4/XtSYBDyrkE2iqJNwj3LPcGlR2L6ZQeOwVoVvFNpFhR4sz3oH3imTUZqI+9RH34
 Rk4fmP5iN9IzVrJjwTJXHAeBC8juxq3z4lpMZOj5M/SUoAzKNb+kcMIIw9YceMDYqwI4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=KhHj/5VYrCrDjXwAFx8MG3eFf+YqsuNGtQA1PpGFXwM=; b=W
 chk8qAtZvYHBObV6SIV793ZGSirT5elRyMjZMt0B1eIqPbw38Wrn0AhkrFR4KCbV4PU1Z/C7G06TA
 4aRgGp/6qmwiyvwCrqhhaeAhlCqLscOh0nit6H2dZSfLy9lRFm0ps4GhEJgp4w8aTbaV/SfiH7hgZ
 WlejleFqgXjVrhZI=;
Received: from mx.treblig.org ([46.235.229.95])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ub12K-0006IN-Nl for mjpeg-users@lists.sourceforge.net;
 Sun, 13 Jul 2025 18:02:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx;
 h=MIME-Version:Message-ID:Date:Subject:From:Content-Type:From
 :Subject; bh=KhHj/5VYrCrDjXwAFx8MG3eFf+YqsuNGtQA1PpGFXwM=; b=e31CTjy1FSq5tSKi
 8XO3Yn9PcjmjDwWOWW/WS9t2B++sirF+oFqpinIrqv7e3bi6EIBvjCtHFMU935gY49lwUgMtJRV6n
 vuTvFp+zqL4dwaLrkHA9yPKXBK2S+HiyeQy5lwQJfl2AGCRi7jsZJXdTcKIgnMhY6jEOhdj27jMbE
 pDV7F2+lNIaxFIwyxEsS2KZIfKuc3+nt00iGatPus4a7eg2HhMd2G1GynWOxV/n30GBOUJhvkA0MR
 aKHjx6r1QhhiyHiJDVP2QyE/TTi11NPcyF/leonQltOL9i9TgS7bq5wWe1WkXH96irR6wGD6iZDn3
 HDzYXTsup0dGJbuCdA==;
Received: from localhost ([127.0.0.1] helo=dalek.home.treblig.org)
 by mx.treblig.org with esmtp (Exim 4.96)
 (envelope-from <linux@treblig.org>) id 1ub0ZS-00Fo6P-1u;
 Sun, 13 Jul 2025 17:33:02 +0000
From: linux@treblig.org
To: clabbe@baylibre.com,
	mchehab@kernel.org
Date: Sun, 13 Jul 2025 18:33:01 +0100
Message-ID: <20250713173301.246043-1-linux@treblig.org>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: "Dr. David Alan Gilbert" <linux@treblig.org> Nothing
 has checked the zr36067_debug variable since 2021 after commit efdd0d42e276
 ("media: staging: media: zoran: remove detect_guest_activity") It's set as
 a module parameter, remove it. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
X-Headers-End: 1ub12K-0006IN-Nl
X-Mailman-Approved-At: Tue, 15 Jul 2025 15:50:52 +0000
Subject: [Mjpeg-users] [PATCH] media: pci: zoran: Remove unused debug
 parameter
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
Cc: mjpeg-users@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 "Dr. David Alan Gilbert" <linux@treblig.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

From: "Dr. David Alan Gilbert" <linux@treblig.org>

Nothing has checked the zr36067_debug variable since 2021 after
commit efdd0d42e276 ("media: staging: media: zoran: remove
detect_guest_activity")

It's set as a module parameter, remove it.

Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>
---
 drivers/media/pci/zoran/zoran_card.c | 4 ----
 drivers/media/pci/zoran/zoran_card.h | 2 --
 2 files changed, 6 deletions(-)

diff --git a/drivers/media/pci/zoran/zoran_card.c b/drivers/media/pci/zoran/zoran_card.c
index e31f9f19a48a..d81facf735d9 100644
--- a/drivers/media/pci/zoran/zoran_card.c
+++ b/drivers/media/pci/zoran/zoran_card.c
@@ -67,10 +67,6 @@ module_param(pass_through, int, 0644);
 MODULE_PARM_DESC(pass_through,
 		 "Pass TV signal through to TV-out when idling");
 
-int zr36067_debug = 1;
-module_param_named(debug, zr36067_debug, int, 0644);
-MODULE_PARM_DESC(debug, "Debug level (0-5)");
-
 #define ZORAN_VERSION "0.10.1"
 
 MODULE_DESCRIPTION("Zoran-36057/36067 JPEG codec driver");
diff --git a/drivers/media/pci/zoran/zoran_card.h b/drivers/media/pci/zoran/zoran_card.h
index 518cb426b446..c4f81777e6ce 100644
--- a/drivers/media/pci/zoran/zoran_card.h
+++ b/drivers/media/pci/zoran/zoran_card.h
@@ -12,8 +12,6 @@
 #ifndef __ZORAN_CARD_H__
 #define __ZORAN_CARD_H__
 
-extern int zr36067_debug;
-
 /* Anybody who uses more than four? */
 #define BUZ_MAX 4
 
-- 
2.50.1



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
