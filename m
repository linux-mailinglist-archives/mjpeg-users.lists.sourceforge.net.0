Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF7A289E18
	for <lists+mjpeg-users@lfdr.de>; Sat, 10 Oct 2020 05:55:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1kR5yY-0002TH-WE; Sat, 10 Oct 2020 03:55:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukas.bulwahn@gmail.com>) id 1kQjpu-0000OS-QR
 for mjpeg-users@lists.sourceforge.net; Fri, 09 Oct 2020 04:16:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AfwAzZgxUctq+B9Xwm5LEy7q5lioBZycU4ewFeC4ZrU=; b=QbTYKS5IRP3vvu9j8e74zhYep6
 HuLYjN9ejzGuzcjPjkJ/Y+SARwcdlvMrp9ZFvPiIPJ9yIJvnWvnyEvLBuHUYvonCV3Xm10/+9P7Fg
 QpNuBvUGnU0/v2iJimpQzUQYpyrEVRamfySTlrsOI9vONgCoRdeGAqkZUDsn9CrDrG8M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AfwAzZgxUctq+B9Xwm5LEy7q5lioBZycU4ewFeC4ZrU=; b=be7/GwpoO1MFoyIocLmf2YLmGE
 2o6DOGfY6YQYumh5WoO0xq9JnAh1+0NBQRPqH/X/65z7aPi/kyDN3ZgbSg0dfHLYTwn2oeYRHC3mr
 n30y9p/37d59KdZ4Od8fwfpFoq+MFLqLEX+Nfyrab1GIu+bRKMYZTwtS8Z9j4v9BnG1g=;
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kQjpo-007w6Q-Bn
 for mjpeg-users@lists.sourceforge.net; Fri, 09 Oct 2020 04:16:54 +0000
Received: by mail-ed1-f68.google.com with SMTP id dn5so7950824edb.10
 for <mjpeg-users@lists.sourceforge.net>; Thu, 08 Oct 2020 21:16:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=AfwAzZgxUctq+B9Xwm5LEy7q5lioBZycU4ewFeC4ZrU=;
 b=YeuI3ZU/Q95zGksRh/xPkTQuaKMozCNBWHj+oL9M9Y/jIEAET0+TVTnhYDk17L2ESl
 Po3EAv7LSh0BdfZTBahj4Xy1jjUYO1LgqavXAlxotKM6x+sABn4BgRaGhKgoKq7D/APk
 FPr4i7RJkARmVt7oApHNvPtTRqrVTzYm6ZfV2QIAjAzQQiaRJdkfQoOGNNAYKyftMofW
 wb7IZkuTzm4cW9umXnEb5EiXn4h5X6ibsIHURgefnDZfCJ4mTXNZpOmimAKfdGTTTi+a
 tn/HA+9zLa2CEgg8sWAgZyRejGA8nWgbKoIoEZkA//EKEpMAi/lEmqsvvRmFjDDKi7ro
 HHuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=AfwAzZgxUctq+B9Xwm5LEy7q5lioBZycU4ewFeC4ZrU=;
 b=ZufYmXUlteZpKTc09JL3HyH3IJCRuCkVMx6iCBxMPywr9cytIaah59LYOYBmStCjjn
 5IkBhsnHWJTV0S7R3MVcPbLsKU/olAW74xklqBaMqs+fN+obFzjZDC9PGHC0qGjNu1wX
 eiIrDC7dCZOicm0h3h50imbG5gwUIVQCSVSLXNt6IqfdKRNj/xm8OchJDbtIeke5qpm3
 tclerAJRJWWLu7wCzqSz6Bq7KEwJ74HvOZBIlPOmPNfVMo9yoE2Le+NmLpiKpeTA12fL
 OqcGe8/2hooKnPfWgRW80nklorTB6dKBJ2/Wpnpx4ZQdXa5D8hdSVctFTBMXCTHq+fGU
 IZlg==
