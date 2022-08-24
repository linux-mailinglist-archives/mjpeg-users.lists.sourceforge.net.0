Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7317D5A004B
	for <lists+mjpeg-users@lfdr.de>; Wed, 24 Aug 2022 19:22:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1oQu5T-0001Iv-B9;
	Wed, 24 Aug 2022 17:22:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <abhijeet.srivastava2308@gmail.com>)
 id 1oQpB2-00023b-RT for mjpeg-users@lists.sourceforge.net;
 Wed, 24 Aug 2022 12:08:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tdMDeE5DFxtebmzg8TgSG7lq9CFoMzSJjXtC8xPD4ao=; b=jGf1rOdjEFR3g17Z/KPWmtQt8z
 X7YdeZxpYCLp5i6bH3GPMD0UaT4o2UqI6p5Q28R2KfrGi7Q/J79HiI3dvXw/TTSG/Ku2qGnV+s5/g
 +8WNdGVwRsr40iteJV1bg9pwbezoRrVZHgr5juHb1rANa7dDElckPqXV0yMuT7L31CB8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tdMDeE5DFxtebmzg8TgSG7lq9CFoMzSJjXtC8xPD4ao=; b=lM2UCuNoqo4SRgn6KZx/LLnoZu
 7u2j2YyqPXQ5V+J2WUuYZTt0DXqCua7VFPf0meKWqttBzW562nByZB0q9HVv2M8IZDBkciMWo71OJ
 DZdkAD1Z+bH0k/G1DdiFCrmwJxBIaf+XyqZb6XGkRO1EYz2GYRMqtmVU2KX1Qr/KyeeQ=;
Received: from mail-wr1-f50.google.com ([209.85.221.50])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oQpB2-0001nw-5d for mjpeg-users@lists.sourceforge.net;
 Wed, 24 Aug 2022 12:08:08 +0000
Received: by mail-wr1-f50.google.com with SMTP id h5so19701065wru.7
 for <mjpeg-users@lists.sourceforge.net>; Wed, 24 Aug 2022 05:08:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc;
 bh=tdMDeE5DFxtebmzg8TgSG7lq9CFoMzSJjXtC8xPD4ao=;
 b=brC1lCa92J2F+HjWoaff0Gz42pEz7tH4Xx5BTNX6ogKssrrciNFinrnorHG9M88Cu9
 TIa09aY4xqhWvSoalmJuYBDwMg+Lxes1zQfhm3B12IdwO7rygYwSeOsHMel7UZoRontZ
 KFJ/W8q45jNsyZTVFqX63oGL4MapC1pKFQL+D8w3Ct7+LS3MSetbFYMEftdGScC2+nb+
 XSlSokQGbNn7YZvtDn0AxJG/D+vTYwSKtTsM2M++emi+tlP3BU5Hlf/EnKGMFtdo5n6D
 Qn27nR8wGnBHmxED+734eovxvSJ0sIu9KYIjcQlJrTma+Sxg12NXXXeGZmsIsxs0ZoPw
 ITAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc;
 bh=tdMDeE5DFxtebmzg8TgSG7lq9CFoMzSJjXtC8xPD4ao=;
 b=Fum4Q1KS28hRpJP7DE7AEoAhEjMvTCm2U6xewiOEBvgM6mNTh8tznuj6lpocpJeH3D
 WmaqX0EMSzl5iFCU0SqcZG0MxwqeuaB/Ss+p+rdGYA/Qwf/f7ffZhsKpuQYO0fy8gSGx
 IuPeqGTCQ+0iOKT2Nf9FET3va7BEWzeKANrrJAkwJt23nNob6Yx0dZlBjoMbz4D9xzKQ
 v2KPXn7s/hPCLJQVTOm4lET/rHhvyoiy0TTlrcAfkcA25CkyfIiyqETZ8gJXdJ8lfTFI
 /8UP0WFenWSOjEFPlrjYVCHS9j1pCYbcsm1CT2nNkOlvqWt7yUUQ07dst2D9dcY4Y/EQ
 3sBA==
X-Gm-Message-State: ACgBeo3DZmc/GvPyd7jviuKRriRzoMCAv9ozRsB3CGPBXUG8PmF//guX
 DqaPoNJXIuFvLmY69kZBZz3lDmXy1F/rGjLFac/EpWYRGGlbMA==
X-Google-Smtp-Source: AA6agR73xHknd+WrOAW2ybtRjCsG0LdPhi5ChGmAkI29LUDiIDexSIfHFsJGOYB7jkNbXWnE8u8NuwZV08QooXGwpVw=
X-Received: by 2002:adf:f0c2:0:b0:225:26dd:7999 with SMTP id
 x2-20020adff0c2000000b0022526dd7999mr16013311wro.476.1661342881749; Wed, 24
 Aug 2022 05:08:01 -0700 (PDT)
MIME-Version: 1.0
References: <20220721150055.52096-1-abhijeet.srivastava2308@gmail.com>
 <cf992081-eb0c-009d-f283-1602b74a9293@xs4all.nl>
