Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0001A401DEC
	for <lists+mjpeg-users@lfdr.de>; Mon,  6 Sep 2021 18:00:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mNH31-0007ia-2r; Mon, 06 Sep 2021 16:00:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <clabbe@baylibre.com>) id 1mNG3Q-0008UR-Rd
 for mjpeg-users@lists.sourceforge.net; Mon, 06 Sep 2021 14:57:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CtHiP+D7k5znLaPfpOQWBuuhn0SZQDsGXEHIILBBc1E=; b=BOgclcxOOwgREkp0OQKn28YjJb
 KH4bk5LW7U04YpVlkheQ7sA1bLw7oPK1W5xbvEwMsM3EmuMSHcXx4al4dmCchu4lGkti0Ilz1+XBJ
 zyEf1LnejSVACe1JHVM7iGsUd73k2hztlfpvEIIJZiU4kugUI3XmJMfz9IzdJL5R3z5M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CtHiP+D7k5znLaPfpOQWBuuhn0SZQDsGXEHIILBBc1E=; b=k6jUr9LTN9AOIFNhWDTb+SGTTR
 idBErqurreSz0J7KAf1rrCuLk01FrEJhYwOHFLF7MWsXIA2+dIpgbAx8xfPkeOS8IEbSzADsyUui0
 5BtDdWQddj1OEZrt5G1J6jX5run7shLjIBAnqpeLDnu+M8noqlCx37DgmYrCkJKQw2yU=;
