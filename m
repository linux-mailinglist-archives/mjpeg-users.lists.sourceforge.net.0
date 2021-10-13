Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C06442D173
	for <lists+mjpeg-users@lfdr.de>; Thu, 14 Oct 2021 06:17:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1masBX-0006F9-BS; Thu, 14 Oct 2021 04:17:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <clabbe@baylibre.com>) id 1majv5-0001g6-D9
 for mjpeg-users@lists.sourceforge.net; Wed, 13 Oct 2021 19:28:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=B+AY0+OI2PAH7kEtlWzi6aAmClSw8n2MFbS+iADmhiQ=; b=XioBJIaKaEmJQwJqStXsby0Q6O
 jfyx7kehHCCEucgHgI3uLPnvpLkpYQIN4TF0C2eL6yf2HMdUitD6R26ISZiF1xGnDiOxr8D5pqsZO
 3lM6X5g797351XjrJwmzBoPfUlW119K4nKsYlUJCkbkZCKn4reVaaQ91+OhZJsbhkNwA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=B+AY0+OI2PAH7kEtlWzi6aAmClSw8n2MFbS+iADmhiQ=; b=O
 9qxZlXTzKh+fouv/6B+ywDkC3q5wJsu/GxirWyq7IB4VMZ5zYRspek/ABA6PP5y5fUifVIdEjnTFj
 zfodKwjhtnD383LskGlEwuai3ea8HZyJ34omRjN9xa1rxD7+4R5GEDxlMxTstjfft+fgFlg4e4aia
 mAm9Tr5Q17hqIfoA=;
Received: from mail-wr1-f51.google.com ([209.85.221.51])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1majv4-0096Il-SF
 for mjpeg-users@lists.sourceforge.net; Wed, 13 Oct 2021 19:28:07 +0000
Received: by mail-wr1-f51.google.com with SMTP id v17so11793058wrv.9
 for <mjpeg-users@lists.sourceforge.net>; Wed, 13 Oct 2021 12:28:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=B+AY0+OI2PAH7kEtlWzi6aAmClSw8n2MFbS+iADmhiQ=;
 b=dkJGe2ydPJcbVUbuW4blU66DGMRHsKGBo50bAkQswlBP8z3v8s9Gd2HXyymtKq4row
 yAEsdIDfm4cbDFSVH98s1vJp2/CdjKcvxbJ8jwdJqh4OfgDVwXhOiSOi8UlZuMxWinut
 mNRSk9DvH7rz7ZIMWTc5YG18ls0nAAzdtw0DNwFkHNxbaZ+HTUXmfYXannEPRpO/WuCk
 c+D5EjP2YQwTQok/25md0rSjVU/I+o2eQJeJRncn3KMeYLRDxpZiaWZgg7yIooyG0tln
 XNuEiE9IhgeATuro1USZUGpZl1IuVOoZ5TKbbdRX8NKCu1FMVDolv/Ba4I5hfhrctfmo
 btmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=B+AY0+OI2PAH7kEtlWzi6aAmClSw8n2MFbS+iADmhiQ=;
 b=C+486+ym2ddZkFSpKVZJftVfIsjYHU6WH48nse9dInhKcRKg+JyXYHXn11Ad9wYGWm
 6ZcQ9znv8SbfbBLIzprNj2T0b8zqqvjOOyo7gN8uKRog6MJBhrvfQyzzD7RSydy3teDO
 tFe29J78q9xAoNeNDiP3GTVL5lMpPF4nMMJEWwcvqOkVxyjYpUWaIMUFrDkAaBrPA1Sp
 4A0m4Ar8PRnfnt1Xl83y9cX8TRmzeCZjoqRc3CbtSAjsX/Cij5BbreLmp1VpViQ/2FhN
 H4jQ6CwqoNPDf7sVmyUDo3RxmqlqbocsrpXa51lSgmBtIDTIDy8PSxh6N3JZNQVFJiwO
 WLxQ==
X-Gm-Message-State: AOAM531dY7cFA5iWypssls/IU2kXqf+IP2V7ZvSOq/Pfo0+LGBpIs3/M
 OkP6Jf2hYS416r5ywNZ/WcXAQhucrgz6Cg==
X-Google-Smtp-Source: ABdhPJyshLTiFB9PpS2SpFkTztGRsVKMP3l3PqG4vPTTmpk0b9T92cdKQBQmD3lyysrTMi5jZLaYnA==
X-Received: by 2002:adf:9784:: with SMTP id s4mr1006923wrb.277.1634151498541; 
 Wed, 13 Oct 2021 11:58:18 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id e8sm573059wrg.48.2021.10.13.11.58.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 11:58:18 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: mchehab@kernel.org,
	hverkuil@xs4all.nl,
	gregkh@linuxfoundation.org
Date: Wed, 13 Oct 2021 18:58:02 +0000
Message-Id: <20211013185812.590931-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello The main change of this serie is to fusion all zoran
 related modules in one. This fixes the load order problem when everything
 is built-in. Regards 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.51 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.51 listed in wl.mailspike.net]
X-Headers-End: 1majv4-0096Il-SF
X-Mailman-Approved-At: Thu, 14 Oct 2021 04:17:36 +0000
Subject: [Mjpeg-users] [PATCH v2 00/10] staging: media: zoran: fusion in one
 module
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

Hello

The main change of this serie is to fusion all zoran related modules in
one.
This fixes the load order problem when everything is built-in.

Regards

Changes since v1:
- add missing debugfs cleaning
- clean some remaining module_get/put functions which made impossible to
  remove the zoran module
- added the two latest patchs

Corentin Labbe (10):
  staging: media: zoran: move module parameter checks to zoran_probe
  staging: media: zoran: use module_pci_driver
  staging: media: zoran: rename debug module parameter
  staging: media: zoran: add debugfs
  staging: media: zoran: videocode: remove procfs
  staging: media: zoran: fusion all modules
  staging: media: zoran: remove vidmem
  staging: media: zoran: move videodev alloc
  staging: media: zoran: move config select on primary kconfig
  staging: media: zoran: introduce zoran_i2c_init

 drivers/staging/media/zoran/Kconfig        |  46 +--
 drivers/staging/media/zoran/Makefile       |   8 +-
 drivers/staging/media/zoran/videocodec.c   |  68 +----
 drivers/staging/media/zoran/videocodec.h   |   6 +-
 drivers/staging/media/zoran/zoran.h        |   6 +-
 drivers/staging/media/zoran/zoran_card.c   | 328 ++++++++++++++-------
 drivers/staging/media/zoran/zoran_driver.c |   5 +-
 drivers/staging/media/zoran/zr36016.c      |  24 +-
 drivers/staging/media/zoran/zr36016.h      |   2 +
 drivers/staging/media/zoran/zr36050.c      |  21 +-
 drivers/staging/media/zoran/zr36050.h      |   2 +
 drivers/staging/media/zoran/zr36060.c      |  21 +-
 drivers/staging/media/zoran/zr36060.h      |   2 +
 13 files changed, 291 insertions(+), 248 deletions(-)

-- 
2.32.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
