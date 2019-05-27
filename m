Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F902ACCF
	for <lists+mjpeg-users@lfdr.de>; Mon, 27 May 2019 03:38:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1hV4aT-00032a-MJ; Mon, 27 May 2019 01:38:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <drewanderson1900@gmail.com>) id 1hV4aS-00032T-NX
 for mjpeg-users@lists.sourceforge.net; Mon, 27 May 2019 01:38:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:Message-Id:Subject:Date:Mime-Version:
 Content-Transfer-Encoding:Content-Type:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+Fa+3vvewkcx2pb5Ok11IJ5w23UBRdA9dlAqrQS+qEM=; b=Z1uKpkvR/ravOOZVQXcfdHSA7N
 IU1RlkYFtFceXH2oX+6Hqrn5mPj7fucY+FgtVc4gnA7IAGcAMtBgw6oCiZbKXHJz/a7Fx4hbdLt1W
 q8sw0MwXkQk+h+mq3xJkAAE2DJHlHuoQOzbXu05O/r/r8WgyXR1GSw8G60bVEvvv6/ts=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:Message-Id:Subject:Date:Mime-Version:Content-Transfer-Encoding:
 Content-Type:From:Sender:Reply-To:Cc:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+Fa+3vvewkcx2pb5Ok11IJ5w23UBRdA9dlAqrQS+qEM=; b=EwG88v9lN53s1fHH7cOjcc5E/s
 od2gJ0Yx8fwz8AwcOgsJNCjOKFXLMUeKwS+x9eWo2ysLJwrxTKiiSI2vkx62PU+aM46U3ZqkZAHqv
 uN41vpF9qKie3l+MS57Z5RjlEc2GWVjkHrL8x5cww1ux48Q5Ke9JiboP5uBlV5OLjJOo=;
Received: from mail-pg1-f178.google.com ([209.85.215.178])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hV4aR-003qru-H4
 for mjpeg-users@lists.sourceforge.net; Mon, 27 May 2019 01:38:04 +0000
Received: by mail-pg1-f178.google.com with SMTP id t1so8146956pgc.2
 for <mjpeg-users@lists.sourceforge.net>; Sun, 26 May 2019 18:38:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:content-transfer-encoding:mime-version:date:subject:message-id
 :to; bh=+Fa+3vvewkcx2pb5Ok11IJ5w23UBRdA9dlAqrQS+qEM=;
 b=imLqoP1Lpi9T7Babg96DEFrvf0SdXvVyTsYymWtptrxaw1JRUt+vhsdM3nhZhpZTNV
 cINEa/fAs+IIUjT2cTsI8Gks6rz6jfRyIumHyMfvhcN9dVgoBHIyn703LQymMimWy6zb
 T9uQFipKLz2bmk8l3olKYMBR/Bqr/XiNO49T8u6MXpnnwrpndoyTzL1CiblkpZu0LxU/
 YcNIV1mH1Tzln7YdNVwfQHnRjFn1Rpj9L3rtzaQpNEAoXmqBQWKBQY4tS9eqmpM4xlgN
 HnOZ9K47ZyQoKCVcbyORzX12rJ4Jlo3GfbyPUH5xpWwZb5yoizuDD3s72PpfBcA2kn7R
 mzlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:content-transfer-encoding:mime-version:date
 :subject:message-id:to;
 bh=+Fa+3vvewkcx2pb5Ok11IJ5w23UBRdA9dlAqrQS+qEM=;
 b=l041wynyKAxJGPrpX+yY4NRrZr3jMvEvBjm62qMsa812W0OE8QOy+0+jmDvrR3M/rk
 m6wUtSF9arp4Q+e/T30dOnVe3YxyKW6oMJHDUYRayp116I7aHDJrqSZskedcuijC6LJ3
 sFQaakMVt8hm8qIQMJz9j0GUK79+Qrh3/n7rJpgJB8ykpXIUuKBFb9IR7i2EV59Vsmp7
 2lHQhQp3nai7RIo+XS9EgIBt4E7sS2LPo/C0YZ4w/ocigCaM/Q4PZ3GyeTXV9exIooeC
 gdTqjUuDU0zKawQrZasUIbhUyXHx+s1f+kirvJFanv9sd/VLN4jXfBKYtbz7uaPa/ec9
 rnHA==
X-Gm-Message-State: APjAAAVqQARnQn1+PJA66d7MQUUVtZD4NLgzDpKUQEtahI1nUL603VgD
 Gx2cABFaho7wzC/Lro6CcVa3t/dL
X-Google-Smtp-Source: APXvYqz0EZXhWBLJKY6vU7DNi4Ib5EmQfv0IzK4rdZXVDI9CsV9it5OZk2OTJYK1Y1ulDgtnEtf/1g==
X-Received: by 2002:a65:5347:: with SMTP id w7mr66954095pgr.375.1558921077589; 
 Sun, 26 May 2019 18:37:57 -0700 (PDT)
Received: from [192.168.1.6] (cpe-76-90-138-222.socal.res.rr.com.
 [76.90.138.222])
 by smtp.gmail.com with ESMTPSA id l141sm10949826pfd.24.2019.05.26.18.37.57
 for <mjpeg-users@lists.sourceforge.net>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 26 May 2019 18:37:57 -0700 (PDT)
From: Drew Anderson <drewanderson1900@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Sun, 26 May 2019 18:37:56 -0700
Message-Id: <981A6FA6-6DD9-414F-9BD5-444B742D8299@gmail.com>
To: mjpeg-users@lists.sourceforge.net
X-Mailer: iPhone Mail (16E227)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (drewanderson1900[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.178 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (drewanderson1900[at]gmail.com)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hV4aR-003qru-H4
Subject: [Mjpeg-users] True cbr for MPEG 1
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

Hello,

I need to create MPEG 1 video that is flagged and truly 1500 cbr. I have tried many things. I can submit settings but I wanted to ensure first that cbr is truly still supported. 

For instance, Format 1 which is VCD comes up variable. Or If I set it to format 0 and use - -cbr alone it will still remain variable. The list goes on...

Any help is gracefully appreciated,
Drew



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