Received: from mail-wm1-f51.google.com ([209.85.128.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mNG3M-0001hW-SH
 for mjpeg-users@lists.sourceforge.net; Mon, 06 Sep 2021 14:57:00 +0000
Received: by mail-wm1-f51.google.com with SMTP id i3so4799713wmq.3
 for <mjpeg-users@lists.sourceforge.net>; Mon, 06 Sep 2021 07:56:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=CtHiP+D7k5znLaPfpOQWBuuhn0SZQDsGXEHIILBBc1E=;
 b=WCfNNygVYAjJNE3QPiwsT3pzkIfLqzGlZq7FFjAb99YiilaQBopfe1sVzhYZzwsHKb
 P/1WE1p1AipRlP3kD+WRUNrrTwNA4wj2ONI8OQpwrLf/1ZGQyEjWZGiaeyBRDsjOdWy9
 bI/xps0XWhbOXF3PB0ZfALeqob/0rqm68nOHITE74KPteoi3awxHyfAbR5Ty/rvfTJRe
 2CSD2uEtVlokfkGKiPlWJmoDpzpRdJ3/6fd8DujAPhM34Vsljv2EoHDBTydX8ozILMFp
 EBwAfWl0gqnVgUpMkgXFekVYRf1VCwn58KNOyw5Ig2J9OywZZLbgomROXpS9D7eARKla
 b4yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=CtHiP+D7k5znLaPfpOQWBuuhn0SZQDsGXEHIILBBc1E=;
 b=YYpWKJLXLUZzEHOze+AkbLW68wuuAPB1Cej4nrSxfBMz+RB01JxKA+EULqm90toaIg
 F0ohY7laECWGhfrcQa4i+C7xKV9KHCNu5dkBRoVRQc/B4K8hLTMACedTvm6LbqBR6vOt
 mMrh4AdZRVQLRcyoYuf1YwrRnMJ27SqyUX7boQ+vDXrcNUk7q1mUVBQRQI0csxV+snXW
 XfTV76n1EeNp8nux1Wbv7qFWkqoZVaoL+uKKXYRzBmHy/7ZQhYwM/KJY7hDOn0KYOgXA
 yUwlbawR57eFnk0VVmLVX9MoOHKEH/FntewGtN0uIkcTOhtzP9DRA1mjq/yEZ4SS/+Dp
 VcpQ==
X-Gm-Message-State: AOAM533TjxviwGWSK0Kcb+BXRMFY9JBbEAUlkf6Jlux6yvEhj+WwmT/q
 jyZ8SqYO3Xri9aW1YldZdlgH9g==
X-Google-Smtp-Source: ABdhPJy/Skl3RAKF+wBcqUVU5L4hNy7a3LuFeFL2VfNZsmXXpG71TAEvQwFvX+0uZiQrutD1qWuhmA==
X-Received: by 2002:a7b:cc85:: with SMTP id p5mr11811897wma.42.1630940210493; 
 Mon, 06 Sep 2021 07:56:50 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id g1sm251095wmk.2.2021.09.06.07.56.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Sep 2021 07:56:50 -0700 (PDT)
Date: Mon, 6 Sep 2021 16:56:47 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <YTYsL5i0B48k/V0Z@Red>
References: <20210903191540.3052775-1-clabbe@baylibre.com>
 <efe035cc-1839-210f-c0d4-4d58801aa65c@xs4all.nl>
 <YTYcf3We4dcvBx1h@Red>
 <940d5bdf-89b8-b5a4-f485-aa5b1c51286b@xs4all.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <940d5bdf-89b8-b5a4-f485-aa5b1c51286b@xs4all.nl>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.51 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.51 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1mNG3M-0001hW-SH
X-Mailman-Approved-At: Mon, 06 Sep 2021 16:00:36 +0000
Subject: Re: [Mjpeg-users] [PATCH 0/8] staging: media: zoran: fusion in one
 module
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

Le Mon, Sep 06, 2021 at 04:11:16PM +0200, Hans Verkuil a =E9crit :
> On 06/09/2021 15:49, LABBE Corentin wrote:
> > Le Mon, Sep 06, 2021 at 01:03:56PM +0200, Hans Verkuil a =E9crit :
> >> Hi Corentin,
> >>
> >> I finally had the opportunity to test the staging zoran driver.
> >>
> >> I found several issues when running v4l2-compliance -s (I posted a pat=
ch
> >> for that), but more seriously is the fact that trying to capture MJPG
> >> at resolutions 384x288 or less just hangs my PC. It works OK with 768x=
576.
> >>
> >> I discovered this when running 'v4l2-compliance -s -a -f'.
> >>
> >> BTW, why isn't the initial format equal to MJPG 768x576?
> >> I would expect that for these boards that should be the default format.
> >>
> >> Another issue is that the TODO should mention that for video output th=
ere
> >> should be a second video device node. And that's really something that
> >> has to be done before the zoran driver can be moved out of staging.
> >>
> >> It shouldn't be that hard to implement, I think.
> >>
> >> Right now it is impossible to run the compliance test for the output, =
since
> >> it doesn't even see it as an output.
> >>
> >> Regards,
> >>
> >> 	Hans
> > =

> > I work on having a second device for output, (it is the reason of "stag=
ing: media: zoran: move videodev alloc" which will help).
> > =

> > But I still have the problem of non working output.
> > =

> > Does output is really needed for going out of staging ?
> > Probably nobody have it working for ages. The only way to had it was to=
 use an old mplayer output which is broken since so many time.
> > Note that this plugin will never work again.
> > =

> > The only way to work on output is to use ffmpeg which just recently hav=
e suport for writing non-raw video to V4L.
> =

> Then just remove it. The code for output remains in the git history so if=
 someone wants to
> resurrect that, then that's always possible.
> =

> The point is that I don't want to have half-baked output support in mainl=
ine.
> =

> But what exactly is the problem with getting output to work? Doesn't it j=
ust decode
> MJPEG frames? (Sorry if you explained it before, it's so long ago that I =
looked at this
> that I forgot the details)
> =


The first problem is that zoran dont like comment COM/APP0 markers.
This imply a per buffer filtering but this is already handled in my next br=
anch.

But the remaining problem is that any output is like http://kernel.montjoie=
.ovh/zoran_out.png.

I hacked the driver to grab a working buffer when doing input and overrun o=
utput buffer later.
And the result is a working static output.
So the hw handling is good and the problem came from the data feeding/handl=
ing.

I believe that something is wrong in what ffmpeg negociate/send.

Regards


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
