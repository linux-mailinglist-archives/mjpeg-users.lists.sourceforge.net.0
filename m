Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E7AF0474946
	for <lists+mjpeg-users@lfdr.de>; Tue, 14 Dec 2021 18:26:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mxBYt-0002Q8-GJ; Tue, 14 Dec 2021 17:25:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <clabbe@baylibre.com>) id 1mxAvN-0002DP-GS
 for mjpeg-users@lists.sourceforge.net; Tue, 14 Dec 2021 16:45:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5DMKsH1cCiElIcvlchVrud05bdBtUx8WxuBusFpvIlQ=; b=jqGiFDZHgg5GLo89hu6yxqGrBH
 f7JdVJgM9DFAp3vfITeIIqTEuMxtDDmHZAzY4jgyR0JRdFtGuwCyatvlr713nqEakn5Ph48FmhTqo
 rRa7TCqpQyLj4CJoNli/Ei/bJnZ+fUPXDb78360ZNGdKuBZv2a0tUEiNCQewcVSyZV1Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5DMKsH1cCiElIcvlchVrud05bdBtUx8WxuBusFpvIlQ=; b=VeRATnH0sKEuBSEYyJaI4zjLjO
 kyzB2NnMj07lqy2fsZtbJPJFEzTfRfyDXvPlSp6iu9vWBfe0tOVahg30YOneRtCMksTZrGIRl76UH
 zlqFlcO+z+0+pvvzHlV613+2hFWtFRbrDw8bdJvKG0m//sEZA5BEUxcXQ4dLLI/57vzQ=;
Received: from mail-wm1-f47.google.com ([209.85.128.47])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mxAvO-00FJRq-2S
 for mjpeg-users@lists.sourceforge.net; Tue, 14 Dec 2021 16:45:10 +0000
Received: by mail-wm1-f47.google.com with SMTP id
 z8-20020a05600c220800b0034565e837b6so147064wml.1
 for <mjpeg-users@lists.sourceforge.net>; Tue, 14 Dec 2021 08:45:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5DMKsH1cCiElIcvlchVrud05bdBtUx8WxuBusFpvIlQ=;
 b=xty511YeuRTDMbnIO3IEz89SkP9HsC/N6v112nakzzwPZAEgplHV6cYWMBlRmVbNFD
 Hw9o23EQFloHp/o8WLnLIG8novQzwcegulCnIW9HO4iHXTwrNIjAFi1+WdrRLAUmw0o/
 iBVzL0UQN0KE8GZGl/kI2r0ltq4a5589tDlLl2gX+EIdiAcPEiDbZdsCp36tc0m5r6xA
 MRKh9sJx4fgRGTZBf7hh0N4CwZDx12GqMFoneAPR6StIRIwSLt30/JX+KZ+rabxlTmMi
 x31sQJJhVG+myeWdcppENgbBhOU9OmewYynqhvHtgw1d2kY1a0aTcyyw6UjiFvs+K6w3
 EEFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5DMKsH1cCiElIcvlchVrud05bdBtUx8WxuBusFpvIlQ=;
 b=UqIJ2rA7Rnu3k1iP+BG9yuxSTup8NFTSrHD0gLWwbdBhnuBZOpIhYV1tl08PQfV8UU
 9mFMrciU1cv5kBM96zLnRvrjH3ceAK6OB51yHLJzeRmmPRwFnXf+HhlwnzbYQpYR7ckw
 oCfwWARnS+/5LZZno/8H7AokCR077QXIUGREVJ64DeYIzI/o6EFhXlz/lBNhfcDf1Jvq
 NM847TtLzZeO+CCToT1ChOVBqtCblaQx3QcryCvdpPtWfiIUOKxwmIem3A1jVmOZMz/w
 6YKlcWdQrINLfYBNszL1yNghvoRwsYVz00ZzHA1lVhVpag8Fn9H46yJoO/iWbhTz6syA
 YUUQ==
X-Gm-Message-State: AOAM530zydAxww1QvfPaD7bIjK8DQxCZW+0Gc3cfM+d268SxfgQ4n3gH
 NjEhAOpf4TrKMC6GCWxNL9hSg1b69hJlbuY3
X-Google-Smtp-Source: ABdhPJxbC5ThkNwS+fn4bggjwWj1iTz5yWy2QITxtbnVLkM3XfCqpR8BEbecGTpn1TJ0uEhDwtG4dQ==
X-Received: by 2002:a7b:c257:: with SMTP id b23mr8287134wmj.67.1639498616631; 
 Tue, 14 Dec 2021 08:16:56 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id a9sm295116wrt.66.2021.12.14.08.16.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Dec 2021 08:16:51 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: mchehab@kernel.org,
	hverkuil@xs4all.nl,
	gregkh@linuxfoundation.org
Date: Tue, 14 Dec 2021 16:16:31 +0000
Message-Id: <20211214161636.1886900-14-clabbe@baylibre.com>
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
 Content preview:  After each capture, zoran driver complains that it remains
 some unused buffer. This is due to a missing count handling. Signed-off-by:
 Corentin Labbe <clabbe@baylibre.com> ---
 drivers/staging/media/zoran/zoran_driver.c
 | 1 + 1 file changed, 1 insertion(+) 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.47 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.47 listed in list.dnswl.org]
X-Headers-End: 1mxAvO-00FJRq-2S
X-Mailman-Approved-At: Tue, 14 Dec 2021 17:25:54 +0000
Subject: [Mjpeg-users] [PATCH v4 13/18] staging: media: zoran: fix counting
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
