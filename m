Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E8250AEA4
	for <lists+mjpeg-users@lfdr.de>; Fri, 22 Apr 2022 05:51:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1nhkKm-0002Nq-5u; Fri, 22 Apr 2022 03:51:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ian@linux.cowan.aero>) id 1nhbJr-0005g1-Ni
 for mjpeg-users@lists.sourceforge.net; Thu, 21 Apr 2022 18:14:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FNhNt0OO8+NlPGDHgZLKBtaMEMHbXxrGKn/UfnYWjbo=; b=lGhfQK71Um92+Orl96TPhXDy9D
 DWShsONuRqFCYRKHxFPupDhy3AYwoNykNXeg5UFQc/OUG7rKJn3D+EaWZYds6+UdaKfqNXJLjUuS/
 MoCoGUMGjaKwR0Z6WrZ9pvijzzp4RUcsjell9lx9E8H6F4bEbpRWiUEiUdvZb0f9SJqk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FNhNt0OO8+NlPGDHgZLKBtaMEMHbXxrGKn/UfnYWjbo=; b=ip0VKC7V9HMVraeTY9S8VWOmYx
 SmwagmPijv92kXEpx7THKfr1gL3AXfuLvTNQLq4oPtvIIOhVbb6WNZgFdGY84O9YdhYZunlFbBsrW
 oje56ukDsEnFKlEw6iLGRGD0sMzsLN1n8QUZwS7bft7iOOLI9EaKsc1OTq1HX7JtMxgU=;
Received: from hedgehog.birch.relay.mailchannels.net ([23.83.209.81])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nhbJo-0002RR-8F
 for mjpeg-users@lists.sourceforge.net; Thu, 21 Apr 2022 18:14:18 +0000
Received: from relay.mailchannels.net (localhost [127.0.0.1])
 by relay.mailchannels.net (Postfix) with ESMTP id 6C3EF561317;
 Thu, 21 Apr 2022 18:14:02 +0000 (UTC)
Received: from pdx1-sub0-mail-a217.dreamhost.com (unknown [127.0.0.6])
 (Authenticated sender: dreamhost)
 by relay.mailchannels.net (Postfix) with ESMTPA id 6E86D560672;
 Thu, 21 Apr 2022 18:14:01 +0000 (UTC)
ARC-Seal: i=1; s=arc-2022; d=mailchannels.net; t=1650564841; a=rsa-sha256;
 cv=none;
 b=Ez4QihA5rm042mrgYA9iZQY6WEr1TG6hw2FpZEDLx2CRG9i4vFfjD8ai9jkqEsYmXpArIp
 AJawpqvnqFGcBtV4tR8D/aIt3Yr60Rswnv4VI8yiZc2LFZt3TtRfzBQ7JABEaXovnibAVP
 ezpOGPtNwdyOfe0Jl80AgBZListKC4Lgo6IDwlE+F5zd0X02eKXMU2rK8s13alHxStEIx9
 NEo44TEv7ZaLIqIOPr0v8m2sjUg/wRbYFQsptFeDBnKecWf3JtQi/P14ZqrTgSp4jAQacC
 j98JdE3c5hc/9Hh7WcCQ9RDAJ56mzDKlSavWiq0sidPLeTsAdgHRRCxOWkumHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net; s=arc-2022; t=1650564841;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=FNhNt0OO8+NlPGDHgZLKBtaMEMHbXxrGKn/UfnYWjbo=;
 b=UlmKO3r6kQ2aPtuRa2qMHKykV//8YOpXW5vMCnvXAo2x2g34f6sFnKwmXMwlhXUxXnNPAo
 L8TZqfkjppYnR3BYBxqjbGZYdWqUl4KdcgqJGvBfoy5Kwg77FonNcArpYNpMpU+JFSRIV7
 WMtUr6ljlWCYn6YMLXJNszCWNRbpnKlYkf6yxFTeZM/6m93a7iBKhmEG2QEJex2B+D7jOO
 aF35xis4osP/x7wWFdDZDM+VaGkf5VikVxmzS32JIEWYn6SNBu8Q4HBGtX99ar3LyWmkGD
 KjELWfeuMa+GgqW8dllzSfHAFjE2sM+MFDF1x9Uktr4PG5iLsQINsh7f3g4CsA==
