Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 90FB9517536
	for <lists+mjpeg-users@lfdr.de>; Mon,  2 May 2022 18:57:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1nlZMe-00058v-9o; Mon, 02 May 2022 16:57:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ian@linux.cowan.aero>) id 1nlYDy-0003V4-JF
 for mjpeg-users@lists.sourceforge.net; Mon, 02 May 2022 15:44:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DkkNoiMLnVInXzgUkNe6nyHj/tovdEiyha32sZWWqmk=; b=myoB/wHVmmKdP1IDLBnJWoyP4s
 gnKRmShgrGfn6YTs8ssqM4NXAo9lMRQxZss+jctXFkCX41P7pt5M84e985m4a2WYf5RinD1WsKhtn
 tfcSvoeOximqw7DSRcinHvxJRN63FkAOA/S+blSGRm+ESZoKkEurM3iNQuk1/dfhoX+0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DkkNoiMLnVInXzgUkNe6nyHj/tovdEiyha32sZWWqmk=; b=Q2bJGMITtex0D3AjfcofXKWAXJ
 XqQWUqusYWLKmuT/v6HcUyTAbUUyBvgN1bTYWhGhuCPhfYWPuvBSuBwG5QQtIcpCrn9/GZQmaArO+
 FBhm97JbFzlD/4VEO/6xqvhjiYJi/sm+xTGMQ3rKuTTd9Ti16RAbyfKvVbLu4pLZSQPM=;
Received: from bird.elm.relay.mailchannels.net ([23.83.212.17])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nlYDo-00Gg8X-3t
 for mjpeg-users@lists.sourceforge.net; Mon, 02 May 2022 15:44:32 +0000
X-Sender-Id: dreamhost|x-authsender|ian@linux.cowan.aero
Received: from relay.mailchannels.net (localhost [127.0.0.1])
 by relay.mailchannels.net (Postfix) with ESMTP id A2BA581420;
 Mon,  2 May 2022 15:44:10 +0000 (UTC)
Received: from pdx1-sub0-mail-a256.dreamhost.com (unknown [127.0.0.6])
 (Authenticated sender: dreamhost)
 by relay.mailchannels.net (Postfix) with ESMTPA id 7687F80EAE;
 Mon,  2 May 2022 15:44:08 +0000 (UTC)
ARC-Seal: i=1; s=arc-2022; d=mailchannels.net; t=1651506249; a=rsa-sha256;
 cv=none;
 b=AUyKsLyIulI6A+RrAleC9bQFM8KSE/rNRH6UFQwL4ceQ4hf3y+lI1GRQzh+w+aa1blj13t
 s55eE/ybqMAyQHgRrzqz7K0f7PQ/F75+Sd4fsnJYFjSPWzyFcT8yq5w4yAETftE02y3qmW
 5kLEu1yy/Q/IAr/LXGM1HOp4scd6pg+Buk12WJCRy2c5bUC+MxfES3Ph26wqA1PObhx9Vg
 B4ZBNeDnr3KXIoB8B+w1o0QbCKCv7qlHt3ok61XpRn9Pzu+X6ziuQ6Dyv7BHZWAguow5LO
 N2xbRf8vDW1XO9SIi1xo82LXk4m1E9QK1GvPfz5xFmmIqUAmXTTosPFvpCG3gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net; s=arc-2022; t=1651506249;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=DkkNoiMLnVInXzgUkNe6nyHj/tovdEiyha32sZWWqmk=;
 b=newsTZguUDOcKrehNA2BezEuPGnY9xuG0F1bArXt8LpUhidgkX4iLMjO1afQ3CR2WJw8NZ
 G19tSVKLbmfKVLzGWEw2WP5XjRj8qOArY5LQFOElpyqJYJ6MRyLmQzEbbzkHRBnFS85U2N
 fdH4R96ihudS02L83HFq/DSJrMpBN+wp/5t+UE9rTbEeAyh3p1U42N4EXJBuJ0TXnDaiv9
 jA2aUgIQjPPs3sOX/Amnt+UdT0qSklI1LZq9vxhyF1N8b6pny/XqE6l0muNqOOxhDme0AE
 1IZXJQQ00hNzVDVR+hgf9Ld67vjIg4GScxhvnjC05mdKTVvFCOse8t0JlDP4Yg==
ARC-Authentication-Results: i=1; rspamd-847dd8955c-6489d;
 auth=pass smtp.auth=dreamhost smtp.mailfrom=ian@linux.cowan.aero
