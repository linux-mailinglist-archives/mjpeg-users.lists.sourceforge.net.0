Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D0F387D53
	for <lists+mjpeg-users@lfdr.de>; Tue, 18 May 2021 18:26:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1lj2Xl-0002al-1P; Tue, 18 May 2021 16:26:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <clabbe@baylibre.com>) id 1lizO4-0005n8-T7
 for mjpeg-users@lists.sourceforge.net; Tue, 18 May 2021 13:03:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hcTo/xjSai7+osUF8Q2k+rYqy/qwu121JkrPDsYsoVo=; b=GGyNIz4qR7KP9im+WKdJ6kgca4
 fhCohqq9a35uyyAmnvLJeMNFxoYJrvwqF5IWhHXR3PoeozNwQ/1bT3acoDpWVbNk//rIdJT/uKygM
 NyKah5elHBnU3PhQOAZl6YkdldN6TrYdk1f0I29QnGbeEbU4N5uRFeY8HgObJTFuhzTo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hcTo/xjSai7+osUF8Q2k+rYqy/qwu121JkrPDsYsoVo=; b=HUNqxFiTT7bPCPPjWAZU2HGFFQ
 eqccZM4CA9fSUGq2O6NtxPGHOa0Q5M6mfCrNBwIkC5gfnwbHuzOi3e0rhVW+ctPnT9XTbK1Q84BBT
 QZii0e3MlnCwg63TMXL68wGsVtqBDh1Ac+jDKA4Hsxt0DR8xnfMMpDQoLvaxGI45Kk8o=;
Received: from mail-ej1-f54.google.com ([209.85.218.54])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lizNv-00Ch3r-Km
 for mjpeg-users@lists.sourceforge.net; Tue, 18 May 2021 13:03:53 +0000
Received: by mail-ej1-f54.google.com with SMTP id p24so13176690ejb.1
 for <mjpeg-users@lists.sourceforge.net>; Tue, 18 May 2021 06:03:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hcTo/xjSai7+osUF8Q2k+rYqy/qwu121JkrPDsYsoVo=;
 b=pr081h7fpAVj/o9r3RNVCDtocZcHc52z9gfCDqd19RovMZYw8oen9DJqpPkVaWGh8i
 FEB7DK2vrVLByswr6xk389k8n8Rdwodrwa5cpRzQ9hkL0Nt4ZNI6hxQNZXmoovR1bxjd
 54C3dHpIdR5Nq/O4Jk3Db7mPwzQyCk81yZJq+JlqdsFXl6bO2bpFhHhDbkumwzvXHH5M
 euwpR5uckFtuXal20JAcTIcMeJ1JpKbQ0QkSCUrlGNDeh06A50i+UH12G2ef2M0ptSNd
 bBFE6WbaBSONIQkD3uJGw6xhzeLeb1hsz20ww6vv3oww4jhdNJxeTgQi7mcQfAKYoGyJ
 Jf2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hcTo/xjSai7+osUF8Q2k+rYqy/qwu121JkrPDsYsoVo=;
 b=V5eJWWY2LsM5st3RGPXabxLC6+sSg2eEWwrGlDDciX8VCFhLXmqqItpfGEJy9CI6fv
 cwU57HPfQ4VAkdsyM/QIBV/44qLgBxb54l3mCZwxY1X8xJHnKdabM4nRUGKSXPqWWag8
 aE2ar+JRPgxRBX+TQjq07XxfmfwRSVPmM0CJ6/GqNfCKjpTjDQfiOXA3/2kmafX5XF5p
 jyZbLStJo66B4V6M1Uq3vB7PNbAJFkBW6m2k04eGVHUTfyKIgigWvc/ii9o9cut1u6t9
 phhB8QF2VdkeqdT+8I+Fq1Uhis6ywQmyyAyIeDPLDOV5HiYV+YEjFAqcBF4HMLny7YtS
 ZYxw==
X-Gm-Message-State: AOAM531ESXe4CzsXRGk1cvvocUVF5GeJCPZlu/OxsBd+0BIZ1xd07xkI
 GQPGSNHFmAUw+RwTUN7K2f7yeG5E15eZ/g==
X-Google-Smtp-Source: ABdhPJzDn6VQiLsCOZzSSM0fFq1gVT+7Ow6q9E78vsMn8Fg5W5ywkxmuYsbzc28hgCwySs2sVccaiw==
X-Received: by 2002:a05:6000:44:: with SMTP id k4mr6816431wrx.76.1621341682565; 
 Tue, 18 May 2021 05:41:22 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id z3sm1677239wrq.42.2021.05.18.05.41.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 May 2021 05:41:22 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org,
	mchehab@kernel.org
Date: Tue, 18 May 2021 12:41:11 +0000
Message-Id: <20210518124113.1823055-3-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210518124113.1823055-1-clabbe@baylibre.com>
References: <20210518124113.1823055-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.218.54 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.54 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lizNv-00Ch3r-Km
X-Mailman-Approved-At: Tue, 18 May 2021 16:26:04 +0000
Subject: [Mjpeg-users] [PATCH 3/5] staging: media: zoran: remove blank line
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

Minor style fix by removing useless blank line.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/media/zoran/zoran.h b/drivers/staging/media/zoran/zoran.h
index e7fe8da7732c..b1ad2a2b914c 100644
--- a/drivers/staging/media/zoran/zoran.h
+++ b/drivers/staging/media/zoran/zoran.h
@@ -158,7 +158,6 @@ struct zoran_jpg_settings {
 	struct v4l2_jpegcompression jpg_comp;	/* JPEG-specific capture settings */
 };
 
-
 struct zoran;
 
 /* zoran_fh contains per-open() settings */
-- 
2.26.3



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
