Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C5AC750AEA5
	for <lists+mjpeg-users@lfdr.de>; Fri, 22 Apr 2022 05:51:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1nhkKm-0002Nv-6y; Fri, 22 Apr 2022 03:51:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ian@linux.cowan.aero>) id 1nhhCG-0001xP-Cj
 for mjpeg-users@lists.sourceforge.net; Fri, 22 Apr 2022 00:30:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5f+2TYzBuKPjVaWd9BBCif69ALhTyjNVbFxGPBPuCEY=; b=RENK/WC2nO6Ey5sO17+y8lriXm
 0jNduWMlGRa2sjK8RhGgM0AN1tbYq/1g2gaSgsUYbqfCCOLjCodPHS1oif2BaM7wyMDA04610EFeA
 p4pPaduNIV8kxZP5dgy1QM1c9w69NUBvxcW7wwosED569+NjgzLyEUkVNGk8GGr8qrc4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5f+2TYzBuKPjVaWd9BBCif69ALhTyjNVbFxGPBPuCEY=; b=NhsuWCIk/NBsZVklSEb7cgsxkd
 CU+rdV8hWJrcYscH2s0j8oA5rkKFug6j6i9LpGzAtYSXGH4NIagfpjSN8QUNTN5vDQliiPNQkt5+K
 bXIlscI2qRmUb0Q2pKpp1DaJji1tjyLnqn4/NiejKuWabc+l0nEBlZcWjkA5G67qXQtM=;
Received: from bee.birch.relay.mailchannels.net ([23.83.209.14])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nhhC8-005wq2-2Y
 for mjpeg-users@lists.sourceforge.net; Fri, 22 Apr 2022 00:30:51 +0000
Received: from relay.mailchannels.net (localhost [127.0.0.1])
 by relay.mailchannels.net (Postfix) with ESMTP id 34C6D8016BA;
 Fri, 22 Apr 2022 00:30:29 +0000 (UTC)
Received: from pdx1-sub0-mail-a217.dreamhost.com (unknown [127.0.0.6])
 (Authenticated sender: dreamhost)
 by relay.mailchannels.net (Postfix) with ESMTPA id 940C98017AB;
 Fri, 22 Apr 2022 00:30:28 +0000 (UTC)
ARC-Seal: i=1; s=arc-2022; d=mailchannels.net; t=1650587428; a=rsa-sha256;
 cv=none;
 b=QJc5m358nihCgV6QUeWkcIV8V/kUqeCw0xuUquEto3N8nu+MZ7RpSZ+PcPuGl3HRMOcal/
 Lsru7dKQz4acTOWpsTBnPuyEh/lGmxVX9x3enwZj75Rrs8pnYRyZxL7JI258f0QAlAkOnK
 wI8JsWfT4VNuVwcz21DpHNZ6wU84B6YRkxcLtZYlz7/cbQZSWYjVQOVLXox6RXRx6bvGtT
 bZIRhTitNRk6DaDxiM0QS7VXq/3PSPrmdACiyI8JqykxsN3n6b0UiUwEnx0YFwj4CEM997
 8m0/hN2cASX0moTnDyGkjgstdvZkeJb262DHSR3zDSzpLtpRhp2fhDG/jugsRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net; s=arc-2022; t=1650587428;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=5f+2TYzBuKPjVaWd9BBCif69ALhTyjNVbFxGPBPuCEY=;
 b=hyn9Sp4rjGtcM8bpr4ZjoDaEiK85NXxmv7evl78FjR9hhbYDV2Ym2w1ZGJUHgIwjzyA5U3
 2dYqKZHREcy1ejBFbFK1JupzoTcl5OiYU7gf66Em4ybgEkMnmqyaXc/Aclny7CGHsPBtQ8
 ZUmcPUwXvJb1V1+34WD+/rBCilBB1Ha1E/V+yKvO8PrUci5Mjvp2pv+41nfzHmJoZWTj6h
 FDQzdLUGRTlDeJGmdq5w/ulogKkSIJ9Z/GzZ0UYRfVkiYsG/9YuB2k5Jhr+YFAPQoyjwp0
 XD9XNUIYWXvvf7jAr6XmBtdPc1Ou/ZB+GGiZj4vBhzRMVKbkBDsDL36tEnpv4g==
ARC-Authentication-Results: i=1; rspamd-7968956b8c-5vmkl;
 auth=pass smtp.auth=dreamhost smtp.mailfrom=ian@linux.cowan.aero
X-MC-Relay: Neutral
X-MailChannels-SenderId: dreamhost|x-authsender|ian@linux.cowan.aero
X-MailChannels-Auth-Id: dreamhost
X-Madly-Ruddy: 27ea94fa65877d33_1650587429008_3161149047
X-MC-Loop-Signature: 1650587429008:980140766
X-MC-Ingress-Time: 1650587429008
Received: from pdx1-sub0-mail-a217.dreamhost.com (pop.dreamhost.com
 [64.90.62.162]) (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
 by 100.96.96.20 (trex/6.7.1); Fri, 22 Apr 2022 00:30:28 +0000
Received: from fedora (unknown [69.12.38.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 (Authenticated sender: ian@linux.cowan.aero)
 by pdx1-sub0-mail-a217.dreamhost.com (Postfix) with ESMTPSA id 4KkwKv53Thz1QX; 
 Thu, 21 Apr 2022 17:30:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.cowan.aero;
 s=dreamhost; t=1650587428;
 bh=5f+2TYzBuKPjVaWd9BBCif69ALhTyjNVbFxGPBPuCEY=;
 h=Date:From:To:Cc:Subject:Content-Type;
 b=SNBNO965iC8ELI7Edq+KHcQ2QTqbzjH6VDHuEAh3LSEpj718kmbUJrjjLylDeQTEW
 24FUB6YTKu3r0WMOrUVGFc5TUEFGwHRFn9vPaFOuChzm7ggYkYr/nl0trzIk7tChoS
 GgsJcNel2RgLuMqP7vpKQJbj4fOQFWKcwsmAwapr4RYzqEhl9XlJx7oawISxtn7X/e
 kuw5sLFPh+eznCPw2lcQSoD6b5x1x9fRoibk49x0/v0KXCmoaynWhfpWU9PnloM9Mo
 Xhr3TPGDghyP/wDLlmFwMnL9gl9dnev3XGCSXqwf1e/+e0SNz4SVi4O+Jy1GR1msIm
 DWMRGSaeco1NQ==
Date: Thu, 21 Apr 2022 20:30:25 -0400
From: Ian Cowan <ian@linux.cowan.aero>
To: Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <YmH3IZhUrvEzZlZU@fedora>
References: <20220421002316.873109-1-ian@linux.cowan.aero>
 <20220421142153.GA2462@kadam> <YmF2mM+Lqv/HOgFl@fedora>
 <20220421155203.GB2462@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220421155203.GB2462@kadam>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [23.83.209.14 listed in list.dnswl.org]
X-Headers-End: 1nhhC8-005wq2-2Y
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

I'm about to submit the modified patch, but I went and looked and we
cannot use dev_dbg() because these specific drivers do not have any
association with a device struct. The best we can do is use the pr_X()
functions which I have updated in the modified patch. That still removes
the module params and the repetitive dprintk() definition.

---
Ian Cowan


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
