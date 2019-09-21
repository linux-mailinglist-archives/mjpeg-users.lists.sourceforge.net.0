Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D8119BA06C
	for <lists+mjpeg-users@lfdr.de>; Sun, 22 Sep 2019 05:53:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1iBswd-0005mH-8L; Sun, 22 Sep 2019 03:53:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mchehab@kernel.org>) id 1iBjIv-0000Rz-Jh
 for mjpeg-users@lists.sourceforge.net; Sat, 21 Sep 2019 17:36:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=npyIJ4oToPFwwAoSLl7eEajl0gPXRwoTouB58DzCRGQ=; b=lhb7kcRVXWsB/GkmVy7E6UFPfh
 zmB5T9I5/ZVD4DezwAmBMlQo3q9fQ2DSprWvZHl5iDlv/AIGYAJOHLeU0aOHIT6P5KbK1vNxP0cTD
 rIqT2u0vwQvQqTA9lGt75Oi6iWv/DLm0KLgkOmdl5VRIN8XKT3IqqaENZpTTVhOfEwas=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=npyIJ4oToPFwwAoSLl7eEajl0gPXRwoTouB58DzCRGQ=; b=MaNEfuHwsG8gPXttG1U8R2K3Ig
 x859ssrXXNns1G/+cIxGChGdIjVLDzS/n1SbqWFjIYmvegAEez6Ug1LlOwm072gfdO6YjwLgEg6RT
 SHGSEb5CY4V8zZiYPD8rUTGObi+P9IcspbKeXkbwZ3bDIAOCzYMIFExZz9mUJmgf60mU=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iBjIo-001soR-Sx
 for mjpeg-users@lists.sourceforge.net; Sat, 21 Sep 2019 17:36:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=npyIJ4oToPFwwAoSLl7eEajl0gPXRwoTouB58DzCRGQ=; b=hNI/MfVNYzfEi84RDy1At19Zo
 V+5ZYbYYZwtcSf64eVEDRE+ju7B0ruNN/SG6AUjDrP1dPeE/SRmQUMhK1OPP926DbYT6l9kWQUjwu
 OMMSSm9HRcOPus3tg4Vd3QUdDT+KORmpqwV9tb3N0jsItX2kK0NDyoYnqz1cu5X0UcBOHQRlE5eYd
 gVSXIcNt94elgV4VOhqpfoPmr1B/BthcB9PoL+N9f1oVs2KhBS90iwwrB8qmXG1W9QOX1blB9rykT
 +rwxguDr+ellBQf5SgQNwLQ0A7CxE43IJYzl6ycCvdmtF2G5fu2eyXkt64zzT4R2rC094Suf+16CI
 VUhvuOL2Q==;
Received: from 177.206.132.221.dynamic.adsl.gvt.net.br ([177.206.132.221]
 helo=coco.lan)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBj19-0008MP-4N; Sat, 21 Sep 2019 17:17:55 +0000
Date: Sat, 21 Sep 2019 14:17:49 -0300
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Message-ID: <20190921141749.03ebb25f@coco.lan>
In-Reply-To: <20190921170357.GA26626@Red>
References: <20190921170357.GA26626@Red>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iBjIo-001soR-Sx
X-Mailman-Approved-At: Sun, 22 Sep 2019 03:53:54 +0000
Subject: Re: [Mjpeg-users] bringing back media/zoran driver
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
Cc: hverkuil-cisco@xs4all.nl, linux-kernel@vger.kernel.org,
 mjpeg-users@lists.sourceforge.net, laurent.pinchart@ideasonboard.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

Em Sat, 21 Sep 2019 19:03:57 +0200
Corentin Labbe <clabbe.montjoie@gmail.com> escreveu:

> hello
> 
> I am the owner of a zoran based DC10+ card.
> I am in the need of using it since yesterday and I found that its driver was removed.
> 
> Reverting the removing patch made to a temporary working situation.
> 
> If I understand correctly, it was removed due to lack of vb2 convertion.
> If I am able to do this vb2 conversion, does bring it back in mainline will be posssible ?

Yes.

> In that case I am ready to assume to be the maintainer if needed.

Yeah, if we're willing to re-add it, the best is if you can also
maintain it.

Thanks,
Mauro


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
