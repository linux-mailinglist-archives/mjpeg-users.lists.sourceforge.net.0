Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB09387D52
	for <lists+mjpeg-users@lfdr.de>; Tue, 18 May 2021 18:26:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1lj2Xl-0002bF-BK; Tue, 18 May 2021 16:26:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <clabbe@baylibre.com>) id 1lizU7-0001pZ-Op
 for mjpeg-users@lists.sourceforge.net; Tue, 18 May 2021 13:10:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ldAI2BEKXxmJwnRzX0pdIQjXTGeWN2MbcUVMx3/xOUs=; b=Et9P18bQ4y7IfUduTD5GzKDRnn
 2dM65Fp7tq873ToTp4YEb7B9CflN+LZadlUIlPykgBbvOMe08UyWXEqQWHySWX9mOKOshEIbr5qjd
 jMUbb2aDriGZy/53SYJXw8UlrxZC9zopMi19RZ/vt242ccoBCc6nBnAjIjGYOKcfgOuo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ldAI2BEKXxmJwnRzX0pdIQjXTGeWN2MbcUVMx3/xOUs=; b=WmAhmXJwtESFHnU88avkvf3wuN
 mJxqF4+jgkANBfGLS9KUUF/cHJ1d6RzCsPfuLQaOl7e4qFcFVVi2MxyACStPF0Skt1ocn8x3v82aB
 paPaUE2mpE2gqUjWRbYvFN/IOG+zfuTJRsCqxF7hk4Gc7Sa1S69wUbOdYspZfrO+ABBE=;
Received: from mail-lf1-f53.google.com ([209.85.167.53])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lizU2-00ChNI-Qm
 for mjpeg-users@lists.sourceforge.net; Tue, 18 May 2021 13:10:09 +0000
Received: by mail-lf1-f53.google.com with SMTP id a2so14031812lfc.9
 for <mjpeg-users@lists.sourceforge.net>; Tue, 18 May 2021 06:10:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ldAI2BEKXxmJwnRzX0pdIQjXTGeWN2MbcUVMx3/xOUs=;
 b=O5FmbtkdFv+oxMelevJi0tWdjn++hJ44o/jcC2ZARwh5sLYFn/lBlDfzF0XNMlknGC
 4oengB49L5SsD1PCzBRJUNCWqKKGU7W8K5jmQ0+jZ8Je+iEByHJnSUzoKFoBAqCZ7jJQ
 JheLx6ziP873975yjnVewJo7F9qgF2qp/5Tf7VyddT2ZVykln/d6yMPEJezmBC5KoRMJ
 FDFMHzr1T23wTcwGR7T3lIXTVw2NsqSnAD2GXe8b0dblFIFQhoA1tlmccGF5nZ7NPQUm
 7oxaAWpvnYIEX1aMh+9JO9Lofgt3Nx/w/ELjJyMhDtPOXS7lYpscDGScCov/uX+Kgcji
 ZmXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ldAI2BEKXxmJwnRzX0pdIQjXTGeWN2MbcUVMx3/xOUs=;
 b=Zd5/uMw7VXK53P3DZ5mZsPgWDzKJK8XyS39uEzw61hTBs99gXiPn3mOt3C/NtBxTVB
 l7ZNC0/6EbxY3uFhNbVThW1RtJm/s3md2BRFWh9iMQTabYwopuk5eC8hW0Qh1OUNPXiz
 QV6cfLwbS6j0FK90XHZaRC4b57TbdC84RO7BhVrzlv0wtcuyh05LtJaU2armlNSlxPC4
 +3xd8XtNPYRn5gpQru9OJD6fshmX9W3jMpWdqC0Fb/7z2OYeetZ285Oqc1hrH6Ds0daW
 wtG7uk9NIHCbkcr1y9cFqTbDq6wUMpAhlsE684kfE7VwXvXrrnLOoYRzTgJ/AerGh8Nk
 5jyg==
X-Gm-Message-State: AOAM533SGJ5UngVy+8CdH4xYbzUDHebyJxe+WfLp52em7gn8MRrAhkpK
 bq63kMqGpz84Ts36pJDHeittutb9oeVA2A==
X-Google-Smtp-Source: ABdhPJwfe0oVtQR6+PwolxvP1DrBzzzVAuvX50itJs00RINjQWwDB1/8Aby8FoFAtrGLlYghJslkrQ==
X-Received: by 2002:adf:e484:: with SMTP id i4mr6694239wrm.117.1621341684097; 
 Tue, 18 May 2021 05:41:24 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id z3sm1677239wrq.42.2021.05.18.05.41.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 May 2021 05:41:23 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org,
	mchehab@kernel.org
Date: Tue, 18 May 2021 12:41:13 +0000
Message-Id: <20210518124113.1823055-5-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210518124113.1823055-1-clabbe@baylibre.com>
References: <20210518124113.1823055-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.53 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.53 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lizU2-00ChNI-Qm
X-Mailman-Approved-At: Tue, 18 May 2021 16:26:04 +0000
Subject: [Mjpeg-users] [PATCH 5/5] staging: media: zoran: change asm header
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

As asked by checkpatch, convert a asm/xxx header to a linux one.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zr36050.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/zoran/zr36050.c b/drivers/staging/media/zoran/zr36050.c
index 8bb101fa18bc..c62af27f2683 100644
--- a/drivers/staging/media/zoran/zr36050.c
+++ b/drivers/staging/media/zoran/zr36050.c
@@ -16,7 +16,7 @@
 #include <linux/wait.h>
 
 /* I/O commands, error codes */
-#include <asm/io.h>
+#include <linux/io.h>
 
 /* headerfile of this module */
 #include "zr36050.h"
-- 
2.26.3



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
