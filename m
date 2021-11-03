Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DBA94447CE
	for <lists+mjpeg-users@lfdr.de>; Wed,  3 Nov 2021 18:55:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1miKU6-0004J6-FH; Wed, 03 Nov 2021 17:55:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hverkuil@xs4all.nl>) id 1miI4l-0007Ph-K0
 for mjpeg-users@lists.sourceforge.net; Wed, 03 Nov 2021 15:21:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lnc+Z3B1xwnHwfUVEktMwFnDu5c5iQo3KkPktwgGScw=; b=jNBEibkl2xbOOoSyfUEJG1QeRB
 ZMMG9NhdCgRh7vKBdal0czFtDI2co/B3yUNa7Z13eeOPcry2n9cbOPznNEVsaIr08Oy/5i7IA9TiL
 9bZVLgfoEvlx0T8kBvidu6YV+N5e/8vmKyV7EGh0JHvwbATK+Dkt2CF7H5dMDrEhbLRA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lnc+Z3B1xwnHwfUVEktMwFnDu5c5iQo3KkPktwgGScw=; b=NNGAeQgQruN+nCbWqHrYSBP2zZ
 6x5WOT43/2u0jQPdYoaTqbTYJF8aacDQS7+SpZlg99IOp8zHuxsnRoRsWwGU/5flgXwepHFBX11ea
 Xar4m991mahYaFuFS13mr8aQUJrbs2vWM5Pu2pBoaB8isZnqu3yPSoLaD5R0S6Iz0zaM=;
Received: from lb2-smtp-cloud9.xs4all.net ([194.109.24.26])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1miI4f-0002QY-A6
 for mjpeg-users@lists.sourceforge.net; Wed, 03 Nov 2021 15:21:19 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud9.xs4all.net with ESMTPA
 id iI4UmXUEB030KiI4VmUuQk; Wed, 03 Nov 2021 16:21:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1635952863; bh=lnc+Z3B1xwnHwfUVEktMwFnDu5c5iQo3KkPktwgGScw=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=SQuJGTxJtv0/TrVwsQntTQZ6GzEoz6Tz/b2NngM+HJMNL/YyVdie7oyFoiAzy94BR
 MZeT4/hahnGK1OQQpbes6FMTaMWoofLgf4OwJMktQjtTkMScaIBwyfCYNgteG8rR1P
 UKB9ziYRh1MEGRxZkaGHsZUxTA33vE0FR8UPs0qLo/1awwIeHYHxPq6W636yBnbyC4
 D42fse1RzGxOy3n4lIMBoKjhJUeW23uMEeks6j6Y0dLX/c5a9bhVPYMZbEQtboUic7
 9BKBt7bg9S6q6e/5HPbpeYEXccQIwfsJUywhXmYmdLAjbRKDetwd9rrVEwdBqzZseC
 WAYMSOVJVS6Gw==
To: Corentin Labbe <clabbe@baylibre.com>, mchehab@kernel.org,
 gregkh@linuxfoundation.org
