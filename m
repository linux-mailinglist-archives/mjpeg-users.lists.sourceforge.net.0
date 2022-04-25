Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C06A650E548
	for <lists+mjpeg-users@lfdr.de>; Mon, 25 Apr 2022 18:11:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1nj1JP-0007Bu-Mj; Mon, 25 Apr 2022 16:11:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ian@linux.cowan.aero>) id 1niztJ-0004Gb-Dt
 for mjpeg-users@lists.sourceforge.net; Mon, 25 Apr 2022 14:40:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=03zhN+hBW8OaOUeJAmtwzMX7G3KCH/6OA0MvZT3k0A8=; b=Btp2CCHtFVwzDO5PT1ozP2cu85
 FbYOPvkPsfS2ECYaFaZLtzdkZQllF/UoPJ8h3mDT96AkmgoW6z8LVS0uihlvYWE1i2an0WqbvyEmB
 XS4CzM63a4a4v6FUDPGte+RLIkUxSMZG9hKAnfDMbxDoJpQ+gS6WhqwKLQ44KZcL7J/o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=03zhN+hBW8OaOUeJAmtwzMX7G3KCH/6OA0MvZT3k0A8=; b=Z
 1tMwxpPJhmC/bSTE195CO252YMrtqsXGlhPhXiJP95bPrd3ojAG8fiNvq/1MtZ/pUcCcExP0V2duj
 e1f5QBJ4PxKPYxXD+xb74XUltZvcQmbXJ86qM85ghXQqT6Zuvvnan7PDJ4oWRmvEvCE1TBIAu7bWe
 CujfSAjMEVrB5PGk=;
Received: from dog.birch.relay.mailchannels.net ([23.83.209.48])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1niztH-009m8u-KC
 for mjpeg-users@lists.sourceforge.net; Mon, 25 Apr 2022 14:40:42 +0000
Received: from relay.mailchannels.net (localhost [127.0.0.1])
 by relay.mailchannels.net (Postfix) with ESMTP id B634D12230F;
 Mon, 25 Apr 2022 14:40:26 +0000 (UTC)
Received: from pdx1-sub0-mail-a217.dreamhost.com (unknown [127.0.0.6])
 (Authenticated sender: dreamhost)
 by relay.mailchannels.net (Postfix) with ESMTPA id 3C992121C6B;
 Mon, 25 Apr 2022 14:40:26 +0000 (UTC)
ARC-Seal: i=1; s=arc-2022; d=mailchannels.net; t=1650897626; a=rsa-sha256;
 cv=none;
 b=Ch6vIHEfibAUO0Y33V4uRmLlYB3zg5Qld2y9t6lrjyBtVuIznydtFETH46XONTzJ3aWttr
 l8DBtnjAVfp7HPP19a/JR23Hmf7gE+F5ca3bqHxv/bWM3tMbJNUU/VQSYn0fR9jlu8cECq
 tt/200tT8kghZO7WgandRs9WFmqotbUxGI0V9gVe+x/ug4iwyS23gUvTpiZgkpAkd4rXxs
 M5rhKr49sqfmXUSiNR/TFfn3ghOrVamjT1pH80E+lIgxofAvIh9o6jDrWusH/u4wNZB4o4
 7cfLFdol6dw7FLYHgkeMfSPauJ4L9GQtsdZkE5EhhbKmpf/zUjuZei6gpm678w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net; s=arc-2022; t=1650897626;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:dkim-signature;
 bh=03zhN+hBW8OaOUeJAmtwzMX7G3KCH/6OA0MvZT3k0A8=;
 b=DIUvnXzX6VdyF48SoH2WAsIObwkyhLIA90gZMMVihodSVjz6rNelZAiSJBPBIqFedXY30M
 dvqHtvOQ5UwZ4n6hAzFJnE2cefcOEputBv6GZ9p6UHK2r3ddC2o7JgfZGsj/UaAiiE3E1u
 mW82A+UyMhv+dD3xuQAjbHG5IANyyDRBivMtZPxcSSyHxI4fDnhmB3WTuRVVFC6DUSoCmd
 8aY6QF992h71R9NSeTj5MGrbVxIPg+t41t63ZatQPtrgEmy3x976J8FClz51IqaXqseIo5
 Rrd2IcQEIhJXqbH13GDt+N6Lj6dGK2KM/+xI1EGKJkVol8GUabgGKDPevxA7BQ==
ARC-Authentication-Results: i=1; rspamd-67b64f579b-dhxks;
 auth=pass smtp.auth=dreamhost smtp.mailfrom=ian@linux.cowan.aero
