Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9690483E97D
	for <lists+mjpeg-users@lfdr.de>; Sat, 27 Jan 2024 03:10:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1rTY9b-0002lL-AT;
	Sat, 27 Jan 2024 02:10:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <randrianasulu@gmail.com>) id 1rTY9Z-0002lF-Jv
 for Mjpeg-users@lists.sourceforge.net;
 Sat, 27 Jan 2024 02:10:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UJ+8VaHySaift6rVEU45h5JGjIYQWHP7JtkWUBxKu14=; b=lrMJU7yD38XiTnPnZBTrHC62o7
 VWT/c+KvEYeNqSSgX/RsvD/QrVVgx0BIVNT2Q5buvRT/pqKLpxNXW4ibrMg7XXMH303aAxKkfomm9
 km1Fyr43lVw14u1bMpSP8ZftLiKssd/Vc4Ugl8gaDvLBwTg7mZvk6MMbBRHBXGdKBKnE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UJ+8VaHySaift6rVEU45h5JGjIYQWHP7JtkWUBxKu14=; b=Sx+x3/9WJsVsZ13LeR+bUrDA3q
 4M7dVAX++034oReKCEsncTNme7kNe7tBdZ8B1yyqJomcUX787HnBhbOxXtG8z2pVnL4BEEGBjcXUo
 WizLusUCKc2oOCb94qt7tUzgHuF8YnEt7F7pheIltrTs0fJ9Ll3fPjwz+fsa0BB9sicw=;
Received: from mail-pl1-f175.google.com ([209.85.214.175])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rTY9X-0004gj-Co for Mjpeg-users@lists.sourceforge.net;
 Sat, 27 Jan 2024 02:10:42 +0000
Received: by mail-pl1-f175.google.com with SMTP id
 d9443c01a7336-1d51ba18e1bso10892865ad.0
 for <Mjpeg-users@lists.sourceforge.net>; Fri, 26 Jan 2024 18:10:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706321429; x=1706926229; darn=lists.sourceforge.net;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=UJ+8VaHySaift6rVEU45h5JGjIYQWHP7JtkWUBxKu14=;
 b=kIPeAJO5nwQJj8b0AD8pz8NImYZlc06zKbCVetTFm584bSSNOgGJQttiDw4rPIUJXX
 nQYZ0tGemjBIGPhWXuxohvuSxyvsnpJqtS6H8O/4xt1eVM6mAMUNI12XRybDZaIEslQp
 HOJCLhCvC1QFlgWJOqGAGoSpNVf5fVdKACteyHgGobHoyPe87ZRUIeyD6IwoHX+BR4sA
 TJRNaLhajyFLt3yppwPQo3o1KbbxaNBXlip0vxprPctGBGvnKDbQmgHbHbP3ZEDI8oBb
 IqDyCYPyoyzHONx79Cob2E7geirBZOo7fniXc/ehQPGjGQZtJvUwL+9mGBBwjAApI2xI
 kubQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706321429; x=1706926229;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=UJ+8VaHySaift6rVEU45h5JGjIYQWHP7JtkWUBxKu14=;
 b=o2rKe18gWSy2VW6GiBCXRK6eZy66C+r70DzxCtldYaXLe6K8SkwQCaIi0eLsKKVdiI
 BSnunZ91F2ZwvwLcFboKXPWBnIca+4u9nigbLnNm/TyUpTcEu5CFOaqzaVJvHZ0EKH9D
 g0+M0xPagsHmNm9iqfUKVm2E5B3WHjduregxbk1WMAzuRL87TNtyoLnsCv0CyjWSMfoB
 cXtx4jUS8NH7tqX/qFUYkVHjeezfanQRrN3MufPfEbYkiAlbj55SIdQw11IZswunUQyd
 mMTwdttAWfgwtTEsLxff+S83ZtGe5a6b5uxw+0rBGwoUeJufiSFPxXTRUf+jUI+E5sik
 nXXQ==
X-Gm-Message-State: AOJu0YxRl0CeKMto2XUnjWAEKsgMDCWzZnRhrqTB7wlAMc69OHgphD9M
 x5XwO2XFeO79UxM6Z1ocblJVVsp+LW/0RoTNLdo3Xuxx910WLiFRPc31oRT1m6WJDM7ky96My1y
 TkbFfG3DcYkI132tI7Srv0KKRuA23qf8XtVSi2g==
