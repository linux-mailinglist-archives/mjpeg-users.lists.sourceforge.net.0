Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8563440097C
	for <lists+mjpeg-users@lfdr.de>; Sat,  4 Sep 2021 05:49:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mMMfv-0004kv-8j; Sat, 04 Sep 2021 03:49:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <clabbe@baylibre.com>) id 1mMF7I-0000Zu-2Q
 for mjpeg-users@lists.sourceforge.net; Fri, 03 Sep 2021 19:44:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SCEKx7utYrwkWL98r7FBoPPDURIg0879OiU6M0zgQ8Y=; b=bp7O7uNmTMmzux1NVmeVwKFSVp
 9G+9k1teiyc2Ol57FcmmhcM2FMNImGrXhOYKkJrBUMt6q7RxBw0dOUDkXhrK2DG/amzfP53UWQ32n
 tFPUZhFtel09WWHMW6xN/c6G7I1XGbIWlLJlbLCc5X9VNvBbTcu7SgaIg76En3IQH3HU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=SCEKx7utYrwkWL98r7FBoPPDURIg0879OiU6M0zgQ8Y=; b=P
 TDfNh+lPVlxpnJ+CEEkjamW/kOPc9FhCoSOwmq/5CIWoXecYwKQOrw0IncSn9jKssXU11D6RmmFCr
 5JQdAtImrlOPHUFw2OMq3a6SYP0zBop7Jtdzms7ahd7UbUMp+/C16mfpodQQcMu0xUDleuhKGU+vs
 +b3YDrYdQeIu1DFU=;
Received: from mail-wm1-f52.google.com ([209.85.128.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mMF7G-0002x8-Ge
 for mjpeg-users@lists.sourceforge.net; Fri, 03 Sep 2021 19:44:47 +0000
Received: by mail-wm1-f52.google.com with SMTP id u15so33728wmj.1
 for <mjpeg-users@lists.sourceforge.net>; Fri, 03 Sep 2021 12:44:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SCEKx7utYrwkWL98r7FBoPPDURIg0879OiU6M0zgQ8Y=;
 b=VX11jB6gOfOzEMAWcceoSjCouFUaZpGXIPPupzOxCg7uZe9taoXFcI3QO2JUO4ZGci
 M3ThXVVTxMH2xiX3TRkMjlJpz298UVrE4/U0G8/gxuVL3KaZ7P7s1T/805gcveQmSjOA
 2dGBiymZFoCIap7OwP/Eyx5ZuEu+PsV1R2F6454Kf5ppfEvjtd1VeOTus/uHQNO/fLxy
 DhmDvp8wH0pxv++Ib/Nf65U4hjhY4Akkk2LFRVanDuVQatkHuM0fuVId6ohWL5h9adUJ
 Y/YGg9VgJMO4U2uUibUva6A20+W6cwnDix/3077970kAj1l+iJ2SEJsZUtRLuxM/mPn3
 YkbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SCEKx7utYrwkWL98r7FBoPPDURIg0879OiU6M0zgQ8Y=;
 b=JYe1pC+vOMB2Ih/2SqkJMMElyU0+iGrT3F0ep6x5hHQGxxZYAvHVPHHew01r/tgMvB
 g7bZvk5j8XOy1dW0OsC+DqJrsgDZoRL77PEUgLCJICgUeFgUOIgWNsUKvf4+69KYMGiC
 PpLYFtLzi7YapGOB1tGVo4vJoUXz/B4j8GIZMWKhhjCA7yBoxDU9UWNixRe7bBXVaMOM
 Gp4K7K/Cfu3l9FMaAVgtztByp+hIY6Wd3PYAyaBzRREfCmKPDI2i6EDUd80TMQ38mW6g
 eJslrtlD9OgQwTFF7bfLBRM22iqxQOE27F84CLinD4gDHvk3eCSaVKTktfolLgfJvqDV
 2xvg==
X-Gm-Message-State: AOAM530pKkxru+t6uiWyeUzPo3qVWwqMUM0tXgE5WeGxqk1+msq37Lng
 iJ4n9ereBEwj7uEeLdXp6sHQmvdbPEm0BF7iJ/A=
X-Google-Smtp-Source: ABdhPJztyWjMkam7gbJm517Pa8QO9y5uIwtoPSks8MeGt/ZyN11hmZZ5n1fS8fPujss4uzjqYDqYUA==
X-Received: by 2002:a05:600c:2e4a:: with SMTP id
 q10mr224171wmf.189.1630696553935; 
 Fri, 03 Sep 2021 12:15:53 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id a133sm253397wme.5.2021.09.03.12.15.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Sep 2021 12:15:53 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org,
	mchehab@kernel.org
Date: Fri,  3 Sep 2021 19:15:32 +0000
Message-Id: <20210903191540.3052775-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.52 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1mMF7G-0002x8-Ge
X-Mailman-Approved-At: Sat, 04 Sep 2021 03:49:00 +0000
Subject: [Mjpeg-users] [PATCH 0/8] staging: media: zoran: fusion in one
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

Corentin Labbe (8):
  staging: media: zoran: move module parameter checks to zoran_probe
  staging: media: zoran: use module_pci_driver
  staging: media: zoran: rename debug module parameter
  staging: media: zoran: add debugfs
  staging: media: zoran: videocode: remove procfs
  staging: media: zoran: fusion all modules
  staging: media: zoran: remove vidmem
  staging: media: zoran: move videodev alloc

 drivers/staging/media/zoran/Kconfig        |  24 +-
 drivers/staging/media/zoran/Makefile       |   8 +-
 drivers/staging/media/zoran/videocodec.c   |  60 +----
 drivers/staging/media/zoran/videocodec.h   |   5 +
 drivers/staging/media/zoran/zoran.h        |   7 +-
 drivers/staging/media/zoran/zoran_card.c   | 259 +++++++++++++--------
 drivers/staging/media/zoran/zoran_driver.c |   5 +-
 drivers/staging/media/zoran/zr36016.c      |  23 +-
 drivers/staging/media/zoran/zr36016.h      |   2 +
 drivers/staging/media/zoran/zr36050.c      |  20 +-
 drivers/staging/media/zoran/zr36050.h      |   2 +
 drivers/staging/media/zoran/zr36060.c      |  20 +-
 drivers/staging/media/zoran/zr36060.h      |   2 +
 13 files changed, 229 insertions(+), 208 deletions(-)

-- 
2.32.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
