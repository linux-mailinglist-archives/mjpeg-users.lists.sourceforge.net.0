Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C4ABFE24FB
	for <lists+mjpeg-users@lfdr.de>; Wed, 23 Oct 2019 23:15:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1iNNyf-0001Uj-KJ; Wed, 23 Oct 2019 21:15:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <SRS0=S7674Y=YQ=jankom.net=janos@eigbox.net>)
 id 1iNNye-0001Ub-Ed
 for mjpeg-users@lists.sourceforge.net; Wed, 23 Oct 2019 21:15:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=f/1Z5twMtxFKOH9SWQOyfIa4TWDVbpEefsGMSX3bmOw=; b=fhvJ/ZqpH6v9zjmWo4OFqRoZBn
 IbcIiohA9XiVP2+kkvFwWZgAkpSTTrNsXS2etRIj49necotXtpD/NA8iWGcW2nHWt/3rTz6lqHwc/
 6iKVP05POsanBwf3ngAsoEg8DS7Dy60zf7wZq9D1ACLC3IQy5yase5wPGNoLb0sstTCY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:
 References:To:Subject:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=f/1Z5twMtxFKOH9SWQOyfIa4TWDVbpEefsGMSX3bmOw=; b=nIbNiQBg0NILVNo27viLr1880F
 A2MC07NVAEeTD6PfHFtQaB4e19+B1uWTYFaYEg4vSz0HRpa8FkgJ9khRSHY4LEMaCanTfKMqmCGAz
 MCM/sr6SxRNBoDUNh43YSxTJVNxxSAb5a2fkvzid1+IccUYisg0Ls7/ZJrvSPLc/83/4=;
Received: from bosmailout04.eigbox.net ([66.96.185.4])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iNNyb-000mHU-LR
 for mjpeg-users@lists.sourceforge.net; Wed, 23 Oct 2019 21:15:32 +0000
Received: from bosmailscan13.eigbox.net ([10.20.15.13])
 by bosmailout04.eigbox.net with esmtp (Exim) id 1iNNyV-0000mB-D7
 for mjpeg-users@lists.sourceforge.net; Wed, 23 Oct 2019 17:15:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=jankom.net; 
 s=dkim;
 h=Sender:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:
 References:To:Subject:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=f/1Z5twMtxFKOH9SWQOyfIa4TWDVbpEefsGMSX3bmOw=; b=Gl+n3D4pc64kb9/HMZ1OsugV1u
 XyMTkku4ympzVPP2cuUZo5OSDcSRhVPSTguXh/930J2KDPvzrZq4HCpLrNXhgSBzT9F8W57TY9Y6K
 8ppCli6Xcuv0fNMOy6JZYj0Xqc+fkfTYpWjQcloLT71v4r15SwI2zjMEQxN5JlS0GC+L+7oSSF1Ir
 4U/MEirdpqFr6ktAt1n/uLakkaWTBqYak2dFJC5wCLtlDPWwkjwpJ5T25WzhXwfmyKSyGELLB1FhV
 +VQ9oqf4y06/0KnUA2KSMKnqTZdyXDERCt3HvWeRd9hWkoZvMtVJmms5AZsRvGWAbNgc9W1MuLAe8
 I5Mf8rHA==;
Received: from [10.115.3.32] (helo=bosimpout12)
 by bosmailscan13.eigbox.net with esmtp (Exim) id 1iNNyV-0007FD-BL
 for mjpeg-users@lists.sourceforge.net; Wed, 23 Oct 2019 17:15:23 -0400
Received: from bosauthsmtp07.yourhostingaccount.com ([10.20.18.7])
 by bosimpout12 with 
 id H9FL21004099BUA019FP6d; Wed, 23 Oct 2019 17:15:23 -0400
