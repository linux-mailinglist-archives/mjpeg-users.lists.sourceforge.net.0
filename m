Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 893EEB1BFFA
	for <lists+mjpeg-users@lfdr.de>; Wed,  6 Aug 2025 07:34:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:Message-ID:Date:To:From:References:In-Reply-To:MIME-Version:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IP6zwRXq3pDwtvV3zmzZTfJs3XAb3X/76mtcD9iaZcc=; b=ORZREONSTiQjun11qRUeoIWE3n
	BPX7fxPyNzP/6Y6jJwyzgiEz+Xb6hXsd+M/3uUHE+beA5RovI9oB/21sVsgfYWA7GiklDqib/J61m
	1tgYjyeV7qtEYNWAIWw/vwgtO8u+XvuJ5DumodVxDRMhFRltI3GjuQ+/KtQAhoiHdu9o=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1ujWnY-0006Mx-UI;
	Wed, 06 Aug 2025 05:34:49 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <kieran.bingham@ideasonboard.com>) id 1ujESE-0003gu-BN
 for mjpeg-users@lists.sourceforge.net;
 Tue, 05 Aug 2025 09:59:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:To:Cc:From:Subject:References:
 In-Reply-To:Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Z0+kVcQ30B6s2dMupE/DYDbmCCyyFje/ABslI99ShoQ=; b=USOSmRKkmwTsm1f6bQ4ZiDWDl5
 KkUpixphmkmhjdMu37Wi0aALxe1giEMYakZMwmtBLuL7z9l5vDTFzkPPRQqglgPHjelWwYR3U9wck
 Q/ER/zoYFlO+FmV8+/u7dveZmCMYAahNh+FgnTToUkhFG3SAH5mZ8SKIvBgaq07BHpDo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Message-ID:Date:To:Cc:From:Subject:References:In-Reply-To:
 Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Z0+kVcQ30B6s2dMupE/DYDbmCCyyFje/ABslI99ShoQ=; b=SSRsk+epj2ugs8mBCZgkcl/MIS
 6gfceCI9V67x/ZgeuiGcsfunJoJ6RETSgisY29NbyiCzUmqEmUWVT+I1X9oOXNdJD6MsRkcu/dTwN
 7uAzEkjadpDOXjl7LXhqM6FIcw/hlxINMZfOVcv+rnKa1g7HysU0YMkNx+C91Yp9M6J0=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ujESE-0001rx-E3 for mjpeg-users@lists.sourceforge.net;
 Tue, 05 Aug 2025 09:59:35 +0000
Received: from pendragon.ideasonboard.com
 (cpc89244-aztw30-2-0-cust6594.18-1.cable.virginm.net [86.31.185.195])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id D96F2AD0;
 Tue,  5 Aug 2025 11:58:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1754387915;
 bh=RV+XSnddoBH4JRWHZZy+4T5rBIZcZFEquw455N0WQVA=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=aPIOyP3CCN60ghQ95OYLB9emUWH/n0b6O3gtc9ZoA+uMAITK5524gPFOoFe3iPgrR
 PeGZgkGvvmEIfAIjVWqinSJN2vlhZuO+XIf+jbLxH1tzVI09y3TIRrSaAcZCkteW9d
 f9FcX+PdukMOKmU3dXioC96DYHeFg17Pwv6UxHrs=
MIME-Version: 1.0
In-Reply-To: <20250802-media-private-data-v1-42-eb140ddd6a9d@ideasonboard.com>
References: <20250802-media-private-data-v1-0-eb140ddd6a9d@ideasonboard.com>
 <20250802-media-private-data-v1-42-eb140ddd6a9d@ideasonboard.com>
From: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Tue, 05 Aug 2025 10:59:19 +0100
Message-ID: <175438795943.1641235.15440393062572657340@ping.linuxembedded.co.uk>
User-Agent: alot/0.9.1
X-Spam-Score: 2.3 (++)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Quoting Jacopo Mondi (2025-08-02 10:23:04) > The v4l2_fh
 associated
 with an open file handle is now guaranteed > to be available in
 file->private_data, 
 initialised by v4l2_fh_add(). > > Access the v4l [...] 
 Content analysis details:   (2.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URI: ideasonboard.com]