X-MC-Relay: Neutral
X-MailChannels-SenderId: dreamhost|x-authsender|ian@linux.cowan.aero
X-MailChannels-Auth-Id: dreamhost
X-Industry-Reign: 1b2237d95476f30c_1650897626607_1242597651
X-MC-Loop-Signature: 1650897626606:2627875157
X-MC-Ingress-Time: 1650897626606
Received: from pdx1-sub0-mail-a217.dreamhost.com (pop.dreamhost.com
 [64.90.62.162]) (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
 by 100.96.96.30 (trex/6.7.1); Mon, 25 Apr 2022 14:40:26 +0000
Received: from localhost.localdomain (unknown [69.12.38.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 (Authenticated sender: ian@linux.cowan.aero)
 by pdx1-sub0-mail-a217.dreamhost.com (Postfix) with ESMTPSA id 4Kn73D6ZtFznb; 
 Mon, 25 Apr 2022 07:40:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.cowan.aero;
 s=dreamhost; t=1650897625;
 bh=03zhN+hBW8OaOUeJAmtwzMX7G3KCH/6OA0MvZT3k0A8=;
 h=From:To:Cc:Subject:Date:Content-Transfer-Encoding;
 b=CIjiGs0h73JREbVDCOlL58tN4jqkRDWhDAtCtQwpFBAGohCrM1HccVHCVB7LheRgE
 pzmfna6nUvLlzQibPdnB7Ujuw/qw55VTJlA6w+qSEMOmMefOe0dkpLYcFfLZH019AG
 t7iIlJEt6dQI86pmZLeWvgnP/OXhb1+MdnM4ezJe3fSoo3Y1TZWw3ojW2psl0roFz+
 uvUWOyIMxTDSdNFkDg1k5FYMW7TT2KHk26M1rYVv/Mp0nPbPvYT9rfpwWgpWvPWFvy
 54Gfb3tECE4Gi/8sLkFj/XmbXbh7A0yrntRaiuv9Zd+FG1w14chCvYa+KRJrEJgmvD
 eG8+u0XWv48gA==
From: Ian Cowan <ian@linux.cowan.aero>
To: Corentin Labbe <clabbe@baylibre.com>
Date: Mon, 25 Apr 2022 10:40:15 -0400
Message-Id: <20220425144015.132707-1-ian@linux.cowan.aero>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This adds the zrdev_dbg() (pointing to pci_dbg()),
 zrdev_err()
 (pointing to pci_err()), and zrdev_info() (pointing to pci_info()) macros
 to the zoran drivers. These are the preferred method for debugg [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [23.83.209.48 listed in list.dnswl.org]
X-Headers-End: 1niztH-009m8u-KC
X-Mailman-Approved-At: Mon, 25 Apr 2022 16:11:41 +0000
Subject: [Mjpeg-users] [PATCH v2 1/4] staging: media: zoran: add logging
 macros
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 mjpeg-users@lists.sourceforge.net, Ian Cowan <ian@linux.cowan.aero>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

This adds the zrdev_dbg() (pointing to pci_dbg()), zrdev_err() (pointing
to pci_err()), and zrdev_info() (pointing to pci_info()) macros to the
zoran drivers. These are the preferred method for debugging and this
will allow to extract the device from the zoran struct to make the call.

Signed-off-by: Ian Cowan <ian@linux.cowan.aero>
---
 drivers/staging/media/zoran/zoran.h | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/staging/media/zoran/zoran.h b/drivers/staging/media/zoran/zoran.h
index 654c95fa5aba..4f7f71d8e93c 100644
--- a/drivers/staging/media/zoran/zoran.h
+++ b/drivers/staging/media/zoran/zoran.h
@@ -19,6 +19,7 @@
 #define _BUZ_H_
 
 #include <linux/debugfs.h>
+#include <linux/pci.h>
 #include <media/v4l2-device.h>
 #include <media/v4l2-ctrls.h>
 #include <media/videobuf2-core.h>
@@ -301,6 +302,18 @@ static inline struct zoran *to_zoran(struct v4l2_device *v4l2_dev)
 
 #endif
 
+/**
+ * Debugging macros
+ */
+#define zrdev_dbg(zr, format, args...) \
+	pci_dbg(zr->pci_dev, format, ##args) \
+
+#define zrdev_err(zr, format, args...) \
+	pci_err(zr->pci_dev, format, ##args) \
+
+#define zrdev_info(zr, format, args...) \
+	pci_info(zr->pci_dev, format, ##args) \
+
 int zoran_queue_init(struct zoran *zr, struct vb2_queue *vq, int dir);
 void zoran_queue_exit(struct zoran *zr);
 int zr_set_buf(struct zoran *zr);
-- 
2.35.1



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
