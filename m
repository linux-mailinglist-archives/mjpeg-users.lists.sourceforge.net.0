Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 03D81474948
	for <lists+mjpeg-users@lfdr.de>; Tue, 14 Dec 2021 18:26:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mxBYs-0002Ov-EM; Tue, 14 Dec 2021 17:25:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <clabbe@baylibre.com>) id 1mxAUL-00027i-1A
 for mjpeg-users@lists.sourceforge.net; Tue, 14 Dec 2021 16:17:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ICPd1tzuZ7vBRZTDItUFPBijrAJP5npUCpdRZVWQpyc=; b=Oa3C70A2O21hsutsuPUDdNF815
 vloxMM5dR2Iid6UPnrwl8UJRubN2Rc4pLqDAMY87kDcAiqkV2QeBSQsZQW8KTJGhruiIOPHI6ESJz
 Pxw6ideMUpI+1j/o8IXZ6Qt0eAlYO/ztqrD2LW5TCS6/cramy3wY18NBLSOy3X/JG8f0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ICPd1tzuZ7vBRZTDItUFPBijrAJP5npUCpdRZVWQpyc=; b=Ic8sbe8ycnX8gg67knFaA27cKQ
 n023UkO4JXtO2ow83MxqcvoMo6QpFKWpzBE2LjsODVMpIUgBsjU55YitrtdOHgPi860Qad6c09QEM
 ZHyyhA1jepWHY4KpDPsGYXug+cs9Sr2aQWaEwLwQ0oStidgXRbo/4b4fmuYXQqa19U5E=;
Received: from mail-wr1-f41.google.com ([209.85.221.41])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mxAUC-0006No-II
 for mjpeg-users@lists.sourceforge.net; Tue, 14 Dec 2021 16:17:12 +0000
Received: by mail-wr1-f41.google.com with SMTP id j3so33311783wrp.1
 for <mjpeg-users@lists.sourceforge.net>; Tue, 14 Dec 2021 08:17:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ICPd1tzuZ7vBRZTDItUFPBijrAJP5npUCpdRZVWQpyc=;
 b=thEVmTMs5DTlfoOpHzrZBD3PjLUeTbdsz83ia8HE/GBuuJb3YB2bU7kE5zgt1NmQHY
 8Lx4HBTEa1gHjH3mflr8GhyyRiHwpj09aDDkafUV/EeooIDzhpzo/sQ59Fcf9FNFRdXz
 YumV6DQC/UR3QF7g44Q8oOV9XhfDLBdTsPSBZpfxrG4CtlTGe57S86sj8PdB4Hcd49mK
 E9TYa5zVccNh6uUrlrpiJui5qBWp4yqpJTcb5xwtzAm/XL1St/KHMpXcc1YKxoG5+a64
 lnk9glkaPAVVTLs7FD+J4ENPZ7UCo/WF+mjRd5b3Nvc41SGEit1Lz887JtjZoOOvMhmC
 6rng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ICPd1tzuZ7vBRZTDItUFPBijrAJP5npUCpdRZVWQpyc=;
 b=cdJTi3IkrSzMYS/iYRRpG/c7DQ6GpqOkFTGi9u9GQyiKaZohImH2MTALQBUqFeYLRG
 7Mjrh0vidvpnm1//UO4c5Krl5TEfE4s+ZLAq3OueT6J0lNTKmXUSVtW+dQ1o0RRZTL7e
 jp+PSvzirwV4olnsyjMed01GfQcHDeoe1+qdQrVRhQxsHuhtAHOK1CquFrKXF58lx0Cn
 CQZKcAQlld7IMGJ5A5mGW8X+1SkOCmRx1vXQBbtzl4ZBTcbYVasgAgYL212erQgF3kQO
 pg+xgqf+Kcac/Gt5WZ3pJ3EbSTVWKfy4aCbDocr7UAUNp3kUfwIMGa3SW11Y9m0BB1l4
 i2PQ==
X-Gm-Message-State: AOAM5300NfX8snC9kHFJmbR59DS0zaWcetNGB/u/FdKiEYAkg3yYGnKs
 lXQL/OVKeSRoFqGzXdW0e4RatA==
X-Google-Smtp-Source: ABdhPJwH7Eq9WQ+rKmlD9G25wOEd94cIlE4mLnuQP9/3kScvz7wHibZZ0qa118cUbUU6v0O5fG5mDA==
X-Received: by 2002:a05:6000:1048:: with SMTP id
 c8mr6488849wrx.352.1639498618220; 
 Tue, 14 Dec 2021 08:16:58 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id a9sm295116wrt.66.2021.12.14.08.16.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Dec 2021 08:16:57 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: mchehab@kernel.org,
	hverkuil@xs4all.nl,
	gregkh@linuxfoundation.org
