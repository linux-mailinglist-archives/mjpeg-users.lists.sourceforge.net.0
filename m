Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC2550CF6E
	for <lists+mjpeg-users@lfdr.de>; Sun, 24 Apr 2022 06:36:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1niTzC-0007Tl-EA; Sun, 24 Apr 2022 04:36:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ian@linux.cowan.aero>) id 1ni8Q3-0003m6-KO
 for mjpeg-users@lists.sourceforge.net; Sat, 23 Apr 2022 05:34:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YvRY4CNeqRF7m16dALP4REvqvvmQt9hrensASbsdpaw=; b=k1a4ONM87TbS1VXr1pABoIX6ct
 zEkylppIS5mbBxabMP6Fkd8XJDTNF9BHh5gQeMpmVpQxFHq1eEjB8wZWFA2vZiy6aTGrZsolMj1Uu
 IWyXEw5jD8n02D9Olyl1gGQCNNyYJoRMlpgG6Vz7mVlnbkbWpdjiqiDVpCMkVW62upe0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=YvRY4CNeqRF7m16dALP4REvqvvmQt9hrensASbsdpaw=; b=F
 9XxXhr5USKeIU8nJr4vdQ12wkc9joNW9TClqyl6XC+YpYaI0n6cGVTOVENfMGfSV2ebLTHWzwgJ1M
 Gpouz/izRZCnDAeL/xWtmbfEo9BtmFVG2cSM8MAQtCZ/9tMkoVokLWovZeOsNd3Owu/p6FSGdifGn
 wz+YXv0Jfjz59xPk=;
Received: from butterfly.birch.relay.mailchannels.net ([23.83.209.27])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1ni8Pz-0002ER-QR
 for mjpeg-users@lists.sourceforge.net; Sat, 23 Apr 2022 05:34:56 +0000
Received: from relay.mailchannels.net (localhost [127.0.0.1])
 by relay.mailchannels.net (Postfix) with ESMTP id 10FB86C118F;
 Sat, 23 Apr 2022 05:18:16 +0000 (UTC)
Received: from pdx1-sub0-mail-a217.dreamhost.com (unknown [127.0.0.6])
 (Authenticated sender: dreamhost)
 by relay.mailchannels.net (Postfix) with ESMTPA id 6BDF16C12FC;
 Sat, 23 Apr 2022 05:18:15 +0000 (UTC)
ARC-Seal: i=1; s=arc-2022; d=mailchannels.net; t=1650691095; a=rsa-sha256;
 cv=none;
 b=JFQ/GIslJEc96FxvpBtC3/06bybYzyN5fEGdmy6tsgW8Q/KQdTo4vSZ9/PhoL7XX/OWeyu
 JnNbk5uFoCQOpAJ+eV1RENpDc7qdTP2QGkO3j6d1eICzsH3YjNRefwf+q0OvTDmBzysCDc
 miAVaJvdZNOBDvvrYkNZaX3TSPGce+HoAd29niZksnHprz+Mw1VnK9lF3a0LVo9i6KDgjq
 hn+rhEweEkZvYuf63AFoWy1Qg2++GdZD03XLB7LZehZ4uaeOV5Ryvnuz29D8VKB+YJC9u0
 LrUs7bSNlBxDX9wUVGRivu45Kz49W8reXm6N0rPALBODtTafuum8rcIT9U/VnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net; s=arc-2022; t=1650691095;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:dkim-signature;
 bh=YvRY4CNeqRF7m16dALP4REvqvvmQt9hrensASbsdpaw=;
 b=qd3cnt70a0ZyGT/wA9vCxqY4H3iDw4c793yzqLetWe3OsTHt4NUvB0RtHvDHMT+/KmDU0C
 P2vAfl4V40jDoK12dlGteuMdW2mNAImeoYmBGoPQOVlnt5Klcj+FWavj8EA5yJyT4TtpOO
 x50PXsYdBCLroRcaTB5qPO/IL8YtwFUViTPUaeg98ZN1a/AWuqoWdk3kHrbvpIfoxSkQoL
 s3SX+z+QBLjXz4dA8vM1zQGpdkbat6tOhBKBdhsH21hjPfN6J8608m82QbSi+c0rSH/xBq
 y/vM1N1TVWRA0YDs69ZPkuwuP1m/0TKbym8TJ8S+ZXYHl24KpJccDkWpYlL35g==
ARC-Authentication-Results: i=1; rspamd-67b64f579b-7dcpz;
 auth=pass smtp.auth=dreamhost smtp.mailfrom=ian@linux.cowan.aero
