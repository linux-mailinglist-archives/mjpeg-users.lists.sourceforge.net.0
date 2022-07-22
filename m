Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AC62857EBB1
	for <lists+mjpeg-users@lfdr.de>; Sat, 23 Jul 2022 05:37:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1oF5xH-00084U-FB; Sat, 23 Jul 2022 03:37:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>) id 1oEyHI-0008R3-V3
 for mjpeg-users@lists.sourceforge.net; Fri, 22 Jul 2022 19:25:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=26PK/w4JKSLV2g93hqpwC3Cf4oBzRfrN9BMs76LqvkM=; b=KxNwPcvhlERRv/Mrc5ot+hErFg
 WktU25Ht1L4cK/iEc2yyMQYhr7Q9SkUBE67WPPeDl340W6Fw0anph3KTzgU9YVM3xfobqvxc3H+oY
 pSssr01hXa/2CviqJRSozLIYLOCZQ5wDi50C2WIk/lxxXGu2hFyZjTCvUz3R1u3i19LY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=26PK/w4JKSLV2g93hqpwC3Cf4oBzRfrN9BMs76LqvkM=; b=nMhdER0X0/fnEpPccuUfJpaVWd
 RLvZ7/3WefnybwsBDPMlJXetgLv0JB42WJiGrQCCAushxnH8lmZ4A6XycTpiqjQijAIOp0UGuCARN
 /aZ1VXZf9uflwAeR0u/E6TkeShJH7e5p35y6ca+C4XxE/9CzxJJm0UqAXRCWfDKTX6Ck=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oEyHD-0077OO-Ak
 for mjpeg-users@lists.sourceforge.net; Fri, 22 Jul 2022 19:25:37 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 6792FB82A05;
 Fri, 22 Jul 2022 19:25:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71F02C341C6;
 Fri, 22 Jul 2022 19:25:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1658517918;
 bh=xuKtXsTHkn0pTkQYNaGYt7up+YxyXAU6zKa8/F8cb4Y=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=GvVYEz0XVqnnIsn/hR7I+ZMQYYiGNijjl3vDCaO3PrCyIBGadxMl1Lym1d6CZOFYU
 jXG3IRvDRcyb1jtrPEFjCf5zUoP1AwSdyVmbGXq0yYYGtEsJeJ3rzXHkEP8zMWsLWA
 2jdQlEMa0uoblsJ9U3ojOVp/Q5wQ1QnLymTnQ9q4hNURDXqCiHF8801S03fKjNh1B2
 AKez12l/WgOBFyzQOwiVFeBJdQIetKO91HmKRJfq+M0B+CyPrynklOF+JT31gyUwAq
 I+RPJ0zEhdSeLfy2qcnFOTDAsg+t2kpfsh90wjFjfxtUAoSCOATz+l7efrG+mFtcU4
 duPVtPhCFkcog==
Date: Fri, 22 Jul 2022 21:25:12 +0200
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Philipp Hortmann <philipp.g.hortmann@gmail.com>
Message-ID: <20220722212512.265cc13d@coco.lan>
In-Reply-To: <614ce7e3-ff4e-5d76-e940-2aa222535743@gmail.com>
References: <20220722182622.23719-1-abhijeet.srivastava2308@gmail.com>
 <614ce7e3-ff4e-5d76-e940-2aa222535743@gmail.com>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Em Fri,
 22 Jul 2022 20:52:29 +0200 Philipp Hortmann <philipp.g.hortmann@gmail.com>
 escreveu: > On 7/22/22 20:26, Abhijeet Srivastava wrote: > > Deleted part
 of code in block comment > > > > Signed-off-by: Abhijeet Srivastava
 <abhijeet.srivastava2308@gmail.com>
 > > --- > > drivers/staging/medi [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1oEyHD-0077OO-Ak
X-Mailman-Approved-At: Sat, 23 Jul 2022 03:37:24 +0000
Subject: Re: [Mjpeg-users] [PATCH] media: staging: media: zoran: Deleted
 dead code
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
Cc: Abhijeet Srivastava <abhijeet.srivastava2308@gmail.com>,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 mjpeg-users@lists.sourceforge.net, Corentin Labbe <clabbe@baylibre.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

Em Fri, 22 Jul 2022 20:52:29 +0200
Philipp Hortmann <philipp.g.hortmann@gmail.com> escreveu:

> On 7/22/22 20:26, Abhijeet Srivastava wrote:
> > Deleted part of code in block comment
> > 
> > Signed-off-by: Abhijeet Srivastava <abhijeet.srivastava2308@gmail.com>
> > ---
> >   drivers/staging/media/zoran/zoran_driver.c | 9 ---------
> >   1 file changed, 9 deletions(-)
> > 
> > diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
> > index b408c1d4e0a7..836edf623571 100644
> > --- a/drivers/staging/media/zoran/zoran_driver.c
> > +++ b/drivers/staging/media/zoran/zoran_driver.c
> > @@ -746,11 +746,6 @@ static const struct v4l2_ioctl_ops zoran_ioctl_ops = {
> >   	.vidioc_enum_input		    = zoran_enum_input,
> >   	.vidioc_g_input			    = zoran_g_input,
> >   	.vidioc_s_input			    = zoran_s_input,
> > -
> > -/*	.vidioc_enum_output		    = zoran_enum_output,
> > - *	.vidioc_g_output		    = zoran_g_output,
> > - *	.vidioc_s_output		    = zoran_s_output,
> > - */
> >   	.vidioc_g_std			    = zoran_g_std,
> >   	.vidioc_s_std			    = zoran_s_std,
> >   	.vidioc_create_bufs		    = vb2_ioctl_create_bufs,
> > @@ -762,13 +757,9 @@ static const struct v4l2_ioctl_ops zoran_ioctl_ops = {
> >   	.vidioc_streamon		    = vb2_ioctl_streamon,
> >   	.vidioc_streamoff		    = vb2_ioctl_streamoff,
> >   	.vidioc_enum_fmt_vid_cap	    = zoran_enum_fmt_vid_cap,
> > -/*	.vidioc_enum_fmt_vid_out	    = zoran_enum_fmt_vid_out,*/
> >   	.vidioc_g_fmt_vid_cap		    = zoran_g_fmt_vid_cap,
> > -/*	.vidioc_g_fmt_vid_out               = zoran_g_fmt_vid_out,*/
> >   	.vidioc_s_fmt_vid_cap		    = zoran_s_fmt_vid_cap,
> > -/*	.vidioc_s_fmt_vid_out               = zoran_s_fmt_vid_out,*/
> >   	.vidioc_try_fmt_vid_cap		    = zoran_try_fmt_vid_cap,
> > -/*	.vidioc_try_fmt_vid_out		    = zoran_try_fmt_vid_out,*/
> >   	.vidioc_subscribe_event             = v4l2_ctrl_subscribe_event,
> >   	.vidioc_unsubscribe_event           = v4l2_event_unsubscribe,
> >   };  
> 
> Why does the subject line start with "media:" The subsystem is 
> "staging:" so the subject should start with "staging: media: ..."
> 
> I have no clue if this is accepted.

The subsystem is media. The drivers for both drivers/media and
drivers/staging/media have the same maintainers. The "staging" is 
just a place where we place stuff that are either not ready for
upstream or are under deprecation.

So, we expect that all subjects start with media:. I prefer if 
they don't have "staging" at the subject, as makes the driver
logs more coherent when they're moved in/out staging dir.

Regards,
Mauro


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