Date: Tue, 14 Dec 2021 16:16:33 +0000
Message-Id: <20211214161636.1886900-16-clabbe@baylibre.com>
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
 Content preview:  From: Hans Verkuil <hverkuil@xs4all.nl> This fixes several
 issues found with 'v4l2-compliance -s': 1) read()/write() is supported, but
 not reported in the capabilities 2) S_STD(G_STD()) failed: setting the same
 standard should just return 0. 3) G_PARM failed to set readbuffers. 4)
 different field v [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.41 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.41 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1mxAUC-0006No-II
X-Mailman-Approved-At: Tue, 14 Dec 2021 17:25:55 +0000
Subject: [Mjpeg-users] [PATCH v4 15/18] staging: media: zoran: fix various
 V4L2 compliance errors
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
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 mjpeg-users@lists.sourceforge.net, Corentin Labbe <clabbe@baylibre.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

From: Hans Verkuil <hverkuil@xs4all.nl>

This fixes several issues found with 'v4l2-compliance -s':

1) read()/write() is supported, but not reported in the capabilities
2) S_STD(G_STD()) failed: setting the same standard should just return 0.
3) G_PARM failed to set readbuffers.
4) different field values in the format vs. what v4l2_buffer reported.
5) zero the sequence number when starting streaming.
6) drop VB_USERPTR: makes no sense with dma_contig streaming.

Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_card.c   |  2 +-
 drivers/staging/media/zoran/zoran_driver.c | 13 ++++++++++---
 2 files changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index 59df1e7691f9..e6d3558323a9 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -879,7 +879,7 @@ static int zoran_init_video_device(struct zoran *zr, struct video_device *video_
 	*video_dev = zoran_template;
 	video_dev->v4l2_dev = &zr->v4l2_dev;
 	video_dev->lock = &zr->lock;
-	video_dev->device_caps = V4L2_CAP_STREAMING | dir;
+	video_dev->device_caps = V4L2_CAP_STREAMING | V4L2_CAP_READWRITE | dir;
 
 	strscpy(video_dev->name, ZR_DEVNAME(zr), sizeof(video_dev->name));
 	/*
diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
index 32d76876c683..dd19ee023d91 100644
--- a/drivers/staging/media/zoran/zoran_driver.c
+++ b/drivers/staging/media/zoran/zoran_driver.c
@@ -253,8 +253,6 @@ static int zoran_querycap(struct file *file, void *__fh, struct v4l2_capability
 	strscpy(cap->card, ZR_DEVNAME(zr), sizeof(cap->card));
 	strscpy(cap->driver, "zoran", sizeof(cap->driver));
 	snprintf(cap->bus_info, sizeof(cap->bus_info), "PCI:%s", pci_name(zr->pci_dev));
-	cap->device_caps = zr->video_dev->device_caps;
-	cap->capabilities = cap->device_caps | V4L2_CAP_DEVICE_CAPS;
 	return 0;
 }
 
@@ -580,6 +578,9 @@ static int zoran_s_std(struct file *file, void *__fh, v4l2_std_id std)
 	struct zoran *zr = video_drvdata(file);
 	int res = 0;
 
+	if (zr->norm == std)
+		return 0;
+
 	if (zr->running != ZORAN_MAP_MODE_NONE)
 		return -EBUSY;
 
@@ -737,6 +738,7 @@ static int zoran_g_parm(struct file *file, void *priv, struct v4l2_streamparm *p
 	if (parm->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
 		return -EINVAL;
 
+	parm->parm.capture.readbuffers = 9;
 	return 0;
 }
 
@@ -867,6 +869,10 @@ int zr_set_buf(struct zoran *zr)
 		vbuf = &buf->vbuf;
 
 		buf->vbuf.field = V4L2_FIELD_INTERLACED;
+		if (BUZ_MAX_HEIGHT < (zr->v4l_settings.height * 2))
+			buf->vbuf.field = V4L2_FIELD_INTERLACED;
+		else
+			buf->vbuf.field = V4L2_FIELD_TOP;
 		vb2_set_plane_payload(&buf->vbuf.vb2_buf, 0, zr->buffer_size);
 		vb2_buffer_done(&buf->vbuf.vb2_buf, VB2_BUF_STATE_DONE);
 		zr->inuse[0] = NULL;
@@ -927,6 +933,7 @@ static int zr_vb2_start_streaming(struct vb2_queue *vq, unsigned int count)
 		zr->stat_com[j] = cpu_to_le32(1);
 		zr->inuse[j] = NULL;
 	}
+	zr->vbseq = 0;
 
 	if (zr->map_mode != ZORAN_MAP_MODE_RAW) {
 		pci_info(zr->pci_dev, "START JPG\n");
@@ -1017,7 +1024,7 @@ int zoran_queue_init(struct zoran *zr, struct vb2_queue *vq, int dir)
 	vq->dev = &zr->pci_dev->dev;
 	vq->type = dir;
 
-	vq->io_modes = VB2_USERPTR | VB2_DMABUF | VB2_MMAP | VB2_READ | VB2_WRITE;
+	vq->io_modes = VB2_DMABUF | VB2_MMAP | VB2_READ | VB2_WRITE;
 	vq->drv_priv = zr;
 	vq->buf_struct_size = sizeof(struct zr_buffer);
 	vq->ops = &zr_video_qops;
-- 
2.32.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
