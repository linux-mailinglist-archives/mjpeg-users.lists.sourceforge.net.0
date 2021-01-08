Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 43CB32EF2F6
	for <lists+mjpeg-users@lfdr.de>; Fri,  8 Jan 2021 14:23:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1kxrjI-0005Pn-EC; Fri, 08 Jan 2021 13:23:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <zhengyongjun3@huawei.com>) id 1kxnx5-0000VR-KX
 for mjpeg-users@lists.sourceforge.net; Fri, 08 Jan 2021 09:20:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EPUrBwGNRTTFjxWkrCOlXVTb5opbuovcItyCufHUR5k=; b=cadrMhGw2wMSd5g4FOODJiew65
 C393+c7C7nhmyjYoNxBG1eBHkvvZ4eJ8DoZEw1zZcTOId0edcGZ9OuX9ZhYXZHMMzOAtikr85cGX7
 9mYUKZKTYLTko1GefS01PXO3TLrrmxRMK+tgJmKKvurDE4JeSQOSq0H0LUM8QvS9B4y0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=EPUrBwGNRTTFjxWkrCOlXVTb5opbuovcItyCufHUR5k=; b=I
 ALIGegN6PEycZY6gti85yO0eIRJeIGKdKi4QuwYi55sTefzCTYafqaF3DU5IrYrXO0nHuvQU7bnLR
 FrQ8F1sGA8w0yc28B0M+qKmmUn8gwNUoXRLKijkokkmy2KNcZjjUDvtLOCigUX24W4RBErRtU7S5O
 Bctt14d5nRUfpxBg=;
Received: from szxga05-in.huawei.com ([45.249.212.191])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kxnx1-009Zgn-Ez
 for mjpeg-users@lists.sourceforge.net; Fri, 08 Jan 2021 09:20:59 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.59])
 by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4DByGr12f7zMH8R;
 Fri,  8 Jan 2021 17:19:32 +0800 (CST)
Received: from ubuntu.network (10.175.138.68) by
 DGGEMS406-HUB.china.huawei.com (10.3.19.206) with Microsoft SMTP Server id
 14.3.498.0; Fri, 8 Jan 2021 17:20:34 +0800
From: Zheng Yongjun <zhengyongjun3@huawei.com>
To: <clabbe@baylibre.com>, <mchehab@kernel.org>,
 <mjpeg-users@lists.sourceforge.net>, <linux-media@vger.kernel.org>,
 <devel@driverdev.osuosl.org>, <linux-kernel@vger.kernel.org>
Date: Fri, 8 Jan 2021 17:21:19 +0800
Message-ID: <20210108092119.18642-1-zhengyongjun3@huawei.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-Originating-IP: [10.175.138.68]
X-CFilter-Loop: Reflected
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [45.249.212.191 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kxnx1-009Zgn-Ez
X-Mailman-Approved-At: Fri, 08 Jan 2021 13:22:59 +0000
Subject: [Mjpeg-users] [PATCH v2 -next] media: zoran: convert comma to
 semicolon
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

Replace a comma between expression statements by a semicolon.

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
