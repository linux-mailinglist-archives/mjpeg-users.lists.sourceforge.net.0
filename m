Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AB1DF50E542
	for <lists+mjpeg-users@lfdr.de>; Mon, 25 Apr 2022 18:11:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1nj1JP-0007C5-RY; Mon, 25 Apr 2022 16:11:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ian@linux.cowan.aero>) id 1niztj-0000Sq-DR
 for mjpeg-users@lists.sourceforge.net; Mon, 25 Apr 2022 14:41:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=s5AE6U1EnsQ1lOXAx7PW4d2cLdYTvCRln/x/datINi8=; b=G7EASBG+SvtHDoBgJ8hM4Nv/51
 yK0OAzncuUE2T3mkF6plVDb1k3L+65VTr0FNfTkA9t3VQU56gCEAzXEXltMBFllqOnZajnZibf8fn
 AIadaCg9r9M5CdSQ65jhN9tUhvEyQowUtY80rRzSDHaDtwYaOxgmi+D2QtoGxFPxmv3M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=s5AE6U1EnsQ1lOXAx7PW4d2cLdYTvCRln/x/datINi8=; b=A
 F7j1ZJuythSc8uYANtWsH3uGn9YI+d6bb6huPfF/wzln+yEsQ8JNuNqw1jOOGr9UJ2MmjNa3mSzAF
 vLKnrxRBB+6drs5V7+EQjH4oy73Mz1g+kGHegdRDMua0jjn3nKuS/+R1cFeit0Id6ByvzUqXUVYES
 G8wX3yWXiiHcmK3A=;
Received: from camel.birch.relay.mailchannels.net ([23.83.209.29])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1niztd-0004PP-Jx
 for mjpeg-users@lists.sourceforge.net; Mon, 25 Apr 2022 14:41:05 +0000
Received: from relay.mailchannels.net (localhost [127.0.0.1])
 by relay.mailchannels.net (Postfix) with ESMTP id C75B0121ADB;
 Mon, 25 Apr 2022 14:40:44 +0000 (UTC)
Received: from pdx1-sub0-mail-a217.dreamhost.com (unknown [127.0.0.6])
 (Authenticated sender: dreamhost)
 by relay.mailchannels.net (Postfix) with ESMTPA id CCCC6120E91;
 Mon, 25 Apr 2022 14:40:43 +0000 (UTC)
ARC-Seal: i=1; s=arc-2022; d=mailchannels.net; t=1650897643; a=rsa-sha256;
 cv=none;
 b=pzn09w4erkwNvrwR9LXn6lwlyZ9J99IwIRoCpO5e5B4KfStKgfhWHeu1lgFUFQ4bkQGpJW
 wdXvG2WH+RaogjEAa5nwn3+YEFg0hUc+2libiPQsLb2m7HhBQ1rpkSO6nbfNNB3qTihrBy
 4mH44qATtYZ1VXIiJEnu+QwToGOUy47akzSrO0vUppvk08znAKE4MXtMp3Q1/nzoQbpad+
 rSOmlnAniMMFstheur7XibIyJPy73ESNh6ubCAW4TLbGeak1py4sM/b0qB1aO5mF35tcVP
 9bQBk58I/M8GLTcCYLzgXvQyNwbxr8nhnyqSepY3ukKDWZZ8gEnP+fyjGqqEEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net; s=arc-2022; t=1650897643;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:dkim-signature;
 bh=s5AE6U1EnsQ1lOXAx7PW4d2cLdYTvCRln/x/datINi8=;
 b=uzZOqqgxbLoOGHgaiQYiKHnkTUmNo/luOeYKivI/9hx9NS6yUKsWkbr7emdS0cdfkGF5jP
 WB357sPxss2uGoAEsqerwv8dDHsIEZE+FmfF5AtY7xd0973ASa7XRHVTHyg+3HUuRKijmN
 Qs3dUPLN72vptBUV+1vhvvGVVzR00VAVEv7lG+XvXdbIOBMI8XUCo8KtEH246Ug/ywJ9Xy
 2BdEB5ubGe//jTeqOE62suqnbZ33fbtaXsyHJaID5QgF8cxQQlI9yIc8ND1iHZDcYGAw/J
 i6/ynlVrIL3tcxdJ/dWpAxOvZmqwbDwhcFP7zUFzmOKJTQAXUrjvL4jm3IEI8A==
ARC-Authentication-Results: i=1; rspamd-67b64f579b-dkhm9;
 auth=pass smtp.auth=dreamhost smtp.mailfrom=ian@linux.cowan.aero
X-MC-Relay: Neutral
X-MailChannels-SenderId: dreamhost|x-authsender|ian@linux.cowan.aero
X-MailChannels-Auth-Id: dreamhost
X-Skirt-Oafish: 772a72b76a7ff4c9_1650897644185_2468377285
X-MC-Loop-Signature: 1650897644185:3122545546
X-MC-Ingress-Time: 1650897644185
Received: from pdx1-sub0-mail-a217.dreamhost.com (pop.dreamhost.com
 [64.90.62.162]) (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
 by 100.112.55.255 (trex/6.7.1); Mon, 25 Apr 2022 14:40:44 +0000
Received: from localhost.localdomain (unknown [69.12.38.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 (Authenticated sender: ian@linux.cowan.aero)
 by pdx1-sub0-mail-a217.dreamhost.com (Postfix) with ESMTPSA id 4Kn73Z46qRz2d; 
 Mon, 25 Apr 2022 07:40:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.cowan.aero;
 s=dreamhost; t=1650897643;
 bh=s5AE6U1EnsQ1lOXAx7PW4d2cLdYTvCRln/x/datINi8=;
 h=From:To:Cc:Subject:Date:Content-Transfer-Encoding;
 b=60CnaySCcFNllPkqZb0ujrtLqTey6CLl+vSwXOGPi5LntkMcThyBaofV+KdrVQUTe
 z+WfAylHlobJ45fZn/LTbHQ8DnbMR4yzUko1nV+pMgRysGWjmDB+N0JuuSBo4GF1QH
 +XRCuX7TtA1sjVgJI+R7Cnbqz22KkqGsEQAQ7stnWkevTsFQpP8/TeCmiDi/z9CIeN
 2/G3cHvaytG5C8GbEBU5mkb9EplsHBQ7oHzud0U7rnc4dKEjkIyNT6HQ2yCzjjiaTI
 vBEhKThZWlLAtg3+L3Luj87xVcsjhubnkJ/D7avJDSFYHviB/Jqia8wl6M13+jIVUu
 Oakig734dQWjg==
From: Ian Cowan <ian@linux.cowan.aero>
To: Corentin Labbe <clabbe@baylibre.com>
Date: Mon, 25 Apr 2022 10:40:30 -0400
Message-Id: <20220425144030.132898-1-ian@linux.cowan.aero>
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [23.83.209.29 listed in list.dnswl.org]
X-Headers-End: 1niztd-0004PP-Jx
X-Mailman-Approved-At: Mon, 25 Apr 2022 16:11:41 +0000
Subject: [Mjpeg-users] [PATCH v2 2/4] staging: media: zoran: setup
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
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-media@vger.kernel.org
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
