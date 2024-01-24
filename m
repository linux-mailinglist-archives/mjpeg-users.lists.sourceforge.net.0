Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC6683A97A
	for <lists+mjpeg-users@lfdr.de>; Wed, 24 Jan 2024 13:19:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1rScDY-00040m-78;
	Wed, 24 Jan 2024 12:18:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <schultz1010@gmail.com>) id 1rScDX-00040g-0l
 for mjpeg-users@lists.sourceforge.net;
 Wed, 24 Jan 2024 12:18:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=m3+wnJRKBgBdVD3ZigJqgyyoueWAhnZtbro1m7TrUi8=; b=LyM2jIx3RXbNAwSgIGPD5PBJhh
 +xaLsjQ6mqVMKt4kTbxIeD+zxbNcvkRFxHFDCl+T2b4mIPcpLjpppGcb57BPBNAgHShB8G7h5Tcqw
 FkQ9xa40KZSo6eRI4VsJJ8VKTyI/YW2xeIqhnBQX6QJ94hMjJlG81mZsmT4ff6RTu7BI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=m3+wnJRKBgBdVD3ZigJqgyyoueWAhnZtbro1m7TrUi8=; b=OXqmLhpldrN72bo91H4PznzNcX
 jef0A2n3vgXeMuAQkGJODXkwwpEpOcKro2/gOMzYJxayBb2JK1U4QyfcPRt8K41HXV3nMuyzV1cjU
 Q8brL+XmtgMUM1oXvd8cfp2RXUrYzwry0rZzb6UouWwgn5Z32X0R6m1y9PreJljB+3TY=;
Received: from mail-yw1-f176.google.com ([209.85.128.176])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rScDW-0008CT-BZ for mjpeg-users@lists.sourceforge.net;
 Wed, 24 Jan 2024 12:18:55 +0000
Received: by mail-yw1-f176.google.com with SMTP id
 00721157ae682-6002a655d77so23497527b3.2
 for <mjpeg-users@lists.sourceforge.net>; Wed, 24 Jan 2024 04:18:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706098729; x=1706703529; darn=lists.sourceforge.net;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=m3+wnJRKBgBdVD3ZigJqgyyoueWAhnZtbro1m7TrUi8=;
 b=CIfR1YVmYEUUuIt768Nsav4inYFcYT8BR3Ll3qpae9YuCATrK9mxP7yfWBTamKq29x
 E06VAsbQMtT+XGiWzd6d/6ik9YEScrKTq6Ikniw4XOwSD6guRms8waBEbqAi6mui6+3h
 1Q9b/YtP44YeHDNAnwvRuMR0fv+bcP2e4MaVIW9NhxHDKmwH2FhWZNYn2h4VErhgv0IO
 8zc9Ry7yBBQ3TVTshKgG3eWoH5kV/45wCP0OLjT/4V7rS34PN0AvqFZZtmEGK9y/iZzL
 0FCFAykMHlGyKOsS+wsLpRK64fKhOjfJN9PW0FbZhoEnD/Z+yhHOOcfGwbIbQsy7M/TG
 noUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706098729; x=1706703529;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=m3+wnJRKBgBdVD3ZigJqgyyoueWAhnZtbro1m7TrUi8=;
 b=SwkZg6Y9yyHVFF3Wugwq4Zzq5rGoZ2P1Ffwifjh7mH+FfO4/yf1TdnCI1/iVwB605Q
 1ZwVvR2py7DjGvdOzumsg+MD/NFfH4It1/CWm7+wwnWKC4WOZp7wXNrTJVW4NL4/egiv
 UOK0e9WHzMWuXRS/ZHN5L3kEqtxUzI6s3XBiW9Y6w6A0L5OlQNZ5dWCWjO+9fUrY9WiN
 mXXfVvfuR3Rmq3fTNt9b7vllMusdkm2SDCY6wfPuK5TgHBllcsPCLhRvwNFIVtNAbajy
 mmYz+RC7AE7aHh3ldiWnHHfABFzAkXhztGdBTtO7TFs1/5VHL5/WN2qZD06Piw4wpHYk
 J5QA==
X-Gm-Message-State: AOJu0Yxuh6XsBzi2qhA+2v8PPxlz/zoBt22WJRSkjhsp/HLafFHN3kzA
 Hd+oHV1TeCBNHF2mQiYh/UScb9GXxj0/uk2M4FBhysWSYUboGNTStItrhFeMPZRk/QQIAG8Tkpn
 iTpxvAS7usM3SU/40NNZmnTH7yp2GNvgPL+E=
