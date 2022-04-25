Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BA02950E544
	for <lists+mjpeg-users@lfdr.de>; Mon, 25 Apr 2022 18:11:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1nj1JN-0007AW-QM; Mon, 25 Apr 2022 16:11:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ian@linux.cowan.aero>) id 1ninVE-0001Jf-14
 for mjpeg-users@lists.sourceforge.net; Mon, 25 Apr 2022 01:27:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=03zhN+hBW8OaOUeJAmtwzMX7G3KCH/6OA0MvZT3k0A8=; b=Wv0YJGY4Uu2YoSUtgfqvO93Pz+
 ePaOAg6MxPGbO39kMEAQWZ3STYEJil4dfjwX2YBej/zfazJaypSKEXvZ1ICeAH64U5gZoitPBC2Mj
 8G4bNbV1fX/WJb3W9MAwH5Cv8R/gPQydXHjrXIDUlcN4r3CJ/3QTVILkuH9+0yi9DKqI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=03zhN+hBW8OaOUeJAmtwzMX7G3KCH/6OA0MvZT3k0A8=; b=M
 HeyjDpn3bOXP9VFCQEWYuvinw964kHovcZ9yNHEZaoZ/djSt2ZMleOBpj4TJznt2B/QLng23gSC7s
 +2vPlz+rqdpYFIXbMMOkt8xAqB9gF9Jlh+AGGoy97DbmFwZdQ9KTxMkzTxzxkcHMWTk0vPWUA/AuY
 7BBHVrgpdtL9b6x4=;
Received: from fly.ash.relay.mailchannels.net ([23.83.222.61])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1ninV4-0000qX-PC
 for mjpeg-users@lists.sourceforge.net; Mon, 25 Apr 2022 01:27:00 +0000
Received: from relay.mailchannels.net (localhost [127.0.0.1])
 by relay.mailchannels.net (Postfix) with ESMTP id D5FC6801B70;
 Mon, 25 Apr 2022 01:26:33 +0000 (UTC)
Received: from pdx1-sub0-mail-a217.dreamhost.com (unknown [127.0.0.6])
 (Authenticated sender: dreamhost)
 by relay.mailchannels.net (Postfix) with ESMTPA id 35B6A801A4A;
 Mon, 25 Apr 2022 01:26:31 +0000 (UTC)
ARC-Seal: i=1; s=arc-2022; d=mailchannels.net; t=1650849991; a=rsa-sha256;
 cv=none;
 b=iRRJFa1e/JA+9YzA3x+wb3FEMytBTLDQ+5EXv21unfUDQA25oxtUOo7dEo0gp6aFacLqvO
 R7MDTX7x7BCrhOxRCK5YkY1wpcqsMWO44sod03NvgYXnUsvxX0Kb4hhV7dFqLQFjGaMtL2
 uPYGHfo7ur8aJ4dveSWJoW5s0q1bkAwpuT92rKhplSKyxibKwaVflSYPgJrzIISi8+qEgF
 n9v/U1dq4/HRU1hQ+36JAywcny6IH9Rqgn48y5UYKbO0SGm1cqJChAR2Hhi9O0FxHgusVs
 IbpR1YMSOdeik2cDWx6xIu0yaw5pfyfFkfXc2GRjSW5miKjNXZ6WBk5TuwtxBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net; s=arc-2022; t=1650849991;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:dkim-signature;
 bh=03zhN+hBW8OaOUeJAmtwzMX7G3KCH/6OA0MvZT3k0A8=;
 b=nuAgkgp7Pg+Z3fN13uwNt1MdqXTy+X3VGumLIHT7D88iSV0AiMgM7j56H6GvNBm1LEV3vS
 b875xM//hAf4dW2acvVuJISV2AhehBuTllfX1r3DohJzsfN9IixRbMyJ+Ay4G/IIXctlE+
 KhcGkNtaJwyvHbEu2QjUDWbQ3UZ+OB9Tah+xCuvMFU2Br1GrCotf+7x0GtCPHIiI2b/LeA
 ieKKzNGR1V0P5LD3GKMSeIYsu7BaEx+LVRHtQrL0fRST6cK9+A0ESYlkkoe6MTqxNN95Hd
 8y6zr0aghBdElbaP9yLrCCtlqKhAncRBj95Fw8cj+dc3tkSvPrJYlBc8Z23MZg==
ARC-Authentication-Results: i=1; rspamd-67b64f579b-chnfp;
 auth=pass smtp.auth=dreamhost smtp.mailfrom=ian@linux.cowan.aero
X-MC-Relay: Neutral
X-MailChannels-SenderId: dreamhost|x-authsender|ian@linux.cowan.aero
X-MailChannels-Auth-Id: dreamhost
X-Daffy-Grain: 201401b6165c6f65_1650849993595_2915795923
X-MC-Loop-Signature: 1650849993595:373555036
X-MC-Ingress-Time: 1650849993595
Received: from pdx1-sub0-mail-a217.dreamhost.com (pop.dreamhost.com
 [64.90.62.162]) (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
 by 100.112.55.255 (trex/6.7.1); Mon, 25 Apr 2022 01:26:33 +0000
Received: from localhost.localdomain (unknown [69.12.38.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 (Authenticated sender: ian@linux.cowan.aero)
 by pdx1-sub0-mail-a217.dreamhost.com (Postfix) with ESMTPSA id 4KmnRB1WCMznZ; 
 Sun, 24 Apr 2022 18:26:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.cowan.aero;
 s=dreamhost; t=1650849991;
 bh=03zhN+hBW8OaOUeJAmtwzMX7G3KCH/6OA0MvZT3k0A8=;
 h=From:To:Cc:Subject:Date:Content-Transfer-Encoding;
 b=vchpmPZdFA4Ks5K5zDB+4D5GE7YuOWIy/yeW8O6dmBFHGJvUvKo5E3aj0PUxtg9nq
 hpzyyOkVqBdbdtj1T8ah7ZWokZKZ/SSEuh8mf6dQA70c0we0Bnh0RPS79yeyvC2vo8
 x7Og8PNrPqWHttmHw7hmBnODVGYnNZmzcazk4dG7uH/Q03Fxv8zklmF+A5FMrS+1E/
 gKuMA0deqXuHcz5YeyTGJOlGZ+t+ZTX54IE4row92B8WClQjrPO3F0e87DU8/afBB7
 AXQcMum/2mia6ZJrxVBS2fSv9iUKcnAI9OUH4UjwD3VGTz8FPxsVtAHSZLg697EuN4
 UrluQzBMa50zQ==
From: Ian Cowan <ian@linux.cowan.aero>
To: Corentin Labbe <clabbe@baylibre.com>
Date: Sun, 24 Apr 2022 21:26:18 -0400
Message-Id: <20220425012618.440474-1-ian@linux.cowan.aero>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
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
 no trust [23.83.222.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1ninV4-0000qX-PC
X-Mailman-Approved-At: Mon, 25 Apr 2022 16:11:41 +0000
Subject: [Mjpeg-users] [PATCH 1/4] staging: media: zoran: add logging macros
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
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-media@vger.kernel.org
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
 
+/**
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
