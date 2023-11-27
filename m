Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 469677FA85A
	for <lists+mjpeg-users@lfdr.de>; Mon, 27 Nov 2023 18:53:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1r7fmz-0006N7-Go;
	Mon, 27 Nov 2023 17:52:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <benjamin.gaignard@collabora.com>) id 1r7fCy-00083m-HI
 for mjpeg-users@lists.sourceforge.net;
 Mon, 27 Nov 2023 17:15:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h2Pm1baCn9QPU1nZ7/ZH3IZRVj+rZWeoG1IwhGMeY3w=; b=PleslVYeFWrVeZPA6Qj/od0w8r
 9Ux/MP55UMVW3G0ZKeLMKuMY2KjsGnvm+U8XvwjtUT0JOHWwUIio+WqgAPTtHmgZnneRjc5Y/hkmc
 o3magirLkCePBEBC//w82ZIw0wwEGGFNeIRMZcFDyle4xW+afHWBNhm6HzFVOYAFuvqM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=h2Pm1baCn9QPU1nZ7/ZH3IZRVj+rZWeoG1IwhGMeY3w=; b=PqmJl8edQZ+RNJKKb4jVWqaK/f
 BLjEcLG4iYW6HREDQ1m0xGua2NQsuFUdiLJC+1wlZGMCCQcejyV4VVlpdeb6QMajVZYX5ui3lKtmj
 jzYSf0xTRlWoLwWB/HF+a12CTGMG1k+uYVFnZ0NuT7VV3IbP4CGRiHhqNIVZQC4LO6WQ=;
Received: from madras.collabora.co.uk ([46.235.227.172])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1r7fCt-0004xd-Oj for mjpeg-users@lists.sourceforge.net;
 Mon, 27 Nov 2023 17:15:42 +0000
Received: from benjamin-XPS-13-9310..
 (ec2-34-240-57-77.eu-west-1.compute.amazonaws.com [34.240.57.77])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by madras.collabora.co.uk (Postfix) with ESMTPSA id 347576607424;
 Mon, 27 Nov 2023 16:55:45 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1701104145;
 bh=yBTcY/czjMNBp1trwVXXouYWoMuVcN590O1KG93acxs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=UOQJzgrWxwOp2sA7iCF9XxZJq7N4qsbIqJgtBVRCKuSPh1OE50mJTPPDxhGrydikf
 FVleabN0drV801aIkvUbtkOPgQq7uf/pkN15a57SUTqLoK+DBlpFM/TuG2aTYbj2xU
 Bvtve6HF3qVwu/VINhnqzHZdv7Lugq/X497ztVoEXSZcCxIla8Hi0qNdPjkCDbRfxp
 3qqpAb8DYCF3RWXO3IX5Vzq2OePF18K7FX9em/JKY44U7NDYWdi9iuTIRPfxo+mQX3
 8rtiaC6AKCuQ1AchXUGqH6HGGn0ygk0F88LSMKGIPSdj/cxwEEhGp+S1yQEGqRDRck
 072VCRCO/IUtA==
To: hverkuil@xs4all.nl, mchehab@kernel.org, tfiga@chromium.org,
 m.szyprowski@samsung.com, matt.ranostay@konsulko.com
Date: Mon, 27 Nov 2023 17:54:51 +0100
Message-Id: <20231127165454.166373-53-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231127165454.166373-1-benjamin.gaignard@collabora.com>
References: <20231127165454.166373-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: zoran driver use a dma engine and needs a minimum number of
 buffers to be present before start streaming. That is 'min_dma_buffers_needed'
 purpose so use it instead of 'min_buffers_needed' field. Signed-off-by:
 Benjamin
 Gaignard <benjamin.gaignard@collabora.com> CC: Corentin Labbe
 <clabbe@baylibre.com> CC: mjpeg-users@lists.sourceforge.net ---
 drivers/media/pci/zoran/zoran_driver.c | 5 +---- 1 [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1r7fCt-0004xd-Oj
X-Mailman-Approved-At: Mon, 27 Nov 2023 17:52:53 +0000
Subject: [Mjpeg-users] [PATCH 52/55] media: pci: zoran: Use
 min_dma_buffers_needed field
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
From: Benjamin Gaignard via Mjpeg-users <mjpeg-users@lists.sourceforge.net>
Reply-To: MJPEG-tools user list <mjpeg-users@lists.sourceforge.net>
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 mjpeg-users@lists.sourceforge.net, Corentin Labbe <clabbe@baylibre.com>,
 kernel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

zoran driver use a dma engine and needs a minimum number of
buffers to be present before start streaming.
That is 'min_dma_buffers_needed' purpose so use it instead
of 'min_buffers_needed' field.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
CC: Corentin Labbe <clabbe@baylibre.com>
CC: mjpeg-users@lists.sourceforge.net
---
 drivers/media/pci/zoran/zoran_driver.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/media/pci/zoran/zoran_driver.c b/drivers/media/pci/zoran/zoran_driver.c
index fa672cc8bc67..23ed1fdc03df 100644
--- a/drivers/media/pci/zoran/zoran_driver.c
+++ b/drivers/media/pci/zoran/zoran_driver.c
@@ -749,9 +749,6 @@ static int zr_vb2_queue_setup(struct vb2_queue *vq, unsigned int *nbuffers, unsi
 
 	zr->buf_in_reserve = 0;
 
-	if (*nbuffers < vq->min_buffers_needed)
-		*nbuffers = vq->min_buffers_needed;
-
 	if (*nplanes) {
 		if (sizes[0] < size)
 			return -EINVAL;
@@ -971,7 +968,7 @@ int zoran_queue_init(struct zoran *zr, struct vb2_queue *vq, int dir)
 	vq->mem_ops = &vb2_dma_contig_memops;
 	vq->gfp_flags = GFP_DMA32;
 	vq->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
-	vq->min_buffers_needed = 9;
+	vq->min_dma_buffers_needed = 9;
 	vq->lock = &zr->lock;
 	err = vb2_queue_init(vq);
 	if (err)
-- 
2.39.2



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
