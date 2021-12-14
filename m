Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A5E474951
	for <lists+mjpeg-users@lfdr.de>; Tue, 14 Dec 2021 18:26:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mxBYt-0002Py-AN; Tue, 14 Dec 2021 17:25:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <clabbe@baylibre.com>) id 1mxAtG-0002Au-6p
 for mjpeg-users@lists.sourceforge.net; Tue, 14 Dec 2021 16:42:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AmgkymR9haOFT9fuurSvbtWN6rxOeKgu2ZPiSoag26Q=; b=badRnT248BOateRc3tivu2lUiq
 JHBD/53y2N1c1KbmVAFIj9qwiylKIAn9GI9Rdt4761seSnXkafhkr6T2TsGHG8w7bzM0ajeo8h65g
 nhHnsQCiD9icHd1oJycOwD0nkZmVhB6owszo12QMYG9JUiJbb5hMXSEK5RjameKM1eb4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=AmgkymR9haOFT9fuurSvbtWN6rxOeKgu2ZPiSoag26Q=; b=f
 uWBhZ3hwJQal5f5l3eFh69GvWTIzjfSPuEIaIn3LabAKjjhXDnG+uwXtr6w3QhTEJoe82P0eULDRi
 bTPQLlmadQwX+cWFPDaYt+3Qwl2vMw8OD9Q2JwTaeq4XyOE7HgXV7tVw//ksJOAyZSccWdCL6AijW
 rXzqNDighflaZqhk=;
Received: from mail-wm1-f41.google.com ([209.85.128.41])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mxAtG-0007bU-8v
 for mjpeg-users@lists.sourceforge.net; Tue, 14 Dec 2021 16:42:58 +0000
Received: by mail-wm1-f41.google.com with SMTP id 133so14740882wme.0
 for <mjpeg-users@lists.sourceforge.net>; Tue, 14 Dec 2021 08:42:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AmgkymR9haOFT9fuurSvbtWN6rxOeKgu2ZPiSoag26Q=;
 b=S0HCKpPdv0aGzhdeTCgzdLPyaPU2SxHZ+GU/joalX0OuobxFQydPcVzfEZ/u733I2d
 fJ7Ekot9HvPUl49H3Kl78ZBnT6M/oTHEyGKWtITtldzhNj546EnytZXvH0YDcupLmXuL
 9YD+HKPr6hhpg+6mqgX7GtuZ0zzrSomeq4j0rUsiX21XKqaNOCdupYV/zDMd3E0OpCvt
 2B4gS9dVvhiBCM+PLUR8+pM2DU7W5QI6p/XHWOLNR1EzRCeqbXg8+alvgNu090ikStzQ
 dqAne2B2Tj0rC4TmQCEL8wYpO6vN3SeflCfICY0hmKZJbrk4cHvJivT1M6cH2W5/pg2p
 Vb8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AmgkymR9haOFT9fuurSvbtWN6rxOeKgu2ZPiSoag26Q=;
 b=LhnmLWB48wt+jreznd1UPuXKsdEF4G5mpOf+0HBMyvJ10nSRSydCpEYSuswCtj8d78
 Pk450rdWVJ1pr7G6x+znd0OMb+8uppYGZk1R4BeOt9Zlf4M3lul7z5PKcC2B5ZTUN/F2
 CiXYQ8kg/SbL3DMMmPMPDfkpiOsOKunaimioYGIxgiVuGKy7t61oPUWpNcKJA8BgVwES
 YzpJxQNOWP78fYU6w9QwRSveEUDP9x78Wmo3POrPvZ3Z7slvDA6dvGtmZw3DmQk8bBOL
 aWlWmCE/E5/RZMAqZ+JSoB6j5S7l2HrOC1Rzbkwzz3lBoHAw5J9bc+xzrO091HTXUoVS
 iKDQ==
X-Gm-Message-State: AOAM530kgA6pxEw/GgQVioygNSZg/4a0zVUflLpvCNhUOWyH8ht6dg+q
 WlJYf+7cuac+twm7XtxoID/lIHReqKdrGpxr
