Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 87CFE439B73
	for <lists+mjpeg-users@lfdr.de>; Mon, 25 Oct 2021 18:23:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mf2lP-0006Wb-R2; Mon, 25 Oct 2021 16:23:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <clabbe@baylibre.com>) id 1mf0qr-00011I-Gx
 for mjpeg-users@lists.sourceforge.net; Mon, 25 Oct 2021 14:21:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=M2t/ljyMrSuXJkPKEqRg6rIEcIkhDvv9y02qHL6/vSA=; b=KHp1N7gfozkMHmGW/UKdLblcRd
 Jkjjv6PgTiPiHOmv+SqpdxkXJNezDjZGPzEWUvxGtzfvsdXxiRJyRjVgfZdVyem6Ls2ZVQSk4NTBb
 sUqqrexP2csmIyPzgw0If1rgGXAMgGkf54Hrb4EaahSPE7ydqz41WdccYq+pNe3GCzdU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=M2t/ljyMrSuXJkPKEqRg6rIEcIkhDvv9y02qHL6/vSA=; b=AXeSNQIh85f9ZZIVTqAD26dhm/
 Tbeo6571c6q0Sg67TSCdhnc4a+cN4Xb6YGhz3+ra81kcGIiNeql/jOyLLhbXieD2xVq9QVB1HqwIo
 2Yjao1thfdHV63fxn8uKX07eZBwIk8W/fIPBvLO+EMwxBCUGUHo/mlBBuD25P9buSZ2o=;
Received: from mail-wm1-f45.google.com ([209.85.128.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mf0qn-00FlJe-AF
 for mjpeg-users@lists.sourceforge.net; Mon, 25 Oct 2021 14:21:25 +0000
Received: by mail-wm1-f45.google.com with SMTP id
 71-20020a1c014a000000b0032cafd23b1dso133620wmb.4
 for <mjpeg-users@lists.sourceforge.net>; Mon, 25 Oct 2021 07:21:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=M2t/ljyMrSuXJkPKEqRg6rIEcIkhDvv9y02qHL6/vSA=;
 b=HnJfizDONe/3Ah4LArAtk4rNpri4e/nd+R022uQwk6uOK/euQFILctLpRi0WoJC+Rv
 akNDcgmWu3b0WFc814xw9EFbPyGunTCw34CqooWBboOE2KGXGPEkaPE3dgHFnBQ37h9K
 CsB0DyUz4zdOv96Ah7h7TdpDr0RlVkMhLsXgPFVjeVsGIxEZ6qi8TcIDyp9lAIGdkoxQ
 ZpX9LrM5qHGPjLVL+U5nssVoJ24QfpGMJvvwp6UTAdyJwdAk/+cJ6hCLb9OR4SuoBIn4
 uBCjWggLsLNpLi/5rpTRH+vNBuE+Pl5d9gdVEo/RzOaxcjJLb8c80XcUofkTIQ6kjwwV
 BuLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=M2t/ljyMrSuXJkPKEqRg6rIEcIkhDvv9y02qHL6/vSA=;
 b=upvV9ROPh0lMQiQN07rX5LTtgWGCHk+kat/Sem77T3ywA4bJaER4p9Oux98NKp1qHF
 lbJvKlXoI6dMWreDRWe9m1Yt4mn1/z2pXT9OJsteahOIWm+dRKTL+WnrZ+QSic9URtNJ
 WGKRxJLQag2F7AW/kKZe3DosGrp2TxzE7g7j+HEDbfFRasqRZAVbrKoqS1NVkSOa2Abn
 DanNC45E2uW2qlHLNjPAcqdxj/hSAg80QRdbCfogAAnAL1loix3AcBCFBSCNTU9wFpa3
 OShHl8vbkq1+y0uAHhbAWxs/2K3bagkBWJr4nmroesWPgW9mOncRbmz1WCcY+rGUdwQF
 WS3Q==
X-Gm-Message-State: AOAM5330+++0xDygpAN3/xKAqGBsImqWP+fAcbsl2Wpx0aoNnMTMBS/2
 J42MlAZTrkrTAP1sTQsQJYME/Q==
X-Google-Smtp-Source: ABdhPJxZdvPCuvpV6tREqY0nQE+UB8Cnxc1p8PDS1uJcZgD/pQ7VS7MzXqg1nnKjYeohcPySiJe9iw==
X-Received: by 2002:a1c:4d08:: with SMTP id o8mr17787192wmh.35.1635171674960; 
 Mon, 25 Oct 2021 07:21:14 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id u2sm15907155wrr.35.2021.10.25.07.21.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Oct 2021 07:21:14 -0700 (PDT)
Date: Mon, 25 Oct 2021 16:21:12 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <YXa9WGs7ewyaHmI9@Red>
References: <20211013185812.590931-1-clabbe@baylibre.com>
 <da925d73-fdf0-3962-3841-a1dd53b5c5dd@xs4all.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <da925d73-fdf0-3962-3841-a1dd53b5c5dd@xs4all.nl>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Le Mon, Oct 25, 2021 at 02:45:02PM +0200, Hans Verkuil a écrit
    : > Hi Corentin, > > On 13/10/2021 20:58, Corentin Labbe wrote: > > Hello
    > > > > The main change of this serie is to fusion all zoran re [...] 
 
 Content analysis details:   (-0.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.128.45 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.128.45 listed in wl.mailspike.net]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1mf0qn-00FlJe-AF
X-Mailman-Approved-At: Mon, 25 Oct 2021 16:23:54 +0000
Subject: Re: [Mjpeg-users] [PATCH v2 00/10] staging: media: zoran: fusion in
 one module
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
 linux-kernel@vger.kernel.org, mjpeg-users@lists.sourceforge.net,
 mchehab@kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

Le Mon, Oct 25, 2021 at 02:45:02PM +0200, Hans Verkuil a =E9crit :
> Hi Corentin,
> =

> On 13/10/2021 20:58, Corentin Labbe wrote:
> > Hello
> > =

> > The main change of this serie is to fusion all zoran related modules in
> > one.
> > This fixes the load order problem when everything is built-in.
> > =

> > Regards
> > =

> > Changes since v1:
> > - add missing debugfs cleaning
> > - clean some remaining module_get/put functions which made impossible to
> >   remove the zoran module
> > - added the two latest patchs
> =

> Something weird is wrong with this series. I have a DC30, but loading thi=
s with:
> =

> modprobe zr36067 card=3D3
> =

> results in this error message in the kernel log:
> =

> [   58.645557] zr36067: module is from the staging directory, the quality=
 is unknown, you have been warned.
> [   58.646658] zr36067 0000:03:00.0: Zoran MJPEG board driver version 0.1=
0.1
> [   58.646793] zr36067 0000:03:00.0: Zoran ZR36057 (rev 1), irq: 18, memo=
ry: 0xf4000000
> [   58.648821] zr36067 0000:03:00.0: Initializing i2c bus...
> [   58.662420] vpx3220 22-0047: vpx3216b found @ 0x8e (DC30[0])
> [   58.737445] zr36067 0000:03:00.0: Fail to get encoder
> =

> This works before, so why this is now failing is not clear to me.
> =

> It does work with 'card=3D0', but I really have a DC30.
> =

> If I test with 'card=3D0' then the rmmod issue is now solved.

Everything normal, since card 0 does not have encoder.
Could you check that adv7175 is compiled ?

I got the same problem with my DC10+ where saa7110 was not compiled.
This issue was reproduced randomly and I have no explanation. (kconfig prob=
lem ?)

Regards


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
