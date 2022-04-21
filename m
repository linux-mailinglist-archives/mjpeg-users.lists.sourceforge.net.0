Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 05B7450A734
	for <lists+mjpeg-users@lfdr.de>; Thu, 21 Apr 2022 19:34:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1nhagz-0005tk-Af; Thu, 21 Apr 2022 17:34:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ian@linux.cowan.aero>) id 1nhYdW-00074Z-FG
 for mjpeg-users@lists.sourceforge.net; Thu, 21 Apr 2022 15:22:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YpK0IB0ISdK2Q+IAE4RyhzfZLNmrH3FCsTZtzMJjiEM=; b=MeRU7ewbdFhMFQnh8BweOe/Rp6
 gU+PheTI+hfF2cIFsIdeiM/exf6B8t7Ddy317KXRx+FYB9dNTvXP2etKFwYmJgr6pPT6ARiXZ+iRO
 NBjJEkGhbyf6k8bRYzgpiTRJ/Ib8tZLSI/SfNJgKBOHg7IfcNOdS2/voPPOljBZGvnz4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YpK0IB0ISdK2Q+IAE4RyhzfZLNmrH3FCsTZtzMJjiEM=; b=VJ+lD2Yo8da42G0GwAlX1wgpGK
 ltEqCbiYtQaSN/h4cO1oQB542rjM2FTstYqCo5jMohHdyKPvU+22hnB2lahNJSskZcRWXvO9KyREk
 Lg1Y87HPCvDtuI2I2KpQLDdhF5+XZSux1NsEG0va6WQr7mkv+/k/n/lR2i+uM71PZp7g=;
Received: from buffalo.birch.relay.mailchannels.net ([23.83.209.24])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nhYdN-005ftV-5S
 for mjpeg-users@lists.sourceforge.net; Thu, 21 Apr 2022 15:22:25 +0000
Received: from relay.mailchannels.net (localhost [127.0.0.1])
 by relay.mailchannels.net (Postfix) with ESMTP id 233B6121205;
 Thu, 21 Apr 2022 15:22:04 +0000 (UTC)
Received: from pdx1-sub0-mail-a217.dreamhost.com (unknown [127.0.0.6])
 (Authenticated sender: dreamhost)
 by relay.mailchannels.net (Postfix) with ESMTPA id A7C04120BB7;
 Thu, 21 Apr 2022 15:22:03 +0000 (UTC)
ARC-Seal: i=1; s=arc-2022; d=mailchannels.net; t=1650554523; a=rsa-sha256;
 cv=none;
 b=0OwiDxXzeD7RW2i7GISr6ArhIi0KZ1PxkasNcGG5TG9YQd6bp853Wp0FPcgSNb3EiuFvxP
 aZFYhY4ziLri0IKeRrB8v95gcaOov+U9pCTwnPV/IfVw+N6k0JfuHVufmEmxisbwNkf+VL
 MKhXMgLmuRS+V4nY3iZM68AGJRuqAH/FHb1UbGTk3kIGd39elxhUiRAgWXRJwRsQH89h/C
 U5PZE2SlIpyR45E05fq0H/og8HUjdJUlDNmX96WbxmC1LUxnQ3bURFDGkP9f1kWDJ4q/2K
 zEijyDyh5VLRgUadUTgYnBjEMa9eByDqAd71WsrYnIOtg7X/nVnRLDGZC1W45g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net; s=arc-2022; t=1650554523;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=YpK0IB0ISdK2Q+IAE4RyhzfZLNmrH3FCsTZtzMJjiEM=;
 b=7o9MUZJfufB2zueungao+vWZtz5Q1qA+49Fu8Eb89+B9ozdqUvA/7XeYomaoq6ctr8PHSd
 FJp+5m6+hOQq1Q29GSqYglVc6r7R7iSdZRhFSbY8N0UFO73mqDrAtxT0mv9LiV1xMQQjVp
 kCBg3uUrq7JRzoSmQR6ujVFh5FA14rtPUFN2KsLtz1FRq0jmaI+GJrMfnlPmwZfaqrsULc
 0y0s2izEkh4T056ErmrR81BdJnErvRzSMF9+/UvH9DquWprKz2qdvry5h6uuZAYTCU7auT
 OGnDNLVnJAsLgK9yPKrhB6w4K6+KyeENzuiQju8hsO+E3HHt8OpqvMJJCsTGIw==
ARC-Authentication-Results: i=1; rspamd-7968956b8c-krz2z;
 auth=pass smtp.auth=dreamhost smtp.mailfrom=ian@linux.cowan.aero
