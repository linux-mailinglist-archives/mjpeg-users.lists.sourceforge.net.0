Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B142E4447CF
	for <lists+mjpeg-users@lfdr.de>; Wed,  3 Nov 2021 18:55:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1miKU6-0004JC-La; Wed, 03 Nov 2021 17:55:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <clabbe@baylibre.com>) id 1miIdV-0001aq-Rk
 for mjpeg-users@lists.sourceforge.net; Wed, 03 Nov 2021 15:57:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eRvj9qYI+2l7/7aUCZ50U+44Z6UG0IqeflVK/0bEcvo=; b=aCeMzUwJ49ttBy3vylVsEt43bZ
 e61XuE6DLJKXvLDVff3+/NWJCVUnLZS9ffBrxnzcG38IJ4mKdm5zJFkFCrhvBK0uEVAe8+39I6msh
 +PIC8hplt72hcwrLgI3L37rRSPvUqf1JPbxToVstRpn59tKsIYObXsXl5rX+FgF6VzWQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eRvj9qYI+2l7/7aUCZ50U+44Z6UG0IqeflVK/0bEcvo=; b=KIUyHlGRR6swMGLuUNjeY/SQiI
 Sgi+cL3iQiE3JCKLZT4zS8uDlH1PHYjxH0r+AiVBjMb8WAaAvTGS8eMtpDv2ougs0GNMXcySLdeU+
 u9fvtBdISRBjScqb17AJKIv7IIfJue28Vh7WWkiz1YInJ64n7XfGIK4XbcqOoY3apKcI=;
