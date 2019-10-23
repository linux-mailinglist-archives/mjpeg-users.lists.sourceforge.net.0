Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A16AE0FF7
	for <lists+mjpeg-users@lfdr.de>; Wed, 23 Oct 2019 04:16:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1iN6Ch-0003xc-5q; Wed, 23 Oct 2019 02:16:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <SRS0=S7674Y=YQ=jankom.net=janos@eigbox.net>)
 id 1iN6Ce-0003xF-LX
 for mjpeg-users@lists.sourceforge.net; Wed, 23 Oct 2019 02:16:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:References:To:From:Subject:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5HuPHXoknX3qK520YwkMS5Yu+7ICPvc2VN/KVNBq9+E=; b=i2QR97PisQgs8QmekKiIdCX6GG
 o0JlCVkHL0Jm2XOTm7zdzk9ot7ssZU30waqdAPT25DhcGs5cZjE3sD015yA6tPaKfdHuXJhnuJ+JU
 b8fh2LXkMzCAoSHYle9jHRoRhhPaO3mzaCQKT0XDpVkP0qlhMJNTPrqRUePJlhGPNfew=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:References:
 To:From:Subject:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5HuPHXoknX3qK520YwkMS5Yu+7ICPvc2VN/KVNBq9+E=; b=eFkxfBO6PZDJ7WZEjZMZKGZVyz
 xpespiVnFRpdI2myQNGxiGyZh7e+kq8izJVV7+KxvWSy7bNEs7+ZoO8tyin8dUvMW3Ie5CihEZMIi
 jXt+gkgh9tx68Al1tgkNMHMU5uAx9EMnap4fJ0T+4WUsaS2Y4d0a9oj6CH6y72n3YSRc=;
Received: from bosmailout07.eigbox.net ([66.96.189.7])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iN6Ca-00HQh6-Vz
 for mjpeg-users@lists.sourceforge.net; Wed, 23 Oct 2019 02:16:48 +0000
Received: from bosmailscan14.eigbox.net ([10.20.15.14])
 by bosmailout07.eigbox.net with esmtp (Exim) id 1iN6CU-0007na-Nu
 for mjpeg-users@lists.sourceforge.net; Tue, 22 Oct 2019 22:16:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=jankom.net; 
 s=dkim;
 h=Sender:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:
 References:To:From:Subject:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5HuPHXoknX3qK520YwkMS5Yu+7ICPvc2VN/KVNBq9+E=; b=gD53egrbERSTcw4zxaGxupY1yb
 5wObVBMlwLvDjryKWQTn8WPh4ugSRTQp9+uF2hpGdVYR/iq+bgVRZvRGJaBsERsVS9Wqm2cfIgj5m
 tb975dMF95ojVUl+W+hgbSA2AKHovbw/QFLaF+x7GWhAn+j/QpSULnxBuMzfshSFIvT/0DcKpK1Af
 zQ8EUpYYVwocb1LiNUT1GpetZywuijNjHBgs/dFOeN0VcXu7G5TwZF9L9g+fSCtOG6QLp/dQwHhMw
 gSZlyUWratyRPD0ljl2y0Ml1usdTedahO3XKGFeRcDUmzpswPPV0MYr4fSa73K2n1OJkhmhGIAXOR
 tnUKJoeg==;
Received: from [10.115.3.32] (helo=bosimpout12)
 by bosmailscan14.eigbox.net with esmtp (Exim) id 1iN6CU-0006PO-ME
 for mjpeg-users@lists.sourceforge.net; Tue, 22 Oct 2019 22:16:38 -0400
Received: from bosauthsmtp07.yourhostingaccount.com ([10.20.18.7])
 by bosimpout12 with 
 id GqGb21005099BUA01qGejj; Tue, 22 Oct 2019 22:16:38 -0400