X-Gm-Message-State: AOAM530qdDnEVFMLSqdoH/fRGVrnHgiU5qUBS/gD8cPFfyFt3zvp4xaz
 YuSUus3iXfTr8RKQIfuJOlw=
X-Google-Smtp-Source: ABdhPJyANwK4YJx0wVZaHj0CcX+4bLk3AB9hNGwkbJnRsWUmnv9UXC5XoaoqXKNU7nhJfS7T4UP/uw==
X-Received: by 2002:a05:6402:10d5:: with SMTP id
 p21mr12751645edu.14.1602216994860; 
 Thu, 08 Oct 2020 21:16:34 -0700 (PDT)
Received: from felia.fritz.box ([2001:16b8:2d6e:f600:80f1:4ea4:2130:b98])
 by smtp.gmail.com with ESMTPSA id o11sm5415265edw.80.2020.10.08.21.16.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Oct 2020 21:16:34 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Corentin Labbe <clabbe@baylibre.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 mjpeg-users@lists.sourceforge.net, linux-media@vger.kernel.org
Date: Fri,  9 Oct 2020 06:16:21 +0200
Message-Id: <20201009041621.17513-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: kvack.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lukas.bulwahn[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kQjpo-007w6Q-Bn
X-Mailman-Approved-At: Sat, 10 Oct 2020 03:55:17 +0000
Subject: [Mjpeg-users] [PATCH] MAINTAINERS: rectify ZR36067 VIDEO FOR LINUX
 DRIVER section
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org,
 Ralf Ramsauer <ralf.ramsauer@oth-regensburg.de>, linux-kernel@vger.kernel.org,
 Joe Perches <joe@perches.com>, Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 Pia Eichinger <pia.eichinger@st.oth-regensburg.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

Commit 754f0f1ba8d9 ("media: MAINTAINERS: change maintainer of the zoran
driver") added a new section in MAINTAINERS with an invalid file entry
and at the wrong place for alphabetic ordering.

Hence, ./scripts/get_maintainer.pl --self-test=patterns complains:

  warning: no file matches  F:  Documentation/media/v4l-drivers/zoran.rst

Point the file entry to the right location and move the section to the
right place in MAINTAINERS.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
applies cleanly on next-20201008

Corentin, please ack.
Mauro, please pick this minor non-urgent cleanup patch into your -next tree.

 MAINTAINERS | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 239ae2425cf8..6879ca545677 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -19412,6 +19412,13 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/dlemoal/zonefs.git
 F:	Documentation/filesystems/zonefs.rst
 F:	fs/zonefs/
 
+ZPOOL COMPRESSED PAGE STORAGE API
+M:	Dan Streetman <ddstreet@ieee.org>
+L:	linux-mm@kvack.org
+S:	Maintained
+F:	include/linux/zpool.h
+F:	mm/zpool.c
+
 ZR36067 VIDEO FOR LINUX DRIVER
 M:	Corentin Labbe <clabbe@baylibre.com>
 L:	mjpeg-users@lists.sourceforge.net
@@ -19419,16 +19426,9 @@ L:	linux-media@vger.kernel.org
 S:	Maintained
 W:	http://mjpeg.sourceforge.net/driver-zoran/
 Q:	https://patchwork.linuxtv.org/project/linux-media/list/
-F:	Documentation/media/v4l-drivers/zoran.rst
+F:	Documentation/driver-api/media/drivers/v4l-drivers/zoran.rst
 F:	drivers/staging/media/zoran/
 
-ZPOOL COMPRESSED PAGE STORAGE API
-M:	Dan Streetman <ddstreet@ieee.org>
-L:	linux-mm@kvack.org
-S:	Maintained
-F:	include/linux/zpool.h
-F:	mm/zpool.c
-
 ZRAM COMPRESSED RAM BLOCK DEVICE DRVIER
 M:	Minchan Kim <minchan@kernel.org>
 M:	Nitin Gupta <ngupta@vflare.org>
-- 
2.17.1



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
