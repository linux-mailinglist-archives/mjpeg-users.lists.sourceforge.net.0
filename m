Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 276C6344CB0
	for <lists+mjpeg-users@lfdr.de>; Mon, 22 Mar 2021 18:04:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1lONyx-0004mz-Gf; Mon, 22 Mar 2021 17:04:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lumwaiman@gmail.com>) id 1lO0ih-00045u-I0
 for mjpeg-users@lists.sourceforge.net; Sun, 21 Mar 2021 16:14:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QuIwxSJAFEa/Zz4/+RSipS1070rl2bUmxnnekXA4hW4=; b=VAHHDqjXpgDGne2WVVmmrfqb7w
 aUYSA/v7q2AaSXWzyTR0xWuerfuIZTx4OhZDiRylEy38EsUS0HjIwVjw+84JxScXLSxn2f6roAsru
 gAw+cMXoLia1iY2MestljsSOXRlQspxmNiZEGrZXxWgMPi2tMalE3EEtD0xXlvhbNWpc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QuIwxSJAFEa/Zz4/+RSipS1070rl2bUmxnnekXA4hW4=; b=mcCkv+mAWbTKrFasclVPcR3qAN
 qWxMTRMoUIjcuMrN7SuHiYFpQtLqwRkgebmC/DWPrOx7vdH2M8c+NUkxCBPhZLyq0za5hupxC/UHf
 bJXfgAfkn0nHbp4muT9m87qxwNw4Zox98cc0ArFZnK7+YYPoqpNlwB4wNs6bocFd2zwo=;
Received: from mail-lj1-f172.google.com ([209.85.208.172])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lO0ib-00ATdF-CB
 for mjpeg-users@lists.sourceforge.net; Sun, 21 Mar 2021 16:14:27 +0000
Received: by mail-lj1-f172.google.com with SMTP id y1so18021046ljm.10
 for <mjpeg-users@lists.sourceforge.net>; Sun, 21 Mar 2021 09:14:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QuIwxSJAFEa/Zz4/+RSipS1070rl2bUmxnnekXA4hW4=;
 b=RBz78LI0KQ0xr3J2cHUTBCnyBI3l0uuz7Tl2AHgkK39AA7SARi1ikJld3dbA3Zi6Ze
 1z9bExfC42qH4nnPGkmytUMpM0qx2761Hms92G7wq3Shhea2fOdRc9i+k3qvJJCWDOUa
 rOsutwyCHb+6YXZ/7PuFWmdx09fVBZ8r55rf5TnHnVmxg61F+0Snp6Vv6hWLjab5u3BA
 0ENU1lujj2I8UW1Hjt+KErVeJflvPW4qfP7rYbbMKsHh7rJEG8rFxz1mkV5aKigAcq5i
 r7DpnOzySkjng6PmsUhcE0KIqZ9yeJR9Ju2t9VDELEaYAU/UjqNizownBWj0DlvA6mmF
 f5fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QuIwxSJAFEa/Zz4/+RSipS1070rl2bUmxnnekXA4hW4=;
 b=GSwe2AxjYFzdmWMrsillbRcil01sdKdb8Xoc1tYdE1n28vxRxqd59qvr82eOOeaV+v
 oQbDGibo/P7pe2eCeukuw+Bfb6MDoFnXsRKEUgjI85knvROX/mQP5Eq/Qj0LnVmds8Zf
 V58Mdjoi6ckuElYBfOlO/F7eFTy8WlKsaZzlp0bUZs+P5cyZsJiZqErtINKOiyX1QZI2
 SiiGHu02RHKIrA1hpJ/NZJAYbtYFIQ9U29rOvysQ/VXPGUJMGfp2zdD2SAkHKBdC0kZ+
 wyX5kxO/lqINDsV1SIKQe4tRZYYwAfxElBRYbaIj6OtlUQnwfZs9HK9ZhYZYCYTy4n/S
 EoXQ==
X-Gm-Message-State: AOAM530CqVRPdAReiQ+wHa+R63D08eBzHqWbbCKeZYbAwZM9DXS4eFBT
 XVDIf6ZpGHLGqDvMEg5kPD6/qigrYSidi1pPHQ0=
X-Google-Smtp-Source: ABdhPJxgZae+szzdoComsWbIFvlXYCk9qVaEgdeyqk+midUncbzfWhEOBxkMLRTq+W+yq35k5xPq1PbQr7xbZr5lOuw=
X-Received: by 2002:a2e:a0d0:: with SMTP id f16mr7289720ljm.215.1616343254332; 
 Sun, 21 Mar 2021 09:14:14 -0700 (PDT)
MIME-Version: 1.0
References: <CA+84gYsnKaCg_q5hvoeNeHNOR+QfBMs_UP5P6HvgZ1GLyxRnwA@mail.gmail.com>
 <b12d2efc-73a6-adf0-09db-313ab9861d7d@utanet.at>
 <CA+84gYtje4TyUPNA_-ntjKOO-c2Ar3wjc==X7UH6Rka0khhC5g@mail.gmail.com>
 <32f0a419-2012-a662-5d8a-4d2b039942ec@utanet.at>
 <CA+84gYvj12J_kyxHdu9aNR9djm4JY1Qmywz3A9rXCLN07o=Y8g@mail.gmail.com>
 <48397ad2-f5c7-8472-c048-ebfeb0f5ca0d@utanet.at>
