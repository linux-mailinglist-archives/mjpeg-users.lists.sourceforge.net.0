Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3157F31EE09
	for <lists+mjpeg-users@lfdr.de>; Thu, 18 Feb 2021 19:10:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1lCnkU-0007Y7-8R; Thu, 18 Feb 2021 18:09:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lumwaiman@gmail.com>) id 1lCYoj-00088N-0z
 for mjpeg-users@lists.sourceforge.net; Thu, 18 Feb 2021 02:13:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JxuL5igFQCLbSVQ2sDdjX3MUykvPrFGb/Jh/YCgybrs=; b=fwQkLNpdi7HImcU41Ff4dcNVY9
 YI2tzOTs8B+nIMzI36ru60frot6fsSIxZ7e7ptLb1gggB83aM6GShSIEIkL0QYb7UJ5W/P8RyKIAJ
 Dytc9aUMkDMYHPgnrrEuOqImkD5uQqvclBRKBe1NFwDz/FiMCoj+s6vVtCz/miu+ujiQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JxuL5igFQCLbSVQ2sDdjX3MUykvPrFGb/Jh/YCgybrs=; b=ECTBZDXVhUTVEr5fjly7/SYS7E
 CRDM1KAmRMY7Cu05t6XjebXkHFI0UG/m3Tm/o5Xin6YYqHDeI3LaYCfl267R56uD90UspAQuDx8k0
 FziBzYZL8IeVT46i/cvzVCHFevOKcRWtFF9EI9KfS5I+N42v/iXt2lrasSxp/HxeEsXk=;
Received: from mail-lf1-f41.google.com ([209.85.167.41])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lCYof-00DHIh-HI
 for mjpeg-users@lists.sourceforge.net; Thu, 18 Feb 2021 02:13:20 +0000
Received: by mail-lf1-f41.google.com with SMTP id d24so1958759lfs.8
 for <mjpeg-users@lists.sourceforge.net>; Wed, 17 Feb 2021 18:13:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JxuL5igFQCLbSVQ2sDdjX3MUykvPrFGb/Jh/YCgybrs=;
 b=ZBMTlB66HhzEScbhHGluTOt+5qgbHOdBd8cZODPY+kHV0gJkyLjfl6pxnp12PJsTew
 GZ7eSdSE00n4xfKtQemN4q2apbPeSSZpF2vi0eaTjZjlzBkdfgU7C1B41P4zhfs1+wI3
 sfhGQMAzfjUxmuADrpU9o9vneixRABpC1NCaiaPJnz2sNDA9iOKfAUulfa87/mmgzxts
 rV6vkCmigyg6EP68XJ+JRHW3icFVArIlB8HR9G3xI2CpHkViJITim80JJL1w1e2iH9aj
 GHXHIhKfLdVOAm5ONiKx3dC/gdbCY7XGQ2tyvuebV+N0VYuXnAaTvUZzRbiOhGYFO07k
 Xeag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JxuL5igFQCLbSVQ2sDdjX3MUykvPrFGb/Jh/YCgybrs=;
 b=SneHk0d1mpva1qCZufUi9XikJK5YwqBQgCFDbJTDT72AF6iFZKEWGVmdhqQnSgLkON
 19jZuwTSzz3k+IX+D2tN+y6sskXSm786wjXuMyRroaj9OR0cXzaM/aNvZdnofXokuFR2
 dTZWQCJXH+wuWUmqrFz4LzGSGamvgie3/n8rHoYTYq0n3lbYRnHhkEaHfA6GbLLPl7GH
 39OHj4JDAAleQ17OXDuCrI7Kw8FEeCOypQNAsQ4EykB67t4cNtBp0IP8tQvBxOyWUmLJ
 DUCH74lfmRxNAnKbemSz+j1vNBIkYqAR8509HtutBmXdhUw7GfW7uzPe3Fv3/w+47+Jf
 7XZA==
X-Gm-Message-State: AOAM532TG+YsVsF5Xn0qRIk9rbNVELI2EuXOqeOIAqENLuv3PyLrpjbI
 P7HWNdgKh7vJSZHOiYqsYkfOOpZS5NcIssCOsso=
X-Google-Smtp-Source: ABdhPJxPeX0KvOWmFvRJfmIqbONw+VckCOCwvWUtsrLNpOE/RnP6mKTEiLszPf94Lfr2OLFCvGQ7P2RyIZQ7ncdQopE=
X-Received: by 2002:a05:6512:2281:: with SMTP id
 f1mr1066446lfu.629.1613614390901; 
 Wed, 17 Feb 2021 18:13:10 -0800 (PST)
