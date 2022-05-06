Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 952B551D2C6
	for <lists+mjpeg-users@lfdr.de>; Fri,  6 May 2022 10:06:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1nmsyw-0003ql-RF; Fri, 06 May 2022 08:06:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ian@linux.cowan.aero>) id 1nmqW4-0006o5-Lj
 for mjpeg-users@lists.sourceforge.net; Fri, 06 May 2022 05:28:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Akyb2XJfQ+IAzgEmanOrD6MMLzBWKctRb82PKzfcvQg=; b=dkw2O90APmflSvifh84g6R6mrb
 R2rD8gBYmbcL1LhAyrkmP2qwWhV2SD0ZTDA62ZZW1z4D1XeK1XZpkLs4mSWn0D+o/nO7T/+/mNhnl
 uHPWy7G74cRejHQ3/tZiZZzKytEth7Co5SoUijMRIMLPwBPlC7Y68HgHfwVYnobgx36E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Akyb2XJfQ+IAzgEmanOrD6MMLzBWKctRb82PKzfcvQg=; b=a
 Qj/GlTZxgcqEFMOkeJfCJ1RhruvKGxn3X71BfAsvsAHHE+SYJQ/51446qoB2thHo5Db1bb24UCMYW
 3o+xYK35NaKHLrEviFxMN1OE1+xtdhlHig0O2S91V1UFhmqSYqD2kCNJYa+cn1YQae7fB/PrCSRgM
 TbC9lEQnGB5F9OcM=;
Received: from insect.birch.relay.mailchannels.net ([23.83.209.93])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nmqW4-002nUT-9F
 for mjpeg-users@lists.sourceforge.net; Fri, 06 May 2022 05:28:36 +0000
X-Sender-Id: dreamhost|x-authsender|ian@linux.cowan.aero
Received: from relay.mailchannels.net (localhost [127.0.0.1])
 by relay.mailchannels.net (Postfix) with ESMTP id 823B7121C95;
 Fri,  6 May 2022 05:28:30 +0000 (UTC)
Received: from pdx1-sub0-mail-a243.dreamhost.com (unknown [127.0.0.6])
 (Authenticated sender: dreamhost)
 by relay.mailchannels.net (Postfix) with ESMTPA id CED19120F26;
 Fri,  6 May 2022 05:28:29 +0000 (UTC)
ARC-Seal: i=1; s=arc-2022; d=mailchannels.net; t=1651814910; a=rsa-sha256;
 cv=none;
 b=MCs2RtuUlcayRwTLZO/DUNafNnHJthrAELGG3uUIeGxWkD+aA5XSrsW25HBWV16MmCj237
 o41sw1Y4spiNjrAvnobP10c+d2AEppvYQhfvJLgN5RsE1Q6D7T2t/VudVhIR/c5a6+2InO
 zy/nTjG2Qz+SK9DOwSgeluyIGE3GWZegNBipe0+tIChVI1ZxCltQvvfGiZFv6PP1w3KcHk
 rC5KlUAEdzZHegcT8ug/xwnO1Sf/OmnAlMSWicI0zIz1cLVXkfC4YwEcBhIS1T5H4H2O+0
 NpClnaSAYMtUTjuUxEVhXPtkijOHFvxyl3JBhbwIKj2eLfVc37BVFVwF3LxfrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net; s=arc-2022; t=1651814910;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:dkim-signature;
 bh=Akyb2XJfQ+IAzgEmanOrD6MMLzBWKctRb82PKzfcvQg=;
 b=hAkVe6RoxMgCc8R5pFF2z/eTZXb5MFXgs//RxvFhun3RLDnsM/HouTgIInVi1qBko392Gn
 qodcpXUSMM4UV7ynT6/8X/aWGtJQQDseI2Owk4MQ9cWTHflkLfLQIDLnblnugKB4oCTKJP
 WYbRGvEOqWGpp5WbPGb+yLVGpZNzhQn4CnT7mlXI3U7dK0CPWDQEMcDh8ZZd7ELjVIcI6w
 Sy2nHKsBWyTNBIR6PwSTcq6YCPxcTuxYU+giybyL9UINpiOZMtAjTA2FDYa7r6facUtHh/
 5lSDhEzMXfbH8fG/pdTitxdG3pOZSw5KDttUHuYCOd9lN60L2ZsKY8oar0hRIg==
