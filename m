Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 83FF2324B22
	for <lists+mjpeg-users@lfdr.de>; Thu, 25 Feb 2021 08:20:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1lFAwX-0007VA-Tb; Thu, 25 Feb 2021 07:20:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lumwaiman@gmail.com>) id 1lF9A4-0004Oz-KT
 for mjpeg-users@lists.sourceforge.net; Thu, 25 Feb 2021 05:26:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kDHzmM2cYS1P7AhVTKNth1WAnDz6AVc5EObKwQDssLk=; b=ZjlD9k53yE83YwxJWBDRPgfzyN
 PMi2j7YRbaiF/rST8jlHfWmyq5a/np0S5veQYxjbQw78LO7ngL4RL3UNu49BVFwLhPmOaXCkDI5Wy
 vUNMA9g8md7IDP9kbhN+JR73sRcbYKnt2PhFBdYLECbPKxH6ezNPiiemOmpvJGIhwVXU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kDHzmM2cYS1P7AhVTKNth1WAnDz6AVc5EObKwQDssLk=; b=cgEZEw69Mfd4vP5wTqy3Kluy7k
 SzZ8NbBoh77s3XpSoO/HmOIDeSeFybJiGKnWdHkeqESXDraToOcy2Ow6EJ040Bvzx2pgo1XarGtk/
 6gauNmK3mtS36LP3l5molWcLcuhOibot2PNSXZ3WELEDRZuOMWD+1mtggl5dSJJ+oVCk=;
Received: from mail-lj1-f180.google.com ([209.85.208.180])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lF99z-004W36-Vh
 for mjpeg-users@lists.sourceforge.net; Thu, 25 Feb 2021 05:26:04 +0000
Received: by mail-lj1-f180.google.com with SMTP id a17so5104297ljq.2
 for <mjpeg-users@lists.sourceforge.net>; Wed, 24 Feb 2021 21:25:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kDHzmM2cYS1P7AhVTKNth1WAnDz6AVc5EObKwQDssLk=;
 b=Z87zT52gln5GYpylwf04EsyIgoctKqEEn1/yGhcqQGXppcW1P/6w/BB6wMNVwV4JPJ
 8e0CdnJu+3LacODzjmKLHvNYTflE7XIjjPVSPqz+KK6+NvkM+P7z/df3otQwyja+Q5Sv
 +QK4vSRiotDL91mfCgx0bIk0iBlMBx3eS+7oYHxH2WuGtqB7/7/QJMYhQwixgtjrv1tQ
 dlPZ6+TUSNKQp3UYyG9G8l+Dcs8QCn/yCNN6kls5vIX8tsCO/gxZs1RtKjHJnrd4GJgr
 8vEUe6PdspqB/RZD5RL3Y+j2gwRO/diZYJVATTl+w/odZ0Riz2mmB+bL7LQP1iQeAt1d
 +awA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kDHzmM2cYS1P7AhVTKNth1WAnDz6AVc5EObKwQDssLk=;
 b=peeSpr8DDhUelbp3hs/crExe3vWXo64oQj5e7sR2rqlypXCL8XtMJkujqO5YSwbsf3
 ilfovfv8PR3thRD3ZCCuFsoUeVD930bK0eb4VQNjqmuojaEXuztYM5EPb7pPjwUFu4s7
 RBg0pBS5DfMsDIY0f7Mh5xLOknRQioo0UOIUZVWbldlhO1M5tVm1kDN/QJzvzGDoz0+z
 dXcQtUAqWoZmf0qVSIhF4Wh/EWdaZrAxJOuLxc2L5yxzwDyLLcX48O8f0M6oDebm1/sE
 BQ22sUsoky06RJi83sHqXHsN9f2UDRDmFRC4GA2YtlWpauC9KKfXPdRZb9OOADb3q+uJ
 jDEQ==
X-Gm-Message-State: AOAM532989X6DAFu3trPUmGstnWcNPYByaU4KMKOQCWxu5xkxXUx3iev
 3RZWJTU2STXDo5IYKOGu8Rd2DeI0arob0pO1ABs=
X-Google-Smtp-Source: ABdhPJyV79Y6gRe+bCQ15CCzYZaTjk5JvHoeWewP5M7ORFAK2H8sSJDoe1W8uWWiBdKBBEzeSBRR5worf0geAx3FtxQ=
X-Received: by 2002:a2e:720a:: with SMTP id n10mr686719ljc.215.1614230753382; 
 Wed, 24 Feb 2021 21:25:53 -0800 (PST)
MIME-Version: 1.0
References: <CA+84gYsnKaCg_q5hvoeNeHNOR+QfBMs_UP5P6HvgZ1GLyxRnwA@mail.gmail.com>
 <b12d2efc-73a6-adf0-09db-313ab9861d7d@utanet.at>
 <CA+84gYtje4TyUPNA_-ntjKOO-c2Ar3wjc==X7UH6Rka0khhC5g@mail.gmail.com>
 <32f0a419-2012-a662-5d8a-4d2b039942ec@utanet.at>