References: <20211026193416.1176797-1-clabbe@baylibre.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <a85c93db-e118-274f-d86a-d127c7399926@xs4all.nl>
Date: Wed, 3 Nov 2021 16:21:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211026193416.1176797-1-clabbe@baylibre.com>
Content-Language: en-US
X-CMAE-Envelope: MS4xfAYBF5iuKYzq6bTEbQifCIMKSGYUbDDi6NeAPNI8NyUqweNskuDPISythn3jsDYOgKG7A7WinzwchzWV8fLmS7rNM5Kgdi0xgCpiHpV1nkZCJ/eFGNnQ
 s4VS0gW7AU4CQ1F3KWRT9G5MPyYgoOtC/NF/u4n5p3LZyWUNKXjLwQnKb6Fjx60uT6bPeRSzKxMcNtdIbNQApfU67ve8yw/p0KzSs3kS2C26ighy2GhJ7ZQZ
 z5mUrQR65YTtmzaNeHlmAqmRJrKfXA9wrH1rYsILIzTe0OzCDXdfTFv3tcdBIiGS3Eq0WI1mJWBBbfMr8086TaWfqqqIwKfjOsYW8IK7+1KcdMOCqv1/zLKm
 UeIbZSaaIxLy0QZHnkuMb+4XQeX6lNA8X3zZqcEDY/0FyUzQK/ZcaPldrsxDCV47zT/+SJtKEaGaz6Gli/MV13ZC3rHQKK7aCRqpmr6zzvAgJUokREykgBte
 YCYDTRz9chnPWKOUUwWtfc8ZfiFnlTvKR5HxKOUBrzXEkKuqwSAeROmsEnw=
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Corentin, On 26/10/2021 21:34, Corentin Labbe wrote: >
 Hello > > The main change of this serie is to fusion all zoran related modules
 in > one. > This fixes the load order problem when everything is built-in.
 Content analysis details:   (-2.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linuxtv.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [194.109.24.26 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [194.109.24.26 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1miI4f-0002QY-A6
X-Mailman-Approved-At: Wed, 03 Nov 2021 17:55:35 +0000
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
Cc: mjpeg-users@lists.sourceforge.net, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

Hi Corentin,

On 26/10/2021 21:34, Corentin Labbe wrote:
> Hello
> 
> The main change of this serie is to fusion all zoran related modules in
> one.
> This fixes the load order problem when everything is built-in.

I've been testing this series, and while the module load/unload is now working,
I'm running into a lot of other v4l2 compliance issues.

I've fixed various issues in some follow-up patches available in my tree:

https://git.linuxtv.org/hverkuil/media_tree.git/log/?h=zoran

At least some of the worst offenders are now resolved. Note that the patch
dropping read/write support relies on this patch:

https://patchwork.linuxtv.org/project/linux-media/patch/4f89b139-13b7-eee6-9662-996626b778b0@xs4all.nl/

But there is one really major bug that makes me hesitant to merge this:

This works:

v4l2-ctl -v pixelformat=MJPG,width=768,height=576
v4l2-ctl --stream-mmap

This fails:

v4l2-ctl -v pixelformat=MJPG,width=768,height=288
v4l2-ctl --stream-mmap

It's an immediate lock up with nothing to indicate what is wrong.
As soon as the height is 288 or less, this happens.

Both with my DC30 and DC30D.

Do you see the same? Any idea what is going on? I would feel much happier
if this is fixed.

Note that the same problem is present without this patch series, so it's
been there for some time.

Regards,

	Hans

> 
> Regards
> 
> Changes since v2:
> - added the 4 latest patchs
> - removed DEBUGFS kconfig option
> - fixed Dan Carpenter's reported codec issues
> - fixed kernel test robot's reported issues on vb2_dma_contig_set_max_seg_size()
> 
> Changes since v1:
> - add missing debugfs cleaning
> - clean some remaining module_get/put functions which made impossible to
>   remove the zoran module
> - added the two latest patchs
> 
> Corentin Labbe (14):
>   staging: media: zoran: move module parameter checks to zoran_probe
>   staging: media: zoran: use module_pci_driver
>   staging: media: zoran: rename debug module parameter
>   staging: media: zoran: add debugfs
>   staging: media: zoran: videocode: remove procfs
>   staging: media: zoran: fusion all modules
>   staging: media: zoran: remove vidmem
>   staging: media: zoran: move videodev alloc
>   staging: media: zoran: move config select on primary kconfig
>   staging: media: zoran: introduce zoran_i2c_init
>   staging: media: zoran: fix usage of vb2_dma_contig_set_max_seg_size
>   staging: media: zoran: clean unused code
>   staging: media: zoran: fix counting buffer in reserve
>   staging: media: zoran: DC30 encoder is not adv7175
> 
>  drivers/staging/media/zoran/Kconfig        |  38 +-
>  drivers/staging/media/zoran/Makefile       |   8 +-
>  drivers/staging/media/zoran/videocodec.c   |  68 +---
>  drivers/staging/media/zoran/videocodec.h   |   4 +-
>  drivers/staging/media/zoran/zoran.h        |  18 +-
>  drivers/staging/media/zoran/zoran_card.c   | 400 +++++++++++++--------
>  drivers/staging/media/zoran/zoran_device.h |   2 -
>  drivers/staging/media/zoran/zoran_driver.c |   8 +-
>  drivers/staging/media/zoran/zr36016.c      |  25 +-
>  drivers/staging/media/zoran/zr36016.h      |   2 +
>  drivers/staging/media/zoran/zr36050.c      |  24 +-
>  drivers/staging/media/zoran/zr36050.h      |   2 +
>  drivers/staging/media/zoran/zr36060.c      |  23 +-
>  drivers/staging/media/zoran/zr36060.h      |   2 +
>  14 files changed, 317 insertions(+), 307 deletions(-)
> 



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
