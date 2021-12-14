Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E0636474945
	for <lists+mjpeg-users@lfdr.de>; Tue, 14 Dec 2021 18:26:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mxBYs-0002P2-JN; Tue, 14 Dec 2021 17:25:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <clabbe@baylibre.com>) id 1mxApl-0001UT-FA
 for mjpeg-users@lists.sourceforge.net; Tue, 14 Dec 2021 16:39:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yfJZtohVWDSZMzjIFwnIJSA32PL2KWx5qeRnts2nEJc=; b=iGJfy4RFnOeJB99Aag+HBQ8qrC
 Gu0q4cwABvAQGrRDP2Qf8rN9ldrYC4rhENnhTI98CN5iLsjpWyx2fhRi9MVL8RlzZybvgiJIWNlBL
 9V0kYHKaLeTxgXB+zcMO6bFSLQymLWtGWiLkyVlU/OLZYMSjVbO/fcmWUhl/QB7bryL8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yfJZtohVWDSZMzjIFwnIJSA32PL2KWx5qeRnts2nEJc=; b=Q94peeH0hxEwlOzTxfG83Cyv+g
 URNVcRBnovSFVDhmsMkrFToj3oXevGOI1GSBvoEPCetojXDuXK1A7jaL5DobzbkJnhSeCtK3vUPrt
 jwKhkZcSV5gYkPjZO+o0uoRy5IXbhkrIEQH/rROvKyke4e/yvbjpk2Qxp6UjPYQ/oZig=;
Received: from mail-wm1-f47.google.com ([209.85.128.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mxAph-0007RM-8u
 for mjpeg-users@lists.sourceforge.net; Tue, 14 Dec 2021 16:39:21 +0000
Received: by mail-wm1-f47.google.com with SMTP id
 p3-20020a05600c1d8300b003334fab53afso16664604wms.3
 for <mjpeg-users@lists.sourceforge.net>; Tue, 14 Dec 2021 08:39:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yfJZtohVWDSZMzjIFwnIJSA32PL2KWx5qeRnts2nEJc=;
 b=WRjX41ehg7tciFFyuUTxc/2pAQAgBOczsZ1wOBkNu9SkIKofB5qwSh65Y2JXD/fSt6
 cVGQuYsv6LmXoJHcwimQvOALb8GzauatmczbDujeftSOyWBwFK9PNwP5k7/02sK30t/T
 G6kgUHJTD9Y3MkSBsHGkVItKWCSuynRtYM92UewPaLNPos1e7Ua7Esj5QwMRD2WDNZDp
 pnYHBfs/wxNw846mwfjY+7gsv2zumarrT5fS/3UJKP3hBX9vAiZf8YxQqUMyhyzhibho
 56TBaLydOPoetIsFqKhivK5vprH6W2J6dozBVeN1feZYUqDpy/0qi0jp9xG8h4q0jU5g
 H08A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yfJZtohVWDSZMzjIFwnIJSA32PL2KWx5qeRnts2nEJc=;
 b=QTDquawg0Hh+BdC8YhDGUvcrXLnD4broYj2fMSoaabo6PKnZO3252aXmmz/QGTczpC
 MzuatisyQ5oEIbWs+fgVT/+ABHrc9F5Yc+R/qrsCg9EPlxSPAINrS8f324/iaIbjPOtH
 Hq3F4O+Z9xI+rJ9IsxBWIEFRBpOsirloPh3JLYMKEzkFW6C7VuNlVFW7J+h1Y5WSuTyD
 GZlCCK8E/MEFqu1IHP6T97r+f1Za5PUVe9/pSSkyxwpPLCgl+YfmHlT6J0GHP7wnNR9e
 zBvicsWoNpCfKJgfTnDwZhDJPWk6cwxdO3s16jliwGGlRUHr15MtzHjeNyIcOcQBKITz
 nV7A==
X-Gm-Message-State: AOAM531rELk2mK2g8S6ZXbkgZACGsPdpIJbTDWNKvUMV2/Dy/AgcCXDF
 6AVttRxuetNoRUe3pm/ggitZuYUJpjMrkSp8
X-Google-Smtp-Source: ABdhPJyEECFe5E5h2hoiIPTiQTsMGX5ROjNLPvytp+z8hY51tg+CyIAMgQrNSBpvSwVes3YzLv5CEQ==
X-Received: by 2002:a1c:9d13:: with SMTP id g19mr47518896wme.41.1639498619019; 
 Tue, 14 Dec 2021 08:16:59 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id a9sm295116wrt.66.2021.12.14.08.16.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Dec 2021 08:16:58 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: mchehab@kernel.org,
	hverkuil@xs4all.nl,
	gregkh@linuxfoundation.org
Date: Tue, 14 Dec 2021 16:16:34 +0000
Message-Id: <20211214161636.1886900-17-clabbe@baylibre.com>
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
 Content preview: From: Hans Verkuil <hans.verkuil@cisco.com> TRY_FMT must not
 set actual capture values (zr->buffer_size in this case), since it is a 'try'
 only. zoran_try_fmt_vid_cap() also didn't fill in fmt->fmt.pix.bytesperline
 and fmt->fmt.pix.sizeimage correctly. 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.47 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.47 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1mxAph-0007RM-8u
X-Mailman-Approved-At: Tue, 14 Dec 2021 17:25:55 +0000
Subject: [Mjpeg-users] [PATCH v4 16/18] staging: media: zoran: fix TRY_FMT
 handling
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

TRY_FMT must not set actual capture values (zr->buffer_size in
this case), since it is a 'try' only.

zoran_try_fmt_vid_cap() also didn't fill in fmt->fmt.pix.bytesperline
and fmt->fmt.pix.sizeimage correctly.

Signed-off-by: Hans Verkuil <hans.verkuil@cisco.com>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_driver.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
index dd19ee023d91..367fe4be8357 100644
--- a/drivers/staging/media/zoran/zoran_driver.c
+++ b/drivers/staging/media/zoran/zoran_driver.c
@@ -398,7 +398,6 @@ static int zoran_try_fmt_vid_out(struct file *file, void *__fh,
 				V4L2_FIELD_TOP : V4L2_FIELD_BOTTOM);
 
 	fmt->fmt.pix.sizeimage = zoran_v4l2_calc_bufsize(&settings);
-	zr->buffer_size = fmt->fmt.pix.sizeimage;
 	fmt->fmt.pix.bytesperline = 0;
 	fmt->fmt.pix.colorspace = V4L2_COLORSPACE_SMPTE170M;
 	return res;
@@ -433,6 +432,8 @@ static int zoran_try_fmt_vid_cap(struct file *file, void *__fh,
 	bpp = DIV_ROUND_UP(zoran_formats[i].depth, 8);
 	v4l_bound_align_image(&fmt->fmt.pix.width, BUZ_MIN_WIDTH, BUZ_MAX_WIDTH, bpp == 2 ? 1 : 2,
 		&fmt->fmt.pix.height, BUZ_MIN_HEIGHT, BUZ_MAX_HEIGHT, 0, 0);
+	fmt->fmt.pix.bytesperline = fmt->fmt.pix.width * bpp;
+	fmt->fmt.pix.sizeimage = fmt->fmt.pix.bytesperline * fmt->fmt.pix.height;
 	return 0;
 }
 
-- 
2.32.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