X-Sender-Id: dreamhost|x-authsender|ian@linux.cowan.aero
X-MC-Relay: Neutral
X-MailChannels-SenderId: dreamhost|x-authsender|ian@linux.cowan.aero
X-MailChannels-Auth-Id: dreamhost
X-Whispering-Language: 2cac419402377a6f_1651506250135_1661352001
X-MC-Loop-Signature: 1651506250135:2295873110
X-MC-Ingress-Time: 1651506250135
Received: from pdx1-sub0-mail-a256.dreamhost.com (pop.dreamhost.com
 [64.90.62.162]) (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
 by 100.116.106.76 (trex/6.7.1); Mon, 02 May 2022 15:44:10 +0000
Received: from fedora (unknown [69.12.38.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 (Authenticated sender: ian@linux.cowan.aero)
 by pdx1-sub0-mail-a256.dreamhost.com (Postfix) with ESMTPSA id 4KsS7W0pS0z1fC; 
 Mon,  2 May 2022 08:44:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.cowan.aero;
 s=dreamhost; t=1651506248;
 bh=DkkNoiMLnVInXzgUkNe6nyHj/tovdEiyha32sZWWqmk=;
 h=Date:From:To:Cc:Subject:Content-Type;
 b=RelqvMKrLPKmvxXgVjKMzXSD/ttT9x/slpwkXqdlBHX3DFYX/xSumWYHtIJ0d3Og2
 +VfI+YsUG8wTiG3pf+IDq/sX7TeNhWZSifZ9Jj21nYUdUgJo2ewJefRt84RXJjIUMl
 E0RhCfK9OOBImqnpoJnvGI50Owqnio895fcXaZsl5P/t/o9xZjoOrPTind8rFzR3op
 vljg2vWCTVmOz0MrjNhf+LH7hms4XohVuNYvnE+NiIJeExPrjWymUncqt3kiEhknYr
 Sz8TazASWfXKjJLWpQ4Vc8e4kr/Ri9x1xoT8fDy8qxcx71DrjcaJK3KkPFxRE7tL+X
 zmqdPNXVEUXEQ==
Date: Mon, 2 May 2022 11:44:05 -0400
From: Ian Cowan <ian@linux.cowan.aero>
To: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <Ym/8RQy0HyCZ9KRx@fedora>
References: <20220425144110.133316-1-ian@linux.cowan.aero>
 <3270dd49-0d68-5b60-d766-940b39aa463e@xs4all.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3270dd49-0d68-5b60-d766-940b39aa463e@xs4all.nl>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Apr 28, 2022 at 10:15:03AM +0200, Hans Verkuil wrote:
 > Hi Ian, > > On 25/04/2022 16:41, Ian Cowan wrote: > > This replaces all
 of the dprintk() macro calls to the zrdev_dbg(), > > zrdev_info( [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [23.83.212.17 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nlYDo-00Gg8X-3t
X-Mailman-Approved-At: Mon, 02 May 2022 16:57:33 +0000
Subject: Re: [Mjpeg-users] [PATCH v2 4/4] staging: media: zoran: replace
 dprintk with new debugging macros
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 mjpeg-users@lists.sourceforge.net, Corentin Labbe <clabbe@baylibre.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

On Thu, Apr 28, 2022 at 10:15:03AM +0200, Hans Verkuil wrote:
> Hi Ian,
> 
> On 25/04/2022 16:41, Ian Cowan wrote:
> > This replaces all of the dprintk() macro calls to the zrdev_dbg(),
> > zrdev_info(), or zrdev_err() calls as appropriate. This allows for the
> > removal of the dprintk() macro from each file it is defined in, along
> > with removal of the module params that track the debugging level.
> > 
> > In the case that a debugging level was used in a comparison, this has
> > been replaced with checking the console level debugging and making a
> > decision from there. If the console debugging level is at least the
> > KERN_ debugging level equivalent, then the comparison will evaluate as
> > true.
> > 
> > There are a few instances where pr_debug() must be used over the
> > zrdev_dbg(). These occur in the module cleanup functions because there
> > should be no devices defined once we get to those modules, so we have no
> > devices to pass to zrdev_dbg().
> 
> When I compiled this patch series with smatch I got these warnings:
> 
> zoran/videocodec.c:45 videocodec_attach() warn: variable dereferenced before check 'master' (see line 40)
> zoran/videocodec.c:115 videocodec_detach() warn: variable dereferenced before check 'codec' (see line 111)
> zoran/videocodec.c:168 videocodec_register() warn: variable dereferenced before check 'codec' (see line 166)
> zoran/videocodec.c:200 videocodec_unregister() warn: variable dereferenced before check 'codec' (see line 198)
> 
> And I also got this warning when checking the kerneldoc:
> 
> zoran/zoran.h:307: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
> 
> Can you fix this and post a v3?
> 
> Thanks!
> 
> 	Hans

I will go through and fix these later today. Thanks!

Ian


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
