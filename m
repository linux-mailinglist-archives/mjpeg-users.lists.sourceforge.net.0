Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 07333401DED
	for <lists+mjpeg-users@lfdr.de>; Mon,  6 Sep 2021 18:00:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mNH30-0007hz-UR; Mon, 06 Sep 2021 16:00:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <clabbe@baylibre.com>) id 1mNEre-0003bm-3y
 for mjpeg-users@lists.sourceforge.net; Mon, 06 Sep 2021 13:40:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h8fzMrlNfeqQ1V7Mw80vYgzWg31AUNU+8kCIzeOvUGI=; b=SK0nbrVgVo3RNd3ayDVey7wu+U
 MA4ZBtgS4ChahIwwDW//StyBKHSObC1Sx6Nd7Xa8eocFVBaYqn8H4+sJzcigqYWYuB/04oRRN9nJx
 vGngq0OH28S7Je0TLRAUg8Odfo/UL9uxKrgcwXsdbziB8y8fCe1JupAtY42cxauG1ppI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=h8fzMrlNfeqQ1V7Mw80vYgzWg31AUNU+8kCIzeOvUGI=; b=KRrN23ZBkR52S88KudcXDjEOhx
 oDms5sRjonFDr53xsNlN8/DQJe6DXCwCXVveCU/3dblMMsa4hk7DRhWfmMeMRMjOC6ILhVviQWsSd
 eDwp8FhyOjQ75q4jHiDQmiwIrTdKhKe1YcplKC4tktEN3rRvX6W1PzatUyYsyVNoSRPI=;
Received: from mail-wm1-f42.google.com ([209.85.128.42])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mNErW-00HPrA-Lj
 for mjpeg-users@lists.sourceforge.net; Mon, 06 Sep 2021 13:40:46 +0000
Received: by mail-wm1-f42.google.com with SMTP id
 j17-20020a05600c1c1100b002e754875260so4803972wms.4
 for <mjpeg-users@lists.sourceforge.net>; Mon, 06 Sep 2021 06:40:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=h8fzMrlNfeqQ1V7Mw80vYgzWg31AUNU+8kCIzeOvUGI=;
 b=je2IdFXBFDkVDGrZ/5L/zJzOOgyE3lZrrMAc5jKis+ikQ4QzVyyH8H4n6ukkmh/xyk
 pzBXlWwfxhhK3/LZHDkYYY+Ucdx611532nvBAD5hyazba83gwOma33BsStXJTr1RtskT
 nS1EWS9FHclna4c1zy6fUHixoJHpZZde3J+wypLKKw8wDd/6sWMXB6Ei7vFiLfu6Ccht
 Fv3FgSmZ3hfi40JMHNWSKEIyqyefR+rZ+YAIv9Xgj9xsXZfTlEshG0sDKn+wewU/cNe6
 vOkkVYqsEpUJB58rZ6GGDFzQEBzbAnBn+PPe1+KKA6TZvyUix0r8Wl95MxZYcoHTzbhn
 1a/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=h8fzMrlNfeqQ1V7Mw80vYgzWg31AUNU+8kCIzeOvUGI=;
 b=L9shSCS+pDJQTow7e+Y+9n1LhRVt+Rbs8cU6YZmOepQ6ks4ADq8ec04hMg6+cYz1a+
 UMkzY10Oi/nK2PzMQ+7Lgny/2lJwe20WP0fdIeUVk1HtrCxOSQxaXTJSbGEbpyED9BYV
 x74FNmiDa+zxPEMMEMU0npemYxZZepKfzKGpKcjNyOSS+AIjcUJpueaIRhoCVa0+QYUo
 bCAhhnQvcXmYQUspfEAVAUzAk1CC1NJifqaGwwjcEih9JCSkKksm7k0C5vTPK6VdHO3n
 kJQqcpj0wSIDQYQ0cWtZLoRCdnJF3sDH/aklkPRa+gptDe5djzXnOGGvUYG5CUG72NS7
 4jtg==
X-Gm-Message-State: AOAM531hxsKMdTZOiDywqT0srlxP/Ij4PnrECa4brQJnAxTnSPmipEJe
 QWUkFrR7mYNvKgFTYIHhr0wjJA==
X-Google-Smtp-Source: ABdhPJxSZNMrd0jxUL99QDIGbL3HxtYqrJ/yXjYhWzUID0G4CuSLLXg2Je/UOA0ZVhX9lg36hyCAuw==
X-Received: by 2002:a1c:28b:: with SMTP id 133mr11457428wmc.138.1630935632338; 
 Mon, 06 Sep 2021 06:40:32 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id d7sm7934372wrs.39.2021.09.06.06.40.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Sep 2021 06:40:32 -0700 (PDT)
Date: Mon, 6 Sep 2021 15:40:30 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <YTYaTk9+fCrwHbTG@Red>
References: <20210903191540.3052775-1-clabbe@baylibre.com>
 <20210903191540.3052775-7-clabbe@baylibre.com>
 <9318ec41-d884-2c1a-1190-3a93c3f5a3fb@xs4all.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9318ec41-d884-2c1a-1190-3a93c3f5a3fb@xs4all.nl>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Le Mon, Sep 06, 2021 at 12:41:32PM +0200, Hans Verkuil a écrit
    : > On 03/09/2021 21:15, Corentin Labbe wrote: > > The zoran driver is split
    in many modules, but this lead to some > > problems. > > One [...] 
 
 Content analysis details:   (-0.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.128.42 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.128.42 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1mNErW-00HPrA-Lj
X-Mailman-Approved-At: Mon, 06 Sep 2021 16:00:35 +0000
Subject: Re: [Mjpeg-users] [PATCH 6/8] staging: media: zoran: fusion all
 modules
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

Le Mon, Sep 06, 2021 at 12:41:32PM +0200, Hans Verkuil a =E9crit :
> On 03/09/2021 21:15, Corentin Labbe wrote:
> > The zoran driver is split in many modules, but this lead to some
> > problems.
> > One of them is that load order is incorrect when everything is built-in.
> > =

> > Having more than one module is useless, so fusion all zoran modules in
> > one.
> =

> After applying this patch I am no longer able to rmmod the module: it will
> always report that it is in use. This is with a Miro DC30.
> =

> So something is wrong with refcounting.
> =

> I do like the idea of merging all these modules, but it needs a bit more
> testing.
> =

> Regards,
> =

> 	Hans
> =


Hello

I am sorry, I was sure to have successfully removed the zoran module a coup=
le of time with my DC10.
Anyway I just acquired a DC30, so I will test it also (even if I believe th=
at model should not change anything).

Regards


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
