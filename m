Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CDF0CDA70
	for <lists+mjpeg-users@lfdr.de>; Mon,  7 Oct 2019 04:32:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1iHIp5-0002nI-5R; Mon, 07 Oct 2019 02:32:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <SRS0=oxnEjO=YA=jankom.net=janos@eigbox.net>)
 id 1iHIp3-0002n8-Ax
 for mjpeg-users@lists.sourceforge.net; Mon, 07 Oct 2019 02:32:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2k8yONGEXrwSZTF/YZUSqLKqP15Zq+O0uK4DpBISleg=; b=BN+B5Px/6HgEkrvQH5tLAZL4SD
 a4I0pW/O49TNzZhYAZwtqBJYgWNK4aH+1MiQ0qa/9RaPeaxmjeMAR/b4yFAO+zk9zg1GuVkuHkQyt
 bjgrLminB3o+FIyHJRuryxtZY2W5bgm2YgnTp/Pd5G0ph4CTE5LQIN9NfvqMXMvhEEds=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:
 References:To:Subject:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2k8yONGEXrwSZTF/YZUSqLKqP15Zq+O0uK4DpBISleg=; b=QjuDVErGoHgPvmllg3zTdXZ/w/
 MOrefZpKZdvrW3PVkg6r1MP6MiznlpL+iJ+WMC0fKOHF0eRpnwpDJtGdl9v0DOa/2dDdiHvEF5BJE
 b8hBoMbp4ciu3aQtOJaINpAJjDyvZRGa46QnhnuuqwN+bl9cJhS5dpRSJhBLsmABZg2w=;
Received: from bosmailout07.eigbox.net ([66.96.186.7])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iHIoy-001kmA-E5
 for mjpeg-users@lists.sourceforge.net; Mon, 07 Oct 2019 02:32:29 +0000
Received: from bosmailscan05.eigbox.net ([10.20.15.5])
 by bosmailout07.eigbox.net with esmtp (Exim) id 1iHILY-0003KP-DU
 for mjpeg-users@lists.sourceforge.net; Sun, 06 Oct 2019 22:02:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=jankom.net; 
 s=dkim;
 h=Sender:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:
 References:To:Subject:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2k8yONGEXrwSZTF/YZUSqLKqP15Zq+O0uK4DpBISleg=; b=tx0dKgRuhgTj4OL4gx4Lehdhk2
 vs+W7NQq25wB6GWamyEmWEH0ZeJ4tOY5v1FsCZOTTWqbMKVaIKdo6Vl5O3z0CznqUbo0eW69+qhPh
 GodzcxqFOmBGR+KmEBLdss5kUsG0rRwI8RW2ulbAxpVScXuYmI+oCcLXdxxcRXv6g4c+wfeOD4Zks
 svdZTbRhDrMmXiwJisP5Ma579pFPMA21tYZlmenFDFozeFqc7m1viOT/RsQatdjjpY52u8wEzHE85
 Zk8ZGsr9l0ZFvtqJZijINCSn6retc0fkbI7RfKPl5mwuQf2Kgblak3OSgbKaMnPia4RxyDf4Et8Px
 RZN9HL8g==;
Received: from [10.115.3.33] (helo=bosimpout13)
 by bosmailscan05.eigbox.net with esmtp (Exim) id 1iHILY-0007Qa-Ac
 for mjpeg-users@lists.sourceforge.net; Sun, 06 Oct 2019 22:02:00 -0400
Received: from bosauthsmtp10.yourhostingaccount.com ([10.20.18.10])
 by bosimpout13 with 
 id AS1w210070D2CUy01S1z6M; Sun, 06 Oct 2019 22:02:00 -0400
X-Authority-Analysis: v=2.2 cv=McAcg93f c=1 sm=1 tr=0
 a=Kpo39fPXdbgqDwiI3/AEUA==:117 a=kOTrr/Y2Bbk5xdrmRE01Sg==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=XobE76Q3jBoA:10 a=NDIJpQQ1qYMA:10
 a=r77TgQKjGQsHNAKrUKIA:9 a=R8GGIHSBnN9BsJG3e1YA:9 a=QEXdDO2ut3YA:10
 a=TIP1St4efnc7_uYCm9YA:9 a=bLDaP9q21DhirTXI:21 a=_W_S_7VecoQA:10