X-Google-Smtp-Source: AGHT+IHnAupyvRNDlYOmJSbGIN7AOeLZ3ueo4QbMUBjxHiq66xryYzlztUjAFMUklf+vUp77Fg0g5j6TmA0ESdYjbes=
X-Received: by 2002:a17:902:d510:b0:1d8:aebd:8938 with SMTP id
 b16-20020a170902d51000b001d8aebd8938mr944755plg.57.1706321429068; Fri, 26 Jan
 2024 18:10:29 -0800 (PST)
MIME-Version: 1.0
References: <CA+rFky4pJ-9oyEyNAunsk8W1PzznBXrwbvDEOHbzEyGUv_qG5w@mail.gmail.com>
In-Reply-To: <CA+rFky4pJ-9oyEyNAunsk8W1PzznBXrwbvDEOHbzEyGUv_qG5w@mail.gmail.com>
From: Andrew Randrianasulu <randrianasulu@gmail.com>
Date: Sat, 27 Jan 2024 04:53:36 +0300
Message-ID: <CA+rFky59+1XJXvej8xvBJmcP4ZQS7LZ=FBrqTdD3cttBsOFK0Q@mail.gmail.com>
To: MJPEG-tools user list <Mjpeg-users@lists.sourceforge.net>
Content-Type: multipart/mixed; boundary="000000000000a7239d060fe3ea55"
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, Jan 24, 2024 at 1:58 AM Andrew Randrianasulu wrote:
    > > So, I was having a blast hacking old en/decoder. > > My own hacks do
   not work on 64-bit yet (they run, just sounds wrongs > :) ) but [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [randrianasulu[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.214.175 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.214.175 listed in list.dnswl.org]
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rTY9X-0004gj-Co
Subject: Re: [Mjpeg-users] multichannel mpeg audio
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
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

--000000000000a7239d060fe3ea55
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 24, 2024 at 1:58=E2=80=AFAM Andrew Randrianasulu
<randrianasulu@gmail.com> wrote:
>
> So, I was having a blast hacking old en/decoder.
>
> My own hacks do not work on 64-bit yet (they run, just sounds wrongs
> :) ) but this one  was tested on aarch64 Termux install, so should be
> better
>
> https://github.com/Randrianasulu/iso-dist10
>
> note: pcm2aiff too was not working for me, but mc (multichannel) and
> lsf (low sampling frequency) mpeg de/encoders were good ..
>
> I wonder if mplex already can mux those streams? In man I see

Even if svn log says nothing will ever be done for SVCD multichannel I
think it was working at some point?

https://encode2mpeg.sourceforge.net/html/multichannel.html
uses mplex? First time I saw bash script in 100s kb size range ...

and for Windows

https://web.archive.org/web/20051230022557/http://hypercubemx.free.fr/html/=
how_to_make_5_1__svcd.html

I tried their software under wine - um, something was eating cpu time
- so 3 min of 6 ch. audio was encoding at 1/10
of realtime - for 30+ minutes!

mctoolame on the other hand encodes same file in 190-75 seconds depend
on -ffast-math usage.
I was surprized  that 'threshold" calculations in psycho_1.c
(psychoacoustical model  one) eat up to half of cpu time!
So adding supposedly faster fftw from twolame not changed speed as
radically as I hoped.

=3D=3D=3D=3D opreport log =3D=3D=3D=3D

samples  cum. samples  %        cum. %     image name               symbol =
name
579112   579112        50.5768  50.5768    mctoolame                thresho=
ld
115666   694778        10.1017  60.6785    mctoolame                psycho_=
1
101489   796267         8.8636  69.5421    mctoolame
II_a_bit_allocation
53317    849584         4.6564  74.1985    mctoolame                noise_l=
abel
43665    893249         3.8135  78.0120    mctoolame
window_subband
33099    926348         2.8907  80.9027    mctoolame
filter_subband
28008    954356         2.4461  83.3488    mctoolame                fht
24048    978404         2.1002  85.4490    mctoolame
transmission_channel
20451    998855         1.7861  87.2351    mctoolame
II_subband_quantization_mc
15968    1014823        1.3946  88.6297    mctoolame
matricing_fft
15814    1030637        1.3811  90.0108    mctoolame
II_scale_factor_calc
14554    1045191        1.2711  91.2819    mctoolame                tc_allo=
c
14359    1059550        1.2540  92.5359    mctoolame                lfe_fil=
ter
13910    1073460        1.2148  93.7507    mctoolame
II_tonal_label
12842    1086302        1.1216  94.8723    mctoolame
II_subband_quantization
6381     1092683        0.5573  95.4296    mctoolame                putbits
6330     1099013        0.5528  95.9824    libc-2.33.so             fwrite
5476     1104489        0.4782  96.4607    mctoolame                II_smr
4562     1109051        0.3984  96.8591    mctoolame                get_aud=
io
3760     1112811        0.3284  97.1875    mctoolame
II_sample_encoding_mc
3261     1116072        0.2848  97.4723    libc-2.33.so
_IO_file_xsputn@@GLIBC_2.1
2587     1118659        0.2259  97.6982    mctoolame
II_sample_encoding
2053     1120712        0.1793  97.8775    mctoolame                normali=
zing
1906     1122618        0.1665  98.0440    mctoolame                matrici=
ng
1723     1124341        0.1505  98.1944    mctoolame
II_transmission_pattern
1628     1125969        0.1422  98.3366    mctoolame                psycho_=
1_fft
1491     1127460        0.1302  98.4668    mctoolame
II_minimum_mask
1273     1128733        0.1112  98.5780    mctoolame
II_CRC_calc_mc
1234     1129967        0.1078  98.6858    mctoolame
create_dct_matrix
964      1130931        0.0842  98.7700    mctoolame
II_encode_scale
880      1131811        0.0769  98.8468    mctoolame                main
821      1132632        0.0717  98.9185    mctoolame
II_main_bit_allocation
781      1133413        0.0682  98.9867    kallsyms
tick_do_update_jiffies64
742      1134155        0.0648  99.0515    mctoolame                update_=
CRC
689      1134844        0.0602  99.1117    kallsyms
copy_user_generic_string

[rest is skipped]


from 13818-3.pdf I currently read:

=3D=3D=3D=3D quote =3D=3D=3D

The ISO/MPEG-Audio Multichannel system provides full compatibility
with the ISO Standard 11172-3. This
compatibility is realised by coding the basic stereo information in
conformance with ISO/IEC 11172-3 and exploiting
the ancillary data field of the ISO/IEC 11172-3 audio frame and an
optional extension bit stream for the multichannel
extension.

The complete ISO/IEC 11172-3 frame incorporates four different types
of information:
-   Header information within the first 32 bits of the ISO/IEC 11172-3
audio frame.
-   Cyclic Redundancy Check (CRC), consisting of 16 bits, just after
the header information (optional).
-   Audio data, for Layer II consisting of bit allocation (BAL),
scalefactor select information (SCFSI), scalefactors
    (SCF), and the subband samples.
-   Ancillary data. Due to the large number of different applications
which will use the ISO/IEC 11172-3 Standard,
    the length and usage of this field are not specified.

The variable length of the ancillary data field enables packing the
complete extension information of the channels
T2/T3/T4 into the first part of the ancillary data field. If the MC
encoder does not use all of the ancillary data field for
the multichannel extension information, the remaining part of the
field can be used for other ancillary data.

The bit rate required for the multichannel extension information may
vary on a frame by frame basis, depending on
the sound signals. The overall bit rate may be increased above that
provided for in ISO/IEC 11172-3 by the use of an
optional extension bit stream. The maximum bit rate, including the
extension bit stream, is given by the following
table:
 Sampling Frequency       Layer    Maximum Total Bit Rate
        32 kHz                I             903 kbit/s
        32 kHz                II            839 kbit/s
        32 kHz               III            775 kbit/s
    44.1 kHz              I             1075 kbit/s
    44.1 kHz              II            1011 kbit/s
    44.1 kHz              III           947 kbit/s
    48 kHz               I               1130 kbit/s
    48 kHz               II              1066 kbit/s
    48 kHz              III             1002 kbit/s

huh, quite big - for all those channels ...


=3D=3D=3D=3D=3D

thing is, this extension bitstream just dumped by encoder as file, and
I have currently no idea how to incorporate it back into mpeg stream
:)

