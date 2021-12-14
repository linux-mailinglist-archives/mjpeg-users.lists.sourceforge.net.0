Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1356847494D
	for <lists+mjpeg-users@lfdr.de>; Tue, 14 Dec 2021 18:26:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mxBYt-0002Pa-0H; Tue, 14 Dec 2021 17:25:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <clabbe@baylibre.com>) id 1mxAr7-0002j1-JM
 for mjpeg-users@lists.sourceforge.net; Tue, 14 Dec 2021 16:40:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WMS2o1RG6OOY773SExtf5pXJlS02JecjKlii7tDnHds=; b=m5Ke/w2uM8dJNNrC6HfIpEjsnt
 bqmDM6kiyxAwEu6QmforbWHEtMW6Y+dfHtGj3Zvr3BIvItX01j24bWPE5Tp9YiUvw3/sZ8S0MK4fp
 Bo9ppx66OythSAiE2Db+b2GTNJI3D0iW4Fj3g7vhCbeHGVUMyxivflf4Q4re9xU6HPiU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WMS2o1RG6OOY773SExtf5pXJlS02JecjKlii7tDnHds=; b=XDbPi+LDH3b9t1oTLD/sPfTofx
 vf8SfZw430HTjDyMGZl3BLxB3Dlu5JUTsEkkSpzNzm2Y0+hZTG4X4SroYYPU4OGLLEmFx6dNreYuG
 hhv2bOPp86r+ZAH8wYhwFdaA46ydLZxO1I786Fl+g7QbStK1RY9cIoRgka/i2Z9H8aHE=;
Received: from mail-wm1-f50.google.com ([209.85.128.50])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mxAr6-00FJ6w-Sj
 for mjpeg-users@lists.sourceforge.net; Tue, 14 Dec 2021 16:40:45 +0000
Received: by mail-wm1-f50.google.com with SMTP id
 g191-20020a1c9dc8000000b0032fbf912885so14145877wme.4
 for <mjpeg-users@lists.sourceforge.net>; Tue, 14 Dec 2021 08:40:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WMS2o1RG6OOY773SExtf5pXJlS02JecjKlii7tDnHds=;
 b=fyTyd1+IJ1YqPGsfBd4bZVOxshAxJ9rrqy+OZzJyky9cvyAjtNrL21Rl3BgayWNIce
 bQ1iHqVMZPISJlOCLD6SR4wLM/F2MiyYQ2lLyhO6RsmKoPgFtDcWFUvcKrvLyVUr1dAh
 2xTVFum1JoBn8Cub5a1Zt+QoJEqyDlfMsYR0FJ04o5yUtKFp9YOwchcVJd2HliHmwjRL
 SUIq1BT565wtBOnJcvLnz5+wOSj3J80G7jxwqbVgnjA3UVMjfGHh+LE5LoZrgtOvkDS3
 vvv17otElycjl+sgZDpywDqrhKa/CixETfhuW05tXrbcJwb8BopPWzoW6mP3bC2ss5ru
 LNQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WMS2o1RG6OOY773SExtf5pXJlS02JecjKlii7tDnHds=;
 b=gG4TtKglv60K9fLQEX7VzKBfVkkn/IomUK3br99/KqLTS+RPpMkhXyMUOhzrRKD12i
 9Mo5Cfw6UXmbJVEv7vmcuuMpbpFfBrizX6w4/AoZ5qg7QxfRcUNlVr6Ke+9Tf48yrvE7
 Sm3iZvUPW1bua9A/Nuh/6R5SyO3T5UdMeGS2igscvKCXJ2u7O9EFBbH4m5Xy+HLoc+jU
 arIRiEaVGCgK+FeobuOkWRFESJPoL3uZD7ymH9vz6cMmQs4CLvH9dKOlnC2zJTx/Gtj0
 b+azwVwSaEqfYi+bMz1la6O0n/wD8pfhKiOaxeEywG30VbUp691W4AlicJGoj9R7k/Yq
 mIEA==
X-Gm-Message-State: AOAM533fw4Alrrhq+TKRv1QvZ3kXEnsnQAjJ2/BSj522XvVbd318NM4G
 5FSKC/F1LzBp6UcXauiJOARciJ7NbhAnPM5M
X-Google-Smtp-Source: ABdhPJwXKcjNUUPBit4ldRqWlkvBv7lzavL92IzSrDie60QDhC4S7rMjzkaBphXmgZfN4e4FRhASJw==
X-Received: by 2002:a05:600c:3b28:: with SMTP id
 m40mr47732150wms.100.1639498619766; 
 Tue, 14 Dec 2021 08:16:59 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id a9sm295116wrt.66.2021.12.14.08.16.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Dec 2021 08:16:59 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: mchehab@kernel.org,
	hverkuil@xs4all.nl,
	gregkh@linuxfoundation.org