X-MC-Relay: Neutral
X-MailChannels-SenderId: dreamhost|x-authsender|ian@linux.cowan.aero
X-MailChannels-Auth-Id: dreamhost
X-Soft-Lonely: 4f2287555838409e_1650554523973_4074984897
X-MC-Loop-Signature: 1650554523973:1017771326
X-MC-Ingress-Time: 1650554523972
Received: from pdx1-sub0-mail-a217.dreamhost.com (pop.dreamhost.com
 [64.90.62.162]) (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
 by 100.121.210.138 (trex/6.7.1); Thu, 21 Apr 2022 15:22:03 +0000
Received: from fedora (unknown [69.12.38.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 (Authenticated sender: ian@linux.cowan.aero)
 by pdx1-sub0-mail-a217.dreamhost.com (Postfix) with ESMTPSA id 4Kkh9654PMz1N9; 
 Thu, 21 Apr 2022 08:22:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.cowan.aero;
 s=dreamhost; t=1650554523;
 bh=YpK0IB0ISdK2Q+IAE4RyhzfZLNmrH3FCsTZtzMJjiEM=;
 h=Date:From:To:Cc:Subject:Content-Type;
 b=dQDGdo94HXpqlcVZlUO2Gpcg070aN2YmnIWOsfgG5LvsBSqJsX57NZZa3Io9t43bm
 Z1tNy2KCcCaThMvvvwkV4GTfUjHU+C9jTpTvmkhWd1hsSnQq6S8yzgv8diKWbPAJCr
 IIYfHaG6eOxfQJaSe7IF4X1etJNPcedV3Y/+z4EZ7CZKCcUAF1s8iLchRVEcXvGUqc
 EiBGpPf8JesXgu1ZOJzBSo72ny4bJeCywDJyIrMljXlZJ5dfXiDqfCQJf4Y/gk3GpM
 WDLOQB5ugZ+rLBu9/6OkHfHzgEMHtXOUFjJSW1M07yTC4d+WLGytQuz7yjHK7J9owx
 m9uAp1TK1a4Xw==
Date: Thu, 21 Apr 2022 11:22:00 -0400
From: Ian Cowan <ian@linux.cowan.aero>
To: Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <YmF2mM+Lqv/HOgFl@fedora>
References: <20220421002316.873109-1-ian@linux.cowan.aero>
 <20220421142153.GA2462@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220421142153.GA2462@kadam>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Apr 21, 2022 at 05:21:54PM +0300,
 Dan Carpenter wrote:
 > On Wed, Apr 20, 2022 at 08:23:16PM -0400, Ian Cowan wrote: > > This is
 a patch to refactor the zoran debugging function. This function [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [23.83.209.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1nhYdN-005ftV-5S
X-Mailman-Approved-At: Thu, 21 Apr 2022 17:34:07 +0000
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

On Thu, Apr 21, 2022 at 05:21:54PM +0300, Dan Carpenter wrote:
> On Wed, Apr 20, 2022 at 08:23:16PM -0400, Ian Cowan wrote:
> > This is a patch to refactor the zoran debugging function. This function
> > existed in all of the changed files and they also all import the
> > videocodec header file. This patch moves the dprintk function into the
> > videocodec header file and out of each of the individual files.
> > 
> > -#define dprintk(num, format, args...) \
> > -	do { \
> > -		if (videocodec_debug >= num) \
> > -			printk(format, ##args); \
> > -	} while (0)
> > -
[ snip ]
> 
> > +/* Print debug information based on the specified level of debugging */
> > +#define dprintk(debug, num, format, args...) \
> > +do { \
> > +	if (debug > num) \
> > +		printk(format, ##args); \
> > +} while (0)
> > +
> 
> I don't like the new format.  It needs to have a KERN_DEBUG at the
> start.  Passing the param_module is awkward.  No one knows what the
> magic "num" things are.

I was going to put KERN_DEBUG at the beginning, but it appears that some
of the calls already include KERN_ERR, KERN_WARNING, or KERN_INFO, but
most of them do not. Would it be better to split these into multiple
macros or use printk in those specific spots that difer?

> Using a module parameter is old school badness.  The standard dev_dbg()
> macros are better and more flexible.  Just use them instead.
> 
> regards,
> dan carpenter
> 

For using the dev_dbg() macro, do you define this in the header file
(i.e. for this it would be videocodec.h), or where should this be
included from?

---
Ian Cowan


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
