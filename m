Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A874B1FF05
	for <lists+mjpeg-users@lfdr.de>; Mon, 11 Aug 2025 08:12:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kkgxPpPxk5RWhfNY4c2AOFWg1perAZHcDx2q0apWzBw=; b=R5yhwu9jFDdF2gn2FS4hEKpVBE
	pI2DH/ypmDW2dBAgkF/jTNoBlmClFxL/zdAwhR/VBgZFF6tOu7rSrNQjCoaJLtylGd8SPUsCofpbL
	fxrLmXe7BdfH+M5BjBFqBa3PKHjw+HGeoF6hgQNBX94lKitfi7q4Smx1j69uAUsEuDrg=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1ulLld-00042p-Ul;
	Mon, 11 Aug 2025 06:12:21 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <laurent.pinchart@ideasonboard.com>)
 id 1ukuvC-0008Ns-H8 for mjpeg-users@lists.sourceforge.net;
 Sun, 10 Aug 2025 01:32:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ofcCnkJXpLnqNoaBed75QNj0I6X2sSaiO0TbVy9RB74=; b=F/tQZCyy8mPslLBVqyeoxjLblF
 GuonAIMvxotF7UaB41YABhS1CaxZ6jsmV9HRxv/+dV8qOVKI2zhlM8tq8e9col80n1qobeCLOM+cI
 5fiIJqXIvVrdFo62rLJqivZkYGzwrjlBT9Ub4l1r/sZAL+YzkIOyNqQ24+TuK6wTraAI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ofcCnkJXpLnqNoaBed75QNj0I6X2sSaiO0TbVy9RB74=; b=HgdQQhMjZuaEHNCTQVEcU+7g3O
 zyYgCmIX3UnTV50jLyDAVAAnG1oWfZ0LgqGYURgX6erpWScljlzCxiyS/3REhPxqSRveSY8XSQ6qs
 i6ZRZTYKhpdQm4sUhsq246A+cz02ipBah7kQ86ZUCHDQnnVOjMxq/2RRT2kcEMOFgw3g=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ukuvC-0006lW-Py for mjpeg-users@lists.sourceforge.net;
 Sun, 10 Aug 2025 01:32:27 +0000
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi
 [81.175.209.231])
 by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id ACEF119C6;
 Sun, 10 Aug 2025 03:31:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1754789484;
 bh=b/s6aKT9/8bORLj9dutuxHP5fXWPBse8crgXh2bS11w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Xt/UQAmPPnYjNavA54JWg41s3WnYl8kMqbY0lQGd8OKnJeRRr0fpWP4VwS5pO8Ng3
 fR2Dgl66d2/B6jaNE4YSb7jEptwocldNogpvld/PIrHqO4vpbbc5gnUN11KuTgnlok
 0H2Mn/JqwS1sVC9dV/bxmG2RA4NBDBFeSAFHwrVs=
From: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
To: linux-media@vger.kernel.org
Date: Sun, 10 Aug 2025 04:30:15 +0300
Message-ID: <20250810013100.29776-34-laurent.pinchart+renesas@ideasonboard.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250810013100.29776-1-laurent.pinchart+renesas@ideasonboard.com>
References: <20250810013100.29776-1-laurent.pinchart+renesas@ideasonboard.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Jacopo Mondi <jacopo.mondi@ideasonboard.com> The
 zoran_fh
 structure is a wrapper around v4l2_fh. Its usage has been mostly removed
 by commit 83f89a8bcbc3 ("media: zoran: convert to vb2"), but the structure
 stayed by mistake. It is now used in a [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ukuvC-0006lW-Py
X-Mailman-Approved-At: Mon, 11 Aug 2025 06:12:19 +0000
Subject: [Mjpeg-users] [PATCH v3 33/76] media: zoran: Remove zoran_fh
 structure
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
Cc: mjpeg-users@lists.sourceforge.net, Hans Verkuil <hverkuil@kernel.org>,
 Corentin Labbe <clabbe@baylibre.com>,
 Jacopo Mondi <jacopo.mondi@ideasonboard.com>, Hans Verkuil <hans@jjverkuil.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>

The zoran_fh structure is a wrapper around v4l2_fh. Its usage has been
mostly removed by commit 83f89a8bcbc3 ("media: zoran: convert to vb2"),
but the structure stayed by mistake. It is now used in a single
location, assigned from a void pointer and then recast to a void
pointer, without being every accessed. Drop it.

Fixes: 83f89a8bcbc3 ("media: zoran: convert to vb2")
Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Signed-off-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
---
 drivers/media/pci/zoran/zoran.h        | 6 ------
 drivers/media/pci/zoran/zoran_driver.c | 3 +--
 2 files changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/media/pci/zoran/zoran.h b/drivers/media/pci/zoran/zoran.h
index 1cd990468d3d..d05e222b3921 100644
--- a/drivers/media/pci/zoran/zoran.h
+++ b/drivers/media/pci/zoran/zoran.h
@@ -154,12 +154,6 @@ struct zoran_jpg_settings {
 
 struct zoran;
 
-/* zoran_fh contains per-open() settings */
-struct zoran_fh {
-	struct v4l2_fh fh;
-	struct zoran *zr;
-};
-
 struct card_info {
 	enum card_type type;
 	char name[32];
diff --git a/drivers/media/pci/zoran/zoran_driver.c b/drivers/media/pci/zoran/zoran_driver.c
index f42f596d3e62..ec7fc1da4cc0 100644
--- a/drivers/media/pci/zoran/zoran_driver.c
+++ b/drivers/media/pci/zoran/zoran_driver.c
@@ -511,12 +511,11 @@ static int zoran_s_fmt_vid_cap(struct file *file, void *__fh,
 			       struct v4l2_format *fmt)
 {
 	struct zoran *zr = video_drvdata(file);
-	struct zoran_fh *fh = __fh;
 	int i;
 	int res = 0;
 
 	if (fmt->fmt.pix.pixelformat == V4L2_PIX_FMT_MJPEG)
-		return zoran_s_fmt_vid_out(file, fh, fmt);
+		return zoran_s_fmt_vid_out(file, __fh, fmt);
 
 	for (i = 0; i < NUM_FORMATS; i++)
 		if (fmt->fmt.pix.pixelformat == zoran_formats[i].fourcc)
-- 
Regards,

Laurent Pinchart



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
