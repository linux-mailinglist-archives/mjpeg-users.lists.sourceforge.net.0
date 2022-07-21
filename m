Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D5C7B57D968
	for <lists+mjpeg-users@lfdr.de>; Fri, 22 Jul 2022 06:19:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1oEk8O-0000DZ-Be; Fri, 22 Jul 2022 04:19:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <abhijeet.srivastava2308@gmail.com>)
 id 1oEYFa-0008OJ-Ie
 for mjpeg-users@lists.sourceforge.net; Thu, 21 Jul 2022 15:38:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hs4O7l0pP6DRS5EHCNCIfeuQWOmUlfNFogQS7F4nGMY=; b=b8rhOOMq1udBv8kFXls/Ppl0mg
 qttGKRFMJOxKyyjj/Y3tp1jgk7t604GyvChI3VZ1fTr+aG6V/QMQj52r1A9OBD0QbkrEfRhyLexqQ
 xaT+ufiaAnnMSW/0UISvGYhQC/KxRHBIS9qAvcjrne9Nt4OybsLhAGyXr3ApWNTb86as=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=hs4O7l0pP6DRS5EHCNCIfeuQWOmUlfNFogQS7F4nGMY=; b=P
 6yfYbDD6NUxQVIi1IQr7+xRNSQZVaQ/TzPyvSKXJKZ3Vz2TDhoqFQBKRYsi5tXeGXn2VjR5+/5P7k
 7K1tUYGJ44BQovwtAtNEsYHox99oap0bybEdwqUg0bd5GP9Zfbzb9p8f5tH53QxQjmog23I8xSDYX
 VRUEIAT2kH7AO81I=;
Received: from mail-pf1-f182.google.com ([209.85.210.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oEYFa-0002AT-Cj
 for mjpeg-users@lists.sourceforge.net; Thu, 21 Jul 2022 15:38:07 +0000
Received: by mail-pf1-f182.google.com with SMTP id b9so2070579pfp.10
 for <mjpeg-users@lists.sourceforge.net>; Thu, 21 Jul 2022 08:38:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hs4O7l0pP6DRS5EHCNCIfeuQWOmUlfNFogQS7F4nGMY=;
 b=cVYaqki2RE96z91l8vkrxU1/8tPlu8X1aATtyQlcF4T9ti4vBKmOI8EyL7Gt7f/W3Z
 o8widG+rRMF3f8ZHy7YYqiW0Q1zdwMfU119G/LyQB8oMrvEMHZl5dWNgE4iSyRWdhv45
 V/XnZppMeYQtQh0HzArs2YcWpsNqBGahR3ORwwVxR12LnvHBYT7hBxSPoCol+9MYTXMf
 XNBIsoJWcwkdZ65FV2eXU4cYitKNyUZ6A9LBcqn79Ym72q+2yGyLT1mrl0zqAl5/Ml1S
 khXKW1X955h8zaSUx9favNoxaQIWGUYXrfCXYPVCcbFxn/fFJnP/pKFBsiX7Q1GPWPIy
 qjJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hs4O7l0pP6DRS5EHCNCIfeuQWOmUlfNFogQS7F4nGMY=;
 b=BovhNXfIGHc3WYTWkfVRXCFbALwRxS+g/09OekX/IubWU0gNBuFJLf/NhC1j1dGXTD
 B9GI6pI3kNeoS7s5Uv+JFKHC0j73aZ5G7IGSxO5HhYhnRrDExHQNdUHlYgXU07RGFe7e
 5aDSPwqSl27hKlNA5Ulc6Ir1zVFaXk5eRJq3hlMaDfJL/BCuW16wy9mN/gbD4vCe4EPz
 SShWc7COP+f3FJylVNLaVLmAY2z8qzkiFguWpUHVFg2HBJmri7wbJbS9qSw1G9BYY/qX
 nB+ZTbgp1TK1si/cqbRay9GgVf2fyHURYIXOAF06YrZ1QmOJn09OwPKbX6jzdjaVuTrg
 zJWQ==
X-Gm-Message-State: AJIora9Y+HQgL0RDY66atotu1eNeMgxqAqa87TXqZAi6eSPLhWKr5gzl
 NVwreA3wHscPaf73WZ9siy0=
X-Google-Smtp-Source: AGRyM1vGJUj/7cE+gO0ZJD5zSmD5g+AuMgDYMxqGc5+o8h/XLlqkFxfyXAAB7zAMx4xWIT9su8odSQ==
X-Received: by 2002:a62:1b57:0:b0:52a:d646:de3c with SMTP id
 b84-20020a621b57000000b0052ad646de3cmr44520891pfb.60.1658417880600; 
 Thu, 21 Jul 2022 08:38:00 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:d01c:7038:6d29:af18:34a6:1c34])
 by smtp.googlemail.com with ESMTPSA id
 h12-20020a170902f7cc00b0016d1fee99ccsm1826583plw.298.2022.07.21.08.37.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Jul 2022 08:38:00 -0700 (PDT)
