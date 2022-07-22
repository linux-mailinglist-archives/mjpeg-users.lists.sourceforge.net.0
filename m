Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A365457EBB0
	for <lists+mjpeg-users@lfdr.de>; Sat, 23 Jul 2022 05:37:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1oF5xG-00084I-RY; Sat, 23 Jul 2022 03:37:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <abhijeet.srivastava2308@gmail.com>)
 id 1oExMF-0006V1-Dk
 for mjpeg-users@lists.sourceforge.net; Fri, 22 Jul 2022 18:26:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=U1Vpm+Ol39J44Ip/w/HGMbvmcj0WPHsL80jPsnskDEw=; b=QHp8K0u1Sz1Du8aHEkmihe5Sgo
 eqYylftz6Nl4SL0H6SK3RXNOGE/N4OcdgpmQwlFE2IbHzO2z3nXlWjnZWqgqsIzgHXLxQRVX6prPi
 kR6W0dCppaFZC41WdXyIYVye9n4YlBReddwZsEa6rqXdOxcj9qz8eQLgBlJcW7iP7ZpY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=U1Vpm+Ol39J44Ip/w/HGMbvmcj0WPHsL80jPsnskDEw=; b=H
 6AtotSSSsl+ZlgOKIm0XsfJE/uvKxfA3Dec5gXuXlFfphS26F1160gbiXTv8bt4G7o+fE0X2nYwoU
 Cvm0I2R6l9ZVYyMDEewvt+CguyA+0ELJFImxrjsC6ML4JOZQKOoq7yC8jQvyTl4xSh5DAzzMitfA3
 kmudKY+vBWVt0dZI=;
Received: from mail-pg1-f174.google.com ([209.85.215.174])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oExMD-0075PO-Gp
 for mjpeg-users@lists.sourceforge.net; Fri, 22 Jul 2022 18:26:38 +0000
Received: by mail-pg1-f174.google.com with SMTP id bf13so5036858pgb.11
 for <mjpeg-users@lists.sourceforge.net>; Fri, 22 Jul 2022 11:26:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=U1Vpm+Ol39J44Ip/w/HGMbvmcj0WPHsL80jPsnskDEw=;
 b=CIGDJTjDuxvqk+hCAVZdusqUVAB4D0wVz5qJlyJOS1t/EvRJV94W6dZYKkmoSp5htk
 85ooyVSgoL9yjlHJdM4YDgysnOay2oPLsQxV/rIxWIm8Zgh+7SxljgH9WF8y+m+LNBqO
 haHm4fnrh9Tyc+Go6wHoM8L9WTGyeY2QCM33mmTnCjlkL8OGlXahSv/+899vGQVbsbbK
 iBDcJrO/pFAUcDftanvX7cAnnwfbJ4Gn22olrqlzxChGUcdif1Iqlu+N1ygzF5LaDlPH
 Pgo77iJjki4ipA6pJSQPXRjRdvEfypfvoRlseeKoijA7jP5J/b9xRJwKDpgXXOlncLrv
 Lojg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=U1Vpm+Ol39J44Ip/w/HGMbvmcj0WPHsL80jPsnskDEw=;
 b=nZzO3TTaiZn8qwPGXl/YscYxR+xhCU4qzUR6F1eoDXpRp56cINSrKeAvVDy5pgpCnV
 HY5UgCPwTk4/CCTobCc9TKxbOSgyPBpeA1JqQQ+s3J+GTuAZ7LAE827+9fk0bJVv/Pgp
 En6RmPAwKC9JRqh/lpeY7wVA9336w8EsMhibga8CPxWSicdhQ5k15sN1Zi0/lg/ADSGT
 fa+p5c14DoYPENufBSIHgErPHXAlB5jCuTP8Hkp3FO+gaQIPYpA2nIg3nJzrEIlchOGK
 vBUTN+LUZrVYDzpAmyMUlgYKjbEoYrlmYAjSN+vWBxJgdB26OoIfOdAtmVlZgzkvsh6s
 NbTw==
X-Gm-Message-State: AJIora/oDZd7luJK+7kmcarFlRrVG8UBjzgCU9cUQXU5UAqHNfb3O/XD
 19A5QPBETbMLM92pE+sLJyA=
