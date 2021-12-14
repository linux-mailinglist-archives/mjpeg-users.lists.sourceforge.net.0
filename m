Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0888B47494A
	for <lists+mjpeg-users@lfdr.de>; Tue, 14 Dec 2021 18:26:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mxBYs-0002Oq-8j; Tue, 14 Dec 2021 17:25:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <clabbe@baylibre.com>) id 1mxAUJ-0007N5-53
 for mjpeg-users@lists.sourceforge.net; Tue, 14 Dec 2021 16:17:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jsAZmzA84HYr0fSj6Nj30TuRXcwtejrxLGTaWhzAlMQ=; b=iFBwAAIXQIrCQeWrMvFWh0z5za
 7qqkcLmSO2ucFZYoqrtTlGM9dYVtFsgetymHJw0UYe+hhZyXl//ILcy5kp6SNRo03KLyN6W31kmr3
 Abxz1xB2umSNA9c5om+eiLdVmGHUMiMSOiXeTr+6VEtv/HlKLd0R6NWAjgKsSKQJWNBk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jsAZmzA84HYr0fSj6Nj30TuRXcwtejrxLGTaWhzAlMQ=; b=FpKkdtdWwKlmtL+93LvddmfvJC
 vojUYuUpy/2d0mVoN47FLFw3Xzf2vF1lGkdalVnddBw2GnSLY3fLSPMC1eIdrEqSWxC4ShNGUhc5j
 ALVcSle9LflVAx6A1UD+g5yFCItE28z00oiRw9q1RuqWYaD9L6TLCPJYrY7cOoyuyCVs=;
Received: from mail-wr1-f46.google.com ([209.85.221.46])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mxAUB-00FHzP-Q5
 for mjpeg-users@lists.sourceforge.net; Tue, 14 Dec 2021 16:17:12 +0000
Received: by mail-wr1-f46.google.com with SMTP id t9so33270731wrx.7
 for <mjpeg-users@lists.sourceforge.net>; Tue, 14 Dec 2021 08:17:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jsAZmzA84HYr0fSj6Nj30TuRXcwtejrxLGTaWhzAlMQ=;
 b=Jkgd5bP2htU6ML5q7CKo+fwr8qGgeOdl7vKmxlxevccWOC5a+p7ykDSeeS2ziPy/s+
 GEwgjtqrspok2T/pINKHxN1vu+b8eIloHYQjoLvRfacYMNDLKmmlRfanyR19mttzDchO
 P6CspvtzORLWonE9y0FaoQLjH7lRsOt8yWqhoFGe/nZDwfF2+QmoL4nk6uEF/Hk2fhcE
 PDRcBz9jK9PlalTp6Cfzuz+56i+EcgKCKeXQ6SuLUkJlBA0VMCNg6xytq12dUfzI2x1G
 DGGO7aB1qSddlKfLoF9drhc1ekejuFpy4g9vlr/CgjnmWA0Uu7a1BsSR7AIpSsxtwU9M
 B/jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jsAZmzA84HYr0fSj6Nj30TuRXcwtejrxLGTaWhzAlMQ=;
 b=aK1m4G0h8KfurG6sU9XOqIELgyUHq7vXqNI/8PoaJpvm2E22wCHRv4jlBJFYpdrDgB
 wF3/7Os/Ewa+IUjYwb8nydahMi8pLxyqU5pdDsmByUo22it9GM3M7iSlmOcxLrblmH0u
 VP/RsSICtE0tTChi/X7N6hRyJ96uBZaCLyd1n/vGsolROgju1LPVS1z8ZIGaQC8Zm4j+
 PWW5x4UaOeRbS7y8TSdnUWQKZkI7wCZSf/o8Nv1kJXjJN11kGviXgKj2T6DRg03usfwn
 Xv+9OcWRekRIFMwe2US53lbjtA3sW/zkpmYcFiSggCz+hqfRmOwwMRfNymygl7jrPdAy
 HxWg==
X-Gm-Message-State: AOAM5330xzByeYMHxEp4yuXeTrrQF6lMU6br6z+ngWzV46Rqj3QCEwSX
 wvGQFSSlEQozySiPGLs3PU8e7g==
X-Google-Smtp-Source: ABdhPJxnf2p7/7jIa5LrKasySq737CXPpzkhbrROQqeWGNd+jJArY7j2Vhv5EdFT0fhauh2j0pcoHg==
X-Received: by 2002:adf:fa0b:: with SMTP id m11mr6781251wrr.152.1639498617427; 
 Tue, 14 Dec 2021 08:16:57 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id a9sm295116wrt.66.2021.12.14.08.16.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Dec 2021 08:16:57 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: mchehab@kernel.org,
	hverkuil@xs4all.nl,
	gregkh@linuxfoundation.org
Date: Tue, 14 Dec 2021 16:16:32 +0000
Message-Id: <20211214161636.1886900-15-clabbe@baylibre.com>
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
 Content preview:  On the case tmp_dcim=1, the index of buffer is miscalculated.
 This generate a NULL pointer dereference later. So let's fix the calcul and
 add a check to prevent this to reappear. Signed-off-by: Corentin Labbe
 <clabbe@baylibre.com>
 --- drivers/staging/media/zoran/zoran_device.c | 7 ++++++- 1 file changed,
 6 insertions(+), 1 deletion(-) 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.46 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.46 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1mxAUB-00FHzP-Q5
X-Mailman-Approved-At: Tue, 14 Dec 2021 17:25:55 +0000
Subject: [Mjpeg-users] [PATCH v4 14/18] staging: media: zoran: calculate the
 right buffer number for zoran_reap_stat_com
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

On the case tmp_dcim=1, the index of buffer is miscalculated.
This generate a NULL pointer dereference later.

So let's fix the calcul and add a check to prevent this to reappear.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_device.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/zoran/zoran_device.c b/drivers/staging/media/zoran/zoran_device.c
index 5b12a730a229..294e459307c3 100644
--- a/drivers/staging/media/zoran/zoran_device.c
+++ b/drivers/staging/media/zoran/zoran_device.c
@@ -814,7 +814,7 @@ static void zoran_reap_stat_com(struct zoran *zr)
 		if (zr->jpg_settings.tmp_dcm == 1)
 			i = (zr->jpg_dma_tail - zr->jpg_err_shift) & BUZ_MASK_STAT_COM;
 		else
-			i = ((zr->jpg_dma_tail - zr->jpg_err_shift) & 1) * 2 + 1;
+			i = ((zr->jpg_dma_tail - zr->jpg_err_shift) & 1) * 2;
 
 		stat_com = le32_to_cpu(zr->stat_com[i]);
 		if ((stat_com & 1) == 0) {
@@ -826,6 +826,11 @@ static void zoran_reap_stat_com(struct zoran *zr)
 		size = (stat_com & GENMASK(22, 1)) >> 1;
 
 		buf = zr->inuse[i];
+		if (!buf) {
+			spin_unlock_irqrestore(&zr->queued_bufs_lock, flags);
+			pci_err(zr->pci_dev, "No buffer at slot %d\n", i);
+			return;
+		}
 		buf->vbuf.vb2_buf.timestamp = ktime_get_ns();
 
 		if (zr->codec_mode == BUZ_MODE_MOTION_COMPRESS) {
-- 
2.32.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
