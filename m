Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3765950CF6C
	for <lists+mjpeg-users@lfdr.de>; Sun, 24 Apr 2022 06:36:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1niTzB-0007TO-PW; Sun, 24 Apr 2022 04:36:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ian@linux.cowan.aero>) id 1ni89y-0007PC-Jh
 for mjpeg-users@lists.sourceforge.net; Sat, 23 Apr 2022 05:18:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=O2YpLxCZX0gFzvrzeHxWNDZ4KHtQ9BZwLgJu+fxKaVc=; b=Mjz/dK73ESg7hrOhL+NCtuDiZz
 9U+wJOfirjwcmDHeFBh/JqyK5FzqREiIdK2mE/bwku8HAIgMHem4cK9WtzFNcuWIPzaz/7btCTSdr
 Kg/uetLGrE4bOonmu5OgzmM+5A777aSg1WI9dFmPeDXaRYcmOEV9ZxZ7xwYvtj2bf2Uc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=O2YpLxCZX0gFzvrzeHxWNDZ4KHtQ9BZwLgJu+fxKaVc=; b=E
 wCVVMMoyndlT9zLQWQ1Csd1NTuUZldNYdOEOqSsqr/l1YPcA5PtPNw8aTGyC8OpMyVd8a5CsdEzjK
 ETcqKuo0w7N2jvRSY+0sZvyJOz65+9LeG06DWEpQJFuh/1kyZkM++Frak+emg1qCX/EcGFJhqgzqK
 iBH4azL7TmACVy5k=;
Received: from bumble.birch.relay.mailchannels.net ([23.83.209.25])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1ni89o-0001T8-9W
 for mjpeg-users@lists.sourceforge.net; Sat, 23 Apr 2022 05:18:16 +0000
Received: from relay.mailchannels.net (localhost [127.0.0.1])
 by relay.mailchannels.net (Postfix) with ESMTP id F0F1B80161E;
 Sat, 23 Apr 2022 05:17:57 +0000 (UTC)
Received: from pdx1-sub0-mail-a217.dreamhost.com (unknown [127.0.0.6])
 (Authenticated sender: dreamhost)
 by relay.mailchannels.net (Postfix) with ESMTPA id 67C9B8014FB;
 Sat, 23 Apr 2022 05:17:57 +0000 (UTC)
ARC-Seal: i=1; s=arc-2022; d=mailchannels.net; t=1650691077; a=rsa-sha256;
 cv=none;
 b=XWY/q9enU7eu2PjU2cTX22W3WeHCxFHD3KkGZov9CLDcKZh4KO4VWqVv+rVD1CuRZf2NrP
 fx2+xcz0jNP9DeavIe0kt1WdswW0SCuxv73VKBlKbBh/r7WXU7LJDJ6qqf3agJVmHn7p0K
 UBSchDxfxEQWmQ4iRR5JMYKMBrPGw8AxHOdjioK43pMywHbUAMN/VQYdsIPmpWEgCLGcuj
 9OsoRbuLeEwf9MeLYyHqTP++vTB4n0HfFgSlm8xlYoxTCLsgtrAUFX3vmipaxOMWyAevND
 Y+wuzKXF1eA0qMkkNosabnXfGr48tTyvgeb7ed0leNgaXxOpNm7HW12VSdTaEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net; s=arc-2022; t=1650691077;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:dkim-signature;
 bh=O2YpLxCZX0gFzvrzeHxWNDZ4KHtQ9BZwLgJu+fxKaVc=;
 b=7D4D08XKd+rTDsamAse+Xp5jYH5/qUzR/HELEvVE9V+yQzWgRYt3sSAlUEG3Ivcnu0A5z1
 iIcsMWk7SjLWh7rbHGqJZdq1+JuLgYEoduaWXgXn+6nv543hfjc3MnX9HbLwSEFLkgM6hJ
 wD2w7Y/JE1bBChrtBA33wZllem6hG1Hx1nBEYRoOVVr10kpva44LIL4gkDT7yfFbN6TtF3
 gcEp4ExWhrMMVN6ebJYS95vQF0DoINIOh5x/3QmtBZk6ywKWvX384UZ+vxIRZZ9N2P/zZW
 0GF2o+zGhdWupFZQdiz6D741uGxpIftRPAze/+nm43XvOPX846S4qdRCoV+k8Q==
ARC-Authentication-Results: i=1; rspamd-67b64f579b-chnfp;
 auth=pass smtp.auth=dreamhost smtp.mailfrom=ian@linux.cowan.aero
