Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 37000401DEF
	for <lists+mjpeg-users@lfdr.de>; Mon,  6 Sep 2021 18:00:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mNH30-0007iB-Vs; Mon, 06 Sep 2021 16:00:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <clabbe@baylibre.com>) id 1mNF0e-0003uo-8e
 for mjpeg-users@lists.sourceforge.net; Mon, 06 Sep 2021 13:50:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=A4jOhR2vRvnKHiSaA5vRT/Kewp2YBhwRZF6rf63lEkI=; b=g29B6gCQfWNaB6g+OkVbopDNHy
 QVEw9gB0YqS8QmN65uygCH8+ADhlArqwS3l7ZzGk4un8oQrNWu3DoDKZmFPPy6+dERfwxn73a2UAH
 C52TgBTFUc2jzMARyWvh/h/tAr4I5+C8QfSWmkZFFJZFgfINaEdkO24+L5uUag6P+Z+M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=A4jOhR2vRvnKHiSaA5vRT/Kewp2YBhwRZF6rf63lEkI=; b=FZgBspeIrnP/+AmN3ahheOnEnf
 zYgK6BEWxma5vGo1uZQyCF7xh9/8j/XE34u4e8koI3o7GRNZzVFFqtLsSLMQf3m1h7PRBd7nZylqH
 mHRXIj+n/PMJW9ExRIYiuJOVmVvAmDAPIfLuSM3Ifg3fvCNBO5G6noRFntssZdrYPRbk=;
Received: from mail-wm1-f44.google.com ([209.85.128.44])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mNF0a-00HQVD-2s
 for mjpeg-users@lists.sourceforge.net; Mon, 06 Sep 2021 13:50:04 +0000
Received: by mail-wm1-f44.google.com with SMTP id
 u15-20020a05600c19cf00b002f6445b8f55so1009wmq.0
 for <mjpeg-users@lists.sourceforge.net>; Mon, 06 Sep 2021 06:50:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=A4jOhR2vRvnKHiSaA5vRT/Kewp2YBhwRZF6rf63lEkI=;
 b=DEaD2/Yzj/PIEGHCf2Hgo9sTxwYOGS0pd4+5rls6fny99vQBctrGXz+mpQT3NSi4qv
 vpvdJns2nVVQnM6kFp0Bi5TzO1zETmUQx8IwPSsb1UUGf9mh/iKoTz0OFrQB1+8K/5cJ
 /+WZp85bDP1VjTlBquBB0A0ueMkIFKeWYVnqq4W35+pS+JeYD826QdMswqdLt/8IYucI
 S598cEr7xEJJ2bU3bFVBg8KALmxcBkmzABNs1VLF6hXh/jXwE8C6XvmzpIJS90RYbyR2
 BIEISwZl5ESCB1CKuSissqglGkIZOmJdYoJK+sNKG3WtYlh4px8lQTavdaOZFy1iYDB5
 kN+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=A4jOhR2vRvnKHiSaA5vRT/Kewp2YBhwRZF6rf63lEkI=;
 b=r3crBUOn/LZllH31SRVzL3n6Kpc+M4mIgoS5gZKYAr4RvKhJm6hdIMGSdeYgdTI+hI
 xWN7YHNqjT+zL2qKVLAT+QlxLLiuoMwI/8N5TX8ys/dILIlw/d68VPJiNOAeCdatnlR3
 y3Ey0vQYM1tlgU96YHzdE+5NWJJO2p6WAtWM2yUlXnqLcymliIFJvOTkzH28WNzMjNnk
 7l2509BENJtzMEVaXkSpZitRrnMUeIyOK0V/TM5/T09sPy6ro8SULFeTBYw01vLUI+pJ
 Scotb7fFUBMyG1Ge/Z9IDupVXrrKim/Rd//+M0w2QDhxVZYadDU1eqrP7WShC1CmtuDk
 kgJA==
X-Gm-Message-State: AOAM533efnNKKMwEJ0Qu3q/ikSH3UAVVzsj9/Iu7o03AVZDV5ywlmlwZ
 tohf+97+tlYBrtCnt47KD73vQw==
X-Google-Smtp-Source: ABdhPJx3FlWvq/ELhQaqN25Y+JvPNsma3T425v7WMG7udITx98z2t1PeLJlC4vWYiLbDd9Hp9mhtWg==
X-Received: by 2002:a1c:7d06:: with SMTP id y6mr11185837wmc.7.1630936193693;
 Mon, 06 Sep 2021 06:49:53 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id i5sm6838107wmq.17.2021.09.06.06.49.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Sep 2021 06:49:53 -0700 (PDT)
Date: Mon, 6 Sep 2021 15:49:51 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <YTYcf3We4dcvBx1h@Red>
References: <20210903191540.3052775-1-clabbe@baylibre.com>
 <efe035cc-1839-210f-c0d4-4d58801aa65c@xs4all.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <efe035cc-1839-210f-c0d4-4d58801aa65c@xs4all.nl>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Le Mon, Sep 06, 2021 at 01:03:56PM +0200, Hans Verkuil a écrit
    : > Hi Corentin, > > I finally had the opportunity to test the staging zoran
    driver. > > I found several issues when running v4l2-complia [...] 
 
 Content analysis details:   (-0.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.128.44 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.128.44 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1mNF0a-00HQVD-2s
X-Mailman-Approved-At: Mon, 06 Sep 2021 16:00:35 +0000
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

Le Mon, Sep 06, 2021 at 01:03:56PM +0200, Hans Verkuil a =E9crit :
> Hi Corentin,
> =

> I finally had the opportunity to test the staging zoran driver.
> =

> I found several issues when running v4l2-compliance -s (I posted a patch
> for that), but more seriously is the fact that trying to capture MJPG
> at resolutions 384x288 or less just hangs my PC. It works OK with 768x576.
> =

> I discovered this when running 'v4l2-compliance -s -a -f'.
> =

> BTW, why isn't the initial format equal to MJPG 768x576?
> I would expect that for these boards that should be the default format.
> =

> Another issue is that the TODO should mention that for video output there
> should be a second video device node. And that's really something that
> has to be done before the zoran driver can be moved out of staging.
> =

> It shouldn't be that hard to implement, I think.
> =

> Right now it is impossible to run the compliance test for the output, sin=
ce
> it doesn't even see it as an output.
> =

> Regards,
> =

> 	Hans

I work on having a second device for output, (it is the reason of "staging:=
 media: zoran: move videodev alloc" which will help).

But I still have the problem of non working output.

Does output is really needed for going out of staging ?
Probably nobody have it working for ages. The only way to had it was to use=
 an old mplayer output which is broken since so many time.
Note that this plugin will never work again.

The only way to work on output is to use ffmpeg which just recently have su=
port for writing non-raw video to V4L.

Regards


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
