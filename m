Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 30FC0B1FF08
	for <lists+mjpeg-users@lfdr.de>; Mon, 11 Aug 2025 08:12:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R+6WJjlO1lwtOaNC6zly2DFy2JT1udTeHK/wfyZTAt0=; b=REs8IWaE9qdRJeUKLOyQljM3n/
	8GAd00PrCCDa5mvItcwklbWKaJtYWDEHU6+Gnw1s248YhFLpWUoXIPx7WD3tLA/cSpvJS7YFQjGo6
	wsyc/kB1HcrB07TwFUY5rr3jeVJ/DOoX4Ip7Fbvr5Vi+Xf3wQmcBxmMBX+Nxl/E9H0Lo=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1ulLld-00042U-B9;
	Mon, 11 Aug 2025 06:12:21 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <laurent.pinchart@ideasonboard.com>)
 id 1ukqxM-0006qg-QE for mjpeg-users@lists.sourceforge.net;
 Sat, 09 Aug 2025 21:18:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ngFK9lk8Y4+CFTX4FuC7c+EkE9HJE8HC2/xKZI0J89Q=; b=kLzFqNMf+1lFL5mjkfk1I13dX8
 80SdZRNoupvWiWeX3m+hssa5dmV/hV7W6tx08W0iUAPive8VBWBxxea2LdWXX9CVRu6IJp68CvRU+
 CWLY4PQugWsuekWcncDrx8hlTUj7Ihu6hFCQG7BcmuF6etnMgp0xXU5bfn04JNrzAKNs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ngFK9lk8Y4+CFTX4FuC7c+EkE9HJE8HC2/xKZI0J89Q=; b=g2FSncZDS+D2KMVQMcfBcobcxP
 XzIsq1wTDacpfiVu3TRVRvU8H/h/QGPxAbYsv+EO5JqMBc34FbGyrVx8dLzGcWup2IXqnjYKhUdNp
 2sA6PYdR4K1LKQDLHqGw/qYHiNncgGIDE/zvFO1vEVasqfJQZ+3xwswtUe1y4QUIcohg=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ukqxB-0005dv-PA for mjpeg-users@lists.sourceforge.net;
 Sat, 09 Aug 2025 21:18:14 +0000
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi
 [81.175.209.231])
 by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id DE8D4111D;
 Sat,  9 Aug 2025 23:17:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1754774237;
 bh=BpxI7mNvQw/gDeFWhykRnMPjMlpPL9WWtkPLJlAhIdE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=EqqBKJsKVE58jqq/p6xwLh2E/LZsATA0JWxf6/ynZ0/h+/Sd4Ve25M+zEWO64Nj9v
 91F8Cy4XGCmah8wjoQH5e1810CdY9U+0EUxUVOe48FCajKd0KLRby5UZx21rDI5vQG
 nRpgbXA5/HSpheXSoKgyfE7rNJ3D52ZiARmVwhdQ=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Date: Sun, 10 Aug 2025 00:16:11 +0300
Message-ID: <20250809211654.28887-35-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250809211654.28887-1-laurent.pinchart@ideasonboard.com>
References: <20250809211654.28887-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Jacopo Mondi <jacopo.mondi@ideasonboard.com> Unless
 there is a good reason to do so, naming variable with double underscore is
 generally not a good idea. Rename the (mostly unused) __fh argument to ioctl
 handlers to fh. 
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
X-Headers-End: 1ukqxB-0005dv-PA
X-Mailman-Approved-At: Mon, 11 Aug 2025 06:12:19 +0000
Subject: [Mjpeg-users] [PATCH v2 34/76] media: zoran: Rename __fh to fh
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
Cc: Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
 Hans Verkuil <hans@jjverkuil.nl>, mjpeg-users@lists.sourceforge.net,
 Corentin Labbe <clabbe@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>

Unless there is a good reason to do so, naming variable with double
underscore is generally not a good idea.

Rename the (mostly unused) __fh argument to ioctl handlers to fh.

Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Signed-off-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
---
 drivers/media/pci/zoran/zoran_driver.c | 36 +++++++++++++-------------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/media/pci/zoran/zoran_driver.c b/drivers/media/pci/zoran/zoran_driver.c