X-Authority-Analysis: v=2.2 cv=BKTDlBYG c=1 sm=1 tr=0
 a=x8qw8EAkfcRkIpZA8Q87Bg==:117 a=4ZoZwTRS3OZv0fGbSO5GMQ==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=XobE76Q3jBoA:10 a=K1r92t-URfIA:10
 a=r77TgQKjGQsHNAKrUKIA:9 a=VR_l9c5x_UvOC00tK2kA:9 a=QEXdDO2ut3YA:10
 a=rMe13fAZFJ-enBeOmZcA:9 a=aDCaJiM4cDwnFr6Y:21 a=_W_S_7VecoQA:10
Received: from ip-184-209-14-133.spfdma.spcsdns.net ([184.209.14.133]:59138
 helo=[192.168.43.98]) by bosauthsmtp07.eigbox.net with esmtpa (Exim)
 id 1iNNyO-0002sC-EF; Wed, 23 Oct 2019 17:15:20 -0400
To: Bernhard Praschinger <shadowlord@utanet.at>,
 MJPEG-tools user list <mjpeg-users@lists.sourceforge.net>
References: <72e946c8-6e65-1aac-b0ac-233142a3d85d@jankom.net>
 <f9198f58-8ca5-9b96-b0ff-cc250bd328c3@utanet.at>
 <4d5ce88d-a2b8-d575-6daa-fd693fd15f9b@jankom.net>
 <5e0de915-640c-8b5c-0a91-06588580fb6c@jankom.net>
 <bceb900a-53f5-4eed-0f8d-9adfe08e1e92@utanet.at>
From: Janos G Komaromi <janos@jankom.net>
Openpgp: preference=signencrypt
Autocrypt: addr=janos@jankom.net; prefer-encrypt=mutual; keydata=
 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
 UYUTIV2sdQ==
Message-ID: <992c1012-56ad-6fa2-549a-673ffb3c4ce6@jankom.net>
Date: Wed, 23 Oct 2019 17:15:12 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <bceb900a-53f5-4eed-0f8d-9adfe08e1e92@utanet.at>
Content-Language: en-US
X-EN-UserInfo: 44a69bc9b6dca178582a57c3954217da:931c98230c6409dcc37fa7e93b490c27
X-EN-AuthUser: janos@jankom.net
X-EN-OrigIP: 184.209.14.133
X-EN-OrigHost: ip-184-209-14-133.spfdma.spcsdns.net
X-Spam-Score: 1.2 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [66.96.185.4 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: nouveau_vieux_dri.so]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iNNyb-000mHU-LR
Subject: Re: [Mjpeg-users] capture card not working with nvidia driver
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
Content-Type: multipart/mixed; boundary="===============7782679426642336562=="
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

This is a multi-part message in MIME format.
--===============7782679426642336562==
Content-Type: multipart/alternative;
 boundary="------------E995C78E38D60C49A0951BF1"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------E995C78E38D60C49A0951BF1
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hallo,


On 10/23/19 12:55 PM, Bernhard Praschinger wrote:
> Hallo
>
> The name of the missing so: nouveau makes me think that libgl tries to
> load something mesa related. I have the file on my opensuse in the RPM
> Package: Mesa-dri-nouveau
> (Mesa DRI plug-in for 3D acceleration via Nouveau)
>
> Maybe CentOS has also a package that provides the library.
>
I=C2=A0 have checked the CentOS-6 rpm resources but did not find anything=

mesa nouveau related. I do have a bunch of mesa packages installed, thoug=
h.

> When I remember correct you wanted to used the original nvidia driver.
> And for some strange reason the system want's now to load the mesa
> driver and not the nvidia driver.
>
Yes. xawtv works with nv driver, but not with nvidia proprietary driver
or the nouveau driver CentOS-6 has. I can live with that since I can
boot into any of these installations. The only problem with the nv
driver boot is that it cannot fully utilize my 24" LCD display - which
is OK. It looks like the CentOS nouveau driver is more stable than my
highly customized - and probably bugged up - Fedora-3 installation. So I
was happy to find CentOS-6 that works on my old 32-bit machine and has
the nouveau driver. Apparently the dri-vieux is missing somehow.

