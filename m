Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E550539D9A5
	for <lists+mjpeg-users@lfdr.de>; Mon,  7 Jun 2021 12:29:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1lqCVL-0002Q5-6u; Mon, 07 Jun 2021 10:29:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <shadowlord@utanet.at>) id 1lqCVK-0002Pu-7y
 for mjpeg-users@lists.sourceforge.net; Mon, 07 Jun 2021 10:29:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eQnahQ3kEGhV/zKKXg4KEL4N3fImsC6V5zn2oDhdx5o=; b=LE2ORHPgAkSj2AZDwgPbNrLCJ1
 RILp0hiAP525QbqnG4xlpPmIZN1ct7Z+QTbWZXtv56fK/7xEhMKGQErChQ5mbIio+ADHeL/K7dYEb
 HvXzylZu4XoXC904O69FIOsepHT85J/3Eug0DWwyY43rcFUPkGlfDpNq+Re/APBmDSFs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eQnahQ3kEGhV/zKKXg4KEL4N3fImsC6V5zn2oDhdx5o=; b=HS1vVwjBEARFkSuZgxeajiAmAV
 wNWxtO/YXJBFx03KOavbLd0pvKSg4DHWULmeCUFMyokIqznrZWQT7aRUkyG7UJKrYgNnkzZkRQLmK
 jW7km0iZALD5dC4/GZh1a53AvmZNsmVpHzCN/nn0f2zDWQ1fcxUOZY2w4WVV2lv46MEM=;
Received: from taro-1.utanet.at ([213.90.36.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lqCV8-00052Y-Fx
 for mjpeg-users@lists.sourceforge.net; Mon, 07 Jun 2021 10:29:10 +0000
Received: from pam-s.drei.host ([213.90.36.66])
 by taro.utanet.at with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <shadowlord@utanet.at>)
 id 1lpkaJ-0008MX-CR; Sun, 06 Jun 2021 06:40:27 +0200
Received: from 193-83-160-167.oan.highway.a1.net ([193.83.160.167]
 helo=[10.20.30.37])
 by pam-s.drei.host with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <shadowlord@utanet.at>)
 id 1lpkaJ-00019a-9e; Sun, 06 Jun 2021 06:40:27 +0200
To: William Lum <lumwaiman@gmail.com>,
 Mjpeg Users <mjpeg-users@lists.sourceforge.net>
References: <CA+84gYsnKaCg_q5hvoeNeHNOR+QfBMs_UP5P6HvgZ1GLyxRnwA@mail.gmail.com>
 <b12d2efc-73a6-adf0-09db-313ab9861d7d@utanet.at>
 <CA+84gYtje4TyUPNA_-ntjKOO-c2Ar3wjc==X7UH6Rka0khhC5g@mail.gmail.com>
 <32f0a419-2012-a662-5d8a-4d2b039942ec@utanet.at>
 <CA+84gYvj12J_kyxHdu9aNR9djm4JY1Qmywz3A9rXCLN07o=Y8g@mail.gmail.com>
 <48397ad2-f5c7-8472-c048-ebfeb0f5ca0d@utanet.at>
 <CA+84gYvq74z3mTp5OpY10jSVPWQtDUPO-YybOj=gNqoyEUWPbg@mail.gmail.com>
 <15ef888e-1545-1db9-2782-6a7a5c132d82@utanet.at>
 <CA+84gYvLZHVzrzPUZRU6K5X8n6inpuG9uKtBScqhXcnuu-pr=A@mail.gmail.com>
 <35adce91-5952-e788-b645-9683e9d6c657@utanet.at>
 <CA+84gYv3S6dVpP3RZgLCv_TZ7Fcuw8fOhsmO9tV8PBB24tHaRw@mail.gmail.com>
From: Bernhard Praschinger <shadowlord@utanet.at>
Message-ID: <1dd176fd-e3d9-1172-0be7-a6d2c1c56ebb@utanet.at>
Date: Sun, 6 Jun 2021 06:40:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 SeaMonkey/2.53.5.1
MIME-Version: 1.0
In-Reply-To: <CA+84gYv3S6dVpP3RZgLCv_TZ7Fcuw8fOhsmO9tV8PBB24tHaRw@mail.gmail.com>
X-H3G-Authenticated-As: 2492d812503ae882f041a3ed11d939a345349e8a
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1lqCV8-00052Y-Fx
Subject: Re: [Mjpeg-users] Lubuntu doesn't seem to recognize IOmega Buz
 capture card
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

Hallo,

William Lum wrote:
> Hi,
> 
> Thank you so much for continuing to try to help me.  I tried what you
> suggested... some modules didn't load.
> 
> ubuntu@ubuntu:~$ modprobe i2c-core
> ubuntu@ubuntu:~$ modprobe i2c-algo-bit
> ubuntu@ubuntu:~$ modprobe saa7111
> modprobe: FATAL: Module saa7111 not found.
Means that this module is not included in the kernel.

> ubuntu@ubuntu:~$ modprobe saa7185
> modprobe: ERROR: could not insert 'saa7185': Operation not permitted
When you see "operation not permitted" it could mean that you do not 
have sufficient rights. Reading your commandline I would guess that you 
are not root. Try adding sudo infrot the command that did not work:
sudo modprobe saa7185
and:
sudo modprobe zr36060

My (and googles) other ideas about the problem sound strange and more 
work like disabling secure boot.

> ubuntu@ubuntu:~$ modprobe zr36060
> modprobe: ERROR: could not insert 'zr36060': Operation not permitted
> ubuntu@ubuntu:~$ insmod saa7111.ko
> insmod: ERROR: could not load module saa7111.ko: No such file or directory
> ubuntu@ubuntu:~$ insmod saa7185
> insmod: ERROR: could not load module saa7185: No such file or directory
> ubuntu@ubuntu:~$ insmod saa7185.ko
> insmod: ERROR: could not load module saa7185.ko: No such file or directory
> ubuntu@ubuntu:~$ insmod zr36060.ko
> insmod: ERROR: could not load module zr36060.ko: No such file or directory
> 
> Thoughts?
> 
> On 4/22/21, Bernhard Praschinger <shadowlord@utanet.at> wrote:
>> Hallo,
>>
>> William Lum wrote:
>>> Hi,
>>>
>>> I looked in /proc/scsi/advansys and there is a file 13:
>>>
>>> AdvanSys SCSI 3.4: PCI Ultra: IO 0xAE00-0xAE0F, IRQ 0x15
>>>
>>> Device Information for AdvanSys SCSI Host 13:
>>> Target IDs Detected: 2, (2=Host Adapter)
>> [...]
>>> Does this mean it's loaded?
>> It looks at least good. It means that the PCI Switch on the card works.
>>
auf hoffentlich bald,

Berni the Chaos of Woodquarter

Email: shadowlord@utanet.at
www: http://www.lysator.liu.se/~gz/bernhard


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
