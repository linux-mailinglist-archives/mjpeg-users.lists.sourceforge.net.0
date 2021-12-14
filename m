Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D3245474955
	for <lists+mjpeg-users@lfdr.de>; Tue, 14 Dec 2021 18:26:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mxBYv-0002TH-Bp; Tue, 14 Dec 2021 17:26:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <clabbe@baylibre.com>) id 1mxAyV-0002Lk-Ub
 for mjpeg-users@lists.sourceforge.net; Tue, 14 Dec 2021 16:48:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wrJsFtsuhtmLSJTTjlYvfNHYFw/pI3X8Oa33ZAzpSDM=; b=QFlSrWZaoyi4mWiVtPKluGsa0h
 2meK5ozYIdnSvIveiaCViapZj1mPEw8SYiWKo5q73ephYvAHm9AxDPHbZpkPYeNtjC4aQdTD/MuIQ
 BLUfEKNpTmQGqKYJVqmzftiZ0O9cvAfzI00igPQCuhnUBof916pOyaSBoBrY7dSLKiO8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wrJsFtsuhtmLSJTTjlYvfNHYFw/pI3X8Oa33ZAzpSDM=; b=PovHnb1NyxwEDzHCmJi74Tp13j
 aS/zvnpqInOf9IuoOCB16tVGVjqaVSA1U0IPjaZEySJgrYH7dRVkfwBLar2OWD457PzrowtPQwLYE
 9otWwS+FwcIH7cEQpGVGYV/CHEJAECsy8OfLyPEbZEqrQSGmQg2WW31f7Fru68hANtQg=;
Received: from mail-wm1-f50.google.com ([209.85.128.50])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mxAyW-00089L-Fi
 for mjpeg-users@lists.sourceforge.net; Tue, 14 Dec 2021 16:48:24 +0000
Received: by mail-wm1-f50.google.com with SMTP id
 i8-20020a7bc948000000b0030db7b70b6bso16693367wml.1
 for <mjpeg-users@lists.sourceforge.net>; Tue, 14 Dec 2021 08:48:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wrJsFtsuhtmLSJTTjlYvfNHYFw/pI3X8Oa33ZAzpSDM=;
 b=kZHKqp9yyvcmhytOSIWGLFtmRf0wd7t8lKKCUbHH3jmUD/6CKDF+dOuwhpDIADAIOC
 VDF+rlH1t0LjkIfDF4qq0jwzZypNZP9Ak7gH1NKrRItJJ7ufpH6Qf7uFxK6Kqh/b+oAc
 XTWW0bizCMjbpGVCtiBrMWt6/nB/rJ68ZWc3+UFdgpoGBX6qQRXKMxtV644Z6lobHftx
 EwYewMz06AGiI97RTHU3CaafXEgJMvCF7hR/Y4iXEYVdgqGs6g0QgP5KCojKvTiYMStd
 guxnjgC+I0eGxpg1849YD0B96QyWj6tewmZHiX0L4s+RDfZRK83mO7zuIuDH1dhfLOYE
 2bXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wrJsFtsuhtmLSJTTjlYvfNHYFw/pI3X8Oa33ZAzpSDM=;
 b=Wfcs2HBDfygzTr8Cqg1/AKgG3GaAqVHB+LpKE5nz+vxVFv06tB7R/ZlQLE6gWB2vz7
 G42vGWSHS/W44muSaQEuVcdhfIMrPguKsYdQYhveSpZZoFNd56YkpLEsJAhUHNxGcOj+
 HLTcvWFf/9T8WQc+w3IdUik2SYKt1zOQDGp8m69MwanzcHku+lu/xgOCRtChBzeVssjb
 2Xv/F3hDLBA/yYecXtIAE9TeyFQNWVGeLasRDURfNDAkkPyQZe6CcEq9bUTx3iTrcMxH
 7jY8jGruLweawxv1aBiDAjUlYpQfjXpEzse/0I9MTomUS5nMMeh/VtYfoWPWtOaO8vRx
 XDmQ==
X-Gm-Message-State: AOAM533Nr9nXqNH1u/SBa6mQcrSPLkWHa0bBYUj7uVYTb4s8cL907qRX
 +WS/ylIeKtWdW/YpK0KWZJ9c+A82VoXDdP+3
