Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F46BBA28
	for <lists+mjpeg-users@lfdr.de>; Mon, 23 Sep 2019 19:09:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1iCRq7-0006dG-Sq; Mon, 23 Sep 2019 17:09:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hverkuil@xs4all.nl>) id 1iCJLW-00058Z-VD
 for mjpeg-users@lists.sourceforge.net; Mon, 23 Sep 2019 08:05:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=L3VZw9gsoOGTjmrIswL2X3xH6gpHrLFYDcSFK7tby0E=; b=mC15IGnSUlhdnTU4jgdHAdz9Ve
 9a4QS105nfXGRP+LPyDyqb2SMr8QkjaOhvKO/y07JCBVQWRQMi7EK1XrIRJ7a4PNqM7vzbmhq5j3o
 x5u/QbQeDLWVnLesfhRE7XhbvpX6eI8CLyl3rjxuxN3+MbvBQLI/gy197jkBqTDW99xg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=L3VZw9gsoOGTjmrIswL2X3xH6gpHrLFYDcSFK7tby0E=; b=GuV09pOafXZ0fKQrraIKoZbQvA
 Yhlp/uYf4qthFaJZDzFgRiaQ7Vp3HRPCYAU5ypbu71QhAABlmZWHoAAmtZwkayCHNvEzovCjPb8vF
 jFsr57PWaR+qYBxFcMWKMDenrUE+1Kzcxo5ZYHfGr+TbcwsAJluhW8O+gR96Ayihhr1s=;
Received: from lb2-smtp-cloud8.xs4all.net ([194.109.24.25])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iCJLU-003ltc-AA
 for mjpeg-users@lists.sourceforge.net; Mon, 23 Sep 2019 08:05:22 +0000
Received: from [192.168.2.10] ([46.9.232.237])
 by smtp-cloud8.xs4all.net with ESMTPA
 id CJLJivCGlKKNGCJLMikH25; Mon, 23 Sep 2019 10:05:13 +0200
To: Corentin Labbe <clabbe.montjoie@gmail.com>,
 mjpeg-users@lists.sourceforge.net, linux-media@vger.kernel.org,
 mchehab@kernel.org, laurent.pinchart@ideasonboard.com
References: <20190921170357.GA26626@Red>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <8db38daf-74eb-8218-1cc6-ea9036afac3d@xs4all.nl>
Date: Mon, 23 Sep 2019 10:05:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190921170357.GA26626@Red>
Content-Language: en-US
X-CMAE-Envelope: MS4wfCt1NjjCrrSl4jVu+CGzrZ5XhSiiHWrlUMePsTQcsj+kDTvGrYlE3vi9hHcONZRmJxVMWgOkWI9Dg0urdPkdhWd0N9H4bkSxk/Frzyj+2aYSPYeywbH0
 l10rUt4+m7bT6Uo6XP9Pi0seagJmyqgsFNe7AVrWoW6G/F+jdMQulndng3pvD8O+0sDmNUdmfIo18gIcGAxo0ivjEXBDn856wYmgDpc2uLlI2kXlx3/4Tguu
 mfkWm9zDz6K6Nl2tkf//h+Z9gHKnLoj52qhsEj3t4votTLnDmzlH6QxewAZNSWdgKvARu7g2TKgb+mNxUIMRippvkudm8ip+NnUSiagtEwvCRRhENbZvIRdu
 fjLEfZD4HJsY/7koMv0T3j25Xf9xrg==
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iCJLU-003ltc-AA
X-Mailman-Approved-At: Mon, 23 Sep 2019 17:09:31 +0000
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

On 9/21/19 7:03 PM, Corentin Labbe wrote:
> hello
> 
> I am the owner of a zoran based DC10+ card.
> I am in the need of using it since yesterday and I found that its driver was removed.
> 
> Reverting the removing patch made to a temporary working situation.
> 
> If I understand correctly, it was removed due to lack of vb2 convertion.
> If I am able to do this vb2 conversion, does bring it back in mainline will be posssible ?
> In that case I am ready to assume to be the maintainer if needed.

It would be nice to get it back. The conversion to vb2 is the main requirement, but in
general this driver needed some TLC in general: it's a very old driver and the coding
standards were quite a bit lower than they are today.

But the vb2 conversion is the most important part.

It's unfortunately not the easiest thing to do (if it was, we'd have done it already!),
and it is also a 'big bang' patch, i.e. one very large patch that converts the driver
to vb2. It's all or nothing, you can't have half a vb2 conversion, so that makes it hard
to review.

The easiest way is to use the v4l2-compliance utility to verify the conversion. Running
'v4l2-compliance -s' is a good way of verifying this.

My recommended approach is to:

1) first revert the removal patch (commit 8dce4b265a53)
2) clean up the coding style. Probably easiest to create one patch per source.
   Use 'checkpatch.pl --strict -f <source>' for this. Doing this should make the
   source code easier to understand/review.
3) Run v4l2-compliance (without the -s option) and fix any failures it finds.
4) Convert to vb2, using 'v4l2-compliance -s' to test.

Be aware that the code is messy compared to modern standards. Do not be afraid
to create cleanup patches, it's probably needed.

The v4l2-compliance utility is part of https://git.linuxtv.org/v4l-utils.git/.
See the README on how to build. Always use the v4l2-compliance version from this
git repo since that's always the latest and greatest.

I recommend that you join the #v4l irc channel on freenode.org. Most core devs that
can help with advice are there during office hours (and often outside of office hours
as well). That's for the European timezones since most devs are based in Europe.

Regards,

	Hans


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
