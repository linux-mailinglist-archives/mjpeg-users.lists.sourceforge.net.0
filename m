Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BD114447CD
	for <lists+mjpeg-users@lfdr.de>; Wed,  3 Nov 2021 18:55:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1miKU6-0004J1-Au; Wed, 03 Nov 2021 17:55:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <clabbe@baylibre.com>) id 1mi1Lf-0003bg-6j
 for mjpeg-users@lists.sourceforge.net; Tue, 02 Nov 2021 21:29:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qML9KgHR0khgdZTW1uosHaPAKnNgvxttSEAuQMX0GEQ=; b=klvlDecf+WdWPxYJtv6udie91M
 MvXvCZ3+zR43ArzDuz4HbJSmuWuGJdkQIunywIBZcXe921eDY5CaUy4WdwlrxVOEJqJ/Qkm+eFFYH
 ekri0VLQqbvzLQxwT2wnrZkAEwxgFE26tkOI2q19sDtMPknEZVpmBXHYgcE1PxJTDRJM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qML9KgHR0khgdZTW1uosHaPAKnNgvxttSEAuQMX0GEQ=; b=iH20VCotu44dBMzHdJZCMN1pOz
 ihn29oAkGTI1Hx7Pd4WP2ohIPo7vzI+ib6rwPN8oy1VNkWp4I6AgveA7T9C3dt0OHcswtV11MWqRs
 PJnD1W0io3CHYbgXi0+GQklNsMUxjJOI8CA28IyJwrcnxCRswDmok30f0ZZo8exIa+bs=;
