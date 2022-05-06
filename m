Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B149351E3E6
	for <lists+mjpeg-users@lfdr.de>; Sat,  7 May 2022 06:01:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1nnBd7-0002cv-Sm; Sat, 07 May 2022 04:01:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ian@linux.cowan.aero>) id 1nn4u1-0007R0-5O
 for mjpeg-users@lists.sourceforge.net; Fri, 06 May 2022 20:50:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C+3kDtZyTEFcDrjJVXV0xCqHGqid0l8Y5T5jgapYTQ4=; b=OaUtWiqDUNDVj/7r4Jx+jQuQrh
 9HjCa/S7I/+8W7V3bi+2Lj4n5cCufedj27PDaD9wSkXlqC5VJwc66mJfhXOs+6rCKhyYtBhB/o8LM
 TBXj+8ve2oKhn6iLi7NVgp+EVWD1nOvjqWc3Dh98CCrHW8bpgrCXlLxNQqiWFxW1mnVc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=C+3kDtZyTEFcDrjJVXV0xCqHGqid0l8Y5T5jgapYTQ4=; b=egJSYBgTKVmqtgued0/B3T91EW
 XNWr12CUc5sXmSdwjONWcKG4xR+/3sDg57x9E1ZEVhSy4H6d5qBP7TwyCv7YYdSIfyVbR2TzIxQbY
 USAPSSdYLGZEAkFGoc1NirPtNdvksOG4xJjZ4VEBEOBPR20f2xLbM1+vWS82F5htsYaQ=;
Received: from fuchsia.ash.relay.mailchannels.net ([23.83.222.64])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nn4tx-003Xgt-Mg
 for mjpeg-users@lists.sourceforge.net; Fri, 06 May 2022 20:50:16 +0000
X-Sender-Id: dreamhost|x-authsender|ian@linux.cowan.aero
Received: from relay.mailchannels.net (localhost [127.0.0.1])
 by relay.mailchannels.net (Postfix) with ESMTP id 1EF5676116A;
 Fri,  6 May 2022 20:50:00 +0000 (UTC)
Received: from pdx1-sub0-mail-a267.dreamhost.com (unknown [127.0.0.6])
 (Authenticated sender: dreamhost)
 by relay.mailchannels.net (Postfix) with ESMTPA id 866987611B8;
 Fri,  6 May 2022 20:49:59 +0000 (UTC)
ARC-Seal: i=1; s=arc-2022; d=mailchannels.net; t=1651870199; a=rsa-sha256;
 cv=none;
 b=n6dTuqe0V3FJ3aRB9KvPOEzKNB9dUS+P1xMLRoDk1mgAJCRfDL0mwolk6oOKAAHk1nVzO/
 /GywrCz8wmPZ5M71rtUGiX5SWdtqAg2xbeVf8MboCI+6bvGfe0U+vDQJCKfKl4IwD3kqZY
 gXBM2tSlS2Zx+jglhLtSIUVbSUPhjHkRc4iOBunU+mM3bKXidXGZ0kVchi1LxREGqXSJKv
 9ScgVEyk+MiWZhSzl0S1jTCI3+cqya3054oRvHrRVtu8tnbxIaNSOeyQyQxRPEJ2zi7sQk
 85NoUR5iO39DPk7wYQZTj4fVRAvS/xGPu27J/uHO3Axw35yAYDpsv0A2Zfep7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net; s=arc-2022; t=1651870199;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=C+3kDtZyTEFcDrjJVXV0xCqHGqid0l8Y5T5jgapYTQ4=;
 b=VNQTEsQOLV0/WFoc/YlZNgVKg8G2++ug6oWR+T6Wu5GnPOqubgpj9TBXOt9DCS0AxngXRd
 tOz1si/aVyfzBGJb0MyK94Vsx/YRNVKPKaLjb9ghhE3ULysberKKe56Z1bSXf1yKdvraHo
 vF72/STgiGCU21ke7NcR9b7VVwDa+62UY1mKZIcfU6EbFVxAdWVOcC5nWJN1HDkkG/qOwD
 gjAyqkwij98To29TDzbTpWUaH/L31UUoSKIQGqg/b0VjOSl60EBeI+6FYbKSqfai5QWBUn
 aJd6G3JcP8CmUxNQ6k5LncYdUAonKI8hclZUsLGr2gj9uZE7YGk45aaDBobCLQ==
ARC-Authentication-Results: i=1; rspamd-c4dc5ff8f-qm9bp;
 auth=pass smtp.auth=dreamhost smtp.mailfrom=ian@linux.cowan.aero
