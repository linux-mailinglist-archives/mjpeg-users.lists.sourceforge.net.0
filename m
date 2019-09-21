Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D9DF0BA06D
	for <lists+mjpeg-users@lfdr.de>; Sun, 22 Sep 2019 05:53:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1iBswd-0005mT-Fh; Sun, 22 Sep 2019 03:53:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <laurent.pinchart@ideasonboard.com>)
 id 1iBjTr-0000y9-LD
 for mjpeg-users@lists.sourceforge.net; Sat, 21 Sep 2019 17:47:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=w82ZiAa+THITcs5zNBlhCoDaCNmtS3+z6QpR+ow+JGc=; b=CjjrE9vnRZ0s3F5wh8pfe7BPlv
 jO1IqtY3uNpOIl0f9b7hYO2/NxtiUZZykjpUOqGNA87aqXKSztDUINEILSjYLRLsft1LsnWbmNE6s
 RTVOzIF9owtza928d1FFHxop1YjL4E8e0Fw/FGCvGuepiFXfhuvTTilfgSaTjVuDTmxw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=w82ZiAa+THITcs5zNBlhCoDaCNmtS3+z6QpR+ow+JGc=; b=U+8tzp5onQQL7226Qn/qAnWfvz
 e06EQWNyO7fX/HoTDiwR5L//nyf1gjhB+6k0Yp8dzxX2KMGE1sJbM9ZMvb3a/OFelqrQIvrckSmil
 1eQhYwj1asXBafbj8cUoH9CcIoV8fzFgEwxROEqFe/IoNBnKkG19YzHvZuwfxGB3oVKo=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iBjTo-001tsu-46
 for mjpeg-users@lists.sourceforge.net; Sat, 21 Sep 2019 17:47:35 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id F29FA2F9;
 Sat, 21 Sep 2019 19:29:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1569086977;
 bh=SgEChjR2VE+5NS+vNfhpCsTunWBHxkGh+QLmx6RsuyI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gxKOOGt4OyRcpyeItwkr345bXvRwAXIom4E8I+GhUwVok32pfnpO8oTAdttPDWMdu
 9aVxV4XiQ8sAfXLIqZrMBERFXvNYh1dUjuWKXGlVltcVnSYWKCVxeWCCED7G4gCrng
 mJN+njZIgMn4dyvAlyTnBPOXPucopGDwIvyx8n04=
Date: Sat, 21 Sep 2019 20:29:27 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Message-ID: <20190921172927.GA9189@pendragon.ideasonboard.com>
References: <20190921170357.GA26626@Red>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190921170357.GA26626@Red>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iBjTo-001tsu-46
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
Cc: mchehab@kernel.org, mjpeg-users@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

Hi Corentin,

On Sat, Sep 21, 2019 at 07:03:57PM +0200, Corentin Labbe wrote:
> hello
> 
> I am the owner of a zoran based DC10+ card.
> I am in the need of using it since yesterday and I found that its driver was removed.
> 
> Reverting the removing patch made to a temporary working situation.

Sorry the the unpleasant surprise caused by the driver removal.

> If I understand correctly, it was removed due to lack of vb2 convertion.
> If I am able to do this vb2 conversion, does bring it back in mainline will be posssible ?
> In that case I am ready to assume to be the maintainer if needed.

That would be great ! I used to own a DC10 a long time ago, and the
zoran driver was the first one I tried to hack when I moved to Linux.
I'd love to see it getting maintained. Please let us know if you need
any help getting started.

-- 
Regards,

Laurent Pinchart


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