From: Abhijeet Srivastava <abhijeet.srivastava2308@gmail.com>
To: 
Date: Thu, 21 Jul 2022 21:07:37 +0530
Message-Id: <20220721153748.56687-1-abhijeet.srivastava2308@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Warning found by checkpatch.pl script Signed-off-by: Abhijeet
 Srivastava --- drivers/staging/media/zoran/videocodec.h | 180 +++++++++++
 1 file changed, 90 insertions(+), 90 deletions(-) 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.182 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [abhijeet.srivastava2308[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [abhijeet.srivastava2308[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.182 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1oEYFa-0002AT-Cj
X-Mailman-Approved-At: Fri, 22 Jul 2022 04:19:26 +0000
Subject: [Mjpeg-users] [PATCH] media: staging: media: zoran: Added * on
 subsequent lines of Blockcomment
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
Cc: abhijeet.srivastava2308@gmail.com, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, mjpeg-users@lists.sourceforge.net,
 Corentin Labbe <clabbe@baylibre.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

Warning found by checkpatch.pl script

Signed-off-by: Abhijeet Srivastava <abhijeet.srivastava2308@gmail.com>
---
 drivers/staging/media/zoran/videocodec.h | 180 +++++++++++------------
 1 file changed, 90 insertions(+), 90 deletions(-)

diff --git a/drivers/staging/media/zoran/videocodec.h b/drivers/staging/media/zoran/videocodec.h
index 9dea348fee40..58365b0932b4 100644
--- a/drivers/staging/media/zoran/videocodec.h
+++ b/drivers/staging/media/zoran/videocodec.h
@@ -13,108 +13,108 @@
 /* =================== */
 
 /* Should ease the (re-)usage of drivers supporting cards with (different)
-   video codecs. The codecs register to this module their functionality,
-   and the processors (masters) can attach to them if they fit.
-
-   The codecs are typically have a "strong" binding to their master - so I
-   don't think it makes sense to have a full blown interfacing as with e.g.
-   i2c. If you have an other opinion, let's discuss & implement it :-)))
-
-   Usage:
-
-   The slave has just to setup the videocodec structure and use two functions:
-   videocodec_register(codecdata);
-   videocodec_unregister(codecdata);
-   The best is just calling them at module (de-)initialisation.
-
-   The master sets up the structure videocodec_master and calls:
-   codecdata=videocodec_attach(master_codecdata);
-   videocodec_detach(codecdata);
-
-   The slave is called during attach/detach via functions setup previously
-   during register. At that time, the master_data pointer is set up
-   and the slave can access any io registers of the master device (in the case
-   the slave is bound to it). Otherwise it doesn't need this functions and
-   therfor they may not be initialized.
-
-   The other functions are just for convenience, as they are for sure used by
-   most/all of the codecs. The last ones may be omitted, too.
-
-   See the structure declaration below for more information and which data has
-   to be set up for the master and the slave.
-
-   ----------------------------------------------------------------------------
-   The master should have "knowledge" of the slave and vice versa.  So the data
-   structures sent to/from slave via set_data/get_data set_image/get_image are
-   device dependent and vary between MJPEG/MPEG/WAVELET/... devices. (!!!!)
-   ----------------------------------------------------------------------------
-*/
+ * video codecs. The codecs register to this module their functionality,
+ * and the processors (masters) can attach to them if they fit.
+ *
+ * The codecs are typically have a "strong" binding to their master - so I
+ * don't think it makes sense to have a full blown interfacing as with e.g.
+ * i2c. If you have an other opinion, let's discuss & implement it :-)))
+ *
+ * Usage:
+ *
+ * The slave has just to setup the videocodec structure and use two functions:
+ * videocodec_register(codecdata);
+ * videocodec_unregister(codecdata);
+ * The best is just calling them at module (de-)initialisation.
+ *
+ * The master sets up the structure videocodec_master and calls:
+ * codecdata=videocodec_attach(master_codecdata);
+ * videocodec_detach(codecdata);
+ *
+ * The slave is called during attach/detach via functions setup previously
+ * during register. At that time, the master_data pointer is set up
+ * and the slave can access any io registers of the master device (in the case
+ * the slave is bound to it). Otherwise it doesn't need this functions and
+ * therfor they may not be initialized.
+ *
+ * The other functions are just for convenience, as they are for sure used by
+ * most/all of the codecs. The last ones may be omitted, too.
+ *
+ * See the structure declaration below for more information and which data has
+ * to be set up for the master and the slave.
+ *
+ * ----------------------------------------------------------------------------
+ *  The master should have "knowledge" of the slave and vice versa.  So the data
+ *  structures sent to/from slave via set_data/get_data set_image/get_image are
+ *  device dependent and vary between MJPEG/MPEG/WAVELET/... devices. (!!!!)
+ *  ----------------------------------------------------------------------------
+ */
 
 /* ========================================== */
 /* description of the videocodec_io structure */
 /* ========================================== */
 
 /*
-   ==== master setup ====
-   name -> name of the device structure for reference and debugging
-   master_data ->  data ref. for the master (e.g. the zr36055,57,67)
-   readreg -> ref. to read-fn from register (setup by master, used by slave)
-   writereg -> ref. to write-fn to register (setup by master, used by slave)
-	       this two functions do the lowlevel I/O job
-
-   ==== slave functionality setup ====
-   slave_data -> data ref. for the slave (e.g. the zr36050,60)
-   check -> fn-ref. checks availability of an device, returns -EIO on failure or
-	    the type on success
-	    this makes espcecially sense if a driver module supports more than
-	    one codec which may be quite similar to access, nevertheless it
-	    is good for a first functionality check
-
-   -- main functions you always need for compression/decompression --
-
-   set_mode -> this fn-ref. resets the entire codec, and sets up the mode
-	       with the last defined norm/size (or device default if not
-	       available) - it returns 0 if the mode is possible
-   set_size -> this fn-ref. sets the norm and image size for
-	       compression/decompression (returns 0 on success)
-	       the norm param is defined in videodev2.h (V4L2_STD_*)
-
-   additional setup may be available, too - but the codec should work with
-   some default values even without this
-
-   set_data -> sets device-specific data (tables, quality etc.)
-   get_data -> query device-specific data (tables, quality etc.)
-
-   if the device delivers interrupts, they may be setup/handled here
-   setup_interrupt -> codec irq setup (not needed for 36050/60)
-   handle_interrupt -> codec irq handling (not needed for 36050/60)
-
-   if the device delivers pictures, they may be handled here
-   put_image -> puts image data to the codec (not needed for 36050/60)
-   get_image -> gets image data from the codec (not needed for 36050/60)
-		the calls include frame numbers and flags (even/odd/...)
-		if needed and a flag which allows blocking until its ready
-*/
+ * ==== master setup ====
+ * name -> name of the device structure for reference and debugging
+ * master_data ->  data ref. for the master (e.g. the zr36055,57,67)
+ * readreg -> ref. to read-fn from register (setup by master, used by slave)
+ * writereg -> ref. to write-fn to register (setup by master, used by slave)
+ * this two functions do the lowlevel I/O job
+ *
+ * ==== slave functionality setup ====
+ * slave_data -> data ref. for the slave (e.g. the zr36050,60)
+ * check -> fn-ref. checks availability of an device, returns -EIO on failure or
+ * the type on success
+ * this makes espcecially sense if a driver module supports more than
+ * one codec which may be quite similar to access, nevertheless it
+ * is good for a first functionality check
+ *
+ * -- main functions you always need for compression/decompression --
+ *
+ * set_mode -> this fn-ref. resets the entire codec, and sets up the mode
+ * with the last defined norm/size (or device default if not
+ * available) - it returns 0 if the mode is possible
+ *
+ * set_size -> this fn-ref. sets the norm and image size for
+ * compression/decompression (returns 0 on success)
+ * the norm param is defined in videodev2.h (V4L2_STD_*)
+ * additional setup may be available, too - but the codec should work with
+ * some default values even without this
+ *
+ * set_data -> sets device-specific data (tables, quality etc.)
+ * get_data -> query device-specific data (tables, quality etc.)
+ *
+ * if the device delivers interrupts, they may be setup/handled here
+ * setup_interrupt -> codec irq setup (not needed for 36050/60)
+ * handle_interrupt -> codec irq handling (not needed for 36050/60)
+ *
+ * if the device delivers pictures, they may be handled here
+ * put_image -> puts image data to the codec (not needed for 36050/60)
+ *
+ * get_image -> gets image data from the codec (not needed for 36050/60)
+ * the calls include frame numbers and flags (even/odd/...)
+ * if needed and a flag which allows blocking until its ready
+ */
 
 /* ============== */
 /* user interface */
 /* ============== */
 
 /*
-   Currently there is only a information display planned, as the layer
-   is not visible for the user space at all.
-
-   Information is available via procfs. The current entry is "/proc/videocodecs"
-   but it makes sense to "hide" it in the /proc/video tree of v4l(2) --TODO--.
-
-A example for such an output is:
-
-<S>lave or attached <M>aster name  type flags    magic    (connected as)
-S                          zr36050 0002 0000d001 00000000 (TEMPLATE)
-M                       zr36055[0] 0001 0000c001 00000000 (zr36050[0])
-M                       zr36055[1] 0001 0000c001 00000000 (zr36050[1])
-
-*/
+ * Currently there is only a information display planned, as the layer
+ * is not visible for the user space at all.
+ *
+ * Information is available via procfs. The current entry is "/proc/videocodecs"
+ * but it makes sense to "hide" it in the /proc/video tree of v4l(2) --TODO--.
+ *
+ * A example for such an output is:
+ *
+ * <S>lave or attached <M>aster name  type flags    magic    (connected as)
+ * S                          zr36050 0002 0000d001 00000000 (TEMPLATE)
+ * M                       zr36055[0] 0001 0000c001 00000000 (zr36050[0])
+ * M                       zr36055[1] 0001 0000c001 00000000 (zr36050[1])
+ */
 
 /* =============================================== */
 /* special defines for the videocodec_io structure */
-- 
2.34.1



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
