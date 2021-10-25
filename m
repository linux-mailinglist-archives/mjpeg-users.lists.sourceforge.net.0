Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA2543AAD5
	for <lists+mjpeg-users@lfdr.de>; Tue, 26 Oct 2021 05:48:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mfDRf-0001VI-Bw; Tue, 26 Oct 2021 03:48:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <clabbe@baylibre.com>) id 1mf4fb-0006kh-DB
 for mjpeg-users@lists.sourceforge.net; Mon, 25 Oct 2021 18:26:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9HKZ3WHs39Ll1KFWQ7mEVgrxMfllF9VNmXJhWSD6zbg=; b=RHGARZaODj2TTOsZ0AdNn3cq4u
 PUhKEZGUVawFgSk7wZldLvwODq8drKtp707dwCU/HJMkFoMiCkVT8ZTWQ0FuwE43wL+ofWeTiUBNb
 bmfpWjhx7QIp8EyZSoi9RUlzwmGA/MMc/knOctyWNyIZPT8n56T7PZNKCzJElAON4W2s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9HKZ3WHs39Ll1KFWQ7mEVgrxMfllF9VNmXJhWSD6zbg=; b=REq5aGCJCTuX36t6EJbiFec4p/
 tcXmQyObMiysUHMSKifE2IshY8vr7n89wme7N6Tt71JbpjwLcIgIbDelE4ZcFv4xBnOBYOb4CrTrW
 0512rMALfBgtkLWaA9hqHlKl03yq1RMBvSnRmaULoEdVpgaqH1OTrJcFAhAUPsQsZSBw=;
Received: from mail-wr1-f42.google.com ([209.85.221.42])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mf4fT-00FyLo-56
 for mjpeg-users@lists.sourceforge.net; Mon, 25 Oct 2021 18:26:03 +0000
Received: by mail-wr1-f42.google.com with SMTP id d13so11951878wrf.11
 for <mjpeg-users@lists.sourceforge.net>; Mon, 25 Oct 2021 11:25:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=9HKZ3WHs39Ll1KFWQ7mEVgrxMfllF9VNmXJhWSD6zbg=;
 b=eGWi6BKNAikOTbSn81Sa7AREWjMIxOWCW6giZfRNlMcPV+2EmLigPFn+O2Z62O0sYa
 iV0pfEifAhHfWukClZSiKZWUtW6KfA7KRV1ZDicdiR3B8Sti9c4fE1nIPwnUH2j2+yy7
 CgbPrMSi7sMfeIugSlIidXNRbM0IBSpjeIFgbji9Hlzij/fQbDLUW6hA78f7gB7wW0sh
 hdnUjbbgGjOghJEuveE8BUrJhuo37fkdHCNOCAypzkv6cD2ED+omeKUvRLDqTFZ9dh6M
 fECVzVUsc+MnoY5NLk4U5AI8Mgr9mJEWB5ALlZ9FiHJ7gBZ6yAXbyhgvuYQRMS/29qp6
 LSTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=9HKZ3WHs39Ll1KFWQ7mEVgrxMfllF9VNmXJhWSD6zbg=;
 b=t0jLm4JSiHkvq3V7SdoKmr3U0Ya1DRkb3pQymull+qVAmqY25T2rZmYSkpDFx5kQ94
 J535dMexcqFTKeNzt0xAgMVkHSFGevwryPWpN4ZvsXL3iY2CoTd/NtXG5e4LZ2lutyBF
 C4rcwWHCMxDQFKtm21I3VyHIiNzZEOqmDJ1+8T2u8gGWkz5fT19PK1KdLPNm850ylL6X
 q1E/SmNonADOD2+c4uolFldYNOWjNGVZ/D4daJIJe1E+khpy63gJqqN35xYv085EO+n+
 +XfbajBG86oAtHlRqh4Vff7nWMSMiw3cppNQ1dGjdtHAa824UtUJnHoF+84qg2kiMEmU
 Z9cA==
X-Gm-Message-State: AOAM5306t/c5tLHItXuLPT9WPTRQCHuMsS5VzdLrqWso+M6H7h8vut7v
 I70Ru5glZx1yoQjaKbX+sHJDsQ==