X-Sender-Id: dreamhost|x-authsender|ian@linux.cowan.aero
X-MC-Relay: Neutral
X-MailChannels-SenderId: dreamhost|x-authsender|ian@linux.cowan.aero
X-MailChannels-Auth-Id: dreamhost
X-Gusty-Imminent: 088f61e760f53c4d_1651870199940_3946215459
X-MC-Loop-Signature: 1651870199940:1452148033
X-MC-Ingress-Time: 1651870199940
Received: from pdx1-sub0-mail-a267.dreamhost.com (pop.dreamhost.com
 [64.90.62.162]) (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
 by 100.115.45.49 (trex/6.7.1); Fri, 06 May 2022 20:49:59 +0000
Received: from fedora (unknown [69.12.38.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 (Authenticated sender: ian@linux.cowan.aero)
 by pdx1-sub0-mail-a267.dreamhost.com (Postfix) with ESMTPSA id 4Kw2kY6smCz3V; 
 Fri,  6 May 2022 13:49:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.cowan.aero;
 s=dreamhost; t=1651870198;
 bh=C+3kDtZyTEFcDrjJVXV0xCqHGqid0l8Y5T5jgapYTQ4=;
 h=Date:From:To:Cc:Subject:Content-Type;
 b=aZ2JeXQk/iWcH5lnZ4lU6SoqriVdbAipjKJ1WCOI0+irhIU76G6/f+mn2UP2Tt1Gl
 RK4vJPKozshbE8CCvNzwAKEr0SXVky/gSC3Ssezw+ofrvx4J5Zil2Wrh3QHvrgdpbu
 BXhoyUN97urARPKUoNkN23aI77DTIvwI+gNwNuZ5djpEqCe0AEEfVAQfXM727zcIjc
 ekYtJbyYbcE4FOAs8hY0Jp9BT25wknzvAEtlsWCHVwaF7j8ZbGoQEYqktNtndmiXWa
 98LlAwSSWyFJ1nBnwW627X9Vt4Xdlf9NayVJqRPEXeDQtlqUzWMFv6n7LQinlhiPJ2
 opfS8r0C6I6BA==
Date: Fri, 6 May 2022 16:49:56 -0400
From: Ian Cowan <ian@linux.cowan.aero>
To: Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <YnWJ9M19t57yqRz/@fedora>
References: <20220425144110.133316-1-ian@linux.cowan.aero>
 <3270dd49-0d68-5b60-d766-940b39aa463e@xs4all.nl>
 <YnSyZEF8n7luVvHM@fedora> <20220506071455.GC4031@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220506071455.GC4031@kadam>
X-Spam-Score: 1.6 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, May 06, 2022 at 10:14:55AM +0300,
 Dan Carpenter wrote:
 > On Fri, May 06, 2022 at 01:30:12AM -0400, Ian Cowan wrote: > > On Thu,
 Apr 28, 2022 at 10:15:03AM +0200, Hans Verkuil wrote: > > > Hi I [...] 
 Content analysis details:   (1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [23.83.222.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
 [URIs: staticthinking.wordpress.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nn4tx-003Xgt-Mg
X-Mailman-Approved-At: Sat, 07 May 2022 04:01:16 +0000
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
 Hans Verkuil <hverkuil@xs4all.nl>, mjpeg-users@lists.sourceforge.net,
 Corentin Labbe <clabbe@baylibre.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

On Fri, May 06, 2022 at 10:14:55AM +0300, Dan Carpenter wrote:
> On Fri, May 06, 2022 at 01:30:12AM -0400, Ian Cowan wrote:
> > On Thu, Apr 28, 2022 at 10:15:03AM +0200, Hans Verkuil wrote:
> > > Hi Ian,
> > > 
> > > When I compiled this patch series with smatch I got these warnings:
> > > 
> > > zoran/videocodec.c:45 videocodec_attach() warn: variable dereferenced before check 'master' (see line 40)
> > > zoran/videocodec.c:115 videocodec_detach() warn: variable dereferenced before check 'codec' (see line 111)
> > > zoran/videocodec.c:168 videocodec_register() warn: variable dereferenced before check 'codec' (see line 166)
> > > zoran/videocodec.c:200 videocodec_unregister() warn: variable dereferenced before check 'codec' (see line 198)
> > > 
> > > And I also got this warning when checking the kerneldoc:
> > > 
> > > zoran/zoran.h:307: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
> > >
> > What did you use to see these issues? When I ran the checkpatch script
> > and compiled, I did not see any of this.
> > 
> 
> I have written a blog entry about checking kernel code with Smatch:
> 
> https://staticthinking.wordpress.com/2022/04/25/how-to-run-smatch-on-your-code/
> 
> regards,
> dan carpenter
> 

Fantastic, I'll give that a read.

Thanks!
Ian


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