MIME-Version: 1.0
References: <CA+84gYsnKaCg_q5hvoeNeHNOR+QfBMs_UP5P6HvgZ1GLyxRnwA@mail.gmail.com>
 <b12d2efc-73a6-adf0-09db-313ab9861d7d@utanet.at>
In-Reply-To: <b12d2efc-73a6-adf0-09db-313ab9861d7d@utanet.at>
From: William Lum <lumwaiman@gmail.com>
Date: Wed, 17 Feb 2021 21:12:58 -0500
Message-ID: <CA+84gYtje4TyUPNA_-ntjKOO-c2Ar3wjc==X7UH6Rka0khhC5g@mail.gmail.com>
To: Bernhard Praschinger <shadowlord@utanet.at>
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lumwaiman[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: utanet.at]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.41 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.41 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 DC_PNG_UNO_LARGO       Message contains a single large png image
X-Headers-End: 1lCYof-00DHIh-HI
X-Mailman-Approved-At: Thu, 18 Feb 2021 18:09:56 +0000
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
Content-Type: multipart/mixed; boundary="===============3795723733176842871=="
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

--===============3795723733176842871==
Content-Type: multipart/related; boundary="0000000000009371c905bb92e04f"

--0000000000009371c905bb92e04f
Content-Type: multipart/alternative; boundary="0000000000009371c605bb92e04e"

--0000000000009371c605bb92e04e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Responses inline in Red.  Thanks for your help.

William


On Sat, Feb 6, 2021 at 5:56 AM Bernhard Praschinger <shadowlord@utanet.at>
wrote:

> Hallo,
>
> Some thought's about what you try to accomplish. Sorry for the longer
> delay.
>
> > I have a Zoran based capture card that Lubuntu doesn't seem to
> > recognize.  Here is what I have done so far.  I'm new to linux so pleas=
e
> > take that into consideration with you instructions.
> >

[image: 319.png]


>
> >  1. lspci | grep Zoran
> Which card do you actually want to use ? I don't know the type by the
> output of lspci.
>
    0.6:09.0 Multimedia video controller [0400]: Zoran Corporation
ZR36057PQC Video cutting chipset [11de:6057] (rev 01)

>
> >  2. sudo dmidecode -t 2
> >
> > Is there support for AMD 790FX chipset?
> Which kernel does the distribution use ? (uname -a)

    Linux ubuntu 3.19.0-15-generic

>
>
> 3. Kernel.org
> > https://www.kernel.org/doc/html/v4.14/media/v4l-drivers/zoran.html=EF=
=BB=BF
> > <https://www.kernel.org/doc/html/v4.14/media/v4l-drivers/zoran.html>
> >
> > "unified zoran driver (zr360x7, zoran, buz, dc10(+), dc30(+), lml33)"
> >
> > I think this covers my card right?
> That is the correct part of the documentation.
>
> > 4. Tried steps
> >
> https://www.kernel.org/doc/html/v4.14/media/v4l-drivers/zoran.html#how-do=
-i-get-this-damn-thing-to-work
> > Looking for the Zoran Conf file but it's not there
> If I understand the text correct you should try to load the driver
> manually, and if that works you create the file so you don't need to do
> everything manually.
> Can you point me to instructions on where to download the right driver an=
d
> then how to load a driver manually?



>
> > 5. Load zr36067.o.
> > How do I do that?
> Depending on the kernel your distribution uses it can be that the driver
> is in the staging area. And not available by default.
> Newer Kernel like 4.x might have that problem. So if possible use a
> older distribution using a kernel 3.x or 2.6.x Also the mjpegtools and
> lavrec need oss, and have no native support for alsa means that
> recording sound can be tricky.
>
   tried older kernel (see above) still not working

>
> >  6. run =E2=80=98v4l-conf -c <device>=E2=80=99
> >     what do I use for the device?  Is it some part of what I found in
> >     lspci?  The numeric portion (is that an ID?)
>
>
> auf hoffentlich bald,
>
> Berni the Chaos of Woodquarter
>
> Email: shadowlord@utanet.at
> www: http://www.lysator.liu.se/~gz/bernhard
>

