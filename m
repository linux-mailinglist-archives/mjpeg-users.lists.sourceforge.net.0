Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 402EA43CE0B
	for <lists+mjpeg-users@lfdr.de>; Wed, 27 Oct 2021 17:55:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mflGl-0003re-CW; Wed, 27 Oct 2021 15:55:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <clabbe@baylibre.com>) id 1mfdKA-0001PP-Rt
 for mjpeg-users@lists.sourceforge.net; Wed, 27 Oct 2021 07:26:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iQIW0HtsUm24MMnIjicuVNqLRGXi6K45G9dZoAsljvs=; b=V2/58YsbsP5nSq522LYXHSQ1Xs
 SyslhnpuJRHB1xqDpqYdvzL/aA8utwQ1uTfsjDEig3r0kXG/8kEnLfZ9BdBvtR4Vrt4Q2mh+KD/9t
 noFQvD45PDMRbK+8c6bPjXAvf6XyvvFTxKVqkq9jI7OCmMbe6EloOy8cg8cBnWriydqA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=iQIW0HtsUm24MMnIjicuVNqLRGXi6K45G9dZoAsljvs=; b=m
 ddDGun+kjqcJ6S3zAyGAowPs+Dvaw8Vab11bkPPOmQhixY11p5jUIB01/D/QopyEwwydDIEqGtzP3
 5UAANcPDhslCsXuhIhP5oxzp2wWgt/tCSz4HHOChJNO+MQlTTFAmc/rr3LukpsHRJtiq2jPz0edtK
 mWqyyzj4bKYiD60g=;
Received: from mail-lf1-f51.google.com ([209.85.167.51])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mfdJy-000vi2-7D
 for mjpeg-users@lists.sourceforge.net; Wed, 27 Oct 2021 07:26:13 +0000
Received: by mail-lf1-f51.google.com with SMTP id x192so4111673lff.12
 for <mjpeg-users@lists.sourceforge.net>; Wed, 27 Oct 2021 00:26:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iQIW0HtsUm24MMnIjicuVNqLRGXi6K45G9dZoAsljvs=;
 b=e1BT2flNGyNgh/Fbo9efhwTrwkVuH3xsd2x+dS/RIzRx+dS8IDhyr7hOyDtzC6aTOx
 njOaA5U6CFvDTGgNiDDcXe26St2TYjxdH2FnATT6c+r0+KXLPAP8+0LTygSafs6eScMS
 95vzdvkFuonkjmxQQTQvndrxwXgnP/nMcVkdY8MqCw/yxQMGbd6kClg/pmgtJD7gl98E
 MQ/HBCMl+KJBxO3fFqg/fkcFJL8S2m3s4GumKIutUT+olyZKqWdr0fjbTt7WiFelQU9k
 UKGkdQAVEjpB8nMznPJykl/4Nxn7KS0zJCfh8Usfh5N0s0f4wROmbrZtvCQ947oWfqlF
 EB0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iQIW0HtsUm24MMnIjicuVNqLRGXi6K45G9dZoAsljvs=;
 b=skymGxT7YSkUUERdHHwbrWdwRk7BTN/ypv0Wteye/ToWaBiBeCXJGXDGizwWol0ZCH
 inNe4A+ukKDi4gPOkfXDKQyw2QJDNSB+/ZHDXeOfJgwo1eb4nuTJoFQdb6KvI/wB8zgc
 qnaluJoPC9DzHW0E9XrE80TKppQwnCbaaX3rYMwndvyjDNf2Jm+q216CwycJNsrpjsoD
 dK6RjC5tdH5JE0iW81ddmSPaq3HsaG7afAQq2XTRBxmODNfvxwrOjnJ53M5Ns0EzLi9R
 +s99Pd/15eScQMokd+23OWa5EHCWdYHg/IalkzuVicZ295luwLMKf9aLxykHOJ/rP3mm
 Q1bw==
X-Gm-Message-State: AOAM532GSxPQ3iGgLbnyl9MYmU45Utj+bDAD+5WwwIIibWKK6GghXGwE
 qXxpzvw20nIJA+TX/CxLtTZYmJIfWn3ZvA==
X-Google-Smtp-Source: ABdhPJxS7PlFtRT5hWEkseaWJxkRf4NGhzTOq9iPY2TpHGSU9+sFPkfwdqjqvUTUHK05HJPX1tgh8g==
X-Received: by 2002:a05:6000:2a2:: with SMTP id
 l2mr27301241wry.109.1635276861598; 
 Tue, 26 Oct 2021 12:34:21 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id s18sm17676123wrb.95.2021.10.26.12.34.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Oct 2021 12:34:21 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: mchehab@kernel.org,
	hverkuil@xs4all.nl,
	gregkh@linuxfoundation.org
Date: Tue, 26 Oct 2021 19:34:02 +0000
Message-Id: <20211026193416.1176797-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
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
 no trust [209.85.167.51 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.51 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mfdJy-000vi2-7D
X-Mailman-Approved-At: Wed, 27 Oct 2021 15:55:09 +0000
Subject: [Mjpeg-users] [PATCH v3 00/14] staging: media: zoran: fusion in one
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
  staging: media: zoran: fusion all modules
  staging: media: zoran: remove vidmem
  staging: media: zoran: move videodev alloc
  staging: media: zoran: move config select on primary kconfig
  staging: media: zoran: introduce zoran_i2c_init
  staging: media: zoran: fix usage of vb2_dma_contig_set_max_seg_size
  staging: media: zoran: clean unused code
  staging: media: zoran: fix counting buffer in reserve
  staging: media: zoran: DC30 encoder is not adv7175

 drivers/staging/media/zoran/Kconfig        |  38 +-
 drivers/staging/media/zoran/Makefile       |   8 +-
 drivers/staging/media/zoran/videocodec.c   |  68 +---
 drivers/staging/media/zoran/videocodec.h   |   4 +-
 drivers/staging/media/zoran/zoran.h        |  18 +-
 drivers/staging/media/zoran/zoran_card.c   | 400 +++++++++++++--------
 drivers/staging/media/zoran/zoran_device.h |   2 -
 drivers/staging/media/zoran/zoran_driver.c |   8 +-
 drivers/staging/media/zoran/zr36016.c      |  25 +-
 drivers/staging/media/zoran/zr36016.h      |   2 +
 drivers/staging/media/zoran/zr36050.c      |  24 +-
 drivers/staging/media/zoran/zr36050.h      |   2 +
 drivers/staging/media/zoran/zr36060.c      |  23 +-
 drivers/staging/media/zoran/zr36060.h      |   2 +
 14 files changed, 317 insertions(+), 307 deletions(-)

-- 
2.32.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
