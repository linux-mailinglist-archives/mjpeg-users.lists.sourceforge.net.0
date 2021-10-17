Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EBCEB4324C6
	for <lists+mjpeg-users@lfdr.de>; Mon, 18 Oct 2021 19:19:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mcWI1-0007Ih-5K; Mon, 18 Oct 2021 17:19:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <clabbe@baylibre.com>) id 1mcCu7-0003v5-AJ
 for mjpeg-users@lists.sourceforge.net; Sun, 17 Oct 2021 20:37:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=B17ugjfsl4NIFBjvUZANXnVzu0w3U/j7jZVs0/846lc=; b=ZD6Om+Up5iXiFtY8JLmvxx4/Nv
 i0JhxqlfJRqyIoV86QhGZYzg/YT1XD3zheF2D/AjlP7twn452k1vaign9l9e0Gw4F4Y/JZrMg3Z18
 qgV3MvigzqJ0IhYUadIF/EgRyb1JauRtojZC3c93vKTRpIh08i5qcGI+tkICn1UYJkWw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=B17ugjfsl4NIFBjvUZANXnVzu0w3U/j7jZVs0/846lc=; b=gYWY7dArg2/hI7X6PdMeR3EPF1
 GDAW+eoOiHVXiUIJXXKWRPhivAOR0XFTpqo99Tc5TAtiX7T+bf4kOMzIxGWydNQFEtkxX8Oiz1aLy
 CZSmUhEudlPt4/KdlviNncb9UNQk2kTn9vFeQ7UtqYAKaJzjNfcP+eFV8/iQZ1R1n/so=;
Received: from mail-wm1-f46.google.com ([209.85.128.46])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mcCu2-003U2w-4s
 for mjpeg-users@lists.sourceforge.net; Sun, 17 Oct 2021 20:37:11 +0000
Received: by mail-wm1-f46.google.com with SMTP id
 y16-20020a05600c17d000b0030db7a51ee2so4817123wmo.0
 for <mjpeg-users@lists.sourceforge.net>; Sun, 17 Oct 2021 13:37:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=B17ugjfsl4NIFBjvUZANXnVzu0w3U/j7jZVs0/846lc=;
 b=DATvT66RtKTqRcxQ9DWqOw2LxPNEGsz9rz51ZHhCY7hkVrbU3TM8WgLKtqB+1j4NyL
 wOUXP5Pc+qYbRIzl7Tmo3hruNmndRq3PUSPs5fER8llI/32hmJv0tuy87Fx0l4yMBSGJ
 QAcLnAD7mLHM3T/rr5ozBJ6lOdIMuIFy998tMTx1IB6/njjPVVAG3de0W+hPKZy2zyno
 bZALe76UMxF0bMwyhigeepcN8QLEwXmQqVCLv52NpX8Pf9y6tb0gPapICKaYvo7I6yJd
 wBSQ2o112Ll/ch3V1LYR7ZpcNLZ9lq6kEIutd5V5Rs7ZmMSuZRHpem2O3Fl9FiffYya7
 JXpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=B17ugjfsl4NIFBjvUZANXnVzu0w3U/j7jZVs0/846lc=;
 b=oKKPuD0EnjSM7+/IjvCSlxAEHBJvh0Wg/WptX5R4J244mcWg2am3X8XsURZfR1NA3n
 EZtcgUTtVnS8PYo9xzV54SGkVBHAUWHeQvlrBUQ0l1BkUhXVLdP4m5oBV6mDqoAnN+yE
 OYHXpKKKLBgQLzfUHKCfV+/esw+8Xbps6UGPDCuADok7ns1iA/QytNZEhN4pnCRW8/S2
 skQ8nMHJre2200Nbsrdsm3Z4kWzGe2EHd2/uKv3rOni7bFN6nUzlUidyaAQoQWvOlud0
 jM4SvpZuIT1LfUgrD+Rn4YxakS4AylD9LNV7FRA+vT6rh7pjgxocYjMgIx0XW6B+sztX
 /E7g==
X-Gm-Message-State: AOAM531jr1kkdAXQR9/DZECv7fR5cPda5e8kCd3L+ZSN2r0XulditC+m
 cyQM/g4vVm8fJjv58vuRwwR6f4c2Hbcy1Q==
X-Google-Smtp-Source: ABdhPJwcDtpPg2mxmJM2XYwjmyUOwrYqD4Lkj7YPm36EiMTbS1W1XW9FfS2RUez7WsF+rqNC5j9qSQ==
X-Received: by 2002:a05:600c:1989:: with SMTP id
 t9mr26088433wmq.48.1634501108682; 
 Sun, 17 Oct 2021 13:05:08 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id z6sm10909246wro.25.2021.10.17.13.05.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 Oct 2021 13:05:08 -0700 (PDT)
Date: Sun, 17 Oct 2021 22:05:06 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <YWyB8kwsqAvHMuhb@Red>
References: <20211013185812.590931-1-clabbe@baylibre.com>
 <20211013185812.590931-5-clabbe@baylibre.com>
 <20211014073752.GM8429@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211014073752.GM8429@kadam>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Le Thu, Oct 14, 2021 at 10:37:52AM +0300, Dan Carpenter a
   écrit : > On Wed, Oct 13, 2021 at 06:58:06PM +0000, Corentin Labbe wrote:
   > > +config VIDEO_ZORAN_DEBUG > > + bool "Enable zoran debugfs" > > [...] 
 
 Content analysis details:   (-0.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.128.46 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.128.46 listed in wl.mailspike.net]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1mcCu2-003U2w-4s
X-Mailman-Approved-At: Mon, 18 Oct 2021 17:18:55 +0000
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

Le Thu, Oct 14, 2021 at 10:37:52AM +0300, Dan Carpenter a =E9crit :
> On Wed, Oct 13, 2021 at 06:58:06PM +0000, Corentin Labbe wrote:
> > +config VIDEO_ZORAN_DEBUG
> > +	bool "Enable zoran debugfs"
> > +	depends on VIDEO_ZORAN
> > +	depends on DEBUG_FS
> > +	help
> > +	  Say y to enable zoran debug file.
> > +	  This will create /sys/kernel/debug/CARD_NAME/debug for displaying
> > +	  stats and debug information.
> =

> Why bother with a CONFIG?  Just make it always on?
> =


Hello

I love to provides choice to user (and so avoid a dep on DEBUG_FS), even if=
 I think I am the only one remaining user.

> > @@ -1286,6 +1321,12 @@ static int zoran_probe(struct pci_dev *pdev, con=
st struct pci_device_id *ent)
> >  =

> >  	zr->map_mode =3D ZORAN_MAP_MODE_RAW;
> >  =

> > +#ifdef CONFIG_VIDEO_ZORAN_DEBUG
> > +	zr->dbgfs_dir =3D debugfs_create_dir(ZR_DEVNAME(zr), NULL);
> > +	debugfs_create_file("debug", 0444,
> > +					      zr->dbgfs_dir, zr,
> > +					      &zoran_debugfs_fops);
> =

> This whitespace is weird.

Definitively Yes, fixed!

Thanks
Regards


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