X-Google-Smtp-Source: ABdhPJyD/VPTazW+yxv00pyfOaW0IYRXn/a0BIPW8dVg9XI/oBl+yweYxgfPwERXa22rX7ifKTGPQw==
X-Received: by 2002:a1c:6a13:: with SMTP id f19mr8237955wmc.89.1639498620640; 
 Tue, 14 Dec 2021 08:17:00 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id a9sm295116wrt.66.2021.12.14.08.16.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Dec 2021 08:17:00 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: mchehab@kernel.org,
	hverkuil@xs4all.nl,
	gregkh@linuxfoundation.org
Date: Tue, 14 Dec 2021 16:16:36 +0000
Message-Id: <20211214161636.1886900-19-clabbe@baylibre.com>
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
 Content preview:  From: Hans Verkuil <hans.verkuil@cisco.com> This makes no
 sense for MJPEG formats and it is just easier to drop support for this
 altogether.
 Signed-off-by: Hans Verkuil <hans.verkuil@cisco.com> Signed-off-by: Corentin
 Labbe <clabbe@baylibre.com> --- drivers/staging/media/zoran/zoran_card.c
 | 2 +- drivers/staging/media/zoran/zoran_driver.c [...] 
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
X-Headers-End: 1mxAyW-00089L-Fi
X-Mailman-Approved-At: Tue, 14 Dec 2021 17:25:55 +0000
Subject: [Mjpeg-users] [PATCH v4 18/18] staging: media: zoran: drop
 read/write support
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

This makes no sense for MJPEG formats and it is just easier to
drop support for this altogether.

Signed-off-by: Hans Verkuil <hans.verkuil@cisco.com>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_card.c   |  2 +-
 drivers/staging/media/zoran/zoran_driver.c | 12 ------------
 2 files changed, 1 insertion(+), 13 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index e6d3558323a9..59df1e7691f9 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -879,7 +879,7 @@ static int zoran_init_video_device(struct zoran *zr, struct video_device *video_
 	*video_dev = zoran_template;
 	video_dev->v4l2_dev = &zr->v4l2_dev;
 	video_dev->lock = &zr->lock;
-	video_dev->device_caps = V4L2_CAP_STREAMING | V4L2_CAP_READWRITE | dir;
+	video_dev->device_caps = V4L2_CAP_STREAMING | dir;
 
 	strscpy(video_dev->name, ZR_DEVNAME(zr), sizeof(video_dev->name));
 	/*
diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
index 013efdecd582..4304b7e21709 100644
--- a/drivers/staging/media/zoran/zoran_driver.c
+++ b/drivers/staging/media/zoran/zoran_driver.c
@@ -734,15 +734,6 @@ static int zoran_s_selection(struct file *file, void *__fh, struct v4l2_selectio
 	return res;
 }
 
-static int zoran_g_parm(struct file *file, void *priv, struct v4l2_streamparm *parm)
-{
-	if (parm->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
-		return -EINVAL;
-
-	parm->parm.capture.readbuffers = 9;
-	return 0;
-}
-
 /*
  * Output is disabled temporarily
  * Zoran is picky about jpeg data it accepts. At least it seems to unsupport COM and APPn.
@@ -750,7 +741,6 @@ static int zoran_g_parm(struct file *file, void *priv, struct v4l2_streamparm *p
  */
 static const struct v4l2_ioctl_ops zoran_ioctl_ops = {
 	.vidioc_querycap		    = zoran_querycap,
-	.vidioc_g_parm			    = zoran_g_parm,
 	.vidioc_s_selection		    = zoran_s_selection,
 	.vidioc_g_selection		    = zoran_g_selection,
 	.vidioc_enum_input		    = zoran_enum_input,
@@ -786,8 +776,6 @@ static const struct v4l2_file_operations zoran_fops = {
 	.unlocked_ioctl = video_ioctl2,
 	.open		= v4l2_fh_open,
 	.release	= vb2_fop_release,
-	.read		= vb2_fop_read,
-	.write		= vb2_fop_write,
 	.mmap		= vb2_fop_mmap,
 	.poll		= vb2_fop_poll,
 };
-- 
2.32.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