Date: Tue, 14 Dec 2021 16:16:35 +0000
Message-Id: <20211214161636.1886900-18-clabbe@baylibre.com>
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
 Content preview: From: Hans Verkuil <hans.verkuil@cisco.com> Do not spam the
 kernel log with messages that result from incorrect userspace input. Those
 should be either dropped completely (the error code gives sufficient info)
 or changed to debug messages. 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.50 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.50 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1mxAr6-00FJ6w-Sj
X-Mailman-Approved-At: Tue, 14 Dec 2021 17:25:55 +0000
Subject: [Mjpeg-users] [PATCH v4 17/18] staging: media: zoran: drop kernel
 log spam
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
 mjpeg-users@lists.sourceforge.net, Hans Verkuil <hans.verkuil@cisco.com>,
 Corentin Labbe <clabbe@baylibre.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

From: Hans Verkuil <hans.verkuil@cisco.com>

Do not spam the kernel log with messages that result from incorrect
userspace input. Those should be either dropped completely (the error
code gives sufficient info) or changed to debug messages.

Signed-off-by: Hans Verkuil <hans.verkuil@cisco.com>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_device.c |  8 ++++----
 drivers/staging/media/zoran/zoran_driver.c | 22 +++++++++++-----------
 2 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_device.c b/drivers/staging/media/zoran/zoran_device.c
index 294e459307c3..8f60db4e44c1 100644
--- a/drivers/staging/media/zoran/zoran_device.c
+++ b/drivers/staging/media/zoran/zoran_device.c
@@ -239,7 +239,7 @@ static void zr36057_set_vfe(struct zoran *zr, int video_width, int video_height,
 	wa = tvn->wa;
 	ha = tvn->ha;
 
-	pci_info(zr->pci_dev, "set_vfe() - width = %d, height = %d\n", video_width, video_height);
+	pci_dbg(zr->pci_dev, "set_vfe() - width = %d, height = %d\n", video_width, video_height);
 
 	if (video_width < BUZ_MIN_WIDTH ||
 	    video_height < BUZ_MIN_HEIGHT ||
@@ -664,7 +664,7 @@ void zr36057_enable_jpg(struct zoran *zr, enum zoran_codec_mode mode)
 		zr36057_set_jpg(zr, mode);	// \P_Reset, ... Video param, FIFO
 
 		clear_interrupt_counters(zr);
-		pci_info(zr->pci_dev, "enable_jpg(MOTION_COMPRESS)\n");
+		pci_dbg(zr->pci_dev, "enable_jpg(MOTION_COMPRESS)\n");
 		break;
 	}
 
@@ -693,7 +693,7 @@ void zr36057_enable_jpg(struct zoran *zr, enum zoran_codec_mode mode)
 		zr36057_set_jpg(zr, mode);	// \P_Reset, ... Video param, FIFO
 
 		clear_interrupt_counters(zr);
-		pci_info(zr->pci_dev, "enable_jpg(MOTION_DECOMPRESS)\n");
+		pci_dbg(zr->pci_dev, "enable_jpg(MOTION_DECOMPRESS)\n");
 		break;
 
 	case BUZ_MODE_IDLE:
@@ -720,7 +720,7 @@ void zr36057_enable_jpg(struct zoran *zr, enum zoran_codec_mode mode)
 		decoder_call(zr, video, s_stream, 1);
 		encoder_call(zr, video, s_routing, 0, 0, 0);
 
-		pci_info(zr->pci_dev, "enable_jpg(IDLE)\n");
+		pci_dbg(zr->pci_dev, "enable_jpg(IDLE)\n");
 		break;
 	}
 }
diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
index 367fe4be8357..013efdecd582 100644
--- a/drivers/staging/media/zoran/zoran_driver.c
+++ b/drivers/staging/media/zoran/zoran_driver.c
@@ -171,7 +171,7 @@ static int zoran_v4l_set_format(struct zoran *zr, int width, int height,
 
 	if (height < BUZ_MIN_HEIGHT || width < BUZ_MIN_WIDTH ||
 	    height > BUZ_MAX_HEIGHT || width > BUZ_MAX_WIDTH) {
-		pci_err(zr->pci_dev, "%s - wrong frame size (%dx%d)\n", __func__, width, height);
+		pci_dbg(zr->pci_dev, "%s - wrong frame size (%dx%d)\n", __func__, width, height);
 		return -EINVAL;
 	}
 
@@ -181,7 +181,7 @@ static int zoran_v4l_set_format(struct zoran *zr, int width, int height,
 
 	/* Check against available buffer size */
 	if (height * width * bpp > zr->buffer_size) {
-		pci_err(zr->pci_dev, "%s - video buffer size (%d kB) is too small\n",
+		pci_dbg(zr->pci_dev, "%s - video buffer size (%d kB) is too small\n",
 			__func__, zr->buffer_size >> 10);
 		return -EINVAL;
 	}
@@ -189,7 +189,7 @@ static int zoran_v4l_set_format(struct zoran *zr, int width, int height,
 	/* The video front end needs 4-byte alinged line sizes */
 
 	if ((bpp == 2 && (width & 1)) || (bpp == 3 && (width & 3))) {
-		pci_err(zr->pci_dev, "%s - wrong frame alignment\n", __func__);
+		pci_dbg(zr->pci_dev, "%s - wrong frame alignment\n", __func__);
 		return -EINVAL;
 	}
 
@@ -205,7 +205,7 @@ static int zoran_set_norm(struct zoran *zr, v4l2_std_id norm)
 {
 
 	if (!(norm & zr->card.norms)) {
-		pci_err(zr->pci_dev, "%s - unsupported norm %llx\n", __func__, norm);
+		pci_dbg(zr->pci_dev, "%s - unsupported norm %llx\n", __func__, norm);
 		return -EINVAL;
 	}
 
@@ -231,7 +231,7 @@ static int zoran_set_input(struct zoran *zr, int input)
 		return 0;
 
 	if (input < 0 || input >= zr->card.inputs) {
-		pci_err(zr->pci_dev, "%s - unsupported input %d\n", __func__, input);
+		pci_dbg(zr->pci_dev, "%s - unsupported input %d\n", __func__, input);
 		return -EINVAL;
 	}
 
@@ -532,7 +532,7 @@ static int zoran_s_fmt_vid_cap(struct file *file, void *__fh,
 		if (fmt->fmt.pix.pixelformat == zoran_formats[i].fourcc)
 			break;
 	if (i == NUM_FORMATS) {
-		pci_err(zr->pci_dev, "VIDIOC_S_FMT - unknown/unsupported format 0x%x\n",
+		pci_dbg(zr->pci_dev, "VIDIOC_S_FMT - unknown/unsupported format 0x%x\n",
 			fmt->fmt.pix.pixelformat);
 		/* TODO do not return here to fix the TRY_FMT cannot handle an invalid pixelformat*/
 		return -EINVAL;
@@ -666,7 +666,7 @@ static int zoran_g_selection(struct file *file, void *__fh, struct v4l2_selectio
 
 	if (sel->type != V4L2_BUF_TYPE_VIDEO_OUTPUT &&
 	    sel->type != V4L2_BUF_TYPE_VIDEO_CAPTURE) {
-		pci_err(zr->pci_dev, "%s invalid selection type combination\n", __func__);
+		pci_dbg(zr->pci_dev, "%s invalid selection type combination\n", __func__);
 		return -EINVAL;
 	}
 
@@ -712,7 +712,7 @@ static int zoran_s_selection(struct file *file, void *__fh, struct v4l2_selectio
 		return -EINVAL;
 
 	if (zr->map_mode == ZORAN_MAP_MODE_RAW) {
-		pci_err(zr->pci_dev, "VIDIOC_S_SELECTION - subcapture only supported for compressed capture\n");
+		pci_dbg(zr->pci_dev, "VIDIOC_S_SELECTION - subcapture only supported for compressed capture\n");
 		return -EINVAL;
 	}
 
@@ -937,7 +937,7 @@ static int zr_vb2_start_streaming(struct vb2_queue *vq, unsigned int count)
 	zr->vbseq = 0;
 
 	if (zr->map_mode != ZORAN_MAP_MODE_RAW) {
-		pci_info(zr->pci_dev, "START JPG\n");
+		pci_dbg(zr->pci_dev, "START JPG\n");
 		zr36057_restart(zr);
 		zoran_init_hardware(zr);
 		if (zr->map_mode == ZORAN_MAP_MODE_JPG_REC)
@@ -951,7 +951,7 @@ static int zr_vb2_start_streaming(struct vb2_queue *vq, unsigned int count)
 		return 0;
 	}
 
-	pci_info(zr->pci_dev, "START RAW\n");
+	pci_dbg(zr->pci_dev, "START RAW\n");
 	zr36057_restart(zr);
 	zoran_init_hardware(zr);
 
@@ -1001,7 +1001,7 @@ static void zr_vb2_stop_streaming(struct vb2_queue *vq)
 	}
 	spin_unlock_irqrestore(&zr->queued_bufs_lock, flags);
 	if (zr->buf_in_reserve)
-		pci_err(zr->pci_dev, "Buffer remaining %d\n", zr->buf_in_reserve);
+		pci_dbg(zr->pci_dev, "Buffer remaining %d\n", zr->buf_in_reserve);
 	zr->map_mode = ZORAN_MAP_MODE_RAW;
 }
 
-- 
2.32.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
