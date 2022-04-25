Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AA24650E541
	for <lists+mjpeg-users@lfdr.de>; Mon, 25 Apr 2022 18:11:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1nj1JO-0007Aj-3T; Mon, 25 Apr 2022 16:11:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ian@linux.cowan.aero>) id 1ninaV-0008Ce-8x
 for mjpeg-users@lists.sourceforge.net; Mon, 25 Apr 2022 01:32:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LczG6KC7ec7iQVuOVzkOxhwlnbxNGZx3FsulHyLm/sA=; b=VWhDfnuGBIERxBlo8Nz88W524u
 ce/kHFTAttVjKLcKJrtTuashEmEFkbsk9roHg/M83HG81iEQokw+u28hiXRin134qFRCaKtZtEci4
 LOX/9g0dsvGG54UqrSjdnqSMQSV4B/5nTmeHiJT2xeKnHPkVztreDblTSXE8IW5X5iW0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LczG6KC7ec7iQVuOVzkOxhwlnbxNGZx3FsulHyLm/sA=; b=hWeWoN0sQET9ep26sM8DuLiomz
 A0GQ8QbK77fcJv2C4d15ce8k8gsz/4mZnICB8PxMnalQClHHu8Sou3vuaPpB7Nl9OYiTGjwjupKeg
 UzkwLHTEwshcUlatKLXOVqfQKAg707mO7pO2KBhMzS0efC8X6nLIXwakLeFU/MTRp4SQ=;
Received: from bee.birch.relay.mailchannels.net ([23.83.209.14])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1ninaI-009GLV-4L
 for mjpeg-users@lists.sourceforge.net; Mon, 25 Apr 2022 01:32:26 +0000
Received: from relay.mailchannels.net (localhost [127.0.0.1])
 by relay.mailchannels.net (Postfix) with ESMTP id B8F762C0E13;
 Mon, 25 Apr 2022 01:22:32 +0000 (UTC)
Received: from pdx1-sub0-mail-a217.dreamhost.com (unknown [127.0.0.6])
 (Authenticated sender: dreamhost)
 by relay.mailchannels.net (Postfix) with ESMTPA id 344262C0DB8;
 Mon, 25 Apr 2022 01:22:32 +0000 (UTC)
ARC-Seal: i=1; s=arc-2022; d=mailchannels.net; t=1650849752; a=rsa-sha256;
 cv=none;
 b=66VIcvY+0RiHPxMYqUPuFXa07j1M2Ymdz52vTzn9op46zZuKAA3ksawjcScfJcpz12lO+M
 X7DtZPaUawSIzSzkFrpnPtxCH8zXuFRv1C9mbcREsbFqOhjhpNB8KhtWEDKK2YAMWA7B3l
 +4T/Fi9to7vM+lATIKKGUk2ZnQd3cANARF27SaOjEaYTIXZ8nJnLl2n3JcckmSYhmD/O5o
 7a6V5kKoZq4JwImKRNcK5NZSrpci8wrQTNTKSuUfDYrpk4kWYx3U06Xzk2cgJGf2qfNVgF
 Dv4El4/+KHI0RGNZEGP4UZ34LCqgJ9DhHIaCrVbtj4bnqYjUy5jOuk3xnYItYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net; s=arc-2022; t=1650849752;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=LczG6KC7ec7iQVuOVzkOxhwlnbxNGZx3FsulHyLm/sA=;
 b=SB3B2V/xKf09r4Mdtzi3kMhd2YFwn7RVz2zsaI5Iza+gzQo+MNj+JnofPDF39Px0XeNfFS
 RNfI5pS+9rnC18FuCIMgm/9J53tpRxhHRJEH8+0vvm3XHHnJKUShDkL5vg2KRmSThJrXho
 qrCoIU2jylSzgX2aPUlH5M/qeEXVUbeVMwuer8DkyCaFMnSU1ZL+XU8l3oBCd3KwPgpwvx
 uYHbQjaQ7X3+AdsgaqMk7PAcDBwzz/3GqJAfxkPUqQZQIjOkbOhwDOt21n0YcpSR55psxf
 Y8k/n/OJgfR0qXrWVarLa4J6So6ZDJgSukOg4oY0c63efmeieKlEtLXSruMi2Q==
