Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1483847494E
	for <lists+mjpeg-users@lfdr.de>; Tue, 14 Dec 2021 18:26:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mxBYu-0002R2-69; Tue, 14 Dec 2021 17:26:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <clabbe@baylibre.com>) id 1mxAu6-0001b3-S9
 for mjpeg-users@lists.sourceforge.net; Tue, 14 Dec 2021 16:43:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TsNFpY1RRkr+DNPQxSAx+z1PDhyA43H0wT6kfJ2Z97I=; b=h3I9OPVz7K8MaD+hBgGfGylAhc
 Syf/huIPQGQyOeyiph8dUv0AcIj3W+T83yKG9vjUlPte9GPvCLdAd1LD4+matwYFVcFQLhCb/M1zI
 Wsj8Itgk0uLQwt15Ake3DAghhoG+kX6Je8EluWJ2AnskGwVqoWtYiUh6AIO5WAliORU4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TsNFpY1RRkr+DNPQxSAx+z1PDhyA43H0wT6kfJ2Z97I=; b=dDrWHJzZR8NhjOagq+j7PHVmts
 pnhzpZkAJiXt8zEDbtJLb2Dnhe522S/BJLHPGWLH7UKDKHxJRoPU0vqVuY50U0IJp/4hSuAGyjZC3
 QIqvw/wo/Y/wpViGAh7AVGX/B9qcyXWSkWoL7tbUjYsPBGJAi9DmTDR0tIUhljdHu99E=;
Received: from mail-wm1-f42.google.com ([209.85.128.42])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mxAu2-00FJKP-DR
 for mjpeg-users@lists.sourceforge.net; Tue, 14 Dec 2021 16:43:50 +0000
Received: by mail-wm1-f42.google.com with SMTP id
 g191-20020a1c9dc8000000b0032fbf912885so14152487wme.4
 for <mjpeg-users@lists.sourceforge.net>; Tue, 14 Dec 2021 08:43:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TsNFpY1RRkr+DNPQxSAx+z1PDhyA43H0wT6kfJ2Z97I=;
 b=r2KgfOmb4y/Ab/0mkI4tt7WWdvvqhTCbve13AEruCqs1m8cQ6GMW+iCB/Nl6T5ijHd
 0z4TqVTqnOgCtgoIuSJY4qua46CSaPqxrBroEKC0DS2/cbRyJsDHLVEUFZ2w4XI/sISG
 GRGuoTT+PWiukf+Mwr0Pvo2HWRekn6wf6nLvUNXED/Qyi/sukQulC+kMqMfWhh27c0B4
 c3FoRy/+MeswvAkJjeZx4mzPMCe5my7ZV1UTwPBHEWZCJJMQ0GbtT9DaTz8z6IpeQs+o
 flflL1EmId2IOw0bTo6RF/u7+MlVdm+bC50+2yG5Enx1auGOeI7g3eXHbv7vrViv2obm
 HkKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TsNFpY1RRkr+DNPQxSAx+z1PDhyA43H0wT6kfJ2Z97I=;
 b=ljkKDCIjybH23UvSZo4nPgvWAIcNOMSAPLQXCEiseJKAnVe/uXVExxJpYSX1zNQBUk
 C6tw5Cj4jHnNtORSepQGVmF1orl1RnR7UKKIMVMOY7aBt9k3OofTN7Jl1keTcbUY913I
 MfylBWMGe3nXrTha5MY8C6EwoZQp8VNJvWCAq+iBoTQGC1eiiaPPaO6qCUNt7ijxmxiu
 MwE2W0anUvsy0ZuC81uqIZvYEGoDrz5Zh9OI4WGNfNit9wN6b4PqN3Zyt0+b3H82JLcb
 tuGGI70MMVZ394S5eDWIHWU0zDozdVYZnmwuX4pHqqce28rR5ohONw9kQBDYZJPqYHOp
 t2uw==
X-Gm-Message-State: AOAM531Ssbk4MFg+TQtDGZ94XPIRjQ2RMTZqK3tU12uxOR5SQdSUm25m
 saTFMnoB3qsqI18Ugcq9BZzntK42ndGpn6xP
X-Google-Smtp-Source: ABdhPJx37pLCNLvqnCrEl6O5Qe/Rq60aJvQbHzOdJsWEFbxCtoEvmyIGJewcsg/q1i3nBKkL4mAsxw==
X-Received: by 2002:a1c:9d13:: with SMTP id g19mr47517867wme.41.1639498610376; 
 Tue, 14 Dec 2021 08:16:50 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id a9sm295116wrt.66.2021.12.14.08.16.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Dec 2021 08:16:50 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: mchehab@kernel.org,
	hverkuil@xs4all.nl,
	gregkh@linuxfoundation.org
Date: Tue, 14 Dec 2021 16:16:29 +0000
Message-Id: <20211214161636.1886900-12-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211214161636.1886900-1-clabbe@baylibre.com>
References: <20211214161636.1886900-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: vb2_dma_contig_set_max_seg_size need to have a size in
 parameter
 and not a DMA_BIT_MASK(). While fixing this issue, also fix error handling
 of all DMA size setting. Reported-by: kernel test robot <lkp@intel.com> Fixes:
 d4ae3689226e5 ("media: zoran: device support only 32bit DMA address")
 Signed-off-by:
 Corentin Labbe <clabbe@baylibre.com> --- drivers/staging/medi [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.42 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.42 listed in list.dnswl.org]
X-Headers-End: 1mxAu2-00FJKP-DR
X-Mailman-Approved-At: Tue, 14 Dec 2021 17:25:54 +0000
Subject: [Mjpeg-users] [PATCH v4 11/18] staging: media: zoran: fix usage of
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