X-Headers-End: 1ujESE-0001rx-E3
X-Mailman-Approved-At: Wed, 06 Aug 2025 05:34:42 +0000
Subject: Re: [Mjpeg-users] [PATCH 42/65] media: renesas: Access v4l2_fh from
 file
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
Cc: imx@lists.linux.dev, linux-samsung-soc@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 mjpeg-users@lists.sourceforge.net, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-usb@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-tegra@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

Quoting Jacopo Mondi (2025-08-02 10:23:04)
> The v4l2_fh associated with an open file handle is now guaranteed
> to be available in file->private_data, initialised by v4l2_fh_add().
> 
> Access the v4l2_fh, and from there the driver-specific structure,
> from the file * in all ioctl handlers.
> 
> While at it, remove the now unused fh_to_ctx() macro.
> 
> Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>

Reviewed-by: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>

> ---
>  drivers/media/platform/renesas/rcar_fdp1.c | 11 +++--------
>  drivers/media/platform/renesas/rcar_jpu.c  | 21 ++++++++-------------
>  2 files changed, 11 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/media/platform/renesas/rcar_fdp1.c b/drivers/media/platform/renesas/rcar_fdp1.c
> index e78d8fb104e9544d27c8ace38888995ca170483f..84c3901a2e5dc3e7ccfb3b44062e839f8f19ee02 100644
> --- a/drivers/media/platform/renesas/rcar_fdp1.c
> +++ b/drivers/media/platform/renesas/rcar_fdp1.c
> @@ -630,11 +630,6 @@ struct fdp1_ctx {
>         struct fdp1_field_buffer        *previous;
>  };
>  
> -static inline struct fdp1_ctx *fh_to_ctx(struct v4l2_fh *fh)
> -{
> -       return container_of(fh, struct fdp1_ctx, fh);
> -}
> -
>  static inline struct fdp1_ctx *file_to_ctx(struct file *filp)
>  {
>         return container_of(file_to_v4l2_fh(filp), struct fdp1_ctx, fh);
> @@ -1411,8 +1406,8 @@ static int fdp1_enum_fmt_vid_out(struct file *file, void *priv,
>  
>  static int fdp1_g_fmt(struct file *file, void *priv, struct v4l2_format *f)
>  {
> +       struct fdp1_ctx *ctx = file_to_ctx(file);
>         struct fdp1_q_data *q_data;
> -       struct fdp1_ctx *ctx = fh_to_ctx(priv);
>  
>         if (!v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type))
>                 return -EINVAL;
> @@ -1589,7 +1584,7 @@ static void fdp1_try_fmt_capture(struct fdp1_ctx *ctx,
>  
>  static int fdp1_try_fmt(struct file *file, void *priv, struct v4l2_format *f)
>  {
> -       struct fdp1_ctx *ctx = fh_to_ctx(priv);
> +       struct fdp1_ctx *ctx = file_to_ctx(file);
>  
>         if (f->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
>                 fdp1_try_fmt_output(ctx, NULL, &f->fmt.pix_mp);
> @@ -1660,7 +1655,7 @@ static void fdp1_set_format(struct fdp1_ctx *ctx,
>  
>  static int fdp1_s_fmt(struct file *file, void *priv, struct v4l2_format *f)
>  {
> -       struct fdp1_ctx *ctx = fh_to_ctx(priv);
> +       struct fdp1_ctx *ctx = file_to_ctx(file);
>         struct v4l2_m2m_ctx *m2m_ctx = ctx->fh.m2m_ctx;
>         struct vb2_queue *vq = v4l2_m2m_get_vq(m2m_ctx, f->type);
>  
> diff --git a/drivers/media/platform/renesas/rcar_jpu.c b/drivers/media/platform/renesas/rcar_jpu.c
> index 058fcfb967bd98440f33272db42f0d973299d572..9c70a74a2969fce6446b0f26e0637a68eade3942 100644
> --- a/drivers/media/platform/renesas/rcar_jpu.c
> +++ b/drivers/media/platform/renesas/rcar_jpu.c
> @@ -480,11 +480,6 @@ static struct jpu_ctx *ctrl_to_ctx(struct v4l2_ctrl *c)
>         return container_of(c->handler, struct jpu_ctx, ctrl_handler);
>  }
>  
> -static struct jpu_ctx *fh_to_ctx(struct v4l2_fh *fh)
> -{
> -       return container_of(fh, struct jpu_ctx, fh);
> -}
> -
>  static struct jpu_ctx *file_to_ctx(struct file *filp)
>  {
>         return container_of(file_to_v4l2_fh(filp), struct jpu_ctx, fh);
> @@ -661,7 +656,7 @@ static u8 jpu_parse_hdr(void *buffer, unsigned long size, unsigned int *width,
>  static int jpu_querycap(struct file *file, void *priv,
>                         struct v4l2_capability *cap)
>  {
> -       struct jpu_ctx *ctx = fh_to_ctx(priv);
> +       struct jpu_ctx *ctx = file_to_ctx(file);
>  
>         if (ctx->encoder)
>                 strscpy(cap->card, DRV_NAME " encoder", sizeof(cap->card));
> @@ -719,7 +714,7 @@ static int jpu_enum_fmt(struct v4l2_fmtdesc *f, u32 type)
>  static int jpu_enum_fmt_cap(struct file *file, void *priv,
>                             struct v4l2_fmtdesc *f)
>  {
> -       struct jpu_ctx *ctx = fh_to_ctx(priv);
> +       struct jpu_ctx *ctx = file_to_ctx(file);
>  
>         return jpu_enum_fmt(f, ctx->encoder ? JPU_ENC_CAPTURE :
>                             JPU_DEC_CAPTURE);
> @@ -728,7 +723,7 @@ static int jpu_enum_fmt_cap(struct file *file, void *priv,
>  static int jpu_enum_fmt_out(struct file *file, void *priv,
>                             struct v4l2_fmtdesc *f)
>  {
> -       struct jpu_ctx *ctx = fh_to_ctx(priv);
> +       struct jpu_ctx *ctx = file_to_ctx(file);
>  
>         return jpu_enum_fmt(f, ctx->encoder ? JPU_ENC_OUTPUT : JPU_DEC_OUTPUT);
>  }
> @@ -828,7 +823,7 @@ static int __jpu_try_fmt(struct jpu_ctx *ctx, struct jpu_fmt **fmtinfo,
>  
>  static int jpu_try_fmt(struct file *file, void *priv, struct v4l2_format *f)
>  {
> -       struct jpu_ctx *ctx = fh_to_ctx(priv);
> +       struct jpu_ctx *ctx = file_to_ctx(file);
>  
>         if (!v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type))
>                 return -EINVAL;
> @@ -839,7 +834,7 @@ static int jpu_try_fmt(struct file *file, void *priv, struct v4l2_format *f)
>  static int jpu_s_fmt(struct file *file, void *priv, struct v4l2_format *f)
>  {
>         struct vb2_queue *vq;
> -       struct jpu_ctx *ctx = fh_to_ctx(priv);
> +       struct jpu_ctx *ctx = file_to_ctx(file);
>         struct v4l2_m2m_ctx *m2m_ctx = ctx->fh.m2m_ctx;
>         struct jpu_fmt *fmtinfo;
>         struct jpu_q_data *q_data;
> @@ -868,8 +863,8 @@ static int jpu_s_fmt(struct file *file, void *priv, struct v4l2_format *f)
>  
>  static int jpu_g_fmt(struct file *file, void *priv, struct v4l2_format *f)
>  {
> +       struct jpu_ctx *ctx = file_to_ctx(file);
>         struct jpu_q_data *q_data;
> -       struct jpu_ctx *ctx = fh_to_ctx(priv);
>  
>         if (!v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type))
>                 return -EINVAL;
> @@ -902,8 +897,8 @@ static const struct v4l2_ctrl_ops jpu_ctrl_ops = {
>  
>  static int jpu_streamon(struct file *file, void *priv, enum v4l2_buf_type type)
>  {
> -       struct jpu_ctx *ctx = fh_to_ctx(priv);
>         struct jpu_q_data *src_q_data, *dst_q_data, *orig, adj, *ref;
> +       struct jpu_ctx *ctx = file_to_ctx(file);
>         enum v4l2_buf_type adj_type;
>  
>         src_q_data = jpu_get_q_data(ctx, V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE);
> @@ -1284,8 +1279,8 @@ static int jpu_open(struct file *file)
>  
>  static int jpu_release(struct file *file)
>  {
> -       struct jpu *jpu = video_drvdata(file);
>         struct jpu_ctx *ctx = file_to_ctx(file);
> +       struct jpu *jpu = video_drvdata(file);
>  
>         v4l2_m2m_ctx_release(ctx->fh.m2m_ctx);
>         v4l2_ctrl_handler_free(&ctx->ctrl_handler);
> 
> -- 
> 2.49.0
>


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
