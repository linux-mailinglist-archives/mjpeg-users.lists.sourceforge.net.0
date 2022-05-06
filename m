Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B39C451D2CA
	for <lists+mjpeg-users@lfdr.de>; Fri,  6 May 2022 10:06:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1nmsyy-0003rZ-Ni; Fri, 06 May 2022 08:06:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ian@linux.cowan.aero>) id 1nmqY0-0002oJ-RI
 for mjpeg-users@lists.sourceforge.net; Fri, 06 May 2022 05:30:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EVkr9CmxaYXCctU93BalOMVfkfCCgbUETz9MHNKsnlw=; b=MmqsZmsKAeLpKTu7RSB9Zru+uH
 SMoUaw/s6L/Kccl3NUpFuIH/HA4Pz8ghMwmiRwNfLwEGMSm8m+OEaotsk0RS6x8gqypqS6ucXzC/x
 BB7sGxLXJBEPOu3YkYjSfWkmzsDMhJ06A84RLayTJu+kEnXPSYlVupVb9D59utEpNYQE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EVkr9CmxaYXCctU93BalOMVfkfCCgbUETz9MHNKsnlw=; b=dvk+jL+L/GNg8mPj5nPC5vXbYQ
 /z4sGkk9i6lsh0LMX6H64eGes9LK9iF4hAsoKie477Od1IsYX9x1EK/TJY6hHZ4fFivPphdOiXVDQ
 9Ajd7PjP8YB5CYE+5E9vp6DvQfsI9EfakdZtkI/jal4eV7jXaxoa0Tb1QeYQjcYGHUWw=;
Received: from dog.elm.relay.mailchannels.net ([23.83.212.48])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nmqXu-002naT-BU
 for mjpeg-users@lists.sourceforge.net; Fri, 06 May 2022 05:30:35 +0000
X-Sender-Id: dreamhost|x-authsender|ian@linux.cowan.aero
Received: from relay.mailchannels.net (localhost [127.0.0.1])
 by relay.mailchannels.net (Postfix) with ESMTP id D0FDF560D71;
 Fri,  6 May 2022 05:30:17 +0000 (UTC)
Received: from pdx1-sub0-mail-a243.dreamhost.com (unknown [127.0.0.6])
 (Authenticated sender: dreamhost)
 by relay.mailchannels.net (Postfix) with ESMTPA id 275C15608D3;
 Fri,  6 May 2022 05:30:15 +0000 (UTC)
ARC-Seal: i=1; s=arc-2022; d=mailchannels.net; t=1651815017; a=rsa-sha256;
 cv=none;
 b=kfCDl5RbpTt7rP1hGCIe4GZj++v9M4lEZ23DVfnmpR2crAgJsCkp+VaFroL3WomIexGDtk
 ercZUd1BFYtBwSWgvF9UpgbJdnEGrw4yHnSYPT6yQU7z1EmzdjOTG4qy6vVZkyCCitRK06
 OjP71CvXYO+IpsDot6357Qser7IJQ+ShKmQcgnnRw7L17g1IJb4vLmS7W7Le4QA8BYYxDM
 WPeI54kl4HtpfagmrhY0OA8PXV+ttxd8MRnXAd0BYKCIki5dlUcvZNN/qz/v9N9M9gGQZn
 qlkV1oFrm9A7GA6+eNOfDyGFvL3eexZEnkE/N/f/K5TbZ5r6BKZudX/E+1iB7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net; s=arc-2022; t=1651815017;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=EVkr9CmxaYXCctU93BalOMVfkfCCgbUETz9MHNKsnlw=;
 b=o/Rr+9JgaZsxLlwgZpQ2Kntifve8C7TDJTTj3dt2ZvaOtcvlIs0AV7srvcvN727N5psjli
 hD69qn+hDZGQ2+BMJ0voKc0WMLFP0i5kUjIpOqb1Yw0ORc46uVITHTnSPGJ1jXpTpfxwFp
 8/wESprHOCRgusN4snhaD/wVUJ0mVP51CesuuLHd/P+CNLFdjec7tSIkaOMn5Z/WfYkYnI
 5WyF8a8d5tLJ6KclSzPa7KZPSlnkZxvxuLqfDwbmqbIX3Q2NCScWMDfaAkwQYA11Lfl6tH
 rkx0uYJVBK2HmDSSHMxj3GeHmp0eWJDIqeaWavz2z/+04ayerwW2/yBzcA1BGQ==
ARC-Authentication-Results: i=1; rspamd-847dd8955c-cpsmn;
 auth=pass smtp.auth=dreamhost smtp.mailfrom=ian@linux.cowan.aero
X-Sender-Id: dreamhost|x-authsender|ian@linux.cowan.aero
X-MC-Relay: Neutral
X-MailChannels-SenderId: dreamhost|x-authsender|ian@linux.cowan.aero
X-MailChannels-Auth-Id: dreamhost
X-Cure-Shrill: 6b76dc7a0e7105ae_1651815017690_445065697
X-MC-Loop-Signature: 1651815017690:1202526960
X-MC-Ingress-Time: 1651815017689
Received: from pdx1-sub0-mail-a243.dreamhost.com (pop.dreamhost.com
 [64.90.62.162]) (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
 by 100.125.123.55 (trex/6.7.1); Fri, 06 May 2022 05:30:17 +0000
Received: from fedora (unknown [69.12.38.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 (Authenticated sender: ian@linux.cowan.aero)
 by pdx1-sub0-mail-a243.dreamhost.com (Postfix) with ESMTPSA id 4KvfKL0w4qz2M; 
 Thu,  5 May 2022 22:30:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.cowan.aero;
 s=dreamhost; t=1651815014;
 bh=EVkr9CmxaYXCctU93BalOMVfkfCCgbUETz9MHNKsnlw=;
 h=Date:From:To:Cc:Subject:Content-Type;
 b=YuPu14i4PP4uV68df3aQmHwWCPiNeJcK816rvUa4cBW60kor8hdrREsSTu5BXXthB
 pf8WPHDY9KGd4PfzwtQB/jHSjiaSdki86oZFaxDEpx+cUGebxSkzEDsOhZWzLUYOcz
 9jYonuD3ahADRP4RjJ3Ve8E8CtGnxnyldJO2OOkIKkEKYe9bYglocuNQm5RqVjeI3w
 pMQF/iIXwfLTrQGtgiaFe6itL/RlMEHYJgPq7zEryFpPgPjaxeqFQ6rshnGgm7ezUJ
 BB+UqjXopCTtRF84HHSUMed/S4BxcNdmLadDcSdWlT5knSvP7uFkHwttdIkbFBbIki
 E7RxdS9hAZumg==
Date: Fri, 6 May 2022 01:30:12 -0400
From: Ian Cowan <ian@linux.cowan.aero>
To: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <YnSyZEF8n7luVvHM@fedora>
References: <20220425144110.133316-1-ian@linux.cowan.aero>
 <3270dd49-0d68-5b60-d766-940b39aa463e@xs4all.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3270dd49-0d68-5b60-d766-940b39aa463e@xs4all.nl>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Apr 28, 2022 at 10:15:03AM +0200, Hans Verkuil wrote:
 > Hi Ian,
 > > When I compiled this patch series with smatch I got these warnings:
 > > zoran/videocodec.c:45 videocodec_attach() warn: vari [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [23.83.212.48 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1nmqXu-002naT-BU
X-Mailman-Approved-At: Fri, 06 May 2022 08:06:34 +0000
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

I just resubmitted v3.

What did you use to see these issues? When I ran the checkpatch script
and compiled, I did not see any of this.

Thanks!
Ian


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