X-MC-Relay: Neutral
X-MailChannels-SenderId: dreamhost|x-authsender|ian@linux.cowan.aero
X-MailChannels-Auth-Id: dreamhost
X-Abiding-Tasty: 578c31796007b5b1_1650691077720_3305558993
X-MC-Loop-Signature: 1650691077720:1014664239
X-MC-Ingress-Time: 1650691077719
Received: from pdx1-sub0-mail-a217.dreamhost.com (pop.dreamhost.com
 [64.90.62.162]) (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
 by 100.120.38.149 (trex/6.7.1); Sat, 23 Apr 2022 05:17:57 +0000
Received: from localhost.localdomain (unknown [69.12.38.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 (Authenticated sender: ian@linux.cowan.aero)
 by pdx1-sub0-mail-a217.dreamhost.com (Postfix) with ESMTPSA id 4Klfg82dGGz1L0; 
 Fri, 22 Apr 2022 22:17:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.cowan.aero;
 s=dreamhost; t=1650691077;
 bh=O2YpLxCZX0gFzvrzeHxWNDZ4KHtQ9BZwLgJu+fxKaVc=;
 h=From:To:Cc:Subject:Date:Content-Transfer-Encoding;
 b=XaBXrL0qtIETBlBIGnO4x+jXFn86bKpPQLwQL77nz+jc6k/p4JwNhjMFuV5U2EOPb
 nIUPQirbj036iCguQ2kwOuaNz4fTzi9GY5z4Xg8WKdQf9dLhqTOHdhFCsQN4zAxLT9
 M8ChCdtrXpGA5XSf5YgolpoE19MZiu7AedamotG8885kO8h3qxdPiTddPP83gh5nXr
 yVAnmgNeXjKmAq9VPqqLA9kxODVT83OUqI73dKeIPprK2SRc2euUiYxYgjZ4U46Jll
 PMjPBasFv7NQlUEg7Q60DCgkuhghSkfQXyYlNAWQEoscUB1bweWMm50e/NQ/xNsD4R
 VopJtLlKqsfBQ==
From: Ian Cowan <ian@linux.cowan.aero>
To: clabbe@baylibre.com
Date: Sat, 23 Apr 2022 01:17:45 -0400
Message-Id: <20220423051745.292683-1-ian@linux.cowan.aero>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This adds the zrdev_dbg() (pointing to dev_dbg()),
 zrdev_err()
 (pointing to dev_err()), and zrdev_info() (pointing to dev_info()) macros
 to the zoran drivers. These are the preferred method for debugg [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [23.83.209.25 listed in list.dnswl.org]
X-Headers-End: 1ni89o-0001T8-9W
X-Mailman-Approved-At: Sun, 24 Apr 2022 04:36:37 +0000
Subject: [Mjpeg-users] [PATCH 1/4] staging: media: zoran: add zrdev_dbg()
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
Cc: gregkh@linuxfoundation.org, linux-staging@lists.linux.dev,
 mjpeg-users@lists.sourceforge.net, ian@linux.cowan.aero, mchehab@kernel.org,
 dan.carpenter@oracle.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

This adds the zrdev_dbg() (pointing to dev_dbg()), zrdev_err() (pointing
to dev_err()), and zrdev_info() (pointing to dev_info()) macros to the
zoran drivers. These are the preferred method for debugging and this
will allow to extract the device from the zoran struct to make the call.

Signed-off-by: Ian Cowan <ian@linux.cowan.aero>
---
 drivers/staging/media/zoran/zoran.h | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/staging/media/zoran/zoran.h b/drivers/staging/media/zoran/zoran.h
index 654c95fa5aba..42b86356c022 100644
--- a/drivers/staging/media/zoran/zoran.h
+++ b/drivers/staging/media/zoran/zoran.h
@@ -19,6 +19,7 @@
 #define _BUZ_H_
 
 #include <linux/debugfs.h>
+#include <linux/dev_printk.h>
 #include <media/v4l2-device.h>
 #include <media/v4l2-ctrls.h>
 #include <media/videobuf2-core.h>
@@ -301,6 +302,18 @@ static inline struct zoran *to_zoran(struct v4l2_device *v4l2_dev)
 
 #endif
 
+/**
+ * Debugging macros
+ */
+#define zrdev_dbg(zr, format, args...) \
+	dev_dbg(&zr->video_dev->dev, format, ##args) \
+
+#define zrdev_err(zr, format, args...) \
+	dev_err(&zr->video_dev->dev, format, ##args) \
+
+#define zrdev_info(zr, format, args...) \
+	dev_info(&zr->video_dev->dev, format, ##args) \
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
