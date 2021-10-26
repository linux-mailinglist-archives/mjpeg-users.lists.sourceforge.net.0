Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 37E5843CE09
	for <lists+mjpeg-users@lfdr.de>; Wed, 27 Oct 2021 17:55:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mflGk-0003qQ-N5; Wed, 27 Oct 2021 15:55:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <clabbe@baylibre.com>) id 1mfSdK-0005Cm-8K
 for mjpeg-users@lists.sourceforge.net; Tue, 26 Oct 2021 20:01:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TsNFpY1RRkr+DNPQxSAx+z1PDhyA43H0wT6kfJ2Z97I=; b=md35AHz1U4RqW15Nb2oFONbNOX
 uz80a7EhakzD5X6+RXHyHGfPsSybiARhPdIwtuJ4CsDs0EhmSS6u7S3i/k/uY5PtPPueDtK1h5APc
 comX/QRMAva8T7v0w+1MU4lZ0cXyZbpfsZeQe7p/JpYnwx2EjQsIlDbVvFeBCkS/yP1M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TsNFpY1RRkr+DNPQxSAx+z1PDhyA43H0wT6kfJ2Z97I=; b=jDnByZpfPzQSyXRrunMfgxnUqq
 FLM/V7JnlwEdiaXz1EqmRlKDddu3y9I7PzzGoXx/zo7ffLydZXP5iwgt4vNiFtHNsUpCjMbEAdALI
 xhWXoF+bdnVXq8+AKaHYPuEL5CtEUQfPowYH8JwZc9H5W9HDzkKH87IvuhyOhlPj3v54=;
Received: from mail-wm1-f52.google.com ([209.85.128.52])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mfScn-00HaLa-Bo
 for mjpeg-users@lists.sourceforge.net; Tue, 26 Oct 2021 20:01:15 +0000
Received: by mail-wm1-f52.google.com with SMTP id
 83-20020a1c0456000000b0032cb02544aaso362467wme.5
 for <mjpeg-users@lists.sourceforge.net>; Tue, 26 Oct 2021 13:00:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TsNFpY1RRkr+DNPQxSAx+z1PDhyA43H0wT6kfJ2Z97I=;
 b=eME9O1/pcsGox5LjfX7xPVoCrlsF3VVOUBpSmani2lqKTUVyRqJiluvPcZL3a70haz
 ezOSnQ5oY5mg4iqKR4piTZdyW4BPP1A81mXV3wmOY+2Mx6fw3dHS5DbC8UwbIyIxy9/B
 F37EkoExJekgeAyATlAGIM8AYm9WXa1o8G2hCIHVmO9lTiaW/hepGMfeW44fXVe7ZB3R
 d8vj6Euu0zI3AvlF0nFYdD7Ki8HreGE0BdIbVkJPhjhDyQsWpQ7FtTMgdl5zY7wYXoy2
 iVzniBL2F3XJUSOJFtln+WR0UfcP8og2qdOlB+GsaRBW/sH/+Qrh1CtQQfoi5QOCAlmh
 Mnlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TsNFpY1RRkr+DNPQxSAx+z1PDhyA43H0wT6kfJ2Z97I=;
 b=tIw2k/u324OBeDOemDH0lFhgCqDYgZoIGodD03Q8pOo5w5b6gUBANyrt3LA7vY3Trd
 VePq8JzV/nmhccUPI5qtTzmz0O9J538xE6fICFRtmt9btqGFVIZL6wQZCnUQlCfEmDeC
 7c9K1hL9VIYq0cORts+utzIpdJnM7FCsfErJqnFZpY8TnnaYWxEv11Fm4tXFJPBgLjaM
 mRRnN9QkDKT5FjdK6w/wZBnL2GlV8pCe3B3Nuk4i445Gg9iNXNXs4007mUInXmRwF2fs
 RhA7YbSIMQhfZ3wjg5lMYe0IyxrxGDqkmKSndxcGTwgIcjev0ctL7/g7SFE9pszMb0cX
 dYhA==
X-Gm-Message-State: AOAM532HFED4+rHoRT4aezRkzyKQEumeD766H3VOl8oiV9UcbssB2h1d
 aaGwDhHLgr5/A5saR8tPy3CyAJTx9fklDg==
X-Google-Smtp-Source: ABdhPJzl6RgoK75e15lPN0nE8cV0VDbdl5tXgmBcelZwY2x6GlL86ABMpt9s6+FbGBGktuDk2J+W5Q==
X-Received: by 2002:a1c:2355:: with SMTP id j82mr731765wmj.164.1635276868270; 
 Tue, 26 Oct 2021 12:34:28 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id s18sm17676123wrb.95.2021.10.26.12.34.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Oct 2021 12:34:28 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: mchehab@kernel.org,
	hverkuil@xs4all.nl,
	gregkh@linuxfoundation.org
Date: Tue, 26 Oct 2021 19:34:13 +0000
Message-Id: <20211026193416.1176797-12-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211026193416.1176797-1-clabbe@baylibre.com>
References: <20211026193416.1176797-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-Headers-End: 1mfScn-00HaLa-Bo
X-Mailman-Approved-At: Wed, 27 Oct 2021 15:55:09 +0000
Subject: [Mjpeg-users] [PATCH v3 11/14] staging: media: zoran: fix usage of
 vb2_dma_contig_set_max_seg_size
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
Cc: kernel test robot <lkp@intel.com>, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, mjpeg-users@lists.sourceforge.net,
 Corentin Labbe <clabbe@baylibre.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

vb2_dma_contig_set_max_seg_size need to have a size in parameter and not
a DMA_BIT_MASK().
While fixing this issue, also fix error handling of all DMA size
setting.

Reported-by: kernel test robot <lkp@intel.com>
Fixes: d4ae3689226e5 ("media: zoran: device support only 32bit DMA address")
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_card.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index a00ad40244d0..4ea2fbf189b9 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -1282,8 +1282,10 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	err = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(32));
 	if (err)
-		return -ENODEV;
-	vb2_dma_contig_set_max_seg_size(&pdev->dev, DMA_BIT_MASK(32));
+		return err;
+	err = vb2_dma_contig_set_max_seg_size(&pdev->dev, U32_MAX);
+	if (err)
+		return err;
 
 	nr = zoran_num++;
 	if (nr >= BUZ_MAX) {
-- 
2.32.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
