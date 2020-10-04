Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CD525283DAE
	for <lists+mjpeg-users@lfdr.de>; Mon,  5 Oct 2020 19:44:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1kPUX3-0007KL-7k; Mon, 05 Oct 2020 17:44:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mchehab@kernel.org>) id 1kP6RO-0007SM-EE
 for mjpeg-users@lists.sourceforge.net; Sun, 04 Oct 2020 16:00:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=g/aULI7T0x1XOECMsonL2739wZNaohAvNhPAkhywiCw=; b=bnDrovtq/cFk9uE4bYgZBye892
 Fy1MgC+J+X6VSFVnB2Pdw/YPQ1BWJZT93DtP8wskHdSHNdj6V6aEnvWhfKkJnBArxWOeFV9I+dlBU
 TRgQdVva12A3p6FGKy1oEFR0e928R9OeWDo8QBjWtyQj5vH2f1VJFBPJtI6Taph8is1o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:
 To:From:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=g/aULI7T0x1XOECMsonL2739wZNaohAvNhPAkhywiCw=; b=C
 OwCW3B7jKHnlRrH1W1OeK4y3KMsvLw3EaFt/ViahyIQeyCuETKLcFlzgNZX/easLDUC0E7uY1kwl7
 KD2knggDB8VS2S9aOW0AUDKI1Gw3/tDQr0LSgu1FbMub3wKhrSHwU/XZcx7gXA+TrjdTUjfohefD+
 hWWd+7sji+KqjU8M=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kP6RJ-00GQe0-Jx
 for mjpeg-users@lists.sourceforge.net; Sun, 04 Oct 2020 16:00:50 +0000
Received: from mail.kernel.org (ip5f5ad5a6.dynamic.kabel-deutschland.de
 [95.90.213.166])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 32B7B206C1;
 Sun,  4 Oct 2020 16:00:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601827235;
 bh=7ffqmwDcNKq4pWlTL0AOzTA9uCl5ZE31pG3i8SCLvKM=;
 h=From:To:Cc:Subject:Date:From;
 b=uFKswsHeB63Uvpt3WKgSqQEoBSFe5mIBCVnNEoEJTxAVxB0KON+h9SroHmjcwlIzl
 44HPpR2+5Lzv+SIgqSTPvVvDGsfNQROYPWZlQltc5Y9DlgnoyAZCE3kU/sWp8IjVbn
 UAVQaVC/BMwfh21+BOoFjU24fJztwOrSx5OW/2d4=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1kP6R6-00056H-Ab; Sun, 04 Oct 2020 18:00:32 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Date: Sun,  4 Oct 2020 18:00:30 +0200
Message-Id: <0cef13d883e4644b4cf9b521d3f3e45355e60566.1601827201.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linuxtv.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kP6RJ-00GQe0-Jx
X-Mailman-Approved-At: Mon, 05 Oct 2020 17:44:15 +0000
Subject: [Mjpeg-users] [PATCH] media: zoran.rst: place it at the right place
 this time
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
Cc: devel@driverdev.osuosl.org, Rob Herring <robh@kernel.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 mjpeg-users@lists.sourceforge.net, Corentin Labbe <clabbe@baylibre.com>,
 mauro.chehab@huawei.com, Mauro Carvalho Chehab <mchehab@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

I was too quick moving zoran.rst... it ends that the original
patch didn't do the right thing and forgot to update the files
that references it.

Fix it.

Fixes: 6b90346919d4 ("media: zoran: move documentation file to the right place")
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../driver-api/media/drivers/{v4l-drivers => }/zoran.rst        | 0
 MAINTAINERS                                                     | 2 +-
 drivers/staging/media/zoran/Kconfig                             | 2 +-
 3 files changed, 2 insertions(+), 2 deletions(-)
 rename Documentation/driver-api/media/drivers/{v4l-drivers => }/zoran.rst (100%)

diff --git a/Documentation/driver-api/media/drivers/v4l-drivers/zoran.rst b/Documentation/driver-api/media/drivers/zoran.rst
similarity index 100%
rename from Documentation/driver-api/media/drivers/v4l-drivers/zoran.rst
rename to Documentation/driver-api/media/drivers/zoran.rst
diff --git a/MAINTAINERS b/MAINTAINERS
index ba5eb1dff9c2..7a12633747c8 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -19247,7 +19247,7 @@ L:	linux-media@vger.kernel.org
 S:	Maintained
 W:	http://mjpeg.sourceforge.net/driver-zoran/
 Q:	https://patchwork.linuxtv.org/project/linux-media/list/
-F:	Documentation/media/v4l-drivers/zoran.rst
+F:	Documentation/driver-api/media/drivers/zoran.rst
 F:	drivers/staging/media/zoran/
 
 ZPOOL COMPRESSED PAGE STORAGE API
diff --git a/drivers/staging/media/zoran/Kconfig b/drivers/staging/media/zoran/Kconfig
index 492507030276..7874842033ca 100644
--- a/drivers/staging/media/zoran/Kconfig
+++ b/drivers/staging/media/zoran/Kconfig
@@ -8,7 +8,7 @@ config VIDEO_ZORAN
 	  36057/36067 PCI controller chipset. This includes the Iomega
 	  Buz, Pinnacle DC10+ and the Linux Media Labs LML33. There is
 	  a driver homepage at <http://mjpeg.sf.net/driver-zoran/>. For
-	  more information, check <file:Documentation/media/v4l-drivers/zoran.rst>.
+	  more information, check <file:Documentation/driver-api/media/drivers/zoran.rst>.
 
 	  To compile this driver as a module, choose M here: the
 	  module will be called zr36067.
-- 
2.26.2



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
