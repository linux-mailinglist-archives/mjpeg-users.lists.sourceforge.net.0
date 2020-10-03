Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BAEBC282569
	for <lists+mjpeg-users@lfdr.de>; Sat,  3 Oct 2020 18:57:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1kOkqr-0007ra-GV; Sat, 03 Oct 2020 16:57:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mchehab@kernel.org>) id 1kOd7U-0005Jn-5q
 for mjpeg-users@lists.sourceforge.net; Sat, 03 Oct 2020 08:42:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Q5p7uPDGN7ezTWVxYR1Oavvm/cGeSABW09yUFWWAuTo=; b=dZ+I/BBgqHgHWgCMKpMnoFmpM4
 EEu0/NRgHmzlqgcBsijHw8fKB8n6DM9tgiT78Ibuwk2dE+Pmb3FWEogN4F7xCl225IuYuL9Ndwa11
 D7QoTMePux7zI9FFBLOAqUx5rRH4KMaw0gEQyZXEH3o9DPoJ8nSI6ZRNwtp4i+tWpBD8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:
 To:From:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Q5p7uPDGN7ezTWVxYR1Oavvm/cGeSABW09yUFWWAuTo=; b=f
 K4YPXQxciKxfGlm3hiV52k/edoT8wGOoGN4bWaq8QUda3XBIAgU3wGU0RMlrGjMbtZrEJDAHrgwy5
 lPNKUk3Tb8/nKPnCXZGgZ+9RVDqFWQHIpZDY5OYuIYzP4ZwcPbK3kBp/o5L6EoSW2LdaGorG9NgPD
 1SH1Un1gXT9C0Q08=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kOd7G-00F9B6-4y
 for mjpeg-users@lists.sourceforge.net; Sat, 03 Oct 2020 08:42:20 +0000
Received: from mail.kernel.org (ip5f5ad5cf.dynamic.kabel-deutschland.de
 [95.90.213.207])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 84AFC206DB;
 Sat,  3 Oct 2020 08:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601714520;
 bh=r1d9UMV1FRCy3qUUZr6k4FtRW/rBPkyuBQ2m7N/qcVs=;
 h=From:To:Cc:Subject:Date:From;
 b=V66y5vJV5kg1ipCMSeNJUnpOYEC0krMUKoIbkD5J24Tzz8zeHYVpAJNe1cvKVYarm
 /pfU38Q9AXOuIjWRnhfsZOWqUadGtAeMe8u3dGL6l6F68iRy1VGJKkWQzg5qbYXGk3
 SIIgJUOuiAnOxF8OB/EuP4IltJeMtLwzPw36ENbU=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1kOd77-0002Is-UA; Sat, 03 Oct 2020 10:41:57 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Date: Sat,  3 Oct 2020 10:41:54 +0200
Message-Id: <6b90346919d42ffc7c3ad283bfca2825b238147a.1601714147.git.mchehab+huawei@kernel.org>
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
X-Headers-End: 1kOd7G-00F9B6-4y
X-Mailman-Approved-At: Sat, 03 Oct 2020 16:57:40 +0000
Subject: [Mjpeg-users] [PATCH 1/4] media: zoran: move documentation file to
 the right place
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
Cc: Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, linux-doc@vger.kernel.org,
 linuxarm@huawei.com, linux-kernel@vger.kernel.org,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, mjpeg-users@lists.sourceforge.net,
 Corentin Labbe <clabbe@baylibre.com>, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "Daniel W. S. Almeida" <dwlsalmeida@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

The zoran revert patch misplaced the Zoran doc file. Move it to
the right place.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 Documentation/driver-api/media/drivers/index.rst                 | 1 +
 .../{media => driver-api/media/drivers}/v4l-drivers/zoran.rst    | 0
 2 files changed, 1 insertion(+)
 rename Documentation/{media => driver-api/media/drivers}/v4l-drivers/zoran.rst (100%)

diff --git a/Documentation/driver-api/media/drivers/index.rst b/Documentation/driver-api/media/drivers/index.rst
index 5f340cfdb4cc..eb7011782863 100644
--- a/Documentation/driver-api/media/drivers/index.rst
+++ b/Documentation/driver-api/media/drivers/index.rst
@@ -25,6 +25,7 @@ Video4Linux (V4L) drivers
 	sh_mobile_ceu_camera
 	tuners
 	vimc-devel
+	zoran
 
 
 Digital TV drivers
diff --git a/Documentation/media/v4l-drivers/zoran.rst b/Documentation/driver-api/media/drivers/v4l-drivers/zoran.rst
similarity index 100%
rename from Documentation/media/v4l-drivers/zoran.rst
rename to Documentation/driver-api/media/drivers/v4l-drivers/zoran.rst
-- 
2.26.2



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
