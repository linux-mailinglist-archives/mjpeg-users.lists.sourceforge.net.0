Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C4450CF6B
	for <lists+mjpeg-users@lfdr.de>; Sun, 24 Apr 2022 06:36:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1niTzC-0007Tg-8E; Sun, 24 Apr 2022 04:36:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ian@linux.cowan.aero>) id 1ni8FG-0005ef-3V
 for mjpeg-users@lists.sourceforge.net; Sat, 23 Apr 2022 05:23:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Y8HvLIeF3jdVQfTmBqM4JYUStv1TiMvtFtRBAEyrrcE=; b=aeNNWTRYO4U+w8ss9RogaJvHi1
 Lw/T/cpEV3COsNXK4jXy+3oCOc9YEH96ngFRPgdIIqRGd1TUT+f+ANgD651ap8GI8blU2cn/0DuxX
 AC3qot36mF8MF1oRyqFZVHAQtVJwd2+v7LjfBWYdOuc1DIqsREkGcAhHr8IEXKYnoN9I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Y8HvLIeF3jdVQfTmBqM4JYUStv1TiMvtFtRBAEyrrcE=; b=j0gHyKOS/lj4RQg9oNHb3wf1Af
 cfc6XGaV8e4qoGn0R7x3bvt0IrxWju9RyhKgBMGhj3mv+kTpp5OnzJNtyKwHsQJYQ5Ga2/0Rqarp+
 I9g+EzEnS5afQcUemjBa1W2TpkURQa3oL5joPaSC/c9fVZefut0hxWHuhf207wfpgOk8=;
Received: from bumble.birch.relay.mailchannels.net ([23.83.209.25])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1ni8FA-0001gE-EJ
 for mjpeg-users@lists.sourceforge.net; Sat, 23 Apr 2022 05:23:45 +0000
Received: from relay.mailchannels.net (localhost [127.0.0.1])
 by relay.mailchannels.net (Postfix) with ESMTP id 9CEBC820B38;
 Sat, 23 Apr 2022 05:23:34 +0000 (UTC)
Received: from pdx1-sub0-mail-a217.dreamhost.com (unknown [127.0.0.6])
 (Authenticated sender: dreamhost)
 by relay.mailchannels.net (Postfix) with ESMTPA id 330D8820670;
 Sat, 23 Apr 2022 05:23:34 +0000 (UTC)
ARC-Seal: i=1; s=arc-2022; d=mailchannels.net; t=1650691414; a=rsa-sha256;
 cv=none;
 b=7qFA8UZcS0jI3k63ZD0q4DCb3HrA/aHcvA8SAbNVnZbYVJ/mFZsKLNy9v40IrPi9RHZJzL
 uTGMsCrinjqtHkc/PJH9H7rEHfoaKL/fYFrKz4TsQa5gJPVjRUg5vzFp8GSxieGn26hwPc
 91SqsGWCxcMu/BTb8I42J9pSSK0raY46+UPK64M02sFQvhwkLnR42tE8vwFcXdLI3DzIHz
 XxK8vJocli15pgf8O6AbbOxiphpMAtuJkzrKR41NX9OlcYoGqvEBwFamc6n1eG1YlGQyfI
 Vm86tYtv4V/PlDFhl5qagBlpcYro69VrVnD8wwdGza9TOkd0TKYmZKk0wloHsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net; s=arc-2022; t=1650691414;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=Y8HvLIeF3jdVQfTmBqM4JYUStv1TiMvtFtRBAEyrrcE=;
 b=iBD4Jfogo09XURbEwhUP27b0x0u+r0QBWlpGNyc1zCj5849FzpV3qt2b/OcJ2hS0Ed30La
 IEoGGfvbRzJCBBY+yygrgil9asjBRuUBG33X/0sN0e9D1eBV/LGgjxIsGM3v6TcGyLxOAm
 IzbmX49vsqhuyn4w11fVU6PsfitffT6/fC+ltqPqXRKFD30txoH3ComO1b8kIIpQwv5T2V
 UBuXZiREHYWJE11JWkNONty0QPXZ+JO6BT2HU5xgjoHEC2e7IgDRKK1oOX1HhirlBxUHsw
 hPmSlpqwYIVOSO6b4hAoVYnlorSIDDMwjvsTR/cLP33KMkDZyFhAitRkys689A==
ARC-Authentication-Results: i=1; rspamd-6dfbdcb948-zj9vt;
 auth=pass smtp.auth=dreamhost smtp.mailfrom=ian@linux.cowan.aero
