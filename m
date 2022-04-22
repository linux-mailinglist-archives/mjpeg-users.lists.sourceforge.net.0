Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5496350BD69
	for <lists+mjpeg-users@lfdr.de>; Fri, 22 Apr 2022 18:46:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1nhwQB-0000ss-Hy; Fri, 22 Apr 2022 16:46:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gregkh@linuxfoundation.org>) id 1nhlZK-0003LD-7p
 for mjpeg-users@lists.sourceforge.net; Fri, 22 Apr 2022 05:10:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Rtd4/wzGEyZ5ZiNPCn5i930loGvdcB0thQ5dhXrEfKY=; b=dnnnbmjG1daaElIx6MWvARK1g7
 ctYicTXa6HJ+FvTJdElB6y6lSZ/vY5xelCLHnSaD3deYTfoX6TSxoUtzvYKJgelOtTYR+ZCmWchkh
 18eus0fP0GLyjdIehASyiSoNqXmDjIeeE1Y2/fWpceQJGIN4GTvC99Iwks12AseIR4iI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Rtd4/wzGEyZ5ZiNPCn5i930loGvdcB0thQ5dhXrEfKY=; b=RRk9+JZ6tpOyUsO0P4uvK4rYkA
 ArX0cAGk+pbqqYBX6AB6NWKkvSGn0jiW6g2p+5DFt62Spo+cYSQe6bhpkY9ZGutLfjt9U+Y6c/VPY
 bzZLtRHDujT3rY4R/q5UPFGPwgavHVS5noisR35VQmQDexaCy2YEj7qujpimnFD6hLUo=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nhlZH-0066zQ-Tf
 for mjpeg-users@lists.sourceforge.net; Fri, 22 Apr 2022 05:10:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 77A2CB82A72;
 Fri, 22 Apr 2022 05:10:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF4D8C385A0;
 Fri, 22 Apr 2022 05:10:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1650604239;
 bh=smjUvc4uRg4xhlUXc3p/Lm4IGHpy+jmRl0IetThwUbg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=T9WDC/ShXMFmHld2O1ExU8pkUltO8/Pt6GePZWh6W8UJqEFIs1m4N3RSm+6NmMAzm
 4PWRbZ3gyxOsSpZRI57hFyC+tq9xNI8GFro0ArneJtxs6LutYYsG9qxC5FMVvd34kD
 GxFc4VAlFk/LyY2cxwyOmLmwBZUZerv2GEz2IQJs=
Date: Fri, 22 Apr 2022 07:10:34 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Ian Cowan <ian@linux.cowan.aero>
Message-ID: <YmI4yh88pYVvVE/X@kroah.com>
References: <20220421002316.873109-1-ian@linux.cowan.aero>
 <20220421142153.GA2462@kadam> <YmF2mM+Lqv/HOgFl@fedora>
 <20220421155203.GB2462@kadam> <YmH3IZhUrvEzZlZU@fedora>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YmH3IZhUrvEzZlZU@fedora>
X-Spam-Score: -5.8 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Apr 21, 2022 at 08:30:25PM -0400, Ian Cowan wrote:
 > On Thu, Apr 21, 2022 at 06:52:04PM +0300, Dan Carpenter wrote: > > On Thu,
 Apr 21, 2022 at 11:22:00AM -0400, Ian Cowan wrote: > > > > > > F [...] 
 Content analysis details:   (-5.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nhlZH-0066zQ-Tf
X-Mailman-Approved-At: Fri, 22 Apr 2022 16:46:12 +0000
Subject: Re: [Mjpeg-users] [PATCH] media: staging: zoran: refactor printk
 debugging function
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
Cc: linux-staging@lists.linux.dev, mjpeg-users@lists.sourceforge.net,
 clabbe@baylibre.com, mchehab@kernel.org,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

On Thu, Apr 21, 2022 at 08:30:25PM -0400, Ian Cowan wrote:
> On Thu, Apr 21, 2022 at 06:52:04PM +0300, Dan Carpenter wrote:
> > On Thu, Apr 21, 2022 at 11:22:00AM -0400, Ian Cowan wrote:
> > > 
> > > For using the dev_dbg() macro, do you define this in the header file
> > > (i.e. for this it would be videocodec.h), or where should this be
> > > included from?
> > 
> > dev_dbg() is defined in include/linux/dev_printk.h.  Look around at how
> > it's used.  pr_debug() might be an option, but I don't know if we will
> > accept that, we prefer dev_dbg().
> > 
> > regards,
> > dan carpenter
> > 
> 
> I'm about to submit the modified patch, but I went and looked and we
> cannot use dev_dbg() because these specific drivers do not have any
> association with a device struct.

Then please fix that issue, as there is a real struct device that they
are using somewhere.  That is the correct solution as drivers should
never use pr_* calls directly.

thanks,

greg k-h


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