Received: from ip-184-209-22-81.spfdma.spcsdns.net ([184.209.22.81]:37316
 helo=[192.168.43.98]) by bosauthsmtp10.eigbox.net with esmtpa (Exim)
 id 1iHILT-0003wW-Un; Sun, 06 Oct 2019 22:01:56 -0400
To: Bernhard Praschinger <shadowlord@utanet.at>,
 MJPEG-tools user list <mjpeg-users@lists.sourceforge.net>
References: <72e946c8-6e65-1aac-b0ac-233142a3d85d@jankom.net>
 <f9198f58-8ca5-9b96-b0ff-cc250bd328c3@utanet.at>
From: Janos G Komaromi <janos@jankom.net>
Openpgp: preference=signencrypt
Autocrypt: addr=janos@jankom.net; prefer-encrypt=mutual; keydata=
 xsFNBFqAWfYBEAC/g2Gi3DFvP019h/YylfkUhetj4N0obXoOUdO43uKQr0CPr1g4Jt7/yRCO
 rq6G2rdKY1dmvLDgeJWNLEuuEdVp3xm0ErzkyKWFj+jMyB2kA8Ql4OayyALWUOmvO37Rt3Mr
 8xDXPn1H8kKqvOWjnJzfsRg4vV4BpQf7H/UCpR2omL20AZimC31+yez0XjN9rquMjumkB1GJ
 TfBKNr9rVVpQ1BOQNFcbQqq7NDwzJCho7JSW7SpMUD7m8ePFWlYrjBZhPPbtztJBjaKKtCM4
 vtPlYWa0H3LE+jxOeZscoejUVpOh0M6hjzjIxjzjOy/7He3Y+zLyLWqSDTdM63oV/cojHBmG
 azoc8YiH6LyPm75wNCMdcYTZFevVW3b8K/mQBlLTsnNcxIiVbBBqzO/TGOlwLBPkKU5kOm5D
 hSRcmQnCaK2oehn2pYIeCkIYt4pBD9vb3RwEsTBRWGPcXTWd6TAkpvsVnO9CtHxZjc46Cw+Z
 CJCVQ4B4JJZJbIyXAKSkEogOXGxtP1tbcLEXYSoqlP2iACtPvbHo9H9RRF5A17AOVxSCDUzY
 J86in2e6zBVol2XbXac7ap6hSHL6PdERA38oxd8mqbRiLoFX23wPn4JFZZphRHgZgsQwP4ed
 QoShG2VQehFuEMshMbHeUb/kSQUF9GpfEi8/MuYvbzJRq8ZLwwARAQABzSNKYW5vcyBHIEtv
 bWFyb21pIDxqYW5vc0BqYW5rb20ubmV0PsLBfQQTAQgAJwUCWoBZ9gIbIwUJCWYBgAULCQgH
 AgYVCAkKCwIEFgIDAQIeAQIXgAAKCRBvAoGTGDFRWNa9EACfACGJYlMI5NJjKDSj31H39B8r
 Hb2qqlaOKunxO5COqLOCnm0AGEfPKxi6cENpy8Y+HG8x/LDknXemWtR7ZEzyS6PkG8oxAv8U
 EsMXgNTktCoBbCoN/KU242c+3guwpBHID3BCyLijPgOYJivNEDFevgVNZYEumohRLKSN6HS5
 qlbkrNBYacfUzGanL1c3rB5rJRln9qIC3d3vZwUOvz+OWwPXH0XSEBQlNNcPvBsEtlToVV8m
 iynlDs+0dvLsDQd3vTw8xX3C10aB9uwW9n+RBblRNvfc7AZqbtJVoa+P2Pbdue69nEvJn2Eh
 cyoZnjvTyqZJpFEsZ7futjEXz0mofCxXRieTO2DaM8ASaEY/cnLzcW57OQ9FkGQMdiObsoh9
 w3TmK/NM/2rKwlhZUXEb2Bd1Zzdaq9xH6p6DPZkWceGs/ApzoayCAZ37X7uEt0Yx0NugN8X7
 wNzaa/CRq+Ri2jIJsufzfouIqNar7734jJXlYF+Db8Bzcl2pJSVsGKqw5ItGH2TKBWZ1Mkxu
 k74DUs5brnoMJNU/vgsfYOPUg2vgC8+OFuqL0kI+w1yRPXakSWfhH9txuKe2rG71xTGR/rMa
 ZzlCL+XTcHTgSLztLc5SF3lhWX6hpGAe+uVicDQJbMHypEMMEi2U0yJfvYjxHu6SunTiH3MB
 sSIlQFZXN87BTQRagFn2ARAAtiLaAouqna03Jpt7SqvQO6HvIocfiD6fOXzRiMXBMcJcFgBq
 uXKPqq/RLHOEpaGSJVMF40hIbmFYmJxNqJclaMbOsj6n//WRo4xWWXu+qGj6+DB2SQRqf3IQ
 NMFC57nr5xomBFYKfjJOoKP/YQUx4PaCZ88tJJIuV9iJsjeI1YJSn5r20e0Xj61R+k03tyFZ
 9LRBn94W2u8IL7bPkOPVla9IUE6GxcjifpEflAqZPGZrJHQlpT4W8057+kMwttzuROwbO289
 fAHWCD6k4JW9uGg6Gu6HnaZpus32/sVlAyGkE4spav+pjlBpIlSofWA5d3IOVFNcvRpdeLEH
 SamjJrEVEv/m90BAREJQg2pCa8dhgxWbRXTjuVDY8sjXqzcz/4FAR6+im795E5GLboZojs5w
 qaEcSZO/H1yMXIHg2DUsUYreOWK6EMhwbMMrcknMCBABUQGLxy8SHffd2/yDNyPuMdTYjpVx
 EO9zxu3nSKeZUSv3kffzI/4011JdLVk8pp+6g4NjozygMchBEQEWCyeSONkzGscX+v070vgB
 IpgXR9AcY5wqbu4RRhe3gFKCWRcf+m10nXAPgRQzX4D4tjDH+FdRf+ud8nfuK6f86fvFXx8g
 lUrWfQcb4W2mc/gSUgFhVqrtG8mFdojefYF3kcyqWWcoHlqIe82jwwr0/b0AEQEAAcLBZQQY
 AQgADwUCWoBZ9gIbDAUJCWYBgAAKCRBvAoGTGDFRWKFSEACDMj2C0/zgnCEvVPFI8UcX/8gV
 Opn+FtwTvD0Dsqcrt8YP+MTJlU97ul9mTTHks89aFwJQsHMnInmJ1C3pwN5psuDCZ27/2cXC
 5NfhQYiFeP5FlPcwzPQ/9kmRutD1DHKF4z2tIVpVHeW3PnxtO7Dt+VfZBX4xyZmiZHWyAhiv
 9iuvUtdFXOsww4AkJG2QQbdTyy8fTwgh2vnMYts3wNz/8B2n73Kr5UVc86SCx8SdTHSFPQ4Z
 bnBOq7te6Bcw/vwfaXNjSkJ60m+msFgEjV4lLlj40KIXg35iCzmowGE9IERQSJNh0Dk021rf
 fkyf7hFL+DNIV/tr5GgYFLWzUWmSnEfuExgg9ZUaLMTsE0Q01pTge2vB6nH5CL9fQekv4nQF
 rX+OaFz9x8KB/n/X9/jKB00Vej3qOzP6T2G0SBBeLe+W5Ld5PmV3tqDoJjknkGb4QCR4npjo
 hcFstBAR2sgrgV+0++YwR5DXUwO5iqo806iF9RvvSlfOnQoVd1k+sBRGFVzATDYOQFqN9c/X
 rsuWeyQ15DsQRwNruWNJfCCr50t5FAVenQpDFt1yrPpBEbuzdJwxXfM3ZQsnXJDL49rjQiLS
 6y0DFvkQ2MNyNXqQo68uw5dfEzQVjpMsknt1KCiw8QfUcCP2u9x2gvroYfzLOzPmDDKRcvE9
 UYUTIV2sdQ==
