Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D96F8453849
	for <lists+mjpeg-users@lfdr.de>; Tue, 16 Nov 2021 18:08:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mn1wF-0003RO-71; Tue, 16 Nov 2021 17:08:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <clabbe@baylibre.com>) id 1mmzD5-00008M-6d
 for mjpeg-users@lists.sourceforge.net; Tue, 16 Nov 2021 14:13:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Hw7z2DE+F8UBs0gio938IkOrZbQGq0DztTjnNTwE29I=; b=lHtFs2XxOcrqgx9D1f9eGZHz1c
 DxqHZn7VNiUm+cG/dFzTKhEQJoXgAdjtIw2yrIoeT3CQKBf8Bc7FvFSigjCckjOrcz/VCt9YHUxZq
 mHQlQQQFs5uaWrOgOLxlpyJ6v21QToRcn7Ul8T/npj+WcSt6sGXs3eJcTXjvpjhs/Wuo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Hw7z2DE+F8UBs0gio938IkOrZbQGq0DztTjnNTwE29I=; b=fyBfI1XNXNG4710BjsFZDAhG3M
 rtXOWx9PFTSwuitLW6gE+T+bhZBkcuUq6M0dkH3r8whLO663ly+cdj56VfN8iotvnn4GPiEBJGUjN
 w3yy8po4I08lxMjwWDjrb8MlFDhKCDrWW334AA+FUe837ifuBjzZDu+duPH9rQg5W0R0=;
Received: from mail-wr1-f46.google.com ([209.85.221.46])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mmzCx-00EtcV-H3
 for mjpeg-users@lists.sourceforge.net; Tue, 16 Nov 2021 14:13:19 +0000
Received: by mail-wr1-f46.google.com with SMTP id r8so37791269wra.7
 for <mjpeg-users@lists.sourceforge.net>; Tue, 16 Nov 2021 06:13:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=Hw7z2DE+F8UBs0gio938IkOrZbQGq0DztTjnNTwE29I=;
 b=D8fdejX/rCNDBoHiV4LiynBJx18EM/ZjvMMkJpbuoSlDJdlr7b2U39xUO91b7HWq0C
 8ANdlnsOY0N04/lXVqSO1XMvljvxKTMljsm/omCsmStxLTzIlNGJKDkn4uL4IFDu1O7l
 yEiDYt4zoE+vkdWBsWn1lKOjOL0NBYRB/nxoyO/vxoLwWT9JMG+hwV7vYZfxwrgpR45D
 ZbbC8gU0LfHvQKbbZJo5yNirplHMDwvzqTdwVtx3rqZpMh4l1x2kCzfy7E4WBmjTy0RG
 +3TVBOxOlv1ajb/37JZskVapp3DRMgnhvrWsOTbAkNeybm+Pd5HHVUXmUmRJsilTZf7n
 jiqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=Hw7z2DE+F8UBs0gio938IkOrZbQGq0DztTjnNTwE29I=;
 b=p0sRgVsBCyM/K4i7WyiqnipeyhAG/CynmrxrXVRA7dYTz09ToH9CBOLoMqoAowUk2R
 jLHlPR/V630afPRTjJLa8OITt7zukVSl3xtq6XWMtiaXQlZl+SqQc+o0+mJ2aeKV1xSq
 x1U3h/WdwovEwCqUHo5Zgi9LCyEOmqEzxh+GVWfhiUvKjQcDihW7nWryDIZnkqYjuw5j
 NR/iPirT/geEVzJbpwgMaoRS3OsykpP9mUTsv5MTSLASp/ooGiK1N96VkEo40uX8ysCQ
 JxYOYg4+LCISKpvvCfW7r9wIdGt/Lfz8L8wn1crU1AHUPiJrbP2cQtb/3ZjbiUnvFJcB
 2pOA==
X-Gm-Message-State: AOAM531x/BTa427kLv4TeaGnPqkjIpr+TwrsO2RzgE6bJyBo6k1SmWYH
 FJH8B8doPK0Y8IfVUv07kBB2dQ==
X-Google-Smtp-Source: ABdhPJx6YJZlTa5B4GfDTwox4+qJjdQGXyHLa50AzCSZZtUd61i17/1U90BHUfQGFlbWjKTqNjS2Kg==
X-Received: by 2002:a5d:42cc:: with SMTP id t12mr9608486wrr.129.1637071980582; 
 Tue, 16 Nov 2021 06:13:00 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id h18sm18751493wre.46.2021.11.16.06.12.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Nov 2021 06:13:00 -0800 (PST)