--0000000000009371c605bb92e04e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Responses inline in <font color=3D"#ff0000">Red.=C2=
=A0=C2=A0</font>Thanks for your help.</div><div dir=3D"ltr"><br clear=3D"al=
l"><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_=
signature"><div dir=3D"ltr"><div>William<br></div></div></div></div><br></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Sat, Feb 6, 2021 at 5:56 AM Bernhard Praschinger &lt;<a href=3D"mailto:shad=
owlord@utanet.at">shadowlord@utanet.at</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">Hallo,<br>
<br>
Some thought&#39;s about what you try to accomplish. Sorry for the longer <=
br>
delay.<br>
<br>
&gt; I have a Zoran based capture card that Lubuntu doesn&#39;t seem to <br=
>
&gt; recognize.=C2=A0 Here is what I have done so=C2=A0far.=C2=A0 I&#39;m n=
ew to linux so please <br>
&gt; take that into consideration with you instructions.<br>
&gt;</blockquote><img src=3D"cid:ii_kla882cn0" alt=3D"319.png" width=3D"539=
" height=3D"178"><br><div>=C2=A0</div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"> <br>
&gt;=C2=A0 1. lspci | grep Zoran<br>
Which card do you actually want to use ? I don&#39;t know the type by the <=
br>
output of lspci.<br></blockquote><div>=C2=A0 =C2=A0 <font color=3D"#ff0000"=
>0.6:09.0 Multimedia video controller [0400]: Zoran Corporation ZR36057PQC =
Video cutting chipset [11de:6057] (rev 01)</font>=C2=A0</div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex">
<br>
&gt;=C2=A0 2. sudo dmidecode -t 2<br>
&gt; <br>
&gt; Is there support for AMD 790FX chipset?<br>
Which kernel does the distribution use ? (uname -a)</blockquote><div>=C2=A0=
 =C2=A0 <font color=3D"#ff0000">Linux=C2=A0ubuntu 3.19.0-15-generic</font>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=C2=A0<br></b=
lockquote><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
&gt; 3. Kernel.org <br>
&gt; <a href=3D"https://www.kernel.org/doc/html/v4.14/media/v4l-drivers/zor=
an.html" rel=3D"noreferrer" target=3D"_blank">https://www.kernel.org/doc/ht=
ml/v4.14/media/v4l-drivers/zoran.html</a>=EF=BB=BF <br>
&gt; &lt;<a href=3D"https://www.kernel.org/doc/html/v4.14/media/v4l-drivers=
/zoran.html" rel=3D"noreferrer" target=3D"_blank">https://www.kernel.org/do=
c/html/v4.14/media/v4l-drivers/zoran.html</a>&gt;<br>
&gt; <br>
&gt; &quot;unified zoran driver (zr360x7, zoran, buz, dc10(+), dc30(+), lml=
33)&quot;<br>
&gt; <br>
&gt; I think this covers my card right?<br>
That is the correct part of the documentation.<br>
<br>
&gt; 4. Tried steps<br>
&gt; <a href=3D"https://www.kernel.org/doc/html/v4.14/media/v4l-drivers/zor=
an.html#how-do-i-get-this-damn-thing-to-work" rel=3D"noreferrer" target=3D"=
_blank">https://www.kernel.org/doc/html/v4.14/media/v4l-drivers/zoran.html#=
how-do-i-get-this-damn-thing-to-work</a><br>
&gt; Looking for the Zoran Conf file but it&#39;s not there<br>
If I understand the text correct you should try to load the driver <br>
manually, and if that works you create the file so you don&#39;t need to do=
 <br>
everything manually.<br>
<font color=3D"#ff0000">Can you point me to instructions on where to downlo=
ad the right driver and then how to load a driver manually?=C2=A0=C2=A0</fo=
nt></blockquote><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><br>
&gt; 5. Load zr36067.o.<br>
&gt; How do I do that?<br>
Depending on the kernel your distribution uses it can be that the driver <b=
r>
is in the staging area. And not available by default.<br>
Newer Kernel like 4.x might have that problem. So if possible use a <br>
older distribution using a kernel 3.x or 2.6.x Also the mjpegtools and <br>
lavrec need oss, and have no native support for alsa means that <br>
recording sound can be tricky.<br></blockquote><div><font color=3D"#ff0000"=
>=C2=A0 =C2=A0tried older kernel (see above) still not working</font>=C2=A0=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
&gt;=C2=A0 6. run =E2=80=98v4l-conf -c &lt;device&gt;=E2=80=99<br>
&gt;=C2=A0 =C2=A0 =C2=A0what do I use for the device?=C2=A0 Is it some part=
 of what I found in<br>
&gt;=C2=A0 =C2=A0 =C2=A0lspci?=C2=A0 The numeric portion (is that an ID?)<b=
r>
<br>
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

--0000000000009371c605bb92e04e--
--0000000000009371c905bb92e04f
Content-Type: image/png; name="319.png"
Content-Disposition: inline; filename="319.png"
Content-Transfer-Encoding: base64
Content-ID: <ii_kla882cn0>
X-Attachment-Id: ii_kla882cn0

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
QmCC
--0000000000009371c905bb92e04f--


--===============3795723733176842871==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3795723733176842871==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users

--===============3795723733176842871==--