In-Reply-To: <cf992081-eb0c-009d-f283-1602b74a9293@xs4all.nl>
From: Abhijeet Srivastava <abhijeet.srivastava2308@gmail.com>
Date: Wed, 24 Aug 2022 17:37:45 +0530
Message-ID: <CAOnLnQmdvtAeYYCyQGqCEx1nbGVQ-pefRrfQ3NU9AYOVtWdXBg@mail.gmail.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  No problem, I understand. On Wed, 24 Aug, 2022, 3:18 pm Hans
 Verkuil, wrote: > Hi Abhijeet, > > Thank you for the zoran patches,
 unfortunately
 these are a duplicate of > > > > > I wish I'd noticed your patches earlier,
 it would have saved me some work > :-( > > I'm marking y [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [abhijeet.srivastava2308[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [abhijeet.srivastava2308[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.50 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.50 listed in list.dnswl.org]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1oQpB2-0001nw-5d
X-Mailman-Approved-At: Wed, 24 Aug 2022 17:22:39 +0000
Subject: Re: [Mjpeg-users] [PATCH] media: staging: media: zoran: Removed
 braces for single statement block
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 mjpeg-users@lists.sourceforge.net, Corentin Labbe <clabbe@baylibre.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============3563047619186514734=="
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

--===============3563047619186514734==
Content-Type: multipart/alternative; boundary="000000000000511e9205e6fb88e9"

--000000000000511e9205e6fb88e9
Content-Type: text/plain; charset="UTF-8"

No problem, I understand.

On Wed, 24 Aug, 2022, 3:18 pm Hans Verkuil, <hverkuil@xs4all.nl> wrote:

> Hi Abhijeet,
>
> Thank you for the zoran patches, unfortunately these are a duplicate of
>
>
> https://patchwork.linuxtv.org/project/linux-media/patch/20220810115445.2302477-2-hverkuil-cisco@xs4all.nl/
>
> I wish I'd noticed your patches earlier, it would have saved me some work
> :-(
>
> I'm marking your patches Obsoleted in patchwork.
>
> Regards,
>
>         Hans
>
> On 21/07/2022 17:00, Abhijeet Srivastava wrote:
> > Warning found by checkpatch.pl script.
> >
> > Signed-off-by: Abhijeet Srivastava <abhijeet.srivastava2308@gmail.com>
> > ---
> >  drivers/staging/media/zoran/zoran_card.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/media/zoran/zoran_card.c
> b/drivers/staging/media/zoran/zoran_card.c
> > index 26f978a1cc72..0c138d47d0c3 100644
> > --- a/drivers/staging/media/zoran/zoran_card.c
> > +++ b/drivers/staging/media/zoran/zoran_card.c
> > @@ -1038,9 +1038,9 @@ static int zr36057_init(struct zoran *zr)
> >       zr->stat_com = dma_alloc_coherent(&zr->pci_dev->dev,
> >                                         BUZ_NUM_STAT_COM * sizeof(u32),
> >                                         &zr->p_sc, GFP_KERNEL);
> > -     if (!zr->stat_com) {
> > +     if (!zr->stat_com)
> >               return -ENOMEM;
> > -     }
> > +
> >       for (j = 0; j < BUZ_NUM_STAT_COM; j++)
> >               zr->stat_com[j] = cpu_to_le32(1); /* mark as unavailable
> to zr36057 */
> >
>

--000000000000511e9205e6fb88e9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">No problem, I understand.=C2=A0</div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, 24 Aug, 2022, 3:18=
 pm Hans Verkuil, &lt;<a href=3D"mailto:hverkuil@xs4all.nl">hverkuil@xs4all=
.nl</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi Abhijeet,<br>
<br>
Thank you for the zoran patches, unfortunately these are a duplicate of<br>
<br>
<a href=3D"https://patchwork.linuxtv.org/project/linux-media/patch/20220810=
115445.2302477-2-hverkuil-cisco@xs4all.nl/" rel=3D"noreferrer noreferrer" t=
arget=3D"_blank">https://patchwork.linuxtv.org/project/linux-media/patch/20=
220810115445.2302477-2-hverkuil-cisco@xs4all.nl/</a><br>
<br>
I wish I&#39;d noticed your patches earlier, it would have saved me some wo=
rk :-(<br>
<br>
I&#39;m marking your patches Obsoleted in patchwork.<br>
<br>
Regards,<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Hans<br>
<br>
On 21/07/2022 17:00, Abhijeet Srivastava wrote:<br>
&gt; Warning found by <a href=3D"http://checkpatch.pl" rel=3D"noreferrer no=
referrer" target=3D"_blank">checkpatch.pl</a> script.<br>
&gt; <br>
&gt; Signed-off-by: Abhijeet Srivastava &lt;<a href=3D"mailto:abhijeet.sriv=
astava2308@gmail.com" target=3D"_blank" rel=3D"noreferrer">abhijeet.srivast=
ava2308@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/media/zoran/zoran_card.c | 4 ++--<br>
&gt;=C2=A0 1 file changed, 2 insertions(+), 2 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/stagin=
g/media/zoran/zoran_card.c<br>
&gt; index 26f978a1cc72..0c138d47d0c3 100644<br>
&gt; --- a/drivers/staging/media/zoran/zoran_card.c<br>
&gt; +++ b/drivers/staging/media/zoran/zoran_card.c<br>
&gt; @@ -1038,9 +1038,9 @@ static int zr36057_init(struct zoran *zr)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0zr-&gt;stat_com =3D dma_alloc_coherent(&amp;=
zr-&gt;pci_dev-&gt;dev,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0BUZ_NUM_STAT_COM * sizeof(u32),<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&amp;zr-&gt;p_sc, GFP_KERNEL);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (!zr-&gt;stat_com) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!zr-&gt;stat_com) <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -ENOMEM;<=
br>
&gt; -=C2=A0 =C2=A0 =C2=A0}<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0for (j =3D 0; j &lt; BUZ_NUM_STAT_COM; j++)<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0zr-&gt;stat_com[=
j] =3D cpu_to_le32(1); /* mark as unavailable to zr36057 */<br>
&gt;=C2=A0 <br>
</blockquote></div>

--000000000000511e9205e6fb88e9--


--===============3563047619186514734==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3563047619186514734==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users

--===============3563047619186514734==--

