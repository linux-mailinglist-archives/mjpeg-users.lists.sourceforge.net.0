Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C10F7387D51
	for <lists+mjpeg-users@lfdr.de>; Tue, 18 May 2021 18:26:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1lj2Xl-0002b6-8Y; Tue, 18 May 2021 16:26:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <clabbe@baylibre.com>) id 1lizRn-0006lf-4V
 for mjpeg-users@lists.sourceforge.net; Tue, 18 May 2021 13:07:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WjRHSWLwcQME27BIqP7xhnH4Ry5mnwpaQ96JB5epsUo=; b=URBKG+uCLEfIxVabdpYYmkfNSP
 0ZRV40HRDovbIQ9k5E923mN1i4KnMAhRoXZN+Wm5wmcdEtKyciqaa89w9rRAcmAJB9mN9pgb2/VpG
 1Nfp3MHPh2y86YqTWecB79bla63ZNGi3nyzfVRrRwDNyVPO+SQWuzajKr6fGfDmdYU1I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WjRHSWLwcQME27BIqP7xhnH4Ry5mnwpaQ96JB5epsUo=; b=bkAX2yFQpUcqSX/HpyOS7VHAtp
 L7nAsJIOWF8VWcfaB1KYdW/y3fqCFV1OdAhzZ0YU3ktoml7jFWGGtElV0ROWsyV18hCF0Ad3lUDJ/
 XkrCUc8abfQ0foYLHITZRGBr8h1J1JxD6z3Hw1N0chhfDS3dMIQiE1X7/6rJoFjvWan0=;
Received: from mail-wm1-f53.google.com ([209.85.128.53])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lizRd-00ChHx-TE
 for mjpeg-users@lists.sourceforge.net; Tue, 18 May 2021 13:07:43 +0000
Received: by mail-wm1-f53.google.com with SMTP id
 b19-20020a05600c06d3b029014258a636e8so1441567wmn.2
 for <mjpeg-users@lists.sourceforge.net>; Tue, 18 May 2021 06:07:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WjRHSWLwcQME27BIqP7xhnH4Ry5mnwpaQ96JB5epsUo=;
 b=aEOs2pqTM7bgFZWltKS5/yTJ5nc0SPOS0E8G71ozYxMUL3X4o1FIS+4lmw8v3jPOkH
 /YqkTuO9MSu9hMtUzlsJEfPbCApqWDRnOvMUtjXZbhIkG9+Kd7hcOd9NvPGDzbjXgXkM
 qynSwrKCf5w8Lgh+gNBnX1ikcKw2SzoL+z+9uYoJBweHs3uLp4wc2S9YuhUQ9ytE5MTh
 E/Ep/Li/rIZpxsk9ldLjIvdw64yp5OY89RQ9x00NCGdyzDlYmaeCIghjw2UOnPr/GGMc
 /3ijhHABMHEDEmf+7V2rNqSgnXm3Mkx7w/RwsEfPP3cGO54V1p/z2HAfOL/yA7bIo0ZX
 ZKZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WjRHSWLwcQME27BIqP7xhnH4Ry5mnwpaQ96JB5epsUo=;
 b=TAZ6SaALmdJJOf0un0Qqf1L094jsBOHB/obW+yubjqdyYmwuIdw427E29yGmWEplxk
 tv1qtJTKwhmQyfXN8IWE2sfSLX9eagOKc8SXdLQn9jl8YMZxLeohS4REV1Z8JN4Xy4YD
 jy6rwwtNqn7fJ1NeQgWp9I5omSapcLaXcjWCj/p6l7rW2N06iQISVoYjD3d15NOJfpRl
 q8HyC3wGBhsY/DuIFxelcrYMWAliHHw7poMygOvp8jllHfw7uEhnyXxk89dlLleqHSm3
 0eHTCNcKYdIkmtVkF6YgGO/6LZoWyPF1mtOrcFV8ba50o8eaQ/eIrySjERSvGIYy4gOK
 pNEA==
X-Gm-Message-State: AOAM530kpT5hvnU7pzrc4U3Yo8cMW4TqtFtuskThCePx4W7qabsbV0PS
 EZgHuGEb2KP3pZVGpYcok7p5xwZk7c3Y8A==
