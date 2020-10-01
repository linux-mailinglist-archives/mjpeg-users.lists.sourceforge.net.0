Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EEBE28059D
	for <lists+mjpeg-users@lfdr.de>; Thu,  1 Oct 2020 19:40:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1kO2Yq-0001ep-IU; Thu, 01 Oct 2020 17:40:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mchehab@kernel.org>) id 1kNutK-00065X-Nw
 for mjpeg-users@lists.sourceforge.net; Thu, 01 Oct 2020 09:28:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=g4heuOk7NfTu0aaR3OHTEIRlrKAjmYaBP7iqwmpxtzs=; b=GkCh8T8vQtp9eyoaX3nQ6R4kr0
 ombdTc1cUHb6RNWFa11RLWCf8Xc4ps0XO3EnP0UHqV/U2VpCtxtmuCEVj6+i7kuHUe4e+3RuLZU1v
 +Mk1oEbH+K3+K3bQ0duF9rKVbAGktOSRU1W1NbkP113Hl59qOi1oQVPEgFvP/tXcJdgw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=g4heuOk7NfTu0aaR3OHTEIRlrKAjmYaBP7iqwmpxtzs=; b=nVCMlUboOvBWeObERGSuv8J4aX
 Ai5LGC/ooh3IUVofGtG5WCPO+hUg3axP65SYfAzgvb4/ywbbiFJSp/ZuxltzDOq98yX7iv1RX6w2V
 KzCX+N60JwE5TosIlcD5lv3muRsuRSveofaDyrR6ui7zSDtgk3lUxPynm6i5nmyVcRhU=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kNut6-00Cdn1-AQ
 for mjpeg-users@lists.sourceforge.net; Thu, 01 Oct 2020 09:28:46 +0000
Received: from mail.kernel.org (ip5f5ad5d2.dynamic.kabel-deutschland.de
 [95.90.213.210])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A756D21531;
 Thu,  1 Oct 2020 09:28:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601544498;
 bh=rLh0rupkEm6craW7Qq07B0I7sa+iivglxBzUSkCfuss=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=wYJ30t0ckmbI0gE/9zPQxOogoix11ErCLW59fFVUsV9eHdGCCwbugOiFLiu/R8yuz
 813MCYzZ6bKGttcz2jbCLPpHK++s4dS3EgF6CaUmrrKCugBXxXtRnVnFHtqyPJVY4R
 uMTVuNC7a0++QW7wgIs8/aNinS5IGJ++Y6qcBF0c=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1kNusp-005Xai-S3; Thu, 01 Oct 2020 11:28:15 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Date: Thu,  1 Oct 2020 11:28:14 +0200
Message-Id: <0425a08a629f50f05159f6c458e0942bf62a7792.1601544491.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <21fd8f12edb27d269eefdbea172aa3a80e2aa6ce.1601544491.git.mchehab+huawei@kernel.org>
References: <21fd8f12edb27d269eefdbea172aa3a80e2aa6ce.1601544491.git.mchehab+huawei@kernel.org>
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
X-Headers-End: 1kNut6-00Cdn1-AQ
X-Mailman-Approved-At: Thu, 01 Oct 2020 17:40:06 +0000
Subject: [Mjpeg-users] [PATCH 2/3] media: zoran: get rid of an unused var
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
Cc: devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, mjpeg-users@lists.sourceforge.net,
 Corentin Labbe <clabbe@baylibre.com>, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

The jpeg_error in lowercase is not used anywhere. Drop it.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/zoran/zoran.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/media/zoran/zoran.h b/drivers/staging/media/zoran/zoran.h
index 7217a64fe59b..945502becd60 100644
--- a/drivers/staging/media/zoran/zoran.h
+++ b/drivers/staging/media/zoran/zoran.h
@@ -264,7 +264,6 @@ struct zoran {
 
 	/* Additional stuff for testing */
 	unsigned int ghost_int;
-	int jpeg_error;
 	int intr_counter_GIRQ1;
 	int intr_counter_GIRQ0;
 	int intr_counter_CodRepIRQ;
-- 
2.26.2



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