Received: from mail-wr1-f44.google.com ([209.85.221.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1miIdT-0007d1-9Q
 for mjpeg-users@lists.sourceforge.net; Wed, 03 Nov 2021 15:57:12 +0000
Received: by mail-wr1-f44.google.com with SMTP id r8so4284436wra.7
 for <mjpeg-users@lists.sourceforge.net>; Wed, 03 Nov 2021 08:57:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=eRvj9qYI+2l7/7aUCZ50U+44Z6UG0IqeflVK/0bEcvo=;
 b=BZz+zyywefqfNDI4gN4GDIM0uwo+FGSPcLNoq8DH2EXoe56E32R0v4glZZpSqHvkR/
 sbLHeTm4jmFtLgyiP5il6cidyVwnm/QcUw+cpD1tSl0vT7dMlJnK2qrC2bJvlJVSeLBz
 mItrt4gUdMoh7jQfhyR0fMzPZnw+Slkatr5pyLYowy4Vqf9MZWbXhjXvWJHn1o7tFSBl
 3kw7mG28mKixAVjUtYZzWipsWohjqyBC8vluMVwO+QhPb3QAcNJlAqREIe+O56MgF+Rj
 6lSVMNXjMG0DB5I3FHvra0nW8vhSCHdLX85k5eUkA6+Fq4mpthVNJGWj1iaLSihcnUmM
 QD/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=eRvj9qYI+2l7/7aUCZ50U+44Z6UG0IqeflVK/0bEcvo=;
 b=W+PM2hQr4KurKjV4EgwGWJ/LtdKL3IQGPFTjdkCV67mMtckOKOzLnWtaA62MH1jvwT
 QUyzs/FkQmAXCUT5p5PJZF+C7CA+ioyd/WXKYIKgykahhx+FV5N6D4lcTABlwjmgh6C3
 n3Xd+X8XCFGjaCvB8GHpFrLTKlch4+BWxYJWsCIpuBVZuoPrAugPdx/rBxNA1Q31XhKp
 7InjwCp7UmOJ5KmTl+8jEat95qPMfuYOMLbFzO56SAtTOpkOZydnzxjdmNKUG8byChCn
 f/OxomMT4CELz2TkgSpom9Wko/2j6I9PUHG48iJiRoZUaiLHL/WAz1AoizYU6+SNUwSV
 D9Hg==
X-Gm-Message-State: AOAM533WFhM0q7oSDcedSK0bwy12swEd9St19tQ1QgJTZhAFtCmwc67e
 VyCQdQ/T7otVqgqQnM6DQGGSwA==
X-Google-Smtp-Source: ABdhPJxvQ4B9y40EuhwiBKOvJ12HuXF5RU2mRbTh9lwg4xo6yOedTE2cuS4DHK3f5Fl5qo4ZYIHTSg==
X-Received: by 2002:a5d:4890:: with SMTP id g16mr58678884wrq.10.1635955024911; 
 Wed, 03 Nov 2021 08:57:04 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id p13sm6470355wmi.0.2021.11.03.08.57.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Nov 2021 08:57:04 -0700 (PDT)
Date: Wed, 3 Nov 2021 16:57:02 +0100
From: LABBE Corentin <clabbe@baylibre.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <YYKxTrWI299pvqo7@Red>
References: <20211026193416.1176797-1-clabbe@baylibre.com>
 <a85c93db-e118-274f-d86a-d127c7399926@xs4all.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a85c93db-e118-274f-d86a-d127c7399926@xs4all.nl>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Le Wed, Nov 03, 2021 at 04:21:02PM +0100, Hans Verkuil a écrit
    : > Hi Corentin, > > On 26/10/2021 21:34, Corentin Labbe wrote: > > Hello
    > > > > The main change of this serie is to fusion all zoran re [...] 
 
 Content analysis details:   (0.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: linuxtv.org]
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
X-Headers-End: 1miIdT-0007d1-9Q
X-Mailman-Approved-At: Wed, 03 Nov 2021 17:55:36 +0000
Subject: Re: [Mjpeg-users] [PATCH v3 00/14] staging: media: zoran: fusion in
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

Le Wed, Nov 03, 2021 at 04:21:02PM +0100, Hans Verkuil a =E9crit :
> Hi Corentin,
> =

> On 26/10/2021 21:34, Corentin Labbe wrote:
> > Hello
> > =

> > The main change of this serie is to fusion all zoran related modules in
> > one.
> > This fixes the load order problem when everything is built-in.
> =

> I've been testing this series, and while the module load/unload is now wo=
rking,
> I'm running into a lot of other v4l2 compliance issues.
> =

> I've fixed various issues in some follow-up patches available in my tree:
> =

> https://git.linuxtv.org/hverkuil/media_tree.git/log/?h=3Dzoran
> =

> At least some of the worst offenders are now resolved. Note that the patch
> dropping read/write support relies on this patch:
> =

> https://patchwork.linuxtv.org/project/linux-media/patch/4f89b139-13b7-eee=
6-9662-996626b778b0@xs4all.nl/

Hello

My test branch already included your "zoran: fix various V4L2 compliance er=
rors"
I have quickly checked other patch and I am ok with them.
I will add and test with them.

> =

> But there is one really major bug that makes me hesitant to merge this:
> =

> This works:
> =

> v4l2-ctl -v pixelformat=3DMJPG,width=3D768,height=3D576
> v4l2-ctl --stream-mmap
> =

> This fails:
> =

> v4l2-ctl -v pixelformat=3DMJPG,width=3D768,height=3D288
> v4l2-ctl --stream-mmap
> =

> It's an immediate lock up with nothing to indicate what is wrong.
> As soon as the height is 288 or less, this happens.
> =

> Both with my DC30 and DC30D.

Just for curiosity, what is the difference between thoses two ?

> =

> Do you see the same? Any idea what is going on? I would feel much happier
> if this is fixed.
> =

> Note that the same problem is present without this patch series, so it's
> been there for some time.
> =


I will start on digging this problem and add thoses commands to my CI.
And I know there are a huge quantity of problem since origins.
A simple example is that just setting MJPEG as default input format does no=
t work.

But since it is not related to my serie, can you please merge it.

Thanks
Regards


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
