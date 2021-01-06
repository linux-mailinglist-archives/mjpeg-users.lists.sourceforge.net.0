Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E163B2EBF5A
	for <lists+mjpeg-users@lfdr.de>; Wed,  6 Jan 2021 15:20:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1kx9fN-00051L-EM; Wed, 06 Jan 2021 14:20:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <zhengyongjun3@huawei.com>) id 1kx8g8-0001so-IT
 for mjpeg-users@lists.sourceforge.net; Wed, 06 Jan 2021 13:16:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HNxUJjSwM2Hs4aMrbXE+BwMZRyh5JFvwGQOQdFkWdzY=; b=gGZpXDMPJaNUK2J417ZNfV3+7/
 H2nBLiyFcNgbLuJ7ls+ZWFSB62GJf+kNgoM9tB4lDGEejdkcBUFMbzzYGe5UO/xiBETi3KvuGD88r
 wi3VAMF7NIX3+mzz3/DqLISgoooVdwiA694jnbMQqnEgA0zU58f2kQDI+xJhY35/HgGo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=HNxUJjSwM2Hs4aMrbXE+BwMZRyh5JFvwGQOQdFkWdzY=; b=f
 K9DmcAzcBeOONoMXQVq29BI8TCJOWoNb/4I+ksgWL1UK2SW4xT5X8S1Fku34T3yS81BHGDv4/Li91
 TwfS70yRddS0BVn6G18+xirK8heWRcXzy9PcoS7XmjsB5WQdIJZKdkaWlsy/kYJKR575yIwV2n8uA
 5tMODLLTiErh0RB0=;
Received: from szxga07-in.huawei.com ([45.249.212.35])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kx8g4-004DmM-Rq
 for mjpeg-users@lists.sourceforge.net; Wed, 06 Jan 2021 13:16:44 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.58])
 by szxga07-in.huawei.com (SkyGuard) with ESMTP id 4D9qc55Rr9z7R0j;
 Wed,  6 Jan 2021 21:15:33 +0800 (CST)
Received: from ubuntu.network (10.175.138.68) by
 DGGEMS404-HUB.china.huawei.com (10.3.19.204) with Microsoft SMTP Server id
 14.3.498.0; Wed, 6 Jan 2021 21:16:19 +0800
From: Zheng Yongjun <zhengyongjun3@huawei.com>
To: <clabbe@baylibre.com>, <mchehab@kernel.org>,
 <mjpeg-users@lists.sourceforge.net>, <linux-media@vger.kernel.org>,
 <devel@driverdev.osuosl.org>, <linux-kernel@vger.kernel.org>
Date: Wed, 6 Jan 2021 21:17:02 +0800
Message-ID: <20210106131702.32507-1-zhengyongjun3@huawei.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-Originating-IP: [10.175.138.68]
X-CFilter-Loop: Reflected
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.35 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kx8g4-004DmM-Rq
X-Mailman-Approved-At: Wed, 06 Jan 2021 14:19:59 +0000
Subject: [Mjpeg-users] [PATCH -next] media: zoran: use resource_size
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
Cc: gregkh@linuxfoundation.org, Zheng Yongjun <zhengyongjun3@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

Use resource_size rather than a verbose computation on
the end and start fields.

Signed-off-by: Zheng Yongjun <zhengyongjun3@huawei.com>
---
 drivers/staging/media/zoran/zoran_driver.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
index 808196ea5b81..d60b4c73ea80 100644
--- a/drivers/staging/media/zoran/zoran_driver.c
+++ b/drivers/staging/media/zoran/zoran_driver.c
@@ -1020,7 +1020,7 @@ int zoran_queue_init(struct zoran *zr, struct vb2_queue *vq)
 	vq->buf_struct_size = sizeof(struct zr_buffer);
 	vq->ops = &zr_video_qops;
 	vq->mem_ops = &vb2_dma_contig_memops;
-	vq->gfp_flags = GFP_DMA32,
+	vq->gfp_flags = GFP_DMA32;
 	vq->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
 	vq->min_buffers_needed = 9;
 	vq->lock = &zr->lock;
-- 
2.22.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