X-Google-Smtp-Source: ABdhPJwsdj/Ufj88FsRkYCdm3EHNUiDfxilc2w021XdzcMTc2/IYksh4yPlv764YLumxYKv43oMz1A==
X-Received: by 2002:adf:f9d2:: with SMTP id w18mr12644602wrr.86.1635186348799; 
 Mon, 25 Oct 2021 11:25:48 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id l1sm7730050wrb.73.2021.10.25.11.25.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Oct 2021 11:25:48 -0700 (PDT)
Date: Mon, 25 Oct 2021 20:25:46 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <YXb2quNLuUTKtjux@Red>
References: <20211013185812.590931-1-clabbe@baylibre.com>
 <da925d73-fdf0-3962-3841-a1dd53b5c5dd@xs4all.nl>
 <YXa9WGs7ewyaHmI9@Red>
 <71b72175-538e-87e4-d662-e59fd4131a43@xs4all.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <71b72175-538e-87e4-d662-e59fd4131a43@xs4all.nl>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Le Mon, Oct 25, 2021 at 05:13:04PM +0200, Hans Verkuil a écrit
    : > On 25/10/2021 16:21, LABBE Corentin wrote: > > Le Mon, Oct 25, 2021 at
    02:45:02PM +0200, Hans Verkuil a écrit : > >> Hi Corentin, > > [...] 
 
 Content analysis details:   (-0.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.221.42 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.221.42 listed in wl.mailspike.net]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1mf4fT-00FyLo-56
X-Mailman-Approved-At: Tue, 26 Oct 2021 03:48:13 +0000
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

Le Mon, Oct 25, 2021 at 05:13:04PM +0200, Hans Verkuil a =E9crit :
> On 25/10/2021 16:21, LABBE Corentin wrote:
> > Le Mon, Oct 25, 2021 at 02:45:02PM +0200, Hans Verkuil a =E9crit :
> >> Hi Corentin,
> >>
> >> On 13/10/2021 20:58, Corentin Labbe wrote:
> >>> Hello
> >>>
> >>> The main change of this serie is to fusion all zoran related modules =
in
> >>> one.
> >>> This fixes the load order problem when everything is built-in.
> >>>
> >>> Regards
> >>>
> >>> Changes since v1:
> >>> - add missing debugfs cleaning
> >>> - clean some remaining module_get/put functions which made impossible=
 to
> >>>   remove the zoran module
> >>> - added the two latest patchs
> >>
> >> Something weird is wrong with this series. I have a DC30, but loading =
this with:
> >>
> >> modprobe zr36067 card=3D3
> >>
> >> results in this error message in the kernel log:
> >>
> >> [   58.645557] zr36067: module is from the staging directory, the qual=
ity is unknown, you have been warned.
> >> [   58.646658] zr36067 0000:03:00.0: Zoran MJPEG board driver version =
0.10.1
> >> [   58.646793] zr36067 0000:03:00.0: Zoran ZR36057 (rev 1), irq: 18, m=
emory: 0xf4000000
> >> [   58.648821] zr36067 0000:03:00.0: Initializing i2c bus...
> >> [   58.662420] vpx3220 22-0047: vpx3216b found @ 0x8e (DC30[0])
> >> [   58.737445] zr36067 0000:03:00.0: Fail to get encoder
> >>
> >> This works before, so why this is now failing is not clear to me.
> >>
> >> It does work with 'card=3D0', but I really have a DC30.
> >>
> >> If I test with 'card=3D0' then the rmmod issue is now solved.
> > =

> > Everything normal, since card 0 does not have encoder.
> > Could you check that adv7175 is compiled ?
> =

> Yes, and it loaded as well (I see it with lsmod).
> =

> However, there is no adv7175 on my board, instead it appears to have an I=
TT MSE3000.
> There is no driver for this one (and I don't even think it is an i2c devi=
ce), so
> I suspect that before the driver just continued without encoder support, =
whereas now
> it fails when it can't load the encoder.
> =

> Could that be the reason? In the absence of an encoder, I think it should=
 just
> continue, esp. since the driver doesn't use the encoder anyway.
> =


So probably the card list is wrong against DC30.
I checked high resolution photo of DC30 on internet, and it confirms the fa=
ct that DC30 does not have adv7175.

Since DC30 and DC30+ are identical in the card list, perhaps it is a very o=
ld copy/paste error.

So I will add a patch removing adv7175 from DC30.

Thanks for the report
Regards


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
