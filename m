Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B817439B74
	for <lists+mjpeg-users@lfdr.de>; Mon, 25 Oct 2021 18:23:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mf2lP-0006WQ-Jo; Mon, 25 Oct 2021 16:23:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <clabbe@baylibre.com>) id 1mf0d4-0000kr-AE
 for mjpeg-users@lists.sourceforge.net; Mon, 25 Oct 2021 14:07:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YE/NzH8qBpbjmAapzAwapgPnCPKetXqI0pgiy9yOdQE=; b=ibchk4X9l2COyMcRSXQlBTCGQM
 yCseOfnDZnvrXrotmVZq0lIlpwL+FnFNsdcTk4Dm88FbMQ4KA3tNlmYc0UtdV0oS28K9lYkVy2cSE
 a9EIIbpV4v29AI3+RAkEpgeXI8yfFd3ap+YfcbT6fPzf6PaPAWkISX3gZ9qVaRK8P/lM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YE/NzH8qBpbjmAapzAwapgPnCPKetXqI0pgiy9yOdQE=; b=mZCaBd696jw8DO/Dt4MJ5A/bm5
 bkzQSUs0I3zsAQy6G9/f2dyu/p/L4s/JVI78vBfXm6BYJDIHgvlun4jK/wJB8Nak7B32moVjW6ogi
 7Nx2Su/LuV2ErZXxbfyTpMEw/iRElh98Hi7zNDleLwWHbGScGLB/4X5O9EYoR6LhSaqI=;
Received: from mail-wr1-f41.google.com ([209.85.221.41])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mf0d0-0003ki-2P
 for mjpeg-users@lists.sourceforge.net; Mon, 25 Oct 2021 14:07:10 +0000
Received: by mail-wr1-f41.google.com with SMTP id s19so12979676wra.2
 for <mjpeg-users@lists.sourceforge.net>; Mon, 25 Oct 2021 07:07:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=YE/NzH8qBpbjmAapzAwapgPnCPKetXqI0pgiy9yOdQE=;
 b=L2dGHyNoFi2z+4ecIyz89lYHwy1pDFUGrmT7X6ovQeMSwRJjiNQ1ptux181OyYZQ89
 4CcnKb0YmJUuZ1HItQyP1HB1NQDmPVHLsnCXUJlC5kmnW3/QKBtREawB1ppLZmxjD3W3
 nK/ZDxQDTMsjonxm1NySHvHsi3s+6J/djsF8TXOyaTMq+oYq+ViWg+iLzctDo76SY4yU
 T9e20DiJrwxC8jHC/f+dgjyeGEsNRkFlDgiV8fq/pY4tCuYE+D7hDLQTRE1NZ+xFqERf
 DmozuhP74V822Q2Y3bOfywpz6WtJnuI/qrlGayFvw6TqdbbWOVty+m+8BgUVn4tQGojm
 /msA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=YE/NzH8qBpbjmAapzAwapgPnCPKetXqI0pgiy9yOdQE=;
 b=NpHWUbOauGdmDvublgwhR1rRFjVGzsZwZvx48W74gQ8IgcodoQxeOUb83CTvNIbOvW
 PGaXIP8PVH+YJkkDm1hL0dQDNc8PCfBlYcV6BW7aUzj2Ck7XuS2fwrOMKXw8d7lqGeXT
 Sis/IaKbSa72NAO2RvZ4yE9FckkaxTd6jzJj1QyNYwvuYxar/WneQiqcCVK4xd8zDjSZ
 1ZYTdgWyY2jX4MUel1CXsApwuGKlFvVxmc3q5nOPsT65wbt99ygWkuvbc7kTi0zQ6UxF
 5uFVr+zyC4XZJH88sfhSiXw2WVvapJFt5OFawGCz7li0YtGNBNqUKhwWmhEaC/9jRPm4
 gY4g==
X-Gm-Message-State: AOAM5314qOqFGYkeOL7srQvrRWGdqzGj9uzV+qigEONQMx/WJ/kf9yEt
 80YSvRjygU8rlMXn8oRRigQY4w==
X-Google-Smtp-Source: ABdhPJyRYFvibtgc8IKqIHYknb4PmyxGSQKD0RMQUpWrP7fkWuU1HAthN9l4r9nE/QnuRmGJqgGJBQ==
X-Received: by 2002:adf:e607:: with SMTP id p7mr23358297wrm.30.1635170819465; 
 Mon, 25 Oct 2021 07:06:59 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id p1sm5762489wmq.23.2021.10.25.07.06.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Oct 2021 07:06:59 -0700 (PDT)
Date: Mon, 25 Oct 2021 16:06:57 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <YXa6AVRmkkEuE+XZ@Red>
References: <20211013185812.590931-1-clabbe@baylibre.com>
 <c2474663-3fe0-b0cd-ecb5-57ec370481e3@xs4all.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c2474663-3fe0-b0cd-ecb5-57ec370481e3@xs4all.nl>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Le Mon, Oct 18, 2021 at 11:55:40AM +0200, Hans Verkuil a écrit
    : > Hi Corentin, > > I noticed some code review comments from Dan and a kernel
    test robot issue. > Can you post a v3 fixing those by the [...] 
 
 Content analysis details:   (-0.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.221.41 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.221.41 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1mf0d0-0003ki-2P
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

Le Mon, Oct 18, 2021 at 11:55:40AM +0200, Hans Verkuil a =E9crit :
> Hi Corentin,
> =

> I noticed some code review comments from Dan and a kernel test robot issu=
e.
> Can you post a v3 fixing those by the end of the week? Next week I will h=
ave
> access again to my zoran board, so then I can test the v3 series.
> =

> BTW, I agree with Dan, just drop the 'Enable zoran debugfs' config option=
. It's
> not worth the additional complexity. Instead, just #ifdef CONFIG_DEBUG_FS
> where necessary (in most cases you shouldn't even have to do that since t=
he
> since you have dummy debug_fs_* functions if CONFIG_DEBUG_FS isn't set).
> =


Hello

Ok I started fixing issues and will send V3 this week.

Regards


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
