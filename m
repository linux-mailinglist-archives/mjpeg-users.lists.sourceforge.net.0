Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CCCFFBA06B
	for <lists+mjpeg-users@lfdr.de>; Sun, 22 Sep 2019 05:53:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1iBswc-0005m8-MU; Sun, 22 Sep 2019 03:53:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <clabbe.montjoie@gmail.com>) id 1iBinq-0003LN-84
 for mjpeg-users@lists.sourceforge.net; Sat, 21 Sep 2019 17:04:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=55amjIu2TF3CCD9dfZQ7gR+oWC1rkKKs0l26DxHMq2I=; b=hfNZeCkwcnhol2CW+QGMi7VXbp
 oiRtFlkDQsIad/fEuQJkAdRQb3Yj0SxaHTt8TDDbhhO+4diJbtDghaHJmRzGHe4aQDQD9hiEwtNDc
 7qk5E2v0pkTyjuKDh0EOTHDe5hb7yb9YvteftkE+azRMklqMmcCPGHbZ2Uc4HJO0if/A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=55amjIu2TF3CCD9dfZQ7gR+oWC1rkKKs0l26DxHMq2I=; b=Z
 O+zwlkjUKsPjbmco4ljEFk1pLn43OtLiYpoq9RJpBBeMZzD8LWf685SzjvHY+QmBbueKZWQozKmkS
 nD4LMyTcdza7QrhjxRxLLWpzFBxh54wzOd5dAtQTqSWOMS0RSrMTL38Q/VmjB+YrLvZXwxKn75dRa
 /Hn6UCecqpdwGleA=;
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iBinm-001rds-8I
 for mjpeg-users@lists.sourceforge.net; Sat, 21 Sep 2019 17:04:10 +0000
Received: by mail-wr1-f67.google.com with SMTP id i18so9720100wru.11
 for <mjpeg-users@lists.sourceforge.net>; Sat, 21 Sep 2019 10:04:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=55amjIu2TF3CCD9dfZQ7gR+oWC1rkKKs0l26DxHMq2I=;
 b=ux3fQc910IEW3PhTVTjkp+MKFpIHLHjhin61mmPdzaqD9j6z9Bh1v+6QQIXhqsn8V8
 vVfT0zEhnayS+nlKVow11xrXEVvHHaOoIYgkv8AtvQxY3lmoQfBeBb5JiJdi8VyPToTs
 NLuqLWTcx2RzwPnzxqQLXxG0IMIm5org8JvP4E7mNyF9PqH1roOYKkWrcqcdQJqnc7qC
 ufHm0YBE23Z2ijPma0C33C6dO3u9XbnhjtvuoOGEjl0outphR/3WsHkHiy1NDb3QG/Mz
 40zZlD5ILulJelu3ipm5lWBQq8oPrUvBdrfdzIlPjhMp9yFomWqEAHOb+UVp1PfkgfiX
 hMfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=55amjIu2TF3CCD9dfZQ7gR+oWC1rkKKs0l26DxHMq2I=;
 b=evxcqZHdMVl+rCUUaYcyaavfL5AB9Gks+vw4kKZ/RIE7wlhVB8OwobNI/vTUmgxKfO
 Yh6vOLMeQcJOW663sxqVWEgYIjO1am9t6MZyi/XTVskzYVlyAgpJEdVoZB5knR/YAtOH
 bf4b348BTZFYImVTNq8RQlh6O1WEafX86PUSnhOhHmpOCy4gEAX26079uUmOgXA5Aa8x
 XY44F/N4MAKU+t96xmc2Z7s48UYZuL5zHkveZ2Hzt83c2UouPbNg5/UFWWYB0C9+mmye
 zzvfbUQl2tyEKsKes9qnRTkfl/0yq+pPMC1o/cOKZcZveDxXuspnte85A5jWJRNuS3K0
 85mQ==
X-Gm-Message-State: APjAAAWM/wCtvF+p9xr2DT7BZ1FxwXuD9bPU6XJ+qnhfkCXp45N2vjnY
 Re4IhWKOQMWTBVNc+EJLoG0bXiZr
X-Google-Smtp-Source: APXvYqxFL84KLpSZMc5/N059+0hlyRMOj1E0IZ+6Y7dGH/TmX232EhUn0HdzjZ8RYcOqvPmaKLSWRw==
X-Received: by 2002:adf:de08:: with SMTP id b8mr14928562wrm.200.1569085439582; 
 Sat, 21 Sep 2019 10:03:59 -0700 (PDT)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id t14sm5136519wrs.6.2019.09.21.10.03.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 21 Sep 2019 10:03:59 -0700 (PDT)
Date: Sat, 21 Sep 2019 19:03:57 +0200
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: mjpeg-users@lists.sourceforge.net, linux-media@vger.kernel.org,
 mchehab@kernel.org, laurent.pinchart@ideasonboard.com
Message-ID: <20190921170357.GA26626@Red>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (clabbe.montjoie[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iBinm-001rds-8I
X-Mailman-Approved-At: Sun, 22 Sep 2019 03:53:54 +0000
Subject: [Mjpeg-users] bringing back media/zoran driver
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

hello

I am the owner of a zoran based DC10+ card.
I am in the need of using it since yesterday and I found that its driver was removed.

Reverting the removing patch made to a temporary working situation.

If I understand correctly, it was removed due to lack of vb2 convertion.
If I am able to do this vb2 conversion, does bring it back in mainline will be posssible ?
In that case I am ready to assume to be the maintainer if needed.

Regards


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
