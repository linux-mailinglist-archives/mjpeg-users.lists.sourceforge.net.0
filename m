Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0431C387D55
	for <lists+mjpeg-users@lfdr.de>; Tue, 18 May 2021 18:26:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1lj2Xk-0002aR-QE; Tue, 18 May 2021 16:26:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <wangqing@vivo.com>) id 1liyE5-0006Iy-QY
 for mjpeg-users@lists.sourceforge.net; Tue, 18 May 2021 11:49:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CroWX8tNeWFA689xchzT1PY+ducD9+iphs5vUE6Yyos=; b=Tc0DFro8DfTC7oWxuUdQBKyXjy
 DyPfTQGV/6sqIRzcrX3bDkbbZxAGxQt80bh5HUORY36z7dREYFWy+f/NYLvE9BY9P6uxV5CV5Y2D1
 oD6W9cE+xywRQmAlkozhdMPDPfiLt/7m4gPhBHOHQOehkjKc3CDpok0IuLkN+AdPV3HI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CroWX8tNeWFA689xchzT1PY+ducD9+iphs5vUE6Yyos=; b=Ov3q2ppjCLeEOduc5hzjfG70Vr
 GE6wxB+6IAWDdUk4jmmLjXURy1OVQdRhOBUZFpwhSQMkx/ZCvcDcQI6AnuHDjm/vbv+o/Y0g1j+fs
 lD6n4u0oBHmrmDK0THbxAwe181EkN+RMqNt2oKqudHmewgRh2ZuoVKuQy9dS77kUBL6E=;
Received: from mail-m121142.qiye.163.com ([115.236.121.142])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1liyDx-00CdRN-C4
 for mjpeg-users@lists.sourceforge.net; Tue, 18 May 2021 11:49:30 +0000
Received: from vivo-HP-ProDesk-680-G4-PCI-MT.vivo.xyz (unknown
 [58.250.176.229])
 by mail-m121142.qiye.163.com (Hmail) with ESMTPA id 4069B809CC;
 Tue, 18 May 2021 19:49:13 +0800 (CST)
From: Wang Qing <wangqing@vivo.com>
To: Corentin Labbe <clabbe@baylibre.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 mjpeg-users@lists.sourceforge.net, linux-media@vger.kernel.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Date: Tue, 18 May 2021 19:49:08 +0800
Message-Id: <1621338548-12077-1-git-send-email-wangqing@vivo.com>
X-Mailer: git-send-email 2.7.4
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZS1VLWVdZKFlBSE83V1ktWUFJV1kPCR
 oVCBIfWUFZGhoaHlZOQk1DQkkaQ0tCGhlVEwETFhoSFyQUDg9ZV1kWGg8SFR0UWUFZT0tIVUpKS0
 9ISFVLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PRA6MSo6SD8VSis6DjQRGjUw
 URYwCjVVSlVKTUlKSEhDTk5IQklKVTMWGhIXVQwaFRwKEhUcOw0SDRRVGBQWRVlXWRILWUFZTkNV
 SU5LVUpMTVVJSUJZV1kIAVlBSUlOSTcG
X-HM-Tid: 0a797f4efcf1b037kuuu4069b809cc
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [115.236.121.142 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [115.236.121.142 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1liyDx-00CdRN-C4
X-Mailman-Approved-At: Tue, 18 May 2021 16:26:04 +0000
Subject: [Mjpeg-users] [PATCH] staging: media: zoran: fix some formatting
 issues
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
Cc: Wang Qing <wangqing@vivo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

fixing WARNING: Possible repeated word: 'in' as "in in a VIDIOCSFBUF ioctl",
limit the number of words per line.

Signed-off-by: Wang Qing <wangqing@vivo.com>
---
 drivers/staging/media/zoran/zoran_card.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index dfc60e2..f259585
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -37,9 +37,10 @@ module_param_array(card, int, NULL, 0444);
 MODULE_PARM_DESC(card, "Card type");
 
 /*
- * The video mem address of the video card. The driver has a little database for some videocards
- * to determine it from there. If your video card is not in there you have either to give it to
- * the driver as a parameter or set in in a VIDIOCSFBUF ioctl
+ * The video mem address of the video card. The driver has a little database
+ * for some videocards to determine it from there. If your video card is not
+ * in there you have either to give it to the driver as a parameter or set
+ * in a VIDIOCSFBUF ioctl
  */
 
 static unsigned long vidmem;	/* default = 0 - Video memory base address */
-- 
2.7.4



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
