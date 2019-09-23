Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BA7DFBBA29
	for <lists+mjpeg-users@lfdr.de>; Mon, 23 Sep 2019 19:09:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1iCRq7-0006dP-WF; Mon, 23 Sep 2019 17:09:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <clabbe.montjoie@gmail.com>) id 1iCJq6-0005Og-7o
 for mjpeg-users@lists.sourceforge.net; Mon, 23 Sep 2019 08:36:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5MyWWJmU5w9hACf2FXcPJcFzzYcPTHiwXkpFyd1Cp2A=; b=LZoePw/sXPYT8sEnqwVJcFFEmr
 lSbFW9jP/wV/XNZmu2pVgoWj4bAz6e704Qdwj0XsUutHngkaVz01zRBz60vvXDTUEFB9NMh33DZND
 uvzJd62WPJ9WEoyse3ffI1M8c4lOA/09+VWr/NxhVl1z54CEFjwGCN9LGZ1XxoWhFsso=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5MyWWJmU5w9hACf2FXcPJcFzzYcPTHiwXkpFyd1Cp2A=; b=F/Lkeu0L4xvfi5uwk9yqpQ/xRX
 g5a31JLt0rM6acMalRM5O8ktBdZIg8BpmXr4O4jzpYmjHs3sRcc6l2DGSWcw+nYVgjp2tfjuzORr6
 rmkW9mqyd43VF28kQUerBYmHQBv9/U2A1PxxAzQrRpw1eog/7OmjmL+eEbsJ8fyaJFiA=;
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iCJq4-0052PM-4a
 for mjpeg-users@lists.sourceforge.net; Mon, 23 Sep 2019 08:36:58 +0000
Received: by mail-wr1-f68.google.com with SMTP id r5so12846201wrm.12
 for <mjpeg-users@lists.sourceforge.net>; Mon, 23 Sep 2019 01:36:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=5MyWWJmU5w9hACf2FXcPJcFzzYcPTHiwXkpFyd1Cp2A=;
 b=WQkGSa2SVRBJSY6D9P/vUVX+FDK8mu2KnCBOchlsDJo3IAO8f5tsDmbDhfhJ1HziEZ
 0aqw4nmplkfwb5uY35pplp5a/dyg5NhnDp2HOvikZnu+U69v/br85XotcLLljY2PmI4C
 cbKQiH0iVuV6T7apX+L/OL83ZK3fPP9e1PNrVwZrrP9h7RJgJNRyYB6nguRvhUQlU5Eq
 TdLXfWkKHab7oPUC+AOCnIo/x8lwpO7brgBS/uyXdnYR3mxKUe3tTt+ZRYZyfSXdDr5Y
 7eubB9/Xl3HmqsafkhIgScgLrAB66HNTXdF9w8mfkiMFXuXcTzZ+Cz08ut8xxFBT0UcC
 qF8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5MyWWJmU5w9hACf2FXcPJcFzzYcPTHiwXkpFyd1Cp2A=;
 b=FLFCaZ/rgsacvK/1Aa5RgEk31hsRtzOTM5TBXOLyY7mcXlmblmQEAHjVxFh8dhm+W2
 gVGTpe3dnXALxUJ5r5V27piZ2AVxpkoOXdmdfS4UWdRIEmynxo0hCIlqJlxennyTtINb
 1CGkounLl8S4vRU/SzHBnqHQUC1EopMUC1K+iA/mhbbflcIvD3tO10t+0Q5z7cSH7saj
 /HKeEU8F+qBgclfRywlHR6PKSmxhCSssAygeqW8xMqEPtuwBAlw8ZxyiaTRJ1Ub+C2je
 2XPy95XAAwTE9YAK03quj0r8ff+x7GqOqHOGGGZ4MwQVkVObv7aHn5jW0AZ58mu4ZRHJ
 UcIA==
X-Gm-Message-State: APjAAAWy3VXUqMoKmrmOhT0Zo93vIam+is5G95dRwvpperd264Nx71nw
 f52mM4b8j23g8ijGX3RqvEhlxLnc
X-Google-Smtp-Source: APXvYqypb/U+eDmb+J3ur64CjTEho7wTo8LwJJWNtXeqd/EE1eaSJNedWltB7YHylnpR4hOdAhvq1w==
X-Received: by 2002:adf:eb42:: with SMTP id u2mr19395063wrn.307.1569227809649; 
 Mon, 23 Sep 2019 01:36:49 -0700 (PDT)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id b186sm5909174wmd.16.2019.09.23.01.36.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 23 Sep 2019 01:36:49 -0700 (PDT)
Date: Mon, 23 Sep 2019 10:36:47 +0200
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <20190923083647.GB1599@Red>
References: <20190921170357.GA26626@Red>
 <8db38daf-74eb-8218-1cc6-ea9036afac3d@xs4all.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8db38daf-74eb-8218-1cc6-ea9036afac3d@xs4all.nl>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (clabbe.montjoie[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iCJq4-0052PM-4a
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
Cc: linux-kernel@vger.kernel.org, mchehab@kernel.org,
 mjpeg-users@lists.sourceforge.net, laurent.pinchart@ideasonboard.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

On Mon, Sep 23, 2019 at 10:05:09AM +0200, Hans Verkuil wrote:
> On 9/21/19 7:03 PM, Corentin Labbe wrote:
> > hello
> > 
> > I am the owner of a zoran based DC10+ card.
> > I am in the need of using it since yesterday and I found that its driver was removed.
> > 
> > Reverting the removing patch made to a temporary working situation.
> > 
> > If I understand correctly, it was removed due to lack of vb2 convertion.
> > If I am able to do this vb2 conversion, does bring it back in mainline will be posssible ?
> > In that case I am ready to assume to be the maintainer if needed.
> 
> It would be nice to get it back. The conversion to vb2 is the main requirement, but in
> general this driver needed some TLC in general: it's a very old driver and the coding
> standards were quite a bit lower than they are today.
> 
> But the vb2 conversion is the most important part.
> 
> It's unfortunately not the easiest thing to do (if it was, we'd have done it already!),
> and it is also a 'big bang' patch, i.e. one very large patch that converts the driver
> to vb2. It's all or nothing, you can't have half a vb2 conversion, so that makes it hard
> to review.

Hello

Yes I started a bit to do it by using other conversion patch as helper and I saw this "one big step" problem.

> 
> The easiest way is to use the v4l2-compliance utility to verify the conversion. Running
> 'v4l2-compliance -s' is a good way of verifying this.
> 
> My recommended approach is to:
> 
> 1) first revert the removal patch (commit 8dce4b265a53)
> 2) clean up the coding style. Probably easiest to create one patch per source.
>    Use 'checkpatch.pl --strict -f <source>' for this. Doing this should make the
>    source code easier to understand/review.
> 3) Run v4l2-compliance (without the -s option) and fix any failures it finds.
> 4) Convert to vb2, using 'v4l2-compliance -s' to test.
> 
> Be aware that the code is messy compared to modern standards. Do not be afraid
> to create cleanup patches, it's probably needed.
> 
> The v4l2-compliance utility is part of https://git.linuxtv.org/v4l-utils.git/.
> See the README on how to build. Always use the v4l2-compliance version from this
> git repo since that's always the latest and greatest.
> 
> I recommend that you join the #v4l irc channel on freenode.org. Most core devs that
> can help with advice are there during office hours (and often outside of office hours
> as well). That's for the European timezones since most devs are based in Europe.
> 

Thanks, I has planned to ask this question about the priority between v4l2-compliance and vb2.

Regards


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