Received: from mail-wr1-f44.google.com ([209.85.221.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mi1LW-0004jA-Gc
 for mjpeg-users@lists.sourceforge.net; Tue, 02 Nov 2021 21:29:37 +0000
Received: by mail-wr1-f44.google.com with SMTP id b12so561550wrh.4
 for <mjpeg-users@lists.sourceforge.net>; Tue, 02 Nov 2021 14:29:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=qML9KgHR0khgdZTW1uosHaPAKnNgvxttSEAuQMX0GEQ=;
 b=vvVatfd1BQrLsFszhbRYkm03+gKZsCb+X9t5O7w8wkTWJ1SOloE5mONfoWyytrAADh
 h87rtq2oiZ/ohJbtE+aH6wuAirzuHvaHxoriSWzcya5IUTGDGTXFRVb+N50PXr+GY1s3
 K79dLJtqpgFab4kixIoAJydh7RTkL8Bv148RCchOYtM3EhicTwpRcguphSF+XmkH1mqY
 xfZ+yrRJeeWWbuobbxvM6Hie9qDkbI7fL8zcocg7ZL1uJskWZHw6K6lWZvWrDsK0R6Ye
 jhjk/FLqrNc/bvfQJ/+bGOYHBXothQDwfWt+GHaA/UL6OHMN8eqK/NwbJq5bYRfvINmP
 Z1uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=qML9KgHR0khgdZTW1uosHaPAKnNgvxttSEAuQMX0GEQ=;
 b=SV5O8eRsmhqZFmx4TyPx0Su0V3CPnJW0ktmshC/uHUo7uvGSuI/hCuEaZSN8eNpizd
 1sMPA+xGoJptPdPwt+UdnpkGLw5zi+fMRkGpL0nXkD0oxXxVkZqcCzoDyftGUyIVlC78
 QfWvHpf89/PamVqrYbm6MTKUS5dULjdWcEjZwaTRkCz74MQCN0O7oxEx3/y5DtORwh96
 T/gM0sCveVlvQcllP9rjik1xC58urfh8ZGcGtWEusEU9SVn3vhHQ4JQ9Zrbj3Wwe+siN
 himXh25VJpnKDm026XKnR8cWQk9vN/P5nCPpqIQaYBFstC5kl3kK7JM0dZKgY7RKZd3X
 8tBA==
X-Gm-Message-State: AOAM532r8Q29PqsX55nbNy02MgWmjBwdYi782niHtcTdtNiTRqIVAalf
 qdrynibn9Vxlmt66m2i0uzeRTA==
X-Google-Smtp-Source: ABdhPJx78m9gTB88Hr7ZpsykWna+1GSTTiWETWNwDFSIrgNVpYJJJATd62v8KH9zCjR2Me0qd2l8dw==
X-Received: by 2002:adf:e810:: with SMTP id o16mr43165440wrm.359.1635888564154; 
 Tue, 02 Nov 2021 14:29:24 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id z1sm172984wre.21.2021.11.02.14.29.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Nov 2021 14:29:23 -0700 (PDT)
Date: Tue, 2 Nov 2021 22:29:22 +0100
From: LABBE Corentin <clabbe@baylibre.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <YYGtso8/Uym+9Jwb@Red>
References: <20211013185812.590931-1-clabbe@baylibre.com>
 <20211013185812.590931-5-clabbe@baylibre.com>
 <20211014073752.GM8429@kadam> <YWyB8kwsqAvHMuhb@Red>
 <20211102174027.GK2794@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211102174027.GK2794@kadam>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Le Tue, Nov 02, 2021 at 08:40:28PM +0300, Dan Carpenter a
   écrit : > On Sun, Oct 17, 2021 at 10:05:06PM +0200, LABBE Corentin wrote:
   > > Le Thu, Oct 14, 2021 at 10:37:52AM +0300, Dan Carpenter a écrit [...] 
 
 Content analysis details:   (-0.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.221.44 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.221.44 listed in wl.mailspike.net]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1mi1LW-0004jA-Gc
X-Mailman-Approved-At: Wed, 03 Nov 2021 17:55:36 +0000
Subject: Re: [Mjpeg-users] [PATCH v2 04/10] staging: media: zoran: add
 debugfs
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
 linux-kernel@vger.kernel.org, hverkuil@xs4all.nl,
 mjpeg-users@lists.sourceforge.net, mchehab@kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

Le Tue, Nov 02, 2021 at 08:40:28PM +0300, Dan Carpenter a =E9crit :
> On Sun, Oct 17, 2021 at 10:05:06PM +0200, LABBE Corentin wrote:
> > Le Thu, Oct 14, 2021 at 10:37:52AM +0300, Dan Carpenter a =E9crit :
> > > On Wed, Oct 13, 2021 at 06:58:06PM +0000, Corentin Labbe wrote:
> > > > +config VIDEO_ZORAN_DEBUG
> > > > +	bool "Enable zoran debugfs"
> > > > +	depends on VIDEO_ZORAN
> > > > +	depends on DEBUG_FS
> > > > +	help
> > > > +	  Say y to enable zoran debug file.
> > > > +	  This will create /sys/kernel/debug/CARD_NAME/debug for displayi=
ng
> > > > +	  stats and debug information.
> > > =

> > > Why bother with a CONFIG?  Just make it always on?
> > > =

> > =

> > Hello
> > =

> > I love to provides choice to user (and so avoid a dep on DEBUG_FS), eve=
n if I think I am the only one remaining user.
> =

> Sorry, for the delay, I was on vacation.
> =

> No, there is no depends on DEBUG_FS in the method that I am describing.
> =

> How that works is when DEBUG_FS is turned on then it's on for everything,
> but when it's disabled it's disabled for everything.  You do not need
> the "depends on DEBUG_FS" and if you make this an option the it feels
> like it should be a selects DEBUG_FS instead.
> =

> How this normally works is that when you have debugfs disabled, there
> are dummy files in the debugfs .h files.  I bet the compiler can tell
> most of those are empty and removes them.  So if you have DEBUG_FS then
> it doesn't use that much more memory than when VIDEO_ZORAN_DEBUG is
> disabled.
> =

> I don't know if I'm being clear at all #jetlag.
> =

> It should be easy to check.  Just remove the "depends on DEBUG_FS" and
> enable VIDEO_ZORAN_DEBUG.  Disable DEBUG_FS.  It should still build fine
> because of the dummy functions.  That's build 1.  Then disable
> VIDEO_ZORAN_DEBUG and that's build 2.  See how much memory difference
> there is between 1 and 2.
> =


No worry for the delay.
Anyway, I have removed VIDEO_ZORAN_DEBUG in v3 since Hans Verkuil also aske=
d for its removing.

Regards


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