ARC-Authentication-Results: i=1; rspamd-58ff8d7479-bqpr8;
 auth=pass smtp.auth=dreamhost smtp.mailfrom=ian@linux.cowan.aero
X-MC-Relay: Neutral
X-MailChannels-SenderId: dreamhost|x-authsender|ian@linux.cowan.aero
X-MailChannels-Auth-Id: dreamhost
X-Tart-Squirrel: 6a3894f104bb04fb_1650564841794_2734342223
X-MC-Loop-Signature: 1650564841793:3729074847
X-MC-Ingress-Time: 1650564841793
Received: from pdx1-sub0-mail-a217.dreamhost.com (pop.dreamhost.com
 [64.90.62.162]) (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
 by 100.101.255.132 (trex/6.7.1); Thu, 21 Apr 2022 18:14:01 +0000
Received: from fedora (unknown [69.12.38.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 (Authenticated sender: ian@linux.cowan.aero)
 by pdx1-sub0-mail-a217.dreamhost.com (Postfix) with ESMTPSA id 4KklzX40Ylz1MB; 
 Thu, 21 Apr 2022 11:14:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.cowan.aero;
 s=dreamhost; t=1650564841;
 bh=FNhNt0OO8+NlPGDHgZLKBtaMEMHbXxrGKn/UfnYWjbo=;
 h=Date:From:To:Cc:Subject:Content-Type;
 b=uhlbfgNtmqOvZeIykCpsviK5vksbHjQBFSb2wBWlyy1sq5sXheWTEZ0yxp8RSkacI
 g8h6MGUBG3mYi5GydVPiQaRPQdFBCoetlSAgOH5dNm2WnF+kY4iYIJfbvh747W5s/g
 jARCkVcMy8Sh4EBW5DOtPsezu5lUAfq98TRhVxZkFkPqN31PcyQ03fh+Q3kinpEn9A
 l3dO88C84fIwJDE6bVaCPh3ovBmg+YW41koA9hHwn0J++Cnb0yzCkgusHI/cI810kL
 utT83jEuDyqZGbU/CcNRdrNkOkprVIDrY4RivcdZzhZOmHyWcl8+pN9SR3z+Nfsmcd
 Czjfyv7JVZDBw==
Date: Thu, 21 Apr 2022 14:13:58 -0400
From: Ian Cowan <ian@linux.cowan.aero>
To: Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <YmGe5vM+ictu+7ve@fedora>
References: <20220421002316.873109-1-ian@linux.cowan.aero>
 <20220421142153.GA2462@kadam> <YmF2mM+Lqv/HOgFl@fedora>
 <20220421155203.GB2462@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220421155203.GB2462@kadam>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Apr 21, 2022 at 06:52:04PM +0300,
 Dan Carpenter wrote:
 > On Thu, Apr 21, 2022 at 11:22:00AM -0400, Ian Cowan wrote: > > > > For
 using the dev_dbg() macro, do you define this in the header file [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [23.83.209.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1nhbJo-0002RR-8F
X-Mailman-Approved-At: Fri, 22 Apr 2022 03:51:50 +0000
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
Cc: gregkh@linuxfoundation.org, linux-staging@lists.linux.dev,
 mjpeg-users@lists.sourceforge.net, clabbe@baylibre.com, mchehab@kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

On Thu, Apr 21, 2022 at 06:52:04PM +0300, Dan Carpenter wrote:
> On Thu, Apr 21, 2022 at 11:22:00AM -0400, Ian Cowan wrote:
> > 
> > For using the dev_dbg() macro, do you define this in the header file
> > (i.e. for this it would be videocodec.h), or where should this be
> > included from?
> 
> dev_dbg() is defined in include/linux/dev_printk.h.  Look around at how
> it's used.  pr_debug() might be an option, but I don't know if we will
> accept that, we prefer dev_dbg().
> 
> regards,
> dan carpenter
> 

Okay, I will make these few changes and resubmit.

---
Ian Cowan


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