In-Reply-To: <32f0a419-2012-a662-5d8a-4d2b039942ec@utanet.at>
From: William Lum <lumwaiman@gmail.com>
Date: Thu, 25 Feb 2021 00:25:42 -0500
Message-ID: <CA+84gYvj12J_kyxHdu9aNR9djm4JY1Qmywz3A9rXCLN07o=Y8g@mail.gmail.com>
To: Bernhard Praschinger <shadowlord@utanet.at>
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.180 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lumwaiman[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: utanet.at]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.180 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lF99z-004W36-Vh
X-Mailman-Approved-At: Thu, 25 Feb 2021 07:20:12 +0000
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
Content-Type: multipart/mixed; boundary="===============9036578873170651343=="
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

--===============9036578873170651343==
Content-Type: multipart/alternative; boundary="000000000000a4153405bc2262e8"

--000000000000a4153405bc2262e8
Content-Type: text/plain; charset="UTF-8"

Hello,

Following your instructions here is what I found.

I should also note that I am testing on a live USB stick vs installed on
ssd.  This was mainly because I had installed 3-5 different versions and
flavours of linux trying to get this to work and wanted to avoid installing
more until I find a solution.  Please let me know if this is an issue.

On Ubuntu 15.04 (Linux ubuntu 3.19.0-15-generic)
The hardware is the IOmega Buz (0.6:09.0 Multimedia video controller
[0400]: Zoran Corporation *ZR36057*PQC Video cutting chipset [11de:6057]
(rev 01)

I looked for drivers in  /lib/modules/  that took me to
/lib/modules/3.19.0-15-generic/kernel/driver/media/pci/zoran where I found:
- videocodec.ko
- zr36016.ko
- zr36050.ko
- zr36060.ko
- zr36067.ko

none seem to be a direct match for the zr36057

Tried to load the driver  "modprobe -n -v --show-depends zoran" this
resulted "FATAL: Module zoran not found."

Then tried  "modprobe -n -v --show-depends zr36067" this seemed to install
modules
insmod /lib/modeules/3.19.0-15-generic/kernel/driver/...ko (ic2/alogo,
media, V4l2, videocodec, zr36067)

but when I "lspci -nnk" it still does not show any subsystem or driver in
use so not sure if it worked... also wanted to try testing it with VLC but
couldn't install as the Ubuntu software center is too old and the links no
longer seem to work.  This worries me, if I do get this working will I be
able to install any software (i.e. Kdenlive etc).  Don;t know how to do
this if the ubuntu software center isn't working.  apt get also had errors
as the folders for this version of ubuntu seem to no longer exist.

Thoughts on how I should proceed?

Thanks for your continued help.
William



On Mon, Feb 22, 2021 at 1:30 PM Bernhard Praschinger <shadowlord@utanet.at>
wrote:

> Hallo
>
>
> William Lum wrote:
> > Responses inline in Red. Thanks for your help.
> The color vanishes when I do a text only reply.
>
> > >    Some thought's about what you try to accomplish. Sorry for the
> longer
> > >    delay.
> >
> > >     > I have a Zoran based capture card that Lubuntu doesn't seem to
> > >     > recognize.  Here is what I have done so far.  I'm new to linux so
> > >     > please take that into consideration with you instructions.
> > >     >
> > >     >  1. lspci | grep Zoran
> > >    Which card do you actually want to use ? I don't know the type by
> the
> > >    output of lspci.
> > 0.6:09.0 Multimedia video controller [0400]: Zoran Corporation
> > ZR36057PQC Video cutting chipset [11de:6057] (rev 01)
>
> That Chip was used in the Pinnacle/Miro DC10(new and old), and in the
> Pinnacle/Miro DC30. The Cards use differen IC's for TV encoding a
> decoding and for the mjpeg encoder:
> https://mjpeg.sourceforge.io/driver-zoran/cards.php
>
>
> > >     >  2. sudo dmidecode -t 2
> > >     >
> > >     > Is there support for AMD 790FX chipset?
> > >    Which kernel does the distribution use ? (uname -a)
> > Linux ubuntu 3.19.0-15-generic
> That is a older kernel (~8years old) which is a good thing.
>
> > >     > 4. Tried steps
> > >     >
> > >     >
> https://www.kernel.org/doc/html/v4.14/media/v4l-drivers/zoran.html#how-do-i-get-this-damn-thing-to-work
> > >     > Looking for the Zoran Conf file but it's not there
> > >    If I understand the text correct you should try to load the driver
> > >    manually, and if that works you create the file so you don't need
> to do
> > >    everything manually.
> >     Can you point me to instructions on where to download the right
> >     driver and then how to load a driver manually?
> The correct driver should be shipped with the linux kernel.
> Usually the kernel modules are located in /lib/modules/ go to that
> directory and search for zoran, zr36, saa711, adv717
>
> It should find some files.
>
> > >     > 5. Load zr36067.o.
> > >     > How do I do that?
> > >    Depending on the kernel your distribution uses it can be that the
> > >    driver
> > >    is in the staging area. And not available by default.
> > >    Newer Kernel like 4.x might have that problem. So if possible use a
> > >    older distribution using a kernel 3.x or 2.6.x Also the mjpegtools
> and
> > >    lavrec need oss, and have no native support for alsa means that
> > >    recording sound can be tricky.
> >     tried older kernel (see above) still not working
> If there search did find a zoran module try to load the modules as root
> with a command like this for a first test:
> modprobe -n -v --show-depends zoran
>
> And once without the --show-depends, and if the output looks prosing
> without the -n
>
> If there s no zoran.o, replace the zoran with zr36067, so the command
> looked like that: modprobe -n -v --show-depends zr36067
>
> auf hoffentlich bald,
>
> Berni the Chaos of Woodquarter
>
> Email: shadowlord@utanet.at
> www: http://www.lysator.liu.se/~gz/bernhard
>

--000000000000a4153405bc2262e8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hello,=C2=A0</div><div><br></div><di=
v>Following your instructions here is what I found.</div><div><br></div><di=
v>I should also note that I am testing on a live USB stick vs installed on =
ssd.=C2=A0 This was mainly because I had installed 3-5 different versions a=
nd flavours of linux trying to get this to work and wanted to avoid install=
ing more until I find a solution.=C2=A0 Please let me know if this is an is=
sue.</div><div><br></div><div>On Ubuntu 15.04 (Linux=C2=A0ubuntu 3.19.0-15-=
generic)</div><div>The hardware is the IOmega Buz (0.6:09.0 Multimedia vide=
o controller [0400]: Zoran Corporation <b>ZR36057</b>PQC Video cutting chip=
set [11de:6057] (rev 01)=C2=A0=C2=A0</div><div><br></div><div>I looked for =
drivers in=C2=A0

/lib/modules/=C2=A0 that took me to=C2=A0

/lib/modules/3.19.0-15-generic/kernel/driver/media/pci/zoran where I found:=
</div><div>- videocodec.ko</div><div>- zr36016.ko</div><div>- zr36050.ko</d=
iv><div>- zr36060.ko</div><div>- zr36067.ko</div><div><br></div><div>none s=
eem to be a direct match for the zr36057</div><div><br></div><div>Tried to =
load the driver=C2=A0 &quot;modprobe -n -v --show-depends zoran&quot; this =
resulted &quot;FATAL: Module zoran not found.&quot;</div><div>=C2=A0=C2=A0<=
br></div><div>Then tried=C2=A0


&quot;modprobe -n -v --show-depends=20

zr36067&quot; this seemed to install modules</div><div>insmod /lib/modeules=
/3.19.0-15-generic/kernel/driver/...ko (ic2/alogo, media, V4l2, videocodec,=
 zr36067)</div><div dir=3D"ltr"><br></div><div>but when I &quot;lspci -nnk&=
quot; it still does not show any subsystem or driver in use so not sure if =
it worked... also wanted to try testing it with VLC but couldn&#39;t instal=
l as the Ubuntu software center is too old and the links no longer seem to =
work.=C2=A0 This worries me, if I do get this working will I be able to ins=
tall any software (i.e. Kdenlive etc).=C2=A0 Don;t know how to do this if t=
he ubuntu software center isn&#39;t working.=C2=A0 apt get also had errors =
as the folders for this version of ubuntu seem to no longer exist.</div><di=
v><br></div><div>Thoughts on how I should proceed?=C2=A0=C2=A0</div><div di=
r=3D"ltr"><br></div>Thanks for your continued help.<br clear=3D"all"><div><=
div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature=
"><div dir=3D"ltr"><div>William <br><br></div></div></div></div><br></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon,=
 Feb 22, 2021 at 1:30 PM Bernhard Praschinger &lt;<a href=3D"mailto:shadowl=
ord@utanet.at">shadowlord@utanet.at</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">Hallo<br>
<br>
<br>
William Lum wrote:<br>
&gt; Responses inline in Red. Thanks for your help.<br>
The color vanishes when I do a text only reply.<br>
<br>
&gt; &gt;=C2=A0 =C2=A0 Some thought&#39;s about what you try to accomplish.=
 Sorry for the longer<br>
&gt; &gt;=C2=A0 =C2=A0 delay.<br>
&gt; <br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0&gt; I have a Zoran based capture card that Lu=
buntu doesn&#39;t seem to<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0&gt; recognize.=C2=A0 Here is what I have done=
 so=C2=A0far.=C2=A0 I&#39;m new to linux so<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0&gt; please take that into consideration with =
you instructions.<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 1. lspci | grep Zoran<br>
&gt; &gt;=C2=A0 =C2=A0 Which card do you actually want to use ? I don&#39;t=
 know the type by the<br>
&gt; &gt;=C2=A0 =C2=A0 output of lspci.<br>
&gt; 0.6:09.0 Multimedia video controller [0400]: Zoran Corporation <br>
&gt; ZR36057PQC Video cutting chipset [11de:6057] (rev 01)<br>
<br>
That Chip was used in the Pinnacle/Miro DC10(new and old), and in the <br>
Pinnacle/Miro DC30. The Cards use differen IC&#39;s for TV encoding a <br>
decoding and for the mjpeg encoder:<br>
<a href=3D"https://mjpeg.sourceforge.io/driver-zoran/cards.php" rel=3D"nore=
ferrer" target=3D"_blank">https://mjpeg.sourceforge.io/driver-zoran/cards.p=
hp</a><br>
<br>
<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 2. sudo dmidecode -t 2<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0&gt; Is there support for AMD 790FX chipset?<b=
r>
&gt; &gt;=C2=A0 =C2=A0 Which kernel does the distribution use ? (uname -a)<=
br>
&gt; Linux=C2=A0ubuntu 3.19.0-15-generic<br>
That is a older kernel (~8years old) which is a good thing.<br>
<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0&gt; 4. Tried steps<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0&gt;<a href=3D"https://www.kernel.org/doc/html=
/v4.14/media/v4l-drivers/zoran.html#how-do-i-get-this-damn-thing-to-work" r=
el=3D"noreferrer" target=3D"_blank">https://www.kernel.org/doc/html/v4.14/m=
edia/v4l-drivers/zoran.html#how-do-i-get-this-damn-thing-to-work</a><br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0&gt; Looking for the Zoran Conf file but it&#3=
9;s not there<br>
&gt; &gt;=C2=A0 =C2=A0 If I understand the text correct you should try to l=
oad the driver<br>
&gt; &gt;=C2=A0 =C2=A0 manually, and if that works you create the file so y=
ou don&#39;t need to do<br>
&gt; &gt;=C2=A0 =C2=A0 everything manually.<br>
&gt;=C2=A0 =C2=A0 =C2=A0Can you point me to instructions on where to downlo=
ad the right<br>
&gt;=C2=A0 =C2=A0 =C2=A0driver and then how to load a driver manually? <br>
The correct driver should be shipped with the linux kernel.<br>
Usually the kernel modules are located in /lib/modules/ go to that <br>
directory and search for zoran, zr36, saa711, adv717<br>
<br>
It should find some files.<br>
<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0&gt; 5. Load zr36067.o.<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0&gt; How do I do that?<br>
&gt; &gt;=C2=A0 =C2=A0 Depending on the kernel your distribution uses it ca=
n be that the<br>
&gt; &gt;=C2=A0 =C2=A0 driver<br>
&gt; &gt;=C2=A0 =C2=A0 is in the staging area. And not available by default=
.<br>
&gt; &gt;=C2=A0 =C2=A0 Newer Kernel like 4.x might have that problem. So if=
 possible use a<br>
&gt; &gt;=C2=A0 =C2=A0 older distribution using a kernel 3.x or 2.6.x Also =
the mjpegtools and<br>
&gt; &gt;=C2=A0 =C2=A0 lavrec need oss, and have no native support for alsa=
 means that<br>
&gt; &gt;=C2=A0 =C2=A0 recording sound can be tricky.<br>
&gt;=C2=A0 =C2=A0 =C2=A0tried older kernel (see above) still not working<br=
>
If there search did find a zoran module try to load the modules as root <br=
>
with a command like this for a first test:<br>
modprobe -n -v --show-depends zoran<br>
<br>
And once without the --show-depends, and if the output looks prosing <br>
without the -n<br>
<br>
If there s no zoran.o, replace the zoran with zr36067, so the command <br>
looked like that: modprobe -n -v --show-depends zr36067<br>
<br>
auf hoffentlich bald,<br>
<br>
Berni the Chaos of Woodquarter<br>
<br>
Email: <a href=3D"mailto:shadowlord@utanet.at" target=3D"_blank">shadowlord=
@utanet.at</a><br>
www: <a href=3D"http://www.lysator.liu.se/~gz/bernhard" rel=3D"noreferrer" =
target=3D"_blank">http://www.lysator.liu.se/~gz/bernhard</a><br>
</blockquote></div></div>

--000000000000a4153405bc2262e8--


--===============9036578873170651343==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============9036578873170651343==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users

--===============9036578873170651343==--