X-Google-Smtp-Source: ABdhPJzB0CCRFlZQVb49HxHbUpFADNosNUydFeMQcfZfN6BewWshxLe7tXdzO7i5EwCH5Swmw0HlVQ==
X-Received: by 2002:a1c:1bcc:: with SMTP id b195mr5341668wmb.51.1621341681841; 
 Tue, 18 May 2021 05:41:21 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id z3sm1677239wrq.42.2021.05.18.05.41.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 May 2021 05:41:21 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org,
	mchehab@kernel.org
Date: Tue, 18 May 2021 12:41:10 +0000
Message-Id: <20210518124113.1823055-2-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210518124113.1823055-1-clabbe@baylibre.com>
References: <20210518124113.1823055-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.53 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.53 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lizRd-00ChHx-TE
X-Mailman-Approved-At: Tue, 18 May 2021 16:26:04 +0000
Subject: [Mjpeg-users] [PATCH 2/5] staging: media: zoran: multiple
 assignments should be avoided
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

Remove all multiple assignments.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_driver.c | 6 ++++--
 drivers/staging/media/zoran/zr36016.c      | 3 ++-
 drivers/staging/media/zoran/zr36050.c      | 3 ++-
 drivers/staging/media/zoran/zr36060.c      | 3 ++-
 4 files changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
index e8902f824d6c..46382e43f1bf 100644
--- a/drivers/staging/media/zoran/zoran_driver.c
+++ b/drivers/staging/media/zoran/zoran_driver.c
@@ -678,12 +678,14 @@ static int zoran_g_selection(struct file *file, void *__fh, struct v4l2_selectio
 		sel->r.height = zr->jpg_settings.img_height;
 		break;
 	case V4L2_SEL_TGT_CROP_DEFAULT:
-		sel->r.top = sel->r.left = 0;
+		sel->r.top = 0;
+		sel->r.left = 0;
 		sel->r.width = BUZ_MIN_WIDTH;
 		sel->r.height = BUZ_MIN_HEIGHT;
 		break;
 	case V4L2_SEL_TGT_CROP_BOUNDS:
-		sel->r.top = sel->r.left = 0;
+		sel->r.top = 0;
+		sel->r.left = 0;
 		sel->r.width = BUZ_MAX_WIDTH;
 		sel->r.height = BUZ_MAX_HEIGHT;
 		break;
diff --git a/drivers/staging/media/zoran/zr36016.c b/drivers/staging/media/zoran/zr36016.c
index 2d7dc7abde79..82702a13b05f 100644
--- a/drivers/staging/media/zoran/zr36016.c
+++ b/drivers/staging/media/zoran/zr36016.c
@@ -361,7 +361,8 @@ static int zr36016_setup(struct videocodec *codec)
 		return -ENOSPC;
 	}
 	//mem structure init
-	codec->data = ptr = kzalloc(sizeof(struct zr36016), GFP_KERNEL);
+	ptr = kzalloc(sizeof(struct zr36016), GFP_KERNEL);
+	codec->data = ptr;
 	if (!ptr)
 		return -ENOMEM;
 
diff --git a/drivers/staging/media/zoran/zr36050.c b/drivers/staging/media/zoran/zr36050.c
index 2826f4e5d37b..a78862852a47 100644
--- a/drivers/staging/media/zoran/zr36050.c
+++ b/drivers/staging/media/zoran/zr36050.c
@@ -754,7 +754,8 @@ static int zr36050_setup(struct videocodec *codec)
 		return -ENOSPC;
 	}
 	//mem structure init
-	codec->data = ptr = kzalloc(sizeof(struct zr36050), GFP_KERNEL);
+	ptr = kzalloc(sizeof(struct zr36050), GFP_KERNEL);
+	codec->data = ptr;
 	if (!ptr)
 		return -ENOMEM;
 
diff --git a/drivers/staging/media/zoran/zr36060.c b/drivers/staging/media/zoran/zr36060.c
index 4f9eb9ff2c42..1c3af11b5f24 100644
--- a/drivers/staging/media/zoran/zr36060.c
+++ b/drivers/staging/media/zoran/zr36060.c
@@ -790,7 +790,8 @@ static int zr36060_setup(struct videocodec *codec)
 		return -ENOSPC;
 	}
 	//mem structure init
-	codec->data = ptr = kzalloc(sizeof(*ptr), GFP_KERNEL);
+	ptr = kzalloc(sizeof(*ptr), GFP_KERNEL);
+	codec->data = ptr;
 	if (!ptr)
 		return -ENOMEM;
 
-- 
2.26.3



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