X-Google-Smtp-Source: ABdhPJwD77E4ftv7qBq+s4ZQFO8uD366PZA247DTyhNmc1Ml7+ImDjC8MxX0aXZvGuA1xzNDWwLRXQ==
X-Received: by 2002:a7b:c257:: with SMTP id b23mr8285418wmj.67.1639498602119; 
 Tue, 14 Dec 2021 08:16:42 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id a9sm295116wrt.66.2021.12.14.08.16.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Dec 2021 08:16:41 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: mchehab@kernel.org,
	hverkuil@xs4all.nl,
	gregkh@linuxfoundation.org
Date: Tue, 14 Dec 2021 16:16:18 +0000
Message-Id: <20211214161636.1886900-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello The main change of this serie is to merge all zoran
 related modules in one. This fixes the load order problem when everything
 is built-in. But this serie include several more fixes found while working
 [...] Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.41 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.41 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1mxAtG-0007bU-8v
X-Mailman-Approved-At: Tue, 14 Dec 2021 17:25:56 +0000
Subject: [Mjpeg-users] [PATCH v4 00/18] staging: media: zoran: merge in one
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

The main change of this serie is to merge all zoran related modules in
one.
This fixes the load order problem when everything is built-in.
But this serie include several more fixes found while working on this.

Regards

Changes since v3:
- Fixed a lock up when doing a capture
- added fixes patchs from Hans Verkuil
- dropped DC30 patch, I will send a new patch later for adding DC30D

Changes since v2:
- added the 4 latest patchs
- removed DEBUGFS kconfig option
- fixed Dan Carpenter's reported codec issues
- fixed kernel test robot's reported issues on vb2_dma_contig_set_max_seg_size()

Changes since v1:
- add missing debugfs cleaning
- clean some remaining module_get/put functions which made impossible to
  remove the zoran module
- added the two latest patchs

Corentin Labbe (14):
  staging: media: zoran: move module parameter checks to zoran_probe
  staging: media: zoran: use module_pci_driver
  staging: media: zoran: rename debug module parameter
  staging: media: zoran: add debugfs
  staging: media: zoran: videocode: remove procfs
  staging: media: zoran: merge all modules
  staging: media: zoran: remove vidmem
  staging: media: zoran: move videodev alloc
  staging: media: zoran: move config select on primary kconfig
  staging: media: zoran: introduce zoran_i2c_init
  staging: media: zoran: fix usage of vb2_dma_contig_set_max_seg_size
  staging: media: zoran: clean unused code
  staging: media: zoran: fix counting buffer in reserve
  staging: media: zoran: calculate the right buffer number for
    zoran_reap_stat_com

Hans Verkuil (4):
  staging: media: zoran: fix various V4L2 compliance errors
  staging: media: zoran: fix TRY_FMT handling
  staging: media: zoran: drop kernel log spam
  staging: media: zoran: drop read/write support

 drivers/staging/media/zoran/Kconfig        |  38 +-
 drivers/staging/media/zoran/Makefile       |   8 +-
 drivers/staging/media/zoran/videocodec.c   |  68 +---
 drivers/staging/media/zoran/videocodec.h   |   4 +-
 drivers/staging/media/zoran/zoran.h        |  18 +-
 drivers/staging/media/zoran/zoran_card.c   | 398 +++++++++++++--------
 drivers/staging/media/zoran/zoran_device.c |  15 +-
 drivers/staging/media/zoran/zoran_device.h |   2 -
 drivers/staging/media/zoran/zoran_driver.c |  56 ++-
 drivers/staging/media/zoran/zr36016.c      |  25 +-
 drivers/staging/media/zoran/zr36016.h      |   2 +
 drivers/staging/media/zoran/zr36050.c      |  24 +-
 drivers/staging/media/zoran/zr36050.h      |   2 +
 drivers/staging/media/zoran/zr36060.c      |  23 +-
 drivers/staging/media/zoran/zr36060.h      |   2 +
 15 files changed, 349 insertions(+), 336 deletions(-)

-- 
2.32.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
