Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7F250CF6D
	for <lists+mjpeg-users@lfdr.de>; Sun, 24 Apr 2022 06:36:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1niTzC-0007Ts-LF; Sun, 24 Apr 2022 04:36:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gregkh@linuxfoundation.org>) id 1ni8gP-0008C7-Bk
 for mjpeg-users@lists.sourceforge.net; Sat, 23 Apr 2022 05:51:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dA0PzhzXsOt7igeg6qKyyfpEZfAOBjQrmRgg81vrMkA=; b=N+NA7jsGYgDGJUY2LLa9LkZeDQ
 dr+hVeIUujPInNqIIbpp0lL/5f0989Ta40N86Snp5RDDRQHKweLOiIsyLNAyaMI/x2lg0cwK4DqB0
 Az/PUoY7vGyzGWLoqj/FjsZIX1EHNTrNFUPFYnNgAx/7czYiySYie/T+z+Tc1PUqYRIU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dA0PzhzXsOt7igeg6qKyyfpEZfAOBjQrmRgg81vrMkA=; b=avBy+tXTvDe3TujK8yEvkuoJQs
 mo04DKeoQYRQxaxTO+2+BgaR6gc2lmPN7eL0vn2bSeBUULVgQ61oqHlUJizFH0/IbmIci0Kj5S0iL
 9zvbVFq6t2uA5RMQVGdMSHH24Ii2877uK1F8lgg7L5OxMYb9supYw5K7ISYEizlvho24=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1ni8gJ-0078J7-To
 for mjpeg-users@lists.sourceforge.net; Sat, 23 Apr 2022 05:51:47 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id E309160A37;
 Sat, 23 Apr 2022 05:51:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D009C385A5;
 Sat, 23 Apr 2022 05:51:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1650693092;
 bh=5TfSzoM0+C34kFA270DcwrDwiICarNl9PErqjvsvgTo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=U89bcblhhca3nsvoaUke0u7d+3p0CiHD/UB3cZssf5WCzDou/ql9fPVJa83D0hFoD
 qu/IfndpWM8t7fcUzTlixos3bHPGKS4xEdiX2CkhIbCEoup8prGtUy7K43D5Pyaq5U
 wy0E5VQEV2yFpmX8GkqTJTmnKhRZ4nfH06s45e6A=
Date: Sat, 23 Apr 2022 07:51:27 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Ian Cowan <ian@linux.cowan.aero>
Message-ID: <YmOT357wfr3/DqzD@kroah.com>
References: <20220421002316.873109-1-ian@linux.cowan.aero>
 <20220421142153.GA2462@kadam> <YmF2mM+Lqv/HOgFl@fedora>
 <20220421155203.GB2462@kadam> <YmH3IZhUrvEzZlZU@fedora>
 <YmI4yh88pYVvVE/X@kroah.com> <YmONU1yZ9FATroR9@fedora>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YmONU1yZ9FATroR9@fedora>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Apr 23, 2022 at 01:23:31AM -0400, Ian Cowan wrote:
 > On Fri, Apr 22, 2022 at 07:10:34AM +0200, Greg KH wrote: > > On Thu, Apr
 21, 2022 at 08:30:25PM -0400, Ian Cowan wrote: > > > On Thu, Apr 2 [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ni8gJ-0078J7-To
X-Mailman-Approved-At: Sun, 24 Apr 2022 04:36:37 +0000
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

On Sat, Apr 23, 2022 at 01:23:31AM -0400, Ian Cowan wrote:
> On Fri, Apr 22, 2022 at 07:10:34AM +0200, Greg KH wrote:
> > On Thu, Apr 21, 2022 at 08:30:25PM -0400, Ian Cowan wrote:
> > > On Thu, Apr 21, 2022 at 06:52:04PM +0300, Dan Carpenter wrote:
> > > > On Thu, Apr 21, 2022 at 11:22:00AM -0400, Ian Cowan wrote:
> > > > > 
> > > > > For using the dev_dbg() macro, do you define this in the header file
> > > > > (i.e. for this it would be videocodec.h), or where should this be
> > > > > included from?
> > > > 
> > > > dev_dbg() is defined in include/linux/dev_printk.h.  Look around at how
> > > > it's used.  pr_debug() might be an option, but I don't know if we will
> > > > accept that, we prefer dev_dbg().
> > > > 
> > > > regards,
> > > > dan carpenter
> > > > 
> > > 
> > > I'm about to submit the modified patch, but I went and looked and we
> > > cannot use dev_dbg() because these specific drivers do not have any
> > > association with a device struct.
> > 
> > Then please fix that issue, as there is a real struct device that they
> > are using somewhere.  That is the correct solution as drivers should
> > never use pr_* calls directly.
> > 
> > thanks,
> > 
> > greg k-h
> > 
> 
> I just resubmitted and this time used dev_dbg() (I split the resubmitted
> patch into 4 parts that will work if they are applied in order). There
> were a few places that pr_debug() had to be used (or it can be changed
> back to dprintk()) because they are cleanup functions and do not have
> any devices available at the cleanup. If there is a better way to handle
> that, I will go back and make a modification to that. Other than those 3
> spots, dev_dbg() is being used.

Looks good, nice work!


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