X-MC-Relay: Neutral
X-MailChannels-SenderId: dreamhost|x-authsender|ian@linux.cowan.aero
X-MailChannels-Auth-Id: dreamhost
X-Callous-Little: 5b33745e46a05a94_1650691095798_3139912716
X-MC-Loop-Signature: 1650691095798:3292576115
X-MC-Ingress-Time: 1650691095798
Received: from pdx1-sub0-mail-a217.dreamhost.com (pop.dreamhost.com
 [64.90.62.162]) (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
 by 100.107.255.136 (trex/6.7.1); Sat, 23 Apr 2022 05:18:15 +0000
Received: from localhost.localdomain (unknown [69.12.38.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 (Authenticated sender: ian@linux.cowan.aero)
 by pdx1-sub0-mail-a217.dreamhost.com (Postfix) with ESMTPSA id 4KlfgV1w8dz4C; 
 Fri, 22 Apr 2022 22:18:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.cowan.aero;
 s=dreamhost; t=1650691095;
 bh=YvRY4CNeqRF7m16dALP4REvqvvmQt9hrensASbsdpaw=;
 h=From:To:Cc:Subject:Date:Content-Transfer-Encoding;
 b=mPVRWSan2OmcapuTmkKyWBtYzz6nSnR6D6fCTUFZpMlzR5gnVD4usLMkqrGBzlRUY
 z0Uuo8P31zUT0P8ex0kx77ks7iaptx0XdmEl5Q5+ZkCAyfDYtxhQ+e2C9TB20a6xgi
 Ne+CZjjIA4kb1BmRpg5xt3i4Gxxy89Hz8zJAL9al3dJYAfKxEeZ4gPQ2doYRY4tvKa
 rOta6hba1HTNTvTFCJ7oo07uXUugCDSXsw+xeqoppauyu9gCTE2auBh9Bn6hp/HHGA
 5rGU5vfmviA+SEogi76EzmE6lqm7zTagUTG1EeqFrph+Q4vm5Izk0YCjwkaw212GzB
 0vm9BM0jVljIQ==
From: Ian Cowan <ian@linux.cowan.aero>
To: clabbe@baylibre.com
Date: Sat, 23 Apr 2022 01:18:03 -0400
Message-Id: <20220423051803.292908-1-ian@linux.cowan.aero>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This adds inline functions in the videocodec header file to
 convert the videocodec and videocodec_master structs to their respective
 contained zoran struct. This will be used to pass the zoran struct [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [23.83.209.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1ni8Pz-0002ER-QR
X-Mailman-Approved-At: Sun, 24 Apr 2022 04:36:37 +0000
Subject: [Mjpeg-users] [PATCH 2/4] staging: media: zoran: setup videocodec
 header for zrdev_dbg macros
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

This adds inline functions in the videocodec header file to convert the
videocodec and videocodec_master structs to their respective contained
zoran struct. This will be used to pass the zoran struct to the
zrdev_dbg() macros defined in the zoran header.

In the zoran header, the new include is added to ensure all variables
can be completely defined with the zoran and videocodec includes where
they are located.

Signed-off-by: Ian Cowan <ian@linux.cowan.aero>
---
 drivers/staging/media/zoran/videocodec.h | 15 +++++++++++++++
 drivers/staging/media/zoran/zoran.h      |  1 +
 2 files changed, 16 insertions(+)

diff --git a/drivers/staging/media/zoran/videocodec.h b/drivers/staging/media/zoran/videocodec.h
index 9dea348fee40..5e6057edd339 100644
--- a/drivers/staging/media/zoran/videocodec.h
+++ b/drivers/staging/media/zoran/videocodec.h
@@ -307,4 +307,19 @@ extern int videocodec_unregister(const struct videocodec *);
 
 int videocodec_debugfs_show(struct seq_file *m);
 
+#include "zoran.h"
+static inline struct zoran *videocodec_master_to_zoran(struct videocodec_master *master)
+{
+	struct zoran *zr = master->data;
+
+	return zr;
+}
+
+static inline struct zoran *videocodec_to_zoran(struct videocodec *codec)
+{
+	struct videocodec_master *master = codec->master_data;
+
+	return videocodec_master_to_zoran(master);
+}
+
 #endif				/*ifndef __LINUX_VIDEOCODEC_H */
diff --git a/drivers/staging/media/zoran/zoran.h b/drivers/staging/media/zoran/zoran.h
index 42b86356c022..674658154e88 100644
--- a/drivers/staging/media/zoran/zoran.h
+++ b/drivers/staging/media/zoran/zoran.h
@@ -20,6 +20,7 @@
 
 #include <linux/debugfs.h>
 #include <linux/dev_printk.h>
+#include <linux/i2c-algo-bit.h>
 #include <media/v4l2-device.h>
 #include <media/v4l2-ctrls.h>
 #include <media/videobuf2-core.h>
-- 
2.35.1



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