In-Reply-To: <48397ad2-f5c7-8472-c048-ebfeb0f5ca0d@utanet.at>
From: William Lum <lumwaiman@gmail.com>
Date: Sun, 21 Mar 2021 12:14:03 -0400
Message-ID: <CA+84gYvq74z3mTp5OpY10jSVPWQtDUPO-YybOj=gNqoyEUWPbg@mail.gmail.com>
To: Bernhard Praschinger <shadowlord@utanet.at>
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lumwaiman[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.172 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.172 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: liu.se]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lO0ib-00ATdF-CB
X-Mailman-Approved-At: Mon, 22 Mar 2021 17:04:39 +0000
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
Cc: MJPEG-tools user list <mjpeg-users@lists.sourceforge.net>
Content-Type: multipart/mixed; boundary="===============1635791184992975874=="
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

--===============1635791184992975874==
Content-Type: multipart/alternative; boundary="00000000000082776905be0e3d0d"

--00000000000082776905be0e3d0d
Content-Type: text/plain; charset="UTF-8"

Yes my card does have the SCSI connector for the external drive which I
don't use and the 15 pin for the breakout box.

When you say switch is it physical?  Do I need to set it to a certain
config?

Thanks,


On Sun., Mar. 21, 2021, 11:33 a.m. Bernhard Praschinger, <
shadowlord@utanet.at> wrote:

