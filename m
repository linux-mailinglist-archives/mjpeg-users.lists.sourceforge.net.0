Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B3BBF835A42
	for <lists+mjpeg-users@lfdr.de>; Mon, 22 Jan 2024 06:32:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1rRmv2-0004Kf-Hr;
	Mon, 22 Jan 2024 05:32:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <onemda@gmail.com>) id 1rRWIV-0000Ck-37
 for Mjpeg-users@lists.sourceforge.net;
 Sun, 21 Jan 2024 11:47:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fSTA0xguyj6HEEdVc5w5ZLUPuQC/i/HCjdNKtI0ZUOU=; b=EJgfgs/vZk333nXGoNDeUUuS3s
 L7jTh8jSlW1EV6Cq2WUoEPZNLGiOT2uDS6P742FWn80Q5I6gr8JQJJ0ghvlSj1SrDK7HoHqIrc/Le
 xPIIyelN88yLpXvO4j1na/eAtViFo4V6hqUHO4OZveohlspHSgxMUS7UkNULjPlYHZFY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fSTA0xguyj6HEEdVc5w5ZLUPuQC/i/HCjdNKtI0ZUOU=; b=WgB9l8hIrugVR5GFhHBPjepFlG
 64sCEYDZpa3tsWRk2mfCUBOdBvF0Ig8ppq8z+2HNb7zVIu8fOIqRNoxEWlVcu3LGkaCKPwYAa5Al/
 pbkiPqtrHmiiN7LKyIMV033MN1F+GPhfZkJdthQxJmOnHUGZvTbb4ayQXYaCmP9OW7sE=;
Received: from mail-qk1-f171.google.com ([209.85.222.171])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rRWIQ-0001an-E6 for Mjpeg-users@lists.sourceforge.net;
 Sun, 21 Jan 2024 11:47:31 +0000
Received: by mail-qk1-f171.google.com with SMTP id
 af79cd13be357-7831be84f4eso204469385a.0
 for <Mjpeg-users@lists.sourceforge.net>; Sun, 21 Jan 2024 03:47:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1705837640; x=1706442440; darn=lists.sourceforge.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=fSTA0xguyj6HEEdVc5w5ZLUPuQC/i/HCjdNKtI0ZUOU=;
 b=NlKHis+GQzJUM+nfryd0kZ/l3nhLWDYhEZwTwvi9KnRXyE/yH0X6IKU9kF6lasx0DM
 6AJMCPGN3dcgyCnv6Juo33TRzyXgdNlfxG75wEv3TBtZjdwgWPiANLwxsXocX8YigHax
 lsQe1jlsWf4Dv7KI8OIHamQ9cYjngd7eJePrqwMwH9E4QNqF//F27df76yoBYFNmlL2X
 RCtSTUCOUk/ZPi09vrPJ0/8dLrSWLG2L5xe4LiiaqxgYEQWd2o8c3Fh1hB6LqUp7IuqE
 GEbxNtFzyBN5Rgvnbe7dW8xbRoWPWqLQhg7haJM0gxQ/4llM8tJfE5w/zmZLxPlySEbH
 XEUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1705837640; x=1706442440;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=fSTA0xguyj6HEEdVc5w5ZLUPuQC/i/HCjdNKtI0ZUOU=;
 b=mfSLgCsBa5JCeE8kTr1vozx9fH7g1+kDJ4xpRDhN9AbW9WR3GJXj0NnWn4fH6NgfxD
 abg22xci1dM/eYbBLDx7zop/L/40/59dAkw+FTytH2wETlEod1X0BImhAwIHu16OwDt/
 BP3OXxwx3HM7BXFXqNLLkzRJI+Ohf9CTpqw0X1KVPfFUR/hdJY0quh16HbwFZnpbhmhK
 g2RW5mOyFfyB/qHhkI6uE7r1MpEznACb4w+BYNBX3SSer3DB9Y5kv1W5nctKSn5FqMrF
 GQmxvSJOD1jiLfAoIOKQfC9cIdStB78JC13mWPDeSSD9Fy7ThDh9Dq2Boa2AzJiEulZD
 hAbw==
X-Gm-Message-State: AOJu0YygXgFG7Kb8f5oIt5jylOZ+NHKsghyOEwd7Dx43awInbhPnDS0Z
 +9HDZfleViy74jikuJDKRgc6G7NaTvhOjcXxQNFonl2ym/UPtdEpxbkcKDR49I95RfidcnJNfSQ
 ue7jEejlOgX1QkPv+A4aOjsK/KsJbiOj6fBA=
X-Google-Smtp-Source: AGHT+IEWb0TD20tvzXDxdCYcBYsVX6VbDD7PXWuJFwGRbL5vAAtGv1hlRKMCDCyCv6WWi53MUXcRWhlru2KHiSIEoqI=
X-Received: by 2002:a05:620a:2489:b0:783:4037:1923 with SMTP id
 i9-20020a05620a248900b0078340371923mr4503611qkn.64.1705837639707; Sun, 21 Jan
 2024 03:47:19 -0800 (PST)