ARC-Authentication-Results: i=1; rspamd-fdd564cbf-x7f5k;
 auth=pass smtp.auth=dreamhost smtp.mailfrom=ian@linux.cowan.aero
X-Sender-Id: dreamhost|x-authsender|ian@linux.cowan.aero
X-MC-Relay: Neutral
X-MailChannels-SenderId: dreamhost|x-authsender|ian@linux.cowan.aero
X-MailChannels-Auth-Id: dreamhost
X-Trail-Shelf: 1aaf0c2d4d529953_1651814910349_2794654197
X-MC-Loop-Signature: 1651814910349:1402094156
X-MC-Ingress-Time: 1651814910349
Received: from pdx1-sub0-mail-a243.dreamhost.com (pop.dreamhost.com
 [64.90.62.162]) (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
 by 100.112.55.199 (trex/6.7.1); Fri, 06 May 2022 05:28:30 +0000
Received: from localhost.localdomain (unknown [69.12.38.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 (Authenticated sender: ian@linux.cowan.aero)
 by pdx1-sub0-mail-a243.dreamhost.com (Postfix) with ESMTPSA id 4KvfHJ6nWJz2M; 
 Thu,  5 May 2022 22:28:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.cowan.aero;
 s=dreamhost; t=1651814909;
 bh=Akyb2XJfQ+IAzgEmanOrD6MMLzBWKctRb82PKzfcvQg=;
 h=From:To:Cc:Subject:Date:Content-Transfer-Encoding;
 b=c+X01cZGY+qHqs9NRak5k7m5nR7uG37z0E9STqOlUwqe/ih0QdNBokDLFKex58sir
 7ipiQiz7kh47f8SEIzSTrB6MzXnHcxMXTbwSOnFrYpOP8ZfaoctliNIcveyadQR3jM
 b5DInGuxkWgcul+z03bmxBxK0SnM4XZY0p5r5vw4NSO/6JxTnR5tcMqVAb6vTkvRWc
 cgH1Tj3681WiXc3qNnfJzjHmhbMxOdwd+9sy5nG+qJFh4N4ekNm6Ck2TiZLV3VSLEJ
 dDoxfZAPFQYsltZcLYfNGypsYbs1BNQS+y6BrEBEiQB2eTWOwqQMdxeFsdZAHg8/zk
 oJM3QtpNv6JEw==
From: Ian Cowan <ian@linux.cowan.aero>
To: Corentin Labbe <clabbe@baylibre.com>
Date: Fri,  6 May 2022 01:28:19 -0400
Message-Id: <20220506052819.192151-1-ian@linux.cowan.aero>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [23.83.209.93 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nmqW4-002nUT-9F
X-Mailman-Approved-At: Fri, 06 May 2022 08:06:34 +0000
Subject: [Mjpeg-users] [PATCH v3 2/4] staging: media: zoran: setup
 videocodec header for debugging macros
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

This adds inline functions in the videocodec header file to convert the
videocodec and videocodec_master structs to their respective contained
zoran struct. This will be used to pass the zoran struct to the
zrdev_XXX() macros defined in the zoran header.

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
index 4f7f71d8e93c..2a8635d08b73 100644
--- a/drivers/staging/media/zoran/zoran.h
+++ b/drivers/staging/media/zoran/zoran.h
@@ -20,6 +20,7 @@
 
 #include <linux/debugfs.h>
 #include <linux/pci.h>
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