ARC-Authentication-Results: i=1; rspamd-67b64f579b-chnfp;
 auth=pass smtp.auth=dreamhost smtp.mailfrom=ian@linux.cowan.aero
X-MC-Relay: Neutral
X-MailChannels-SenderId: dreamhost|x-authsender|ian@linux.cowan.aero
X-MailChannels-Auth-Id: dreamhost
X-Wipe-Fumbling: 04752f086372584b_1650849752501_514037675
X-MC-Loop-Signature: 1650849752501:3939715479
X-MC-Ingress-Time: 1650849752501
Received: from pdx1-sub0-mail-a217.dreamhost.com (pop.dreamhost.com
 [64.90.62.162]) (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
 by 100.121.210.129 (trex/6.7.1); Mon, 25 Apr 2022 01:22:32 +0000
Received: from fedora (unknown [69.12.38.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 (Authenticated sender: ian@linux.cowan.aero)
 by pdx1-sub0-mail-a217.dreamhost.com (Postfix) with ESMTPSA id 4KmnLb2XS9znZ; 
 Sun, 24 Apr 2022 18:22:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.cowan.aero;
 s=dreamhost; t=1650849752;
 bh=LczG6KC7ec7iQVuOVzkOxhwlnbxNGZx3FsulHyLm/sA=;
 h=Date:From:To:Cc:Subject:Content-Type;
 b=QxshtbqO9wbrPryZeG6n4plGKWrTfzYDABTQzZr71KQU424czDdw3Fb1+ee8LmopH
 sa8p95zvUWrvMCktPAZP5Rc2eVfyy9GtqokKT7mHlkzRJVWSC4juCpLgMR6CgWFe2y
 NK5Ul9JDVGuTfzCCqJwoJkZh+3uEBA73rAVxP4YaUESeptygDLMhbX6FE7y8lNWM0c
 JXMDSkZT+LO/fkLmJUsVHIcs5fKDNd8B2/7VKU8rbwOEsIgIuay+MrtHxgnhyWoxbg
 BYehjj0QVdRBGRlWor/eD6YjGK/KKv5Fv5MZHs5d9FRx61vYvV0eGFRZzOO5q1Bacb
 bFyd3ytxLMYSQ==
Date: Sun, 24 Apr 2022 21:22:30 -0400
From: Ian Cowan <ian@linux.cowan.aero>
To: LABBE Corentin <clabbe@baylibre.com>
Message-ID: <YmX31vg+lCx6rsKF@fedora>
References: <20220423051745.292683-1-ian@linux.cowan.aero>
 <YmWiQsrPj0uIpZ7w@Red>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YmWiQsrPj0uIpZ7w@Red>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Apr 24, 2022 at 09:17:22PM +0200,
 LABBE Corentin wrote:
 > Hello > > Thanks for your patchs, removing dprintk is a good idea. > Please
 use pci_xxx() instead of dev_xxx() to be consistent with t [...] 
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
X-Headers-End: 1ninaI-009GLV-4L
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
Cc: gregkh@linuxfoundation.org, linux-staging@lists.linux.dev,
 mjpeg-users@lists.sourceforge.net, mchehab@kernel.org,
 dan.carpenter@oracle.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

On Sun, Apr 24, 2022 at 09:17:22PM +0200, LABBE Corentin wrote:
> Hello
> 
> Thanks for your patchs, removing dprintk is a good idea.
> Please use pci_xxx() instead of dev_xxx() to be consistent with the rest of the driver.
> The comment title is misleading, zrdev_err is not about debugging. What about Logging macros ?
> 
> Regards
> 

I have made those modifications, and I will resubmit patches 1 and 2
shortly. Those are the only patches that affected by this change; 3 and
4 will not change.

Thanks,
Ian


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