X-Authority-Analysis: v=2.2 cv=BKTDlBYG c=1 sm=1 tr=0
 a=x8qw8EAkfcRkIpZA8Q87Bg==:117 a=4ZoZwTRS3OZv0fGbSO5GMQ==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=XobE76Q3jBoA:10 a=K1r92t-URfIA:10
 a=r77TgQKjGQsHNAKrUKIA:9 a=orgLIPbXeL1lqqtpy9IA:9 a=QEXdDO2ut3YA:10
 a=jDPn5Ez8AAAA:8 a=ngaSCEfqfG9fF5WN-qUA:9 a=7noIMNDnCYc2vbC6:21
 a=_W_S_7VecoQA:10 a=qBBZk9_c10KGGu05SxeP:22
Received: from ip-184-209-14-133.spfdma.spcsdns.net ([184.209.14.133]:53134
 helo=[192.168.43.98]) by bosauthsmtp07.eigbox.net with esmtpa (Exim)
 id 1iN6CR-0002jF-3R
 for mjpeg-users@lists.sourceforge.net; Tue, 22 Oct 2019 22:16:35 -0400
From: Janos G Komaromi <janos@jankom.net>
To: MJPEG-tools user list <mjpeg-users@lists.sourceforge.net>
References: <72e946c8-6e65-1aac-b0ac-233142a3d85d@jankom.net>
 <f9198f58-8ca5-9b96-b0ff-cc250bd328c3@utanet.at>
 <4d5ce88d-a2b8-d575-6daa-fd693fd15f9b@jankom.net>
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
Message-ID: <5e0de915-640c-8b5c-0a91-06588580fb6c@jankom.net>
Date: Tue, 22 Oct 2019 22:16:33 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <4d5ce88d-a2b8-d575-6daa-fd693fd15f9b@jankom.net>
Content-Language: en-US
X-EN-UserInfo: 44a69bc9b6dca178582a57c3954217da:931c98230c6409dcc37fa7e93b490c27
X-EN-AuthUser: janos@jankom.net
X-EN-OrigIP: 184.209.14.133
X-EN-OrigHost: ip-184-209-14-133.spfdma.spcsdns.net
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: nouveau_vieux_dri.so]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [66.96.189.7 listed in list.dnswl.org]
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
X-Headers-End: 1iN6Ca-00HQh6-Vz
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
Content-Type: multipart/mixed; boundary="===============2813953908043036057=="
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

This is a multi-part message in MIME format.
--===============2813953908043036057==
Content-Type: multipart/alternative;
 boundary="------------FE25B7B1E84C72D725754FE3"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------FE25B7B1E84C72D725754FE3
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Update:

Found rpm package for the CentOS-6 and installed it after resolving
libaa and libzvbi dependencies from the same package site. xawtv program
started OK with blue screen window and complete settings window.
However, I could not select the shown "overlay" capture option. The
terminal output after entering xawtv command complains about:

libGL error: could not load nouveau_vieux_dri.so.

=C2=A0

On 10/6/19 10:01 PM, Janos G Komaromi wrote:
>
> Other, related: I installed CentOS-6 (latest available RedHat distro
> for a 32-bit machine).


--------------FE25B7B1E84C72D725754FE3
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <font size="+1">Update:<br>
      <br>
      Found rpm package for the CentOS-6 and installed it after
      resolving libaa and libzvbi dependencies from the same package
      site. xawtv program started OK with blue screen window and
      complete settings window. However, I could not select the shown
      "overlay" capture option. The terminal output after entering xawtv
      command complains about:<br>
      <br>
      libGL error: could not load nouveau_vieux_dri.so.<br>
      <br>
       <br>
    </font><br>
    <div class="moz-cite-prefix">On 10/6/19 10:01 PM, Janos G Komaromi
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:4d5ce88d-a2b8-d575-6daa-fd693fd15f9b@jankom.net">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <br>
      Other, related: I installed CentOS-6 (latest available RedHat
      distro for a 32-bit machine).<br>
    </blockquote>
    <br>
  </body>
</html>

--------------FE25B7B1E84C72D725754FE3--


--===============2813953908043036057==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============2813953908043036057==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users

--===============2813953908043036057==--

