Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BB40D57D967
	for <lists+mjpeg-users@lfdr.de>; Fri, 22 Jul 2022 06:19:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1oEk8O-0000Dg-G6; Fri, 22 Jul 2022 04:19:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <abhijeet.srivastava2308@gmail.com>)
 id 1oEa7P-0000vn-UY
 for mjpeg-users@lists.sourceforge.net; Thu, 21 Jul 2022 17:37:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7A7f3vsCoMPD+oJ+DRhT8m5bm216n3txZjp85zwns54=; b=O6SDN+vN3aP15kn5Zu3vZZeXnm
 gIJtNQnuYNfVXdc/EoG/mza2G8fQ4twBhcDZYgAWP0Kz+lSW2MUieOntMQh4YQ1HU2WPsWfnyLrd7
 qWuVs1COwHCCLt0QvHixJGZfF7ZIjPQz7Ttxksh+TNRMDGFuKuRSxAAr9lMSGi10WwUU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=7A7f3vsCoMPD+oJ+DRhT8m5bm216n3txZjp85zwns54=; b=d
 u9+9I4ikJWKLJTMhZnOniKqe1u6ee5trtChjt/+W+n0MamQPNfCitZq1jExBi7HxrwQlsnY6qv7Mh
 Sx17iovLJP5ZhjoD895bHyEuare4QHWgR9cap0m4VQVLy5QGZ7eeqUJfJ9DHz+zjY48oAtOVYlTzA
 QLHEmPFp+eotMbts=;
Received: from mail-pj1-f53.google.com ([209.85.216.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oEa7M-0007KU-Q4
 for mjpeg-users@lists.sourceforge.net; Thu, 21 Jul 2022 17:37:46 +0000
Received: by mail-pj1-f53.google.com with SMTP id
 q43-20020a17090a17ae00b001f1f67e053cso2055271pja.4
 for <mjpeg-users@lists.sourceforge.net>; Thu, 21 Jul 2022 10:37:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7A7f3vsCoMPD+oJ+DRhT8m5bm216n3txZjp85zwns54=;
 b=fcxHtD+v0Oc9pKDm4ZTw/rm1K57I0OQz/UHDeHsDbMw+3Td+wBMXFhXOHEGrAhrxr3
 SLLB/p1ps0OE6wLB8PRZh26P8D25wo2Vh8f8aZ1YIclS6UbuStT/fV+15MWMKgS3PUt/
 EkHav+1hzaMnAMZyRndLXSlViTpoZvO7c6qGu7vztPAHHScqrmqgrJhLD0hhq6yZNi1k
 5ogKzoifhm4vADyYuT5/WqSQGRZOLHZoDG0iDh1Q3HO/nu5Q2azJ7e99v+Cbyu+Pdlsy
 9Bz6MPEmHJ5aBGbIwP5pMfhTZ17GC8Xv73ZuVfYmjXxw22bzndmo76HMMlLuF8TFpNum
 FJjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7A7f3vsCoMPD+oJ+DRhT8m5bm216n3txZjp85zwns54=;
 b=2ds/YdlM60VUrWw/cUpCXjS1/mqZkbiTYNw90E3CGFUpBdABhgob2tTaa1XQmP8NX5
 vMN3yxgPLlsNEN/YBlzs7NDdx89Dcb5PMvX744WcnfF3OCQWi/RRs3U6DgevmQhp/rBx
 gRK+DhiaGfdwi3wPp0f4Q4alvQ5uldcxq1tdMAytlSQ9GOB8fOe323a4R9AhCUMI7rEq
 t8L/8I4nP0ldlIdzZP+Kf2vJgpyP4mSS+3+5QhKZgK8IAJwjwh0RQeP4ASFuEEvEojf9
 vurIUzqTWupcIQPyYeIhlXeV+hp9ngahv6W9lDottRYzAQFbKzHhDAfvZMD9OMbCqE31
 AEWw==
X-Gm-Message-State: AJIora9hTgAv3BsOFK3pZxkI5EY1Wzp3EhMeUTWDPF86RgKE5vbGA9RD
 MWJ2FNhUCnfkYJ6TPkqWBic=
X-Google-Smtp-Source: AGRyM1uHlIPUVPRS+0S6K83Tv/R6O1KC9VAqTt4sA26lM1hbFUgDjkfUujDhCqIiUbzhOB/8olB6fA==
X-Received: by 2002:a17:90b:4b81:b0:1ef:cd2c:bf2e with SMTP id
 lr1-20020a17090b4b8100b001efcd2cbf2emr12282986pjb.137.1658425059113; 
 Thu, 21 Jul 2022 10:37:39 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:d01c:7038:1b61:a224:b8d7:290b])
 by smtp.googlemail.com with ESMTPSA id
 q9-20020a17090a7a8900b001f219c5ae7dsm1711714pjf.31.2022.07.21.10.37.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Jul 2022 10:37:38 -0700 (PDT)
From: Abhijeet Srivastava <abhijeet.srivastava2308@gmail.com>
To: 
Date: Thu, 21 Jul 2022 23:07:22 +0530
Message-Id: <20220721173729.63844-1-abhijeet.srivastava2308@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Warning found by checkpatch.pl script. Signed-off-by:
 Abhijeet
 Srivastava --- drivers/staging/media/zoran/zoran_driver.c | 6 ++++-- 1 file
 changed, 4 insertions(+),
 2 deletions(-) diff --git a/drivers/staging/media/zoran/zoran_driver.c
 b/drivers/staging/media/zoran/zoran_driver.c index 4304b7e21709..b408c1d4e0a7
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.53 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.53 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1oEa7M-0007KU-Q4
X-Mailman-Approved-At: Fri, 22 Jul 2022 04:19:26 +0000
Subject: [Mjpeg-users] [PATCH] media: staging: media: zoran: Fixed Block
 comments
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

Warning found by checkpatch.pl script.

Signed-off-by: Abhijeet Srivastava <abhijeet.srivastava2308@gmail.com>
---
 drivers/staging/media/zoran/zoran_driver.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
index 4304b7e21709..b408c1d4e0a7 100644
--- a/drivers/staging/media/zoran/zoran_driver.c
+++ b/drivers/staging/media/zoran/zoran_driver.c
@@ -746,9 +746,11 @@ static const struct v4l2_ioctl_ops zoran_ioctl_ops = {
 	.vidioc_enum_input		    = zoran_enum_input,
 	.vidioc_g_input			    = zoran_g_input,
 	.vidioc_s_input			    = zoran_s_input,
+
 /*	.vidioc_enum_output		    = zoran_enum_output,
-	.vidioc_g_output		    = zoran_g_output,
-	.vidioc_s_output		    = zoran_s_output,*/
+ *	.vidioc_g_output		    = zoran_g_output,
+ *	.vidioc_s_output		    = zoran_s_output,
+ */
 	.vidioc_g_std			    = zoran_g_std,
 	.vidioc_s_std			    = zoran_s_std,
 	.vidioc_create_bufs		    = vb2_ioctl_create_bufs,
-- 
2.34.1



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