X-Google-Smtp-Source: AGHT+IF1rNtp07kYowTSk7yx1B/2tGW+/oI4mweYi/dU1Vfk4BliL9x0kCEFOHZCSUDW1bUiyM9iQ9kcxyYUyN03yos=
X-Received: by 2002:a0d:dd03:0:b0:5d7:1940:8df8 with SMTP id
 g3-20020a0ddd03000000b005d719408df8mr530430ywe.95.1706098728925; Wed, 24 Jan
 2024 04:18:48 -0800 (PST)
MIME-Version: 1.0
References: <CA+rFky5RgJJYqEfYEFqUSdwUyfD9smn4+pyu3qONJGXD3VGqkA@mail.gmail.com>
In-Reply-To: <CA+rFky5RgJJYqEfYEFqUSdwUyfD9smn4+pyu3qONJGXD3VGqkA@mail.gmail.com>
From: Steven Schultz <schultz1010@gmail.com>
Date: Wed, 24 Jan 2024 06:18:37 -0600
Message-ID: <CADpxD9OiUV5BsNCxeT6x6uyQZh=WsRJmosvPBmAi11vzkEEC5A@mail.gmail.com>
To: MJPEG-tools user list <mjpeg-users@lists.sourceforge.net>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, Jan 24, 2024 at 12:47 AM Andrew Randrianasulu <
   wrote: > Not really full patch, but just something I hacked together for >
    compiling cinelerra-gg on termux.... > > I wonder if this functionality can
    be (or should) be rolled into > mjpegtools ? Or it better remain as separate
    patch for termux-packages > repo? > 
 
 Content analysis details:   (0.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [schultz1010[at]gmail.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
                             in digit
                             [schultz1010[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.128.176 listed in list.dnswl.org]
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.128.176 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rScDW-0008CT-BZ
Subject: Re: [Mjpeg-users] mjpegtools and termux
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
Content-Type: multipart/mixed; boundary="===============2075217789680012208=="
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

--===============2075217789680012208==
Content-Type: multipart/alternative; boundary="000000000000b07efa060fb01025"

--000000000000b07efa060fb01025
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 24, 2024 at 12:47=E2=80=AFAM Andrew Randrianasulu <
randrianasulu@gmail.com> wrote:

> Not really full patch, but just something I hacked together for
> compiling cinelerra-gg on termux....
>


> I wonder if this functionality can be (or should) be rolled into
> mjpegtools ? Or it better remain as separate patch for termux-packages
> repo?
>

My feeling is that it should remain as a separate patch for terms-packages.
    I see a new/different pthreads_cancel() added - all my systems have a
pthreads_cancel already,.

I'll defer to the other folks though - if other devs want it then they'll
add it,.

thanks for the interest but I think this is functionality that belongs with
the program/library that need or wants it.

--000000000000b07efa060fb01025
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 24, 2024 at 12:47=E2=80=
=AFAM Andrew Randrianasulu &lt;<a href=3D"mailto:randrianasulu@gmail.com">r=
andrianasulu@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-s=
tyle:solid;border-left-color:rgb(204,204,204);padding-left:1ex">Not really =
full patch, but just something I hacked together for<br>
compiling cinelerra-gg on termux....<br></blockquote><div>=C2=A0</div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-=
width:1px;border-left-style:solid;border-left-color:rgb(204,204,204);paddin=
g-left:1ex">
I wonder if this functionality can be (or should) be rolled into<br>
mjpegtools ? Or it better remain as separate patch for termux-packages repo=
?<br></blockquote><div><br></div><div>My feeling is that it should remain a=
s a separate patch for terms-packages. =C2=A0 =C2=A0 I see a new/different =
pthreads_cancel() added - all my systems have a pthreads_cancel already,.</=
div><div><br></div><div>I&#39;ll defer to the other folks though - if other=
 devs want it then they&#39;ll add it,. =C2=A0=C2=A0</div><div><br></div><d=
iv>thanks for the interest but I think this is functionality that belongs w=
ith the program/library that need or wants it.</div><div><br></div><div><br=
></div></div></div>

--000000000000b07efa060fb01025--


--===============2075217789680012208==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============2075217789680012208==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users

--===============2075217789680012208==--

