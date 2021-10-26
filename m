Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 457CA43CE0D
	for <lists+mjpeg-users@lfdr.de>; Wed, 27 Oct 2021 17:55:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mflGj-0003pH-P5; Wed, 27 Oct 2021 15:55:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <clabbe@baylibre.com>) id 1mfSMD-0004dp-6q
 for mjpeg-users@lists.sourceforge.net; Tue, 26 Oct 2021 19:43:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5DMKsH1cCiElIcvlchVrud05bdBtUx8WxuBusFpvIlQ=; b=L2XNR3QXf26/07FhwK2ZtLolyT
 YEhdYJmf8WbYKBCIdBaxiFo9cgOmOMN8vnVlBC+sJ5JwY0/G+63GFPJw4YHTXs/3qwyB6ab2llUaW
 /9mPDyvt2emucB3A0VKsVM0Uzdj14G9cPZVdvyvYSUz7gaIDkRM+MkEEKQXJhZ8pS5Z4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5DMKsH1cCiElIcvlchVrud05bdBtUx8WxuBusFpvIlQ=; b=ic6zseBa25ucTe54TqbtRl3sCv
 zAf0cEi9G4nSqs9ktXCShdFnAx4+9zIyvXktzd/Crxbh2a7+Kb1bJr7vsWzUTqmjvBSRI77FftoWN
 gQJP7MrEc177e5op2TqAOugiBoyXqxDXCVM6uj4y7HS9afgmL3BJU+0PPQvnAoOSNrJg=;
Received: from mail-ed1-f47.google.com ([209.85.208.47])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mfSLj-00HZ1T-4A
 for mjpeg-users@lists.sourceforge.net; Tue, 26 Oct 2021 19:43:37 +0000
Received: by mail-ed1-f47.google.com with SMTP id m17so826234edc.12
 for <mjpeg-users@lists.sourceforge.net>; Tue, 26 Oct 2021 12:43:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5DMKsH1cCiElIcvlchVrud05bdBtUx8WxuBusFpvIlQ=;
 b=6CjYEZ3CK1EqlDI0t9dOdnu+cEXmTY48mhlJAD2Y6dEbYN3h17xoHRuCjK5us/YsyH
 zUoh1FykakIYHSs9TTp1cDHyhFdnW83GJ9SD05thlpOlTeXqu7NU801GNQSGOOLSIo30
 B4P4N7mCDYFFDLHgLcXeHpx7mMMN4eE2taQ9+hErGyWpQI1komcrm9HnTHge0jExbOXv
 3/Oji8Y7Int6PI/He22xbDcY6Fj/Xg5844j83Q2At/w/vXq08JEhY9+F3N9b+XkR5TcU
 UlzhncqYhjEvfp7KWC6ah+Th+2pRgQN1JH365RkEW58LQrstcYYD1KdZedGTZUcCt4Ss
 h9Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5DMKsH1cCiElIcvlchVrud05bdBtUx8WxuBusFpvIlQ=;
 b=DIPQBd4Log/DpkAPO8xwjhmS+ZNAYX54M+F58rUTM9cJgT3te9yrJVWkvx/FcX62M2
 CA1R/cF97owiiL28x8Ld2IND4y+MPGE8FMmfsUdI0Jy6SU32qL/nInkjHw+d11NtuCm8
 rn3uQM2gbz2Q7AfT+yV8jZ/OlcXlLcu/RDPHmfGo6t78fghvXiMymmuaqGEpdpZ9QLba
 YfkxJyMvenr0zfdqwKcwrCBh1L3bPsewV7R7z3JBjw/kLwKoTLDQsSZA+HCAAn3y527J
 OCF+miHb0nT6yKPZ8Sb6KTRDNrLWQ3E97UbMRvsnbjE9dGJ/cpQHwnHKHyjahNKF1sf/
 VolA==
X-Gm-Message-State: AOAM533TWOypzJRaCjIPeJJPA7D8yNnzF7sIsHHssl7cHwKIQ6/kZ6nA
 QzBlx0+O08mrH/viA7llZQGy5YXvZndMng==
X-Google-Smtp-Source: ABdhPJwpDrxahnldZNraYy8KvooyJn1BfvcSwn+IV16qVBBvx/SeqaLGvIMJfKdV+KIXuJDy4wCttA==
X-Received: by 2002:a05:6000:15c6:: with SMTP id
 y6mr34034952wry.382.1635276869433; 
 Tue, 26 Oct 2021 12:34:29 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id s18sm17676123wrb.95.2021.10.26.12.34.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Oct 2021 12:34:29 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: mchehab@kernel.org,
	hverkuil@xs4all.nl,
	gregkh@linuxfoundation.org
Date: Tue, 26 Oct 2021 19:34:15 +0000
Message-Id: <20211026193416.1176797-14-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211026193416.1176797-1-clabbe@baylibre.com>
References: <20211026193416.1176797-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-Headers-End: 1mfSLj-00HZ1T-4A
X-Mailman-Approved-At: Wed, 27 Oct 2021 15:55:09 +0000
Subject: [Mjpeg-users] [PATCH v3 13/14] staging: media: zoran: fix counting
 buffer in reserve
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

After each capture, zoran driver complains that it remains some unused
buffer. This is due to a missing count handling.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_driver.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
index 31993c266976..32d76876c683 100644
--- a/drivers/staging/media/zoran/zoran_driver.c
+++ b/drivers/staging/media/zoran/zoran_driver.c
@@ -887,6 +887,7 @@ int zr_set_buf(struct zoran *zr)
 		return -EINVAL;
 	}
 	list_del(&buf->queue);
+	zr->buf_in_reserve--;
 	spin_unlock_irqrestore(&zr->queued_bufs_lock, flags);
 
 	vbuf = &buf->vbuf;
-- 
2.32.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
