Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B96A387D56
	for <lists+mjpeg-users@lfdr.de>; Tue, 18 May 2021 18:26:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1lj2Xk-0002aZ-Uu; Tue, 18 May 2021 16:26:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <clabbe@baylibre.com>) id 1liz9X-00023i-SE
 for mjpeg-users@lists.sourceforge.net; Tue, 18 May 2021 12:48:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1eI4NCY1wQwQq8OfRG+T0AfeGqGVQTSTyL0bsuhMZB8=; b=hyBxGC2GgUpfQ8uYdxHN731fh+
 AmTcJDhIOmkkVAd69lqeJ46gO+OmN/jdyJ4+mXugGGlQ4us+8tLA5Wmp492xTu+D7qNbklobAqf6J
 FmTOZOPXoTN0QxxvL4t4Ar0RNYb5Fe696I4CdXaZ4P+aBnLd+JOE4KNEnuLL1b1rTAtI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1eI4NCY1wQwQq8OfRG+T0AfeGqGVQTSTyL0bsuhMZB8=; b=izZqBJEgPjM9ZV3UV3q76s/AcH
 nwugf8GY0y7DZBDOWohXY/HeI2zs96zY5C2ykhgQ1nVEZAmmHEvQAGjr2QnAJPXiBx1lQihmaEvWO
 ptG4TIaio6D8vbkZih8IJWYArfcb6f3A9nNGtJMAtz2bPzVINQiEjXzAmdrTuoUJNp60=;
Received: from mail-ej1-f45.google.com ([209.85.218.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1liz9T-00CgIn-GV
 for mjpeg-users@lists.sourceforge.net; Tue, 18 May 2021 12:48:51 +0000
Received: by mail-ej1-f45.google.com with SMTP id s22so14134033ejv.12
 for <mjpeg-users@lists.sourceforge.net>; Tue, 18 May 2021 05:48:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1eI4NCY1wQwQq8OfRG+T0AfeGqGVQTSTyL0bsuhMZB8=;
 b=yu5pawqC8M2REqbBEFuwQZL8cBrGJyxAieUo13G6RU8vAl1SoLrla5oPrYV0mChnkx
 dascTGzxh7OrTU1IeB3GqPqHrA0q662WPAiiJyxfJ80/a67A0K54S78j41h+gualFQD+
 vsJFynoIAGViRx5tkMS8n87BVLJOO8mMR8bAqPXqY+253iD7WNE5EcwpQ3oFVUCf5fma
 +ikjj8YZsqSxvveVO7bSyOnpxfpjIVqfSXK+3BDuRwHmgndy0sDFkg7Y6J+TlAUT2Rv6
 HYTRlHyymmI4qIc0q+9yREz5t62hGCnkPb8pQqffrFDu9HX2R34FeAXz3/udPF4Xmeeq
 dqlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1eI4NCY1wQwQq8OfRG+T0AfeGqGVQTSTyL0bsuhMZB8=;
 b=J3IK4G4DqMBBLLY0vyYdvwKpMJoCX+cZVqCm3OAdvm1y1OE8TMYTsnNHeWP7cVP+Yh
 h0qkXai6HEhZgGW2R8cHmf/dWNeIZVkdBPMjNs3C1fflAuPrcCsL+pGKML+4uTJBkQYj
 OyOH/tEAybgfStv4G5T2vDsCTmJjm9TZR5IJAHHhueYGhAvbCyqWMxLLTGYrTS0LbBWb
 cLqNQ3RxcmZ6kkQ9rpBi0CHmrdCWN7rE04mcurbRbppeH2RIXtKHxXoiTLINeJ7Y5VaQ
 mpUsiUlWNYE+SuJ03j385Rq3yweYEUI2nR8p6uCPbRwT+e77/md4FQekEnC4Uq/dCmRy
 9HAg==
X-Gm-Message-State: AOAM533mGJEcUhtJJd1+D5WBQxcN8+dN6yEiEYvOilvrw1KDt615EmEW
 yYCT0Q7jL8+luJApvSovJlrfx/uEmK4O7w==
X-Google-Smtp-Source: ABdhPJxZX83kJ5tUhAZjMNRQvqz0QsKGh6CTOjOc/hTJv/kQUreJ7t63expdHC0sS5c3Gneo8ypwzQ==
X-Received: by 2002:adf:e781:: with SMTP id n1mr6624991wrm.136.1621341683298; 
 Tue, 18 May 2021 05:41:23 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id z3sm1677239wrq.42.2021.05.18.05.41.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 May 2021 05:41:22 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org,
	mchehab@kernel.org
Date: Tue, 18 May 2021 12:41:12 +0000
Message-Id: <20210518124113.1823055-4-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210518124113.1823055-1-clabbe@baylibre.com>
References: <20210518124113.1823055-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.218.45 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.45 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1liz9T-00CgIn-GV
X-Mailman-Approved-At: Tue, 18 May 2021 16:26:04 +0000
Subject: [Mjpeg-users] [PATCH 4/5] staging: media: zoran: fix kzalloc style
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

Prefer kzalloc(sizeof(*prt)...) over kzalloc(sizeof(struct.../

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zr36016.c | 2 +-
 drivers/staging/media/zoran/zr36050.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/zoran/zr36016.c b/drivers/staging/media/zoran/zr36016.c
index 82702a13b05f..9b350a885879 100644
--- a/drivers/staging/media/zoran/zr36016.c
+++ b/drivers/staging/media/zoran/zr36016.c
@@ -361,7 +361,7 @@ static int zr36016_setup(struct videocodec *codec)
 		return -ENOSPC;
 	}
 	//mem structure init
-	ptr = kzalloc(sizeof(struct zr36016), GFP_KERNEL);
+	ptr = kzalloc(sizeof(*ptr), GFP_KERNEL);
 	codec->data = ptr;
 	if (!ptr)
 		return -ENOMEM;
diff --git a/drivers/staging/media/zoran/zr36050.c b/drivers/staging/media/zoran/zr36050.c
index a78862852a47..8bb101fa18bc 100644
--- a/drivers/staging/media/zoran/zr36050.c
+++ b/drivers/staging/media/zoran/zr36050.c
@@ -754,7 +754,7 @@ static int zr36050_setup(struct videocodec *codec)
 		return -ENOSPC;
 	}
 	//mem structure init
-	ptr = kzalloc(sizeof(struct zr36050), GFP_KERNEL);
+	ptr = kzalloc(sizeof(*ptr), GFP_KERNEL);
 	codec->data = ptr;
 	if (!ptr)
 		return -ENOMEM;
-- 
2.26.3



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