X-Google-Smtp-Source: AGRyM1s3AfvMh+6Az1vFDMlygz2ppZ+CXyD+YBPfhW1Rh2oGSjnY+p3TwbFP2r7HMBo+hBDNTVCFFA==
X-Received: by 2002:a63:ff4c:0:b0:412:b100:786b with SMTP id
 s12-20020a63ff4c000000b00412b100786bmr874215pgk.537.1658514391994; 
 Fri, 22 Jul 2022 11:26:31 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:d01c:7038:fdc9:680c:9dce:420d])
 by smtp.googlemail.com with ESMTPSA id
 n8-20020a170902e54800b0016d21c1b265sm2173044plf.275.2022.07.22.11.26.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Jul 2022 11:26:31 -0700 (PDT)
From: Abhijeet Srivastava <abhijeet.srivastava2308@gmail.com>
To: 
Date: Fri, 22 Jul 2022 23:56:17 +0530
Message-Id: <20220722182622.23719-1-abhijeet.srivastava2308@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Deleted part of code in block comment Signed-off-by: Abhijeet
 Srivastava --- drivers/staging/media/zoran/zoran_driver.c | 9 --------- 1
 file changed,
 9 deletions(-) diff --git a/drivers/staging/media/zoran/zoran_driver.c
 b/drivers/staging/media/zoran/zoran_driver.c index b408c1d4e0a7..836edf623571
 100644 --- a/drivers/staging/media/zoran/zoran_driver.c +++ b/driv [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [abhijeet.srivastava2308[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [abhijeet.srivastava2308[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.174 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.174 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1oExMD-0075PO-Gp
X-Mailman-Approved-At: Sat, 23 Jul 2022 03:37:24 +0000
Subject: [Mjpeg-users] [PATCH] media: staging: media: zoran: Deleted dead
 code
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
Cc: abhijeet.srivastava2308@gmail.com, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, mjpeg-users@lists.sourceforge.net,
 Corentin Labbe <clabbe@baylibre.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

Deleted part of code in block comment

Signed-off-by: Abhijeet Srivastava <abhijeet.srivastava2308@gmail.com>
---
 drivers/staging/media/zoran/zoran_driver.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
index b408c1d4e0a7..836edf623571 100644
--- a/drivers/staging/media/zoran/zoran_driver.c
+++ b/drivers/staging/media/zoran/zoran_driver.c
@@ -746,11 +746,6 @@ static const struct v4l2_ioctl_ops zoran_ioctl_ops = {
 	.vidioc_enum_input		    = zoran_enum_input,
 	.vidioc_g_input			    = zoran_g_input,
 	.vidioc_s_input			    = zoran_s_input,
-
-/*	.vidioc_enum_output		    = zoran_enum_output,
- *	.vidioc_g_output		    = zoran_g_output,
- *	.vidioc_s_output		    = zoran_s_output,
- */
 	.vidioc_g_std			    = zoran_g_std,
 	.vidioc_s_std			    = zoran_s_std,
 	.vidioc_create_bufs		    = vb2_ioctl_create_bufs,
@@ -762,13 +757,9 @@ static const struct v4l2_ioctl_ops zoran_ioctl_ops = {
 	.vidioc_streamon		    = vb2_ioctl_streamon,
 	.vidioc_streamoff		    = vb2_ioctl_streamoff,
 	.vidioc_enum_fmt_vid_cap	    = zoran_enum_fmt_vid_cap,
-/*	.vidioc_enum_fmt_vid_out	    = zoran_enum_fmt_vid_out,*/
 	.vidioc_g_fmt_vid_cap		    = zoran_g_fmt_vid_cap,
-/*	.vidioc_g_fmt_vid_out               = zoran_g_fmt_vid_out,*/
 	.vidioc_s_fmt_vid_cap		    = zoran_s_fmt_vid_cap,
-/*	.vidioc_s_fmt_vid_out               = zoran_s_fmt_vid_out,*/
 	.vidioc_try_fmt_vid_cap		    = zoran_try_fmt_vid_cap,
-/*	.vidioc_try_fmt_vid_out		    = zoran_try_fmt_vid_out,*/
 	.vidioc_subscribe_event             = v4l2_ctrl_subscribe_event,
 	.vidioc_unsubscribe_event           = v4l2_event_unsubscribe,
 };
-- 
2.34.1



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