MIME-Version: 1.0
References: <CA+rFky5pNGoR2NeKkWpZS4i8dJvMpW2pXa1uqCeBFwyRxKAt2g@mail.gmail.com>
In-Reply-To: <CA+rFky5pNGoR2NeKkWpZS4i8dJvMpW2pXa1uqCeBFwyRxKAt2g@mail.gmail.com>
From: Paul B Mahol <onemda@gmail.com>
Date: Sun, 21 Jan 2024 12:47:00 +0100
Message-ID: <CAPYw7P4=TQaa4o_2JCCwzCNax+okV2CxHxgr_NszLrxKGaAuiA@mail.gmail.com>
To: FFmpeg user questions <ffmpeg-user@ffmpeg.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  /* no traces of 44100 and 32000Hz in any commercial software
    or player */ On Sun, Jan 21, 2024 at 3:44 AM Andrew Randrianasulu < wrote:
    > According to this source (vlc) lpcm dvd audio supports lower frequencies
    > like 44100/32000 hz - useful for direct dv transcoding for example ....
    > > https://github.com/videolan/vlc/blob/master/mod [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.222.171 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [onemda[at]gmail.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.222.171 listed in wl.mailspike.net]
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rRWIQ-0001an-E6
X-Mailman-Approved-At: Mon, 22 Jan 2024 05:32:24 +0000
Subject: Re: [Mjpeg-users] [FFmpeg-user] LPCM in DVD - 44.1/32khz sample
 rate?
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
Cc: "Cinelerra.GG" <cin@lists.cinelerra-gg.org>,
 Mjpeg-users@lists.sourceforge.net
Content-Type: multipart/mixed; boundary="===============9083076977887114699=="
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

--===============9083076977887114699==
Content-Type: multipart/alternative; boundary="0000000000008f2fef060f734625"

--0000000000008f2fef060f734625
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

/* no traces of 44100 and 32000Hz in any commercial software or player */

On Sun, Jan 21, 2024 at 3:44=E2=80=AFAM Andrew Randrianasulu <
randrianasulu@gmail.com> wrote:

> According to this source (vlc) lpcm dvd audio supports lower frequencies
> like 44100/32000 hz - useful for direct dv transcoding for example ....
>
> https://github.com/videolan/vlc/blob/master/modules/codec/lpcm.c
>
> see lines 524, 608
>
> Does this mean that libavcodec/pcm-dvdenc.c can be trivially extended to
> support those ?
>
> Same question for mplex. (it only supports 48/96 khz lpcm audio).
>
> I also found this table via mjpeg-users archives:
>
> https://dvd.sourceforge.net/dvdinfo/lpcm.html
>
> it lists dynamic range/gain (?) setting equations.
>
> Not mplex nor ffmpeg support setting this to anything but hardcoded 0x80
>
> This might be source of my "too loud" lpcm dvd experiments because I was
> making lpcm file via cinelerra-gg's raw pcm output format (using libsndfi=
le
> internally).
> _______________________________________________
> ffmpeg-user mailing list
> ffmpeg-user@ffmpeg.org
> https://ffmpeg.org/mailman/listinfo/ffmpeg-user
>
> To unsubscribe, visit link above, or email
> ffmpeg-user-request@ffmpeg.org with subject "unsubscribe".
>

--0000000000008f2fef060f734625
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">/* no traces of 44100 and 32000Hz in any commercial softwa=
re or player */</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sun, Jan 21, 2024 at 3:44=E2=80=AFAM Andrew Randrianasul=
u &lt;<a href=3D"mailto:randrianasulu@gmail.com">randrianasulu@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Acc=
ording to this source (vlc) lpcm dvd audio supports lower frequencies<br>
like 44100/32000 hz - useful for direct dv transcoding for example ....<br>
<br>
<a href=3D"https://github.com/videolan/vlc/blob/master/modules/codec/lpcm.c=
" rel=3D"noreferrer" target=3D"_blank">https://github.com/videolan/vlc/blob=
/master/modules/codec/lpcm.c</a><br>
<br>
see lines 524, 608<br>
<br>
Does this mean that libavcodec/pcm-dvdenc.c can be trivially extended to<br=
>
support those ?<br>
<br>
Same question for mplex. (it only supports 48/96 khz lpcm audio).<br>
<br>
I also found this table via mjpeg-users archives:<br>
<br>
<a href=3D"https://dvd.sourceforge.net/dvdinfo/lpcm.html" rel=3D"noreferrer=
" target=3D"_blank">https://dvd.sourceforge.net/dvdinfo/lpcm.html</a><br>
<br>
it lists dynamic range/gain (?) setting equations.<br>
<br>
Not mplex nor ffmpeg support setting this to anything but hardcoded 0x80<br=
>
<br>
This might be source of my &quot;too loud&quot; lpcm dvd experiments becaus=
e I was<br>
making lpcm file via cinelerra-gg&#39;s raw pcm output format (using libsnd=
file<br>
internally).<br>
_______________________________________________<br>
ffmpeg-user mailing list<br>
<a href=3D"mailto:ffmpeg-user@ffmpeg.org" target=3D"_blank">ffmpeg-user@ffm=
peg.org</a><br>
<a href=3D"https://ffmpeg.org/mailman/listinfo/ffmpeg-user" rel=3D"noreferr=
er" target=3D"_blank">https://ffmpeg.org/mailman/listinfo/ffmpeg-user</a><b=
r>
<br>
To unsubscribe, visit link above, or email<br>
<a href=3D"mailto:ffmpeg-user-request@ffmpeg.org" target=3D"_blank">ffmpeg-=
user-request@ffmpeg.org</a> with subject &quot;unsubscribe&quot;.<br>
</blockquote></div>

--0000000000008f2fef060f734625--


--===============9083076977887114699==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============9083076977887114699==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users

--===============9083076977887114699==--

