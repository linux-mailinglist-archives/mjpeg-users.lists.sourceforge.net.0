Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2976943CE04
	for <lists+mjpeg-users@lfdr.de>; Wed, 27 Oct 2021 17:55:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mflGj-0003pA-Ku; Wed, 27 Oct 2021 15:55:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <clabbe@baylibre.com>) id 1mfSM4-0004d5-Oa
 for mjpeg-users@lists.sourceforge.net; Tue, 26 Oct 2021 19:43:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=l5F4vx0AkZXpsFveRw1mgakCBS1yTrfmQWwkFAyxoJk=; b=czNnlhcElDlB5xKzZNPjKaMyij
 gJcuzc1ZNWk48VvuTOpw6jD2jdg1XW0pceppGUZGFuKB4fEuOjzD00vlup63Thmkh55ZTyQsCuvOc
 5SjUXQzNREmh1RUohxEWsrOHbZDiTMQWPgw9FISm9m/dkI4iCMJlgm2T4o/bEyYBoSCI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=l5F4vx0AkZXpsFveRw1mgakCBS1yTrfmQWwkFAyxoJk=; b=CYwmefK0pcSBdXLx5NDGZgYL/k
 VW1mUcOSNdC5xGV8ekiaBWQVLcRKZcXxzCD9CAuT9XkIeJn2yyC8ujGXbEf2R8tcGSGj3Zhf8PFNH
 ykn2xthaSTpnLgjucMS2W67XBtKN9Lu9vi7Htpo1v3YzcnvkLfDlujjcHUhXLDR9EIMQ=;
Received: from mail-wm1-f42.google.com ([209.85.128.42])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mfSLa-00HZ19-Lo
 for mjpeg-users@lists.sourceforge.net; Tue, 26 Oct 2021 19:43:28 +0000
Received: by mail-wm1-f42.google.com with SMTP id
 y205-20020a1c7dd6000000b0032cc8c2800fso3300054wmc.4
 for <mjpeg-users@lists.sourceforge.net>; Tue, 26 Oct 2021 12:42:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=l5F4vx0AkZXpsFveRw1mgakCBS1yTrfmQWwkFAyxoJk=;
 b=h6cRGWDDMndhFqDU+VxYwQIuMq09S7Yz1BmE6h4kA3AFZcosvD174mYt5UTLrY4R6w
 0MSzdoaPeidADEqUzPhjAJvzcXN51u9T/CUpoTnpnIYcn/vBGjMEAf9KtP5m5w2/JpJd
 +pkhLVFYdbwkfbdeg9WAa9ur/hRxbTm/ZFxlQsu0WFoPql9thj1F2ajyXytLkrHpNei9
 en3qKlV6A60Phj8XxaiqlmYh2pGwNcQk0RU1GIh4XJoyeXdqsnnqoLs86j6nLWtVEDN6
 ueVuSo6V+HCwH0BNNUj9KdPm0g0wcBW23S+8D3M2fRuxLwwcZHRY5Ye2uYS7Ix8kEMAk
 ecyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=l5F4vx0AkZXpsFveRw1mgakCBS1yTrfmQWwkFAyxoJk=;
 b=EhXeWb82oohgJ/dU+zwSlErXhlbwOIx2jS7dXZ4rTBOfhyFhRlg7fjF9K4rwnNzvoq
 D+74ZRhF7ZMwmq77E2ggQRZQ9QOyBhKL8LDRxG19D4HMl7Ar0YQgMocOahv3eZ/TGvkx
 nSmroeKArIa0z1Re09Ot151j/S/oLroQbtHLXM3N3vRI7oVQNs1xJQXOpP7TfRf9J0cB
 L3BqXOSUCfXV3cn8djMazK+V5N4kEGJ8ht02PnKXkCXQuNjFc6BMX7O1DP/oHtLN0fy8
 L9C+YEv+UWKpX6U6ZKE4jTFKIvEDZVE/2VUE4cW5MibzLIKNOpvAmDdvs/g8vBF0H9TM
 xf2w==
X-Gm-Message-State: AOAM530ML1eRvuduNTMfMdd/koEApxzpYvvJcneYdHGZG34WjhnQocXz
 pfQm6phVhh5cZn+UG7nTe4YH4/b47T30zA==
X-Google-Smtp-Source: ABdhPJxmbWyIAsI7MI/43OP+WBu0p58TWdJOybmOiVLe296pRgKDBrvmoQB0t00t+mS+rxF1belH6w==
X-Received: by 2002:a05:600c:ac2:: with SMTP id
 c2mr742197wmr.194.1635276869996; 
 Tue, 26 Oct 2021 12:34:29 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id s18sm17676123wrb.95.2021.10.26.12.34.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Oct 2021 12:34:29 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: mchehab@kernel.org,
	hverkuil@xs4all.nl,
	gregkh@linuxfoundation.org
Date: Tue, 26 Oct 2021 19:34:16 +0000
Message-Id: <20211026193416.1176797-15-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211026193416.1176797-1-clabbe@baylibre.com>
References: <20211026193416.1176797-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-Headers-End: 1mfSLa-00HZ19-Lo
X-Mailman-Approved-At: Wed, 27 Oct 2021 15:55:09 +0000
Subject: [Mjpeg-users] [PATCH v3 14/14] staging: media: zoran: DC30 encoder
 is not adv7175
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

The DC30 uses a non-i2c ITT MSE3000 encoder and not an adv7175 as stated
in the card list.
So remove adv7175 from DC30.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_card.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index 59df1e7691f9..a9b0316cd688 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -472,8 +472,6 @@ static struct card_info zoran_cards[NUM_CARDS] = {
 		.name = "DC30",
 		.i2c_decoder = "vpx3220a",
 		.addrs_decoder = vpx3220_addrs,
-		.i2c_encoder = "adv7175",
-		.addrs_encoder = adv717x_addrs,
 		.video_codec = CODEC_TYPE_ZR36050,
 		.video_vfe = CODEC_TYPE_ZR36016,
 
-- 
2.32.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