Message-ID: <4d5ce88d-a2b8-d575-6daa-fd693fd15f9b@jankom.net>
Date: Sun, 6 Oct 2019 22:01:52 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <f9198f58-8ca5-9b96-b0ff-cc250bd328c3@utanet.at>
Content-Language: en-US
X-EN-UserInfo: 44a69bc9b6dca178582a57c3954217da:931c98230c6409dcc37fa7e93b490c27
X-EN-AuthUser: janos@jankom.net
X-EN-OrigIP: 184.209.22.81
X-EN-OrigHost: ip-184-209-22-81.spfdma.spcsdns.net
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [66.96.186.7 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [66.96.186.7 listed in wl.mailspike.net]
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
X-Headers-End: 1iHIoy-001kmA-E5
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
Content-Type: multipart/mixed; boundary="===============8291280285898607567=="
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

This is a multi-part message in MIME format.
--===============8291280285898607567==
Content-Type: multipart/alternative;
 boundary="------------E17EF24FC57320D083A4B79E"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------E17EF24FC57320D083A4B79E
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hallo,

On 10/5/19 1:32 AM, Bernhard Praschinger wrote:
> Hallo
>
> I'm just guessing but could it be that the nvidia driver expects a
> different format or calls so it displays the video ? When you write
> that you had problems with the drm and framebuffer modules, I guess
> that they expect different API/Header/calls. Did you try a different
> xawtv version ?
>
> Did you try the different options xawtv offers ? (-fb, -xv/-noxv,
> -dga/-nodga and others )
>
Yes, I've tried them, none made a difference. In fact when I logged off
(restarting X-server) the machine crashed. The nvidia driver may not be
very stable on my machine.

Other, related: I installed CentOS-6 (latest available RedHat distro for
a 32-bit machine). It does have the nvidia equivalent nouveau driver,
correct screen resolutions, and has not crashed yet. This is somewhat an
updated version of my old Fedora-3 system that I heavily customized.
xawtv works well if I boot to that system. So I tried tocompile xawtv on
the CentOS, but make ended up in error. See below some relevant info:

xawtv-3.95

=2E/configure --enable-alsa --enable-gl --with-x

configure: creating ./config.status
config.status: creating Makefile
config.status: creating xawtv.spec
config.status: creating config.h

console/fbtools.c:24:22: error: asm/page.h: No such file or directory
console/fbtools.c: In function =E2=80=98fb_init=E2=80=99:
console/fbtools.c:427: error: =E2=80=98PAGE_MASK=E2=80=99 undeclared (fir=
st use in this
function)
console/fbtools.c:427: error: (Each undeclared identifier is reported
only once
console/fbtools.c:427: error: for each function it appears in.)
make: *** [console/fbtools.o] Error 1

Thanks, and
Janos


--------------E17EF24FC57320D083A4B79E
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <font size="+1">Hallo,</font><br>
    <br>
    <div class="moz-cite-prefix">On 10/5/19 1:32 AM, Bernhard
      Praschinger wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:f9198f58-8ca5-9b96-b0ff-cc250bd328c3@utanet.at">Hallo
      <br>
      <br>
      I'm just guessing but could it be that the nvidia driver expects a
      different format or calls so it displays the video ? When you
      write that you had problems with the drm and framebuffer modules,
      I guess that they expect different API/Header/calls. Did you try a
      different xawtv version ?
      <br>
      <br>
      Did you try the different options xawtv offers ? (-fb, -xv/-noxv,
      -dga/-nodga and others )
      <br>
      <br>
    </blockquote>
    Yes, I've tried them, none made a difference. In fact when I logged
    off (restarting X-server) the machine crashed. The nvidia driver may
    not be very stable on my machine.<br>
    <br>
    Other, related: I installed CentOS-6 (latest available RedHat distro
    for a 32-bit machine). It does have the nvidia equivalent nouveau
    driver, correct screen resolutions, and has not crashed yet. This is
    somewhat an updated version of my old Fedora-3 system that I heavily
    customized. xawtv works well if I boot to that system. So I tried
    tocompile xawtv on the CentOS, but make ended up in error. See below
    some relevant info:<br>
    <br>
    xawtv-3.95<br>
    <br>
    ./configure --enable-alsa --enable-gl --with-x<br>
    <br>
    configure: creating ./config.status<br>
    config.status: creating Makefile<br>
    config.status: creating xawtv.spec<br>
    config.status: creating config.h<br>
    <br>
    console/fbtools.c:24:22: error: asm/page.h: No such file or
    directory<br>
    console/fbtools.c: In function ‘fb_init’:<br>
    console/fbtools.c:427: error: ‘PAGE_MASK’ undeclared (first use in
    this function)<br>
    console/fbtools.c:427: error: (Each undeclared identifier is
    reported only once<br>
    console/fbtools.c:427: error: for each function it appears in.)<br>
    make: *** [console/fbtools.o] Error 1<br>
    <br>
    Thanks, and<br>
    Janos<br>
    <br>
  </body>
</html>

--------------E17EF24FC57320D083A4B79E--


--===============8291280285898607567==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8291280285898607567==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users

--===============8291280285898607567==--

