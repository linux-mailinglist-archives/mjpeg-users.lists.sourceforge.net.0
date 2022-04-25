Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B7ECA50E543
	for <lists+mjpeg-users@lfdr.de>; Mon, 25 Apr 2022 18:11:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1nj1JP-0007Bg-GM; Mon, 25 Apr 2022 16:11:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gregkh@linuxfoundation.org>) id 1niqbR-0005Pv-Vt
 for mjpeg-users@lists.sourceforge.net; Mon, 25 Apr 2022 04:45:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BgUVBPTsTEhX9W6cs3KgdjzWoaqqd4XZTz3t0TeTbc8=; b=b/GYWob9nThzk3AKL+/ttbEqy7
 X/dXIWaUzNOLV7YAQ/VO0I8gnyav4Pi2EnsnucXNJUeTyGFQsN+/1BrDgnYo66zyjxdpC5QUCql07
 7tY+j8Ji7zNwQPVKUKdKMUDGVJD3CoxaXnRSwtRv9BsQadtYe9toUduR+pGjyj5P5hZI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BgUVBPTsTEhX9W6cs3KgdjzWoaqqd4XZTz3t0TeTbc8=; b=YBbxPt4vtFy/lL2Q7ScP+R1YMN
 R9lJ/jNb2xH6H38aZfpyHwqfIotpXTAijGIlJeK2hyKz753r15mCli3hBCqL0c9/7onZSzTbfeoeC
 jr8NVyNc9/kWfUPJ++qDQSeJqDgRhxXOkjshPHJoM9hEvMcdqVUJnDoGa2Qf9DwJBrcM=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1niqbJ-009MNY-KT
 for mjpeg-users@lists.sourceforge.net; Mon, 25 Apr 2022 04:45:37 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 7FF63B810AA;
 Mon, 25 Apr 2022 04:45:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9B70C385A7;
 Mon, 25 Apr 2022 04:45:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1650861917;
 bh=2gZLH75MhvXmgXdEDwAZDudUMeUiaWw1yA8c9fQX3BI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nu/2lXmc6Av6YAwdkfyQIuYYY1h8pQ22d5pz6yqUKpwZetniiPnxYrwwP6wEqirRZ
 8JPDyZDPEWuJroM8bB50DdgNOUxWC7RheMpX1Yeq4ZRkvhK5MYRMHFTnYzLxtVJuMR
 SHBQnTCcB5beTmU+G1T8sZ/2qhAabYmMYiZ7K9y4=
Date: Mon, 25 Apr 2022 06:45:09 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Ian Cowan <ian@linux.cowan.aero>
Message-ID: <YmYnVfYPrWkcee1m@kroah.com>
References: <20220423051745.292683-1-ian@linux.cowan.aero>
 <YmWiQsrPj0uIpZ7w@Red> <YmX31vg+lCx6rsKF@fedora>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YmX31vg+lCx6rsKF@fedora>
X-Spam-Score: -5.8 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Apr 24, 2022 at 09:22:30PM -0400, Ian Cowan wrote:
 > On Sun, Apr 24, 2022 at 09:17:22PM +0200, LABBE Corentin wrote: > > Hello
 > > > > Thanks for your patchs, removing dprintk is a good idea. [...] 
 Content analysis details:   (-5.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1niqbJ-009MNY-KT
X-Mailman-Approved-At: Mon, 25 Apr 2022 16:11:41 +0000
Subject: Re: [Mjpeg-users] [PATCH 1/4] staging: media: zoran: add
 zrdev_dbg() macros
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
 LABBE Corentin <clabbe@baylibre.com>, mchehab@kernel.org,
 dan.carpenter@oracle.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

On Sun, Apr 24, 2022 at 09:22:30PM -0400, Ian Cowan wrote:
> On Sun, Apr 24, 2022 at 09:17:22PM +0200, LABBE Corentin wrote:
> > Hello
> > 
> > Thanks for your patchs, removing dprintk is a good idea.
> > Please use pci_xxx() instead of dev_xxx() to be consistent with the rest of the driver.
> > The comment title is misleading, zrdev_err is not about debugging. What about Logging macros ?
> > 
> > Regards
> > 
> 
> I have made those modifications, and I will resubmit patches 1 and 2
> shortly. Those are the only patches that affected by this change; 3 and
> 4 will not change.

You should send a whole new series, properly versioned as the
documentation in the kernel asks you to.  Otherwise it is impossible for
reviewers and maintainers to know what is the "latest" version to
accept.

thanks,

greg k-h


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