X-MC-Relay: Neutral
X-MailChannels-SenderId: dreamhost|x-authsender|ian@linux.cowan.aero
X-MailChannels-Auth-Id: dreamhost
X-Minister-Trouble: 36fd8cfb08c0dfa5_1650691414490_2395825695
X-MC-Loop-Signature: 1650691414490:1979785784
X-MC-Ingress-Time: 1650691414490
Received: from pdx1-sub0-mail-a217.dreamhost.com (pop.dreamhost.com
 [64.90.62.162]) (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
 by 100.115.45.37 (trex/6.7.1); Sat, 23 Apr 2022 05:23:34 +0000
Received: from fedora (unknown [69.12.38.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 (Authenticated sender: ian@linux.cowan.aero)
 by pdx1-sub0-mail-a217.dreamhost.com (Postfix) with ESMTPSA id 4Klfnd1Gcbz4C; 
 Fri, 22 Apr 2022 22:23:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.cowan.aero;
 s=dreamhost; t=1650691414;
 bh=Y8HvLIeF3jdVQfTmBqM4JYUStv1TiMvtFtRBAEyrrcE=;
 h=Date:From:To:Cc:Subject:Content-Type;
 b=UtV53X2lKIOz3BLOsvrbXfhZXRrZkkfstPoyTQdgvRgY+v6F1lwpVlLlc0zbsH6QM
 sI0EeUaSbIHa09U8dkPwBQTGabXqkJ5HOEPoMEWAGh+uXCZp8PfdocEG+kgvvwJRzQ
 D4EN+goDe4tEcSfMGFVX/xwagMX9JPo1sVhaVQ5sPC/VWUwOs59vNQJ7/C2DajkdNW
 98Rv5r8ZbP+qat3jWLZO0mG6tJlV/NjQWNfVyQTwV2LqKhCjd/lS8prR16u//UBp1g
 rV3MDzGr40YJXs/w1L7jyd3r7x4SozpS556RJjZHcd+EcircLyvC07PwFrPreXcrO5
 YKTc3S+gU6s0Q==
Date: Sat, 23 Apr 2022 01:23:31 -0400
From: Ian Cowan <ian@linux.cowan.aero>
To: Greg KH <gregkh@linuxfoundation.org>
Message-ID: <YmONU1yZ9FATroR9@fedora>
References: <20220421002316.873109-1-ian@linux.cowan.aero>
 <20220421142153.GA2462@kadam> <YmF2mM+Lqv/HOgFl@fedora>
 <20220421155203.GB2462@kadam> <YmH3IZhUrvEzZlZU@fedora>
 <YmI4yh88pYVvVE/X@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YmI4yh88pYVvVE/X@kroah.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Apr 22, 2022 at 07:10:34AM +0200, Greg KH wrote: >
 On Thu, Apr 21, 2022 at 08:30:25PM -0400, Ian Cowan wrote: > > On Thu, Apr
 21, 2022 at 06:52:04PM +0300, Dan Carpenter wrote: > > > On Thu, A [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [23.83.209.25 listed in list.dnswl.org]
X-Headers-End: 1ni8FA-0001gE-EJ
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

On Fri, Apr 22, 2022 at 07:10:34AM +0200, Greg KH wrote:
> On Thu, Apr 21, 2022 at 08:30:25PM -0400, Ian Cowan wrote:
> > On Thu, Apr 21, 2022 at 06:52:04PM +0300, Dan Carpenter wrote:
> > > On Thu, Apr 21, 2022 at 11:22:00AM -0400, Ian Cowan wrote:
> > > > 
> > > > For using the dev_dbg() macro, do you define this in the header file
> > > > (i.e. for this it would be videocodec.h), or where should this be
> > > > included from?
> > > 
> > > dev_dbg() is defined in include/linux/dev_printk.h.  Look around at how
> > > it's used.  pr_debug() might be an option, but I don't know if we will
> > > accept that, we prefer dev_dbg().
> > > 
> > > regards,
> > > dan carpenter
> > > 
> > 
> > I'm about to submit the modified patch, but I went and looked and we
> > cannot use dev_dbg() because these specific drivers do not have any
> > association with a device struct.
> 
> Then please fix that issue, as there is a real struct device that they
> are using somewhere.  That is the correct solution as drivers should
> never use pr_* calls directly.
> 
> thanks,
> 
> greg k-h
> 

I just resubmitted and this time used dev_dbg() (I split the resubmitted
patch into 4 parts that will work if they are applied in order). There
were a few places that pr_debug() had to be used (or it can be changed
back to dprintk()) because they are cleanup functions and do not have
any devices available at the cleanup. If there is a better way to handle
that, I will go back and make a modification to that. Other than those 3
spots, dev_dbg() is being used.

---
Ian Cowan


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