> Hallo,
>
> sorry I was offline for quite a while.
>
> You write in the subject that you have a Iomega Buz card, but the lspci
> output say's ZR36057. Which was used in the DC10/DC30. Does your card
> have a SCSI interface connector and a 15 pin connector on the backplane ?
> The buz was the most problematic card, because it had a PCI Switch on
> the card for the ZR36067 and the SCSI controller.
>
> William Lum wrote:
> > Hello,
> >
> > Following your instructions here is what I found.
> >
> > I should also note that I am testing on a live USB stick vs installed on
> > ssd.  This was mainly because I had installed 3-5 different versions and
> > flavours of linux trying to get this to work and wanted to avoid
> > installing more until I find a solution.  Please let me know if this is
> > an issue.
> >
> > On Ubuntu 15.04 (Linux ubuntu 3.19.0-15-generic)
> > The hardware is the IOmega Buz (0.6:09.0 Multimedia video controller
> > [0400]: Zoran Corporation *ZR36057*PQC Video cutting chipset [11de:6057]
> > (rev 01)
> >
> > I looked for drivers in /lib/modules/  that took me to
> > /lib/modules/3.19.0-15-generic/kernel/driver/media/pci/zoran where I
> found:
> > - videocodec.ko
> > - zr36016.ko
> > - zr36050.ko
> > - zr36060.ko
> > - zr36067.ko
> > none seem to be a direct match for the zr36057
> That should be no problem just use the zr36067 instead.
>
> > Tried to load the driver  "modprobe -n -v --show-depends zoran" this
> > resulted "FATAL: Module zoran not found."
> >
> > Then tried "modprobe -n -v --show-depends zr36067" this seemed to
> > install modules
> > insmod /lib/modeules/3.19.0-15-generic/kernel/driver/...ko (ic2/alogo,
> > media, V4l2, videocodec, zr36067)
> It should also load the driver for the TV decoder and encoder.
>
> When you do a lsmod | grep zr you should see the loaded modules. Are
> some v4l (video4linux) modules loaded too ?
>
> > but when I "lspci -nnk" it still does not show any subsystem or driver
> > in use so not sure if it worked... also wanted to try testing it with
> > VLC but couldn't install as the Ubuntu software center is too old and
> > the links no longer seem to work.  This worries me, if I do get this
> > working will I be able to install any software (i.e. Kdenlive etc).
> > Don;t know how to do this if the ubuntu software center isn't working.
> > apt get also had errors as the folders for this version of ubuntu seem
> > to no longer exist.
> I don't know if it is a problem if the lspci does not show you the card.
> Does the lspci command (or some boot log) show you a hint that the scsi
> controller ist recognized.
>
> When you start in a 2nd terminal a command like that:
> tail -f /var/log/messages
>
> You should see the messages when the kernel loads the driver. That
> output would be very helpful.
>
> > Thoughts on how I should proceed?
> The output from the kernel when you load the drivers should be very
> helpful. To see if that kernel recognizes the card.
>
>
> auf hoffentlich bald,
>
> Berni the Chaos of Woodquarter
>
> Email: shadowlord@utanet.at
> www: http://www.lysator.liu.se/~gz/bernhard
>

--00000000000082776905be0e3d0d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Yes my card does have the SCSI connector for the ext=
ernal drive which I don&#39;t use and the 15 pin for the breakout box.</div=
><div dir=3D"auto"><br></div><div dir=3D"auto">When you say switch is it ph=
ysical?=C2=A0 Do I need to set it to a certain config?</div><div dir=3D"aut=
o"><br></div><div dir=3D"auto">Thanks,</div><div dir=3D"auto"><br><br><div =
class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Sun., Mar. 21, 2021, 11:33 a.m. Bernhard Praschinger, &lt;<a href=3D"mailt=
o:shadowlord@utanet.at">shadowlord@utanet.at</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex">Hallo,<br>
<br>
sorry I was offline for quite a while.<br>
<br>
You write in the subject that you have a Iomega Buz card, but the lspci <br=
>
output say&#39;s ZR36057. Which was used in the DC10/DC30. Does your card <=
br>
have a SCSI interface connector and a 15 pin connector on the backplane ?<b=
r>
The buz was the most problematic card, because it had a PCI Switch on <br>
the card for the ZR36067 and the SCSI controller.<br>
<br>
William Lum wrote:<br>
&gt; Hello,<br>
&gt; <br>
&gt; Following your instructions here is what I found.<br>
&gt; <br>
&gt; I should also note that I am testing on a live USB stick vs installed =
on <br>
&gt; ssd.=C2=A0 This was mainly because I had installed 3-5 different versi=
ons and <br>
&gt; flavours of linux trying to get this to work and wanted to avoid <br>
&gt; installing more until I find a solution.=C2=A0 Please let me know if t=
his is <br>
&gt; an issue.<br>
&gt; <br>
&gt; On Ubuntu 15.04 (Linux=C2=A0ubuntu 3.19.0-15-generic)<br>
&gt; The hardware is the IOmega Buz (0.6:09.0 Multimedia video controller <=
br>
&gt; [0400]: Zoran Corporation *ZR36057*PQC Video cutting chipset [11de:605=
7] <br>
&gt; (rev 01)<br>
&gt; <br>
&gt; I looked for drivers in /lib/modules/=C2=A0 that took me to <br>
&gt; /lib/modules/3.19.0-15-generic/kernel/driver/media/pci/zoran where I f=
ound:<br>
&gt; - videocodec.ko<br>
&gt; - zr36016.ko<br>
&gt; - zr36050.ko<br>
&gt; - zr36060.ko<br>
&gt; - zr36067.ko<br>
&gt; none seem to be a direct match for the zr36057<br>
That should be no problem just use the zr36067 instead.<br>
<br>
&gt; Tried to load the driver=C2=A0 &quot;modprobe -n -v --show-depends zor=
an&quot; this <br>
&gt; resulted &quot;FATAL: Module zoran not found.&quot;<br>
&gt; <br>
&gt; Then tried &quot;modprobe -n -v --show-depends zr36067&quot; this seem=
ed to <br>
&gt; install modules<br>
&gt; insmod /lib/modeules/3.19.0-15-generic/kernel/driver/...ko (ic2/alogo,=
 <br>
&gt; media, V4l2, videocodec, zr36067)<br>
It should also load the driver for the TV decoder and encoder.<br>
<br>
When you do a lsmod | grep zr you should see the loaded modules. Are <br>
some v4l (video4linux) modules loaded too ?<br>
<br>
&gt; but when I &quot;lspci -nnk&quot; it still does not show any subsystem=
 or driver <br>
&gt; in use so not sure if it worked... also wanted to try testing it with =
<br>
&gt; VLC but couldn&#39;t install as the Ubuntu software center is too old =
and <br>
&gt; the links no longer seem to work.=C2=A0 This worries me, if I do get t=
his <br>
&gt; working will I be able to install any software (i.e. Kdenlive etc).=C2=
=A0 <br>
&gt; Don;t know how to do this if the ubuntu software center isn&#39;t work=
ing.=C2=A0 <br>
&gt; apt get also had errors as the folders for this version of ubuntu seem=
 <br>
&gt; to no longer exist.<br>
I don&#39;t know if it is a problem if the lspci does not show you the card=
. <br>
Does the lspci command (or some boot log) show you a hint that the scsi <br=
>
controller ist recognized.<br>
<br>
When you start in a 2nd terminal a command like that:<br>
tail -f /var/log/messages<br>
<br>
You should see the messages when the kernel loads the driver. That <br>
output would be very helpful.<br>
<br>
&gt; Thoughts on how I should proceed?<br>
The output from the kernel when you load the drivers should be very <br>
helpful. To see if that kernel recognizes the card.<br>
<br>
<br>
auf hoffentlich bald,<br>
<br>
Berni the Chaos of Woodquarter<br>
<br>
Email: <a href=3D"mailto:shadowlord@utanet.at" target=3D"_blank" rel=3D"nor=
eferrer">shadowlord@utanet.at</a><br>
www: <a href=3D"http://www.lysator.liu.se/~gz/bernhard" rel=3D"noreferrer n=
oreferrer" target=3D"_blank">http://www.lysator.liu.se/~gz/bernhard</a><br>
</blockquote></div></div></div>

--00000000000082776905be0e3d0d--


--===============1635791184992975874==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1635791184992975874==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users

--===============1635791184992975874==--