Date: Tue, 16 Nov 2021 15:12:58 +0100
From: LABBE Corentin <clabbe@baylibre.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <YZO8an3L6gay0isM@Red>
References: <20211026193416.1176797-1-clabbe@baylibre.com>
 <a85c93db-e118-274f-d86a-d127c7399926@xs4all.nl>
 <YYKxTrWI299pvqo7@Red>
 <2bbce7ef-acf8-3c0f-2705-09d34b2d92be@xs4all.nl>
 <YYgAb76mrMb1ERMW@Red>
 <87357802-1723-0471-d963-252ec54ececd@xs4all.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87357802-1723-0471-d963-252ec54ececd@xs4all.nl>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Le Mon, Nov 08, 2021 at 09:21:22AM +0100, Hans Verkuil a écrit
    : > On 07/11/2021 17:35, LABBE Corentin wrote: > > Le Wed, Nov 03, 2021 at
    05:29:46PM +0100, Hans Verkuil a écrit : > >> On 03/11/2021 16 [...] 
 
 Content analysis details:   (-0.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.221.46 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.221.46 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1mmzCx-00EtcV-H3
X-Mailman-Approved-At: Tue, 16 Nov 2021 17:08:06 +0000
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

Le Mon, Nov 08, 2021 at 09:21:22AM +0100, Hans Verkuil a =E9crit :
> On 07/11/2021 17:35, LABBE Corentin wrote:
> > Le Wed, Nov 03, 2021 at 05:29:46PM +0100, Hans Verkuil a =E9crit :
> >> On 03/11/2021 16:57, LABBE Corentin wrote:
> >>> Le Wed, Nov 03, 2021 at 04:21:02PM +0100, Hans Verkuil a =E9crit :
> >>>> Hi Corentin,
> >>>>
> >>>> On 26/10/2021 21:34, Corentin Labbe wrote:
> >>>>> Hello
> >>>>>
> >>>>> The main change of this serie is to fusion all zoran related module=
s in
> >>>>> one.
> >>>>> This fixes the load order problem when everything is built-in.
> >>>>
> >>>> I've been testing this series, and while the module load/unload is n=
ow working,
> >>>> I'm running into a lot of other v4l2 compliance issues.
> >>>>
> >>>> I've fixed various issues in some follow-up patches available in my =
tree:
> >>>>
> >>>> https://git.linuxtv.org/hverkuil/media_tree.git/log/?h=3Dzoran
> >>>>
> >>>> At least some of the worst offenders are now resolved. Note that the=
 patch
> >>>> dropping read/write support relies on this patch:
> >>>>
> >>>> https://patchwork.linuxtv.org/project/linux-media/patch/4f89b139-13b=
7-eee6-9662-996626b778b0@xs4all.nl/
> >>>
> >>> Hello
> >>>
> >>> My test branch already included your "zoran: fix various V4L2 complia=
nce errors"
> >>> I have quickly checked other patch and I am ok with them.
> >>> I will add and test with them.
> >>>
> >>>>
> >>>> But there is one really major bug that makes me hesitant to merge th=
is:
> >>>>
> >>>> This works:
> >>>>
> >>>> v4l2-ctl -v pixelformat=3DMJPG,width=3D768,height=3D576
> >>>> v4l2-ctl --stream-mmap
> >>>>
> >>>> This fails:
> >>>>
> >>>> v4l2-ctl -v pixelformat=3DMJPG,width=3D768,height=3D288
> >>>> v4l2-ctl --stream-mmap
> >>>>
> >>>> It's an immediate lock up with nothing to indicate what is wrong.
> >>>> As soon as the height is 288 or less, this happens.
> >>>>
> >>>> Both with my DC30 and DC30D.
> >>>
> >>> Just for curiosity, what is the difference between thoses two ?
> >>
> >> It's the DC30 variant without an adv7175.
> >>
> >>>
> >>>>
> >>>> Do you see the same? Any idea what is going on? I would feel much ha=
ppier
> >>>> if this is fixed.
> >>>>
> >>>> Note that the same problem is present without this patch series, so =
it's
> >>>> been there for some time.
> >>>>
> >>>
> >>> I will start on digging this problem and add thoses commands to my CI.
> >>> And I know there are a huge quantity of problem since origins.
> >>> A simple example is that just setting MJPEG as default input format d=
oes not work.
> >>>
> >>> But since it is not related to my serie, can you please merge it.
> >>
> >> Before I do that, I would really like to know a bit more about this is=
sue:
> >> can you reproduce it? Is it DC30 specific or a general problem with zo=
ran?
> >>
> >> The problem with this hard hang is that it is hard to do regression te=
sting
> >> with v4l2-compliance, since it will hang as soon as MJPG pixelformat is
> >> tested.
> >>
> >> I would feel much happier if the hang can be avoided, even if it is ju=
st
> >> with a temporary hack. It will make it much easier going forward.
> >>
> > =

> > I found the bug
> > =

> > The null pointer deref was in zoran_reap_stat_com() due to =

> > buf =3D zr->inuse[i];
> > ...
> > buf->vbuf.vb2_buf.timestamp =3D ktime_get_ns();
> > with buf =3D NULL;
> > =

> > It is due to miscalculation of "i".
> > =

> > I will resend my serie with the fix for that.
> =

> Excellent news! Thank you for tracking this one down.
> =

> When you post your series, can you include my patches from
> https://git.linuxtv.org/hverkuil/media_tree.git/log/?h=3Dzoran as well?
> =


Hello

Yes, I will include them.

Regards


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