Strangely, I encountered the same problem when I updated the CentOS-6
according to its requirements, which included a firefox update. Now
firefox would not start because of the missing dri-vieux. So I reverted
back to the non-updated version of CentOS firefox, and it works again. I
will do some further research on a CentOS forum. Maybe that will fix
xatv as well. I'll report on it - thanks.
> Janos G Komaromi wrote:
>> Update:
>>
>> Found rpm package for the CentOS-6 and installed it after resolving
>> libaa and libzvbi dependencies from the same package site. xawtv
>> program started OK with blue screen window and complete settings
>> window. However, I could not select the shown "overlay" capture
>> option. The terminal output after entering xawtv command complains
>> about:
>>
>> libGL error: could not load nouveau_vieux_dri.so.
>>
>>


--------------E995C78E38D60C49A0951BF1
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <font size="+1">Hallo,<br>
      <br>
    </font><br>
    <div class="moz-cite-prefix">On 10/23/19 12:55 PM, Bernhard
      Praschinger wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:bceb900a-53f5-4eed-0f8d-9adfe08e1e92@utanet.at">Hallo
      <br>
      <br>
      The name of the missing so: nouveau makes me think that libgl
      tries to load something mesa related. I have the file on my
      opensuse in the RPM Package: Mesa-dri-nouveau
      <br>
      (Mesa DRI plug-in for 3D acceleration via Nouveau)
      <br>
      <br>
      Maybe CentOS has also a package that provides the library.
      <br>
      <br>
    </blockquote>
    I  have checked the CentOS-6 rpm resources but did not find anything
    mesa nouveau related. I do have a bunch of mesa packages installed,
    though.<br>
    <br>
    <blockquote type="cite"
      cite="mid:bceb900a-53f5-4eed-0f8d-9adfe08e1e92@utanet.at">When I
      remember correct you wanted to used the original nvidia driver.
      And for some strange reason the system want's now to load the mesa
      driver and not the nvidia driver.
      <br>
      <br>
    </blockquote>
    Yes. xawtv works with nv driver, but not with nvidia proprietary
    driver or the nouveau driver CentOS-6 has. I can live with that
    since I can boot into any of these installations. The only problem
    with the nv driver boot is that it cannot fully utilize my 24" LCD
    display - which is OK. It looks like the CentOS nouveau driver is
    more stable than my highly customized - and probably bugged up -
    Fedora-3 installation. So I was happy to find CentOS-6 that works on
    my old 32-bit machine and has the nouveau driver. Apparently the
    dri-vieux is missing somehow.<br>
    <br>
    Strangely, I encountered the same problem when I updated the
    CentOS-6 according to its requirements, which included a firefox
    update. Now firefox would not start because of the missing
    dri-vieux. So I reverted back to the non-updated version of CentOS
    firefox, and it works again. I will do some further research on a
    CentOS forum. Maybe that will fix xatv as well. I'll report on it -
    thanks.<br>
    <blockquote type="cite"
      cite="mid:bceb900a-53f5-4eed-0f8d-9adfe08e1e92@utanet.at">Janos G
      Komaromi wrote:
      <br>
      <blockquote type="cite">Update:
        <br>
        <br>
        Found rpm package for the CentOS-6 and installed it after
        resolving libaa and libzvbi dependencies from the same package
        site. xawtv program started OK with blue screen window and
        complete settings window. However, I could not select the shown
        "overlay" capture option. The terminal output after entering
        xawtv command complains about:
        <br>
        <br>
        libGL error: could not load nouveau_vieux_dri.so.
        <br>
        <br>
        <br>
      </blockquote>
    </blockquote>
    <br>
  </body>
</html>

--------------E995C78E38D60C49A0951BF1--


--===============7782679426642336562==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7782679426642336562==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users

--===============7782679426642336562==--