index ec7fc1da4cc0..5b4d5dd06edb 100644
--- a/drivers/media/pci/zoran/zoran_driver.c
+++ b/drivers/media/pci/zoran/zoran_driver.c
@@ -245,7 +245,7 @@ static int zoran_set_input(struct zoran *zr, int input)
  *   ioctl routine
  */
 
-static int zoran_querycap(struct file *file, void *__fh, struct v4l2_capability *cap)
+static int zoran_querycap(struct file *file, void *fh, struct v4l2_capability *cap)
 {
 	struct zoran *zr = video_drvdata(file);
 
@@ -278,7 +278,7 @@ static int zoran_enum_fmt(struct zoran *zr, struct v4l2_fmtdesc *fmt, int flag)
 	return -EINVAL;
 }
 
-static int zoran_enum_fmt_vid_cap(struct file *file, void *__fh,
+static int zoran_enum_fmt_vid_cap(struct file *file, void *fh,
 				  struct v4l2_fmtdesc *f)
 {
 	struct zoran *zr = video_drvdata(file);
@@ -286,7 +286,7 @@ static int zoran_enum_fmt_vid_cap(struct file *file, void *__fh,
 	return zoran_enum_fmt(zr, f, ZORAN_FORMAT_CAPTURE);
 }
 
-static int zoran_g_fmt_vid_out(struct file *file, void *__fh,
+static int zoran_g_fmt_vid_out(struct file *file, void *fh,
 			       struct v4l2_format *fmt)
 {
 	struct zoran *zr = video_drvdata(file);
@@ -308,13 +308,13 @@ static int zoran_g_fmt_vid_out(struct file *file, void *__fh,
 	return 0;
 }
 
-static int zoran_g_fmt_vid_cap(struct file *file, void *__fh,
+static int zoran_g_fmt_vid_cap(struct file *file, void *fh,
 			       struct v4l2_format *fmt)
 {
 	struct zoran *zr = video_drvdata(file);
 
 	if (zr->map_mode != ZORAN_MAP_MODE_RAW)
-		return zoran_g_fmt_vid_out(file, __fh, fmt);
+		return zoran_g_fmt_vid_out(file, fh, fmt);
 	fmt->fmt.pix.width = zr->v4l_settings.width;
 	fmt->fmt.pix.height = zr->v4l_settings.height;
 	fmt->fmt.pix.sizeimage = zr->buffer_size;
@@ -328,7 +328,7 @@ static int zoran_g_fmt_vid_cap(struct file *file, void *__fh,
 	return 0;
 }
 
-static int zoran_try_fmt_vid_out(struct file *file, void *__fh,
+static int zoran_try_fmt_vid_out(struct file *file, void *fh,
 				 struct v4l2_format *fmt)
 {
 	struct zoran *zr = video_drvdata(file);
@@ -391,7 +391,7 @@ static int zoran_try_fmt_vid_out(struct file *file, void *__fh,
 	return res;
 }
 
-static int zoran_try_fmt_vid_cap(struct file *file, void *__fh,
+static int zoran_try_fmt_vid_cap(struct file *file, void *fh,
 				 struct v4l2_format *fmt)
 {
 	struct zoran *zr = video_drvdata(file);
@@ -399,7 +399,7 @@ static int zoran_try_fmt_vid_cap(struct file *file, void *__fh,
 	int i;
 
 	if (fmt->fmt.pix.pixelformat == V4L2_PIX_FMT_MJPEG)
-		return zoran_try_fmt_vid_out(file, __fh, fmt);
+		return zoran_try_fmt_vid_out(file, fh, fmt);
 
 	for (i = 0; i < NUM_FORMATS; i++)
 		if (zoran_formats[i].fourcc == fmt->fmt.pix.pixelformat)
@@ -427,7 +427,7 @@ static int zoran_try_fmt_vid_cap(struct file *file, void *__fh,
 	return 0;
 }
 
-static int zoran_s_fmt_vid_out(struct file *file, void *__fh,
+static int zoran_s_fmt_vid_out(struct file *file, void *fh,
 			       struct v4l2_format *fmt)
 {
 	struct zoran *zr = video_drvdata(file);
@@ -507,7 +507,7 @@ static int zoran_s_fmt_vid_out(struct file *file, void *__fh,
 	return res;
 }
 
-static int zoran_s_fmt_vid_cap(struct file *file, void *__fh,
+static int zoran_s_fmt_vid_cap(struct file *file, void *fh,
 			       struct v4l2_format *fmt)
 {
 	struct zoran *zr = video_drvdata(file);
@@ -515,7 +515,7 @@ static int zoran_s_fmt_vid_cap(struct file *file, void *__fh,
 	int res = 0;
 
 	if (fmt->fmt.pix.pixelformat == V4L2_PIX_FMT_MJPEG)
-		return zoran_s_fmt_vid_out(file, __fh, fmt);
+		return zoran_s_fmt_vid_out(file, fh, fmt);
 
 	for (i = 0; i < NUM_FORMATS; i++)
 		if (fmt->fmt.pix.pixelformat == zoran_formats[i].fourcc)
@@ -555,7 +555,7 @@ static int zoran_s_fmt_vid_cap(struct file *file, void *__fh,
 	return res;
 }
 
-static int zoran_g_std(struct file *file, void *__fh, v4l2_std_id *std)
+static int zoran_g_std(struct file *file, void *fh, v4l2_std_id *std)
 {
 	struct zoran *zr = video_drvdata(file);
 
@@ -563,7 +563,7 @@ static int zoran_g_std(struct file *file, void *__fh, v4l2_std_id *std)
 	return 0;
 }
 
-static int zoran_s_std(struct file *file, void *__fh, v4l2_std_id std)
+static int zoran_s_std(struct file *file, void *fh, v4l2_std_id std)
 {
 	struct zoran *zr = video_drvdata(file);
 	int res = 0;
@@ -578,7 +578,7 @@ static int zoran_s_std(struct file *file, void *__fh, v4l2_std_id std)
 	return res;
 }
 
-static int zoran_enum_input(struct file *file, void *__fh,
+static int zoran_enum_input(struct file *file, void *fh,
 			    struct v4l2_input *inp)
 {
 	struct zoran *zr = video_drvdata(file);
@@ -595,7 +595,7 @@ static int zoran_enum_input(struct file *file, void *__fh,
 	return 0;
 }
 
-static int zoran_g_input(struct file *file, void *__fh, unsigned int *input)
+static int zoran_g_input(struct file *file, void *fh, unsigned int *input)
 {
 	struct zoran *zr = video_drvdata(file);
 
@@ -604,7 +604,7 @@ static int zoran_g_input(struct file *file, void *__fh, unsigned int *input)
 	return 0;
 }
 
-static int zoran_s_input(struct file *file, void *__fh, unsigned int input)
+static int zoran_s_input(struct file *file, void *fh, unsigned int input)
 {
 	struct zoran *zr = video_drvdata(file);
 	int res;
@@ -617,7 +617,7 @@ static int zoran_s_input(struct file *file, void *__fh, unsigned int input)
 }
 
 /* cropping (sub-frame capture) */
-static int zoran_g_selection(struct file *file, void *__fh, struct v4l2_selection *sel)
+static int zoran_g_selection(struct file *file, void *fh, struct v4l2_selection *sel)
 {
 	struct zoran *zr = video_drvdata(file);
 
@@ -652,7 +652,7 @@ static int zoran_g_selection(struct file *file, void *__fh, struct v4l2_selectio
 	return 0;
 }
 
-static int zoran_s_selection(struct file *file, void *__fh, struct v4l2_selection *sel)
+static int zoran_s_selection(struct file *file, void *fh, struct v4l2_selection *sel)
 {
 	struct zoran *zr = video_drvdata(file);
 	struct zoran_jpg_settings settings;
-- 
Regards,

Laurent Pinchart



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