Anyway, if specified bitrate not above 384 Kbit/s  older standart
used, so current mplex IMO muxes it correctly - I can extract mp2
audio with
ffmpeg and decode it back in 5.1 sound ...

additionally, I found two typos in man and comments :) patch attached





>
> BUGS
>        The multiplexer should handle MPEG(5.1) audio.
>
> but date on man page from 2001 ...

--000000000000a7239d060fe3ea55
Content-Type: text/x-patch; charset="US-ASCII"; name="two_typos.diff"
Content-Disposition: attachment; filename="two_typos.diff"
Content-Transfer-Encoding: base64
Content-ID: <f_lrvelate0>
X-Attachment-Id: f_lrvelate0

SW5kZXg6IGRvY3MvbXAyZW5jLjEKPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQotLS0gZG9jcy9tcDJlbmMuMQkocmV2aXNp
b24gMzUwOSkKKysrIGRvY3MvbXAyZW5jLjEJKHdvcmtpbmcgY29weSkKQEAgLTMxLDcgKzMxLDcg
QEAKIE1wMmVuYyBpcyBhIHNpbXBsZSBNUEVHLTEgbGF5ZXItSS9JSSBhdWRpbyBlbmNvZGVyLiAg
SXQgaXMgYWN0dWFsbHkgYSB2ZXJ5CiBtaWxkbHkgd2FybWVkIG92ZXIgdmVyc2lvbiBvZiB0aGUg
TVBFRyBTb2Z0d2FyZSBTaW11bGF0aW9uIEdyb3VwJ3MKIHJlZmVyZW5jZSBlbmNvZGVyLiAgSXQg
YWNjZXB0cyBhIFdBViBmaWxlIG9yIHN0cmVhbSBvbiBzdGRpbiBhbmQKLW91cHV0cyBhbiBhIGxh
eWVyLUkvSUkgZWxlbWVudGFyeSBhdWRpbyBzdHJlYW0uICBJdCBpcyBpbmNsdWRlZCBpbiB0aGUK
K291dHB1dHMgYW4gYSBsYXllci1JL0lJIGVsZW1lbnRhcnkgYXVkaW8gc3RyZWFtLiAgSXQgaXMg
aW5jbHVkZWQgaW4gdGhlCiBcZkJtanBlZ3Rvb2xzXGZQKDEpIHByaW1hcmlseSBmb3IgcmVhc29u
cyBvZiBjb21wbGV0ZW5lc3MgYW5kIGJlY2F1c2UgaXQKIGlzIGFibGUgdG8gcGVyZm9ybSBzYW1w
bGluZyByYXRlIGNvbnZlcnNpb24uCiAuUFAKSW5kZXg6IG1wbGV4L3N5c3RlbXMuY3BwCj09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT0KLS0tIG1wbGV4L3N5c3RlbXMuY3BwCShyZXZpc2lvbiAzNTA5KQorKysgbXBsZXgvc3lz
dGVtcy5jcHAJKHdvcmtpbmcgY29weSkKQEAgLTI2MSw5ICsyNjEsOSBAQAogLyoqKioqKioqKioq
KioqKioqKioqKioqKgogICoKICAqIElzIHRoaXMgYSBzdHJlYW0gd2hlcmUgZm9yIHRoZSBNUEVH
LTIKLSAqIGhlYWRlciBleHRlbnNpb25zYXBwZWFyPworICogaGVhZGVyIGV4dGVuc2lvbnMgYXBw
ZWFyPwogICoKLSAqIFRoZSB2ZXJzaW9uIGJlbG93IGlzIGNvcnJlY3QgYXQgbGVhc3QgZm9yRFZE
CisgKiBUaGUgdmVyc2lvbiBiZWxvdyBpcyBjb3JyZWN0IGF0IGxlYXN0IGZvciBEVkQKICAqIGF1
dGhvcmluZy4gICBUaGUgZnVuY3Rpb24gaXMgdmlydHVhbCBpbiBjYXNlIHNvbWV0aW1lCiAgKiBz
b21lcGxhY2UgYSBkaWZmZXJlbnQgZm9ybWF0IHdoZXJlIFBSSVZBVEVfU1RSXzIgaXMgdXNlZAog
ICogZGlmZmVyZW50bHkgaXMgZW5jb3VudGVyZWQuCg==
--000000000000a7239d060fe3ea55
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--000000000000a7239d060fe3ea55
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users

--000000000000a7239d060fe3ea55--

