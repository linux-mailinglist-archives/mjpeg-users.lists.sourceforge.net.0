Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8BE83A242
	for <lists+mjpeg-users@lfdr.de>; Wed, 24 Jan 2024 07:47:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1rSX2s-0001IB-Ak;
	Wed, 24 Jan 2024 06:47:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <randrianasulu@gmail.com>) id 1rSX2q-0001Hv-OY
 for Mjpeg-users@lists.sourceforge.net;
 Wed, 24 Jan 2024 06:47:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pvCkeuveTUUTi6+eQv1SMXTI9PhBnXDBthea5Q+jPhs=; b=WAwH/SV83aE1kOA8Y2WrRD7aTt
 Yp8w8aTYiwSUFR/k0r9PLKa4shBOL+0p/tT7DKJmhVJ3T0+0qqBkqd20CcTA2AMAu/8o12IZu/t+w
 wQ8RUYlipDWsZF2X3ZQwe6FCq/rc9UJAKW1e/aHm8/kFdxMHI4ZdU3WktCtaEsuP3QVE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=pvCkeuveTUUTi6+eQv1SMXTI9PhBnXDBthea5Q+jPhs=; b=m
 34HVHhblx8/ALKas+jYcb6VGjh00X/bRk0V2NJZRjSDrMrHatBArNCSfdlQfIqwWaGVak3OFGkTQX
 rnUZO5qVXST63YOvBdV+OiI/Iq6L3dGIjIxXThOMUknKnz7nIP47VJdBoW+Wseg578xMrUr1OJe2k
 pTvjQHUu+hpQ3wD8=;
Received: from mail-pg1-f177.google.com ([209.85.215.177])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rSX2m-00024x-UN for Mjpeg-users@lists.sourceforge.net;
 Wed, 24 Jan 2024 06:47:33 +0000
Received: by mail-pg1-f177.google.com with SMTP id
 41be03b00d2f7-5c66b093b86so4394778a12.0
 for <Mjpeg-users@lists.sourceforge.net>; Tue, 23 Jan 2024 22:47:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706078839; x=1706683639; darn=lists.sourceforge.net;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=pvCkeuveTUUTi6+eQv1SMXTI9PhBnXDBthea5Q+jPhs=;
 b=HPywdeb0WOAV3kNQUEr++OLtZ9ASZ3z6WIYEUcpnU09WmfOMQmFCpj3KssvxO9D5mr
 yUOvk3VKj9LZL0B8LNzHQzMkUW6YxK2sDPMDkG6BVOlXm+jC0q3mVVtBJYmz1VNEFSnC
 8gkLAfUSRGWCVubzA9toY8kSYsISXnyY/nHyy/e15SYZWSS1klJcPmn0nbzB7l1OubQh
 9j5W/X7HCpOjWn6RLuV0nWt2kwytFiA6Vu+a3L4MPgZ8UIIfVHhQ0wILcOB6rbuFulvx
 SoKHysjXFo5e1Hzwr3qRQmpb184JRhBIaNEB53zsuvPw9h8HfkFVJKH34yTbkYohwW0t
 1PmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706078839; x=1706683639;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=pvCkeuveTUUTi6+eQv1SMXTI9PhBnXDBthea5Q+jPhs=;
 b=QXBBR9RqB7eWKoEgMy8H+u7nAF/1wiqzDswGWCQN969vndf6JvqNFTgFWJvNpleF+O
 8zjJWtxAqoxkXeVilhm3bs2o+47ZSg7fEx0tcTJIgQuHJKe4MUjY3OsAHYB6daKvxd3M
 cByxl8L+7ExWC78aN1fPWR6zAjWCRfX2hKzMCsAFlvIFXRCpjX+pKLskznMYtoNxOD/o
 sB92kQ2yqPPR5p4IK6lwfjO6qzJ8kshPNmz2dt3Ly3L+5ib4L5s6iTqRWLnCB6gTCbl+
 3tyiSJlxhwiPWOxOJSXaFZ9lTToDnb/p8YaQF2istZuqV8+tWYAMMdcb4pamSTwC0Y52
 cVTw==
X-Gm-Message-State: AOJu0YxMfm4teW+00FdNmCu1F9TJyrUYWS25YwuxR9tInQ32ve9rSz+1
 4mNz1oxIZfCm6+dAtc/939NUkgpW1MdeQQCYaPF3ZCq/gAFrdzgVkL0kHYKueBrhsRhNhe7/HhX
 IsFK0wM8nSAGmDeYe9FuJiqdf4lGdRgNY6c5d7Q==
X-Google-Smtp-Source: AGHT+IEhlimUGdwTMkBh4SQHISPUh1YSLAGWXE5X7uZgbN6697fmm9C6h9S8rTwSsgc0cuV/r4o1Tke0mvXP4WJcvMs=
X-Received: by 2002:a17:90a:2cc2:b0:28f:22fc:e853 with SMTP id
 n60-20020a17090a2cc200b0028f22fce853mr1080746pjd.46.1706078838689; Tue, 23
 Jan 2024 22:47:18 -0800 (PST)
MIME-Version: 1.0
From: Andrew Randrianasulu <randrianasulu@gmail.com>
Date: Wed, 24 Jan 2024 09:30:09 +0300
Message-ID: <CA+rFky5RgJJYqEfYEFqUSdwUyfD9smn4+pyu3qONJGXD3VGqkA@mail.gmail.com>
To: MJPEG-tools user list <Mjpeg-users@lists.sourceforge.net>
Content-Type: multipart/mixed; boundary="00000000000023b38a060fab6fd9"
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Not really full patch, but just something I hacked together
 for compiling cinelerra-gg on termux (linux terminal emulator AND distribution
 for running on Android 7+ devices). I wonder if this functionality can be
 (or should) be rolled into mjpegtools ? Or it better remain as separate patch
 for termux-packages repo? 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.177 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [randrianasulu[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.177 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rSX2m-00024x-UN
Subject: [Mjpeg-users] mjpegtools and termux
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

--00000000000023b38a060fab6fd9
Content-Type: text/plain; charset="UTF-8"

Not really full patch, but just something I hacked together for
compiling cinelerra-gg on termux (linux terminal emulator AND
distribution for running on Android 7+ devices).

I wonder if this functionality can be (or should) be rolled into
mjpegtools ? Or it better remain as separate patch for termux-packages
repo?

libbthread from https://github.com/tux-mind/libbthread

--00000000000023b38a060fab6fd9
Content-Type: application/octet-stream; name="mjpegtools-2.1.0.patch6"
Content-Disposition: attachment; filename="mjpegtools-2.1.0.patch6"
Content-Transfer-Encoding: base64
Content-ID: <f_lrrejaa03>
X-Attachment-Id: f_lrrejaa03

LS0tIG1qcGVndG9vbHMtMi4xLjAvbXBlZzJlbmMvc2VxZW5jb2Rlci5jYy5vcmlnCTIwMjEtMDUt
MjUgMTk6MDQ6MjYuMzMyOTMzOTQ0ICswMzAwCisrKyBtanBlZ3Rvb2xzLTIuMS4wL21wZWcyZW5j
L3NlcWVuY29kZXIuY2MJMjAyMS0wNS0yNSAxOTowNTo0NC45MDQ5MzM5NDggKzAzMDAKQEAgLTU2
LDYgKzU2LDkgQEAKICNpbmNsdWRlICJyYXRlY3RsLmhoIgogI2luY2x1ZGUgInRhYmxlcy5oIgog
I2luY2x1ZGUgImNoYW5uZWwuaGgiCisjaWYgZGVmaW5lZChfX1RFUk1VWF9fKQorI2luY2x1ZGUg
ImJ0aHJlYWQuaCIKKyNlbmRpZgoKCiAvLyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo=
--00000000000023b38a060fab6fd9
Content-Type: application/octet-stream; name="mjpegtools-2.1.0.patch7"
Content-Disposition: attachment; filename="mjpegtools-2.1.0.patch7"
Content-Transfer-Encoding: base64
Content-ID: <f_lrrejaa94>
X-Attachment-Id: f_lrrejaa94

LS0tIC9kZXYvbnVsbAkyMDIxLTA1LTIyIDA2OjUyOjA0LjU3MjAwMDAwMCArMDMwMAorKysgbWpw
ZWd0b29scy0yLjEuMC9tcGVnMmVuYy9idGhyZWFkLmgJMjAyMS0wNS0yMyAxMDozODoxMS4wNzM4
MDg5MTUgKzAzMDAKQEAgLTAsMCArMSwzMSBAQAorLyogQlRocmVhZCBtYWluIGhlYWRlcgorICAg
Q29weXJpZ2h0IChDKSAyMDAyIEZyZWUgU29mdHdhcmUgRm91bmRhdGlvbiwgSW5jLgorICAgVGhp
cyBmaWxlIGlzIHBhcnQgb2YgdGhlIEdOVSBDIExpYnJhcnkuCisKKyAgIFRoZSBHTlUgQyBMaWJy
YXJ5IGlzIGZyZWUgc29mdHdhcmU7IHlvdSBjYW4gcmVkaXN0cmlidXRlIGl0IGFuZC9vcgorICAg
bW9kaWZ5IGl0IHVuZGVyIHRoZSB0ZXJtcyBvZiB0aGUgR05VIExpYnJhcnkgR2VuZXJhbCBQdWJs
aWMgTGljZW5zZSBhcworICAgcHVibGlzaGVkIGJ5IHRoZSBGcmVlIFNvZnR3YXJlIEZvdW5kYXRp
b247IGVpdGhlciB2ZXJzaW9uIDIgb2YgdGhlCisgICBMaWNlbnNlLCBvciAoYXQgeW91ciBvcHRp
b24pIGFueSBsYXRlciB2ZXJzaW9uLgorCisgICBUaGUgR05VIEMgTGlicmFyeSBpcyBkaXN0cmli
dXRlZCBpbiB0aGUgaG9wZSB0aGF0IGl0IHdpbGwgYmUgdXNlZnVsLAorICAgYnV0IFdJVEhPVVQg
QU5ZIFdBUlJBTlRZOyB3aXRob3V0IGV2ZW4gdGhlIGltcGxpZWQgd2FycmFudHkgb2YKKyAgIE1F
UkNIQU5UQUJJTElUWSBvciBGSVRORVNTIEZPUiBBIFBBUlRJQ1VMQVIgUFVSUE9TRS4gIFNlZSB0
aGUgR05VCisgICBMaWJyYXJ5IEdlbmVyYWwgUHVibGljIExpY2Vuc2UgZm9yIG1vcmUgZGV0YWls
cy4KKworICAgWW91IHNob3VsZCBoYXZlIHJlY2VpdmVkIGEgY29weSBvZiB0aGUgR05VIExpYnJh
cnkgR2VuZXJhbCBQdWJsaWMKKyAgIExpY2Vuc2UgYWxvbmcgd2l0aCB0aGUgR05VIEMgTGlicmFy
eTsgc2VlIHRoZSBmaWxlIENPUFlJTkcuTElCLiAgSWYgbm90LAorICAgd3JpdGUgdG8gdGhlIEZy
ZWUgU29mdHdhcmUgRm91bmRhdGlvbiwgSW5jLiwgNTkgVGVtcGxlIFBsYWNlIC0gU3VpdGUgMzMw
LAorICAgQm9zdG9uLCBNQSAwMjExMS0xMzA3LCBVU0EuICAqLworCisjIGRlZmluZSBQVEhSRUFE
X0NBTkNFTF9FTkFCTEUgICAgCSAweDAwMDAwMDEwCisjIGRlZmluZSBQVEhSRUFEX0NBTkNFTF9E
SVNBQkxFICAgCSAweDAwMDAwMDAwCisKKyMgZGVmaW5lIFBUSFJFQURfQ0FOQ0VMX0FTWU5DSFJP
Tk9VUyAweDAwMDAwMDIwCisjIGRlZmluZSBQVEhSRUFEX0NBTkNFTF9ERUZFUlJFRCAgICAgMHgw
MDAwMDAwMAorCisjZGVmaW5lIFBUSFJFQURfQ0FOQ0VMRUQgKCh2b2lkICopIC0xKQorCitpbnQg
cHRocmVhZF9zZXRjYW5jZWxzdGF0ZSAoaW50ICwgaW50ICopOworaW50IHB0aHJlYWRfc2V0Y2Fu
Y2VsdHlwZSAoaW50ICwgaW50ICopOwordm9pZCBwdGhyZWFkX3Rlc3RjYW5jZWwgKHZvaWQpOwor
aW50IHB0aHJlYWRfY2FuY2VsIChwdGhyZWFkX3QgdCk7Cg==
--00000000000023b38a060fab6fd9
Content-Type: application/octet-stream; name="mjpegtools-2.1.0.patch4"
Content-Disposition: attachment; filename="mjpegtools-2.1.0.patch4"
Content-Transfer-Encoding: base64
Content-ID: <f_lrreja9g1>
X-Attachment-Id: f_lrreja9g1

LS0tIG1qcGVndG9vbHMtMi4xLjAveTRtZGVub2lzZS9uZXdkZW5vaXNlLmNjLm9yaWcJMjAyMS0w
Ny0yMyAxNDowMzozNS45OTk1NjQ3MDAgKzAzMDAKKysrIG1qcGVndG9vbHMtMi4xLjAveTRtZGVu
b2lzZS9uZXdkZW5vaXNlLmNjCTIwMjEtMDctMjMgMTQ6MDQ6MzUuNzc5NTY0NzAzICswMzAwCkBA
IC0xODUyLDE0ICsxODUyLDE0IEBACiAJaWYgKG5FcnIgIT0gMCkKIAkJbWpwZWdfZXJyb3JfZXhp
dDEgKCJwdGhyZWFkX2F0dHJfaW5pdCgpIGZhaWxlZDogJXMiLAogCQkJc3RyZXJyb3IgKG5FcnIp
KTsKLQorI2lmICFkZWZpbmVkKF9fVEVSTVVYX18pCiAJLy8gSW5oZXJpdCBzY2hlZHVsaW5nIHBh
cmFtZXRlcnMgZnJvbSB0aGUgbWFpbiB0aHJlYWQuCiAJbkVyciA9IHB0aHJlYWRfYXR0cl9zZXRp
bmhlcml0c2NoZWQgKCZzVGhyZWFkQXR0cmlidXRlcywKIAkJUFRIUkVBRF9JTkhFUklUX1NDSEVE
KTsKIAlpZiAobkVyciAhPSAwKQogCQltanBlZ19lcnJvcl9leGl0MSAoInB0aHJlYWRfYXR0cl9z
ZXRpbmhlcml0c2NoZWQoKSBmYWlsZWQ6ICVzIiwKIAkJCXN0cmVycm9yIChuRXJyKSk7Ci0JCisj
ZW5kaWYKIAkvLyBDcmVhdGUgdGhlIHRocmVhZC4KIAluRXJyID0gcHRocmVhZF9jcmVhdGUgKCZt
X29UaHJlYWRJbmZvLAogCQkmc1RocmVhZEF0dHJpYnV0ZXMsIFdvcmtMb29wLCAodm9pZCAqKXRo
aXMpOwo=
--00000000000023b38a060fab6fd9
Content-Type: application/octet-stream; name="mjpegtools-2.1.0.patch5"
Content-Disposition: attachment; filename="mjpegtools-2.1.0.patch5"
Content-Transfer-Encoding: base64
Content-ID: <f_lrreja9q2>
X-Attachment-Id: f_lrreja9q2

LS0tIC4vbXBlZzJlbmMvc2VxZW5jb2Rlci5jYy5vcmlnCTIwMjEtMDgtMTIgMjI6MTU6MjQuOTA3
Mjc3MzA5ICswMzAwCisrKyAuL21wZWcyZW5jL3NlcWVuY29kZXIuY2MJMjAyMS0wOC0xMiAyMjox
Nzo0OS40NzEyNzczMTcgKzAzMDAKQEAgLTE5OCw3ICsxOTgsOSBAQAogewogCUVuY29kZXJKb2Ig
KmpvYjsKIAltanBlZ19kZWJ1ZyggIldvcmtlciB0aHJlYWQgc3RhcnRlZCIgKTsKKyNpZiAhZGVm
aW5lZCAoX19URVJNVVhfXykKICAgICBwdGhyZWFkX3NldGNhbmNlbHR5cGUoIFBUSFJFQURfQ0FO
Q0VMX0FTWU5DSFJPTk9VUywgTlVMTCApOworI2VuZGlmCiAKIAlmb3IoOzspCiAJewo=
--00000000000023b38a060fab6fd9
Content-Type: text/x-chdr; charset="US-ASCII"; name="pt-internal.h"
Content-Disposition: attachment; filename="pt-internal.h"
Content-Transfer-Encoding: base64
Content-ID: <f_lrrekk7z6>
X-Attachment-Id: f_lrrekk7z6

LyoKICogQ29weXJpZ2h0IChDKSAyMDA4IFRoZSBBbmRyb2lkIE9wZW4gU291cmNlIFByb2plY3QK
ICogQWxsIHJpZ2h0cyByZXNlcnZlZC4KICoKICogUmVkaXN0cmlidXRpb24gYW5kIHVzZSBpbiBz
b3VyY2UgYW5kIGJpbmFyeSBmb3Jtcywgd2l0aCBvciB3aXRob3V0CiAqIG1vZGlmaWNhdGlvbiwg
YXJlIHBlcm1pdHRlZCBwcm92aWRlZCB0aGF0IHRoZSBmb2xsb3dpbmcgY29uZGl0aW9ucwogKiBh
cmUgbWV0OgogKiAgKiBSZWRpc3RyaWJ1dGlvbnMgb2Ygc291cmNlIGNvZGUgbXVzdCByZXRhaW4g
dGhlIGFib3ZlIGNvcHlyaWdodAogKiAgICBub3RpY2UsIHRoaXMgbGlzdCBvZiBjb25kaXRpb25z
IGFuZCB0aGUgZm9sbG93aW5nIGRpc2NsYWltZXIuCiAqICAqIFJlZGlzdHJpYnV0aW9ucyBpbiBi
aW5hcnkgZm9ybSBtdXN0IHJlcHJvZHVjZSB0aGUgYWJvdmUgY29weXJpZ2h0CiAqICAgIG5vdGlj
ZSwgdGhpcyBsaXN0IG9mIGNvbmRpdGlvbnMgYW5kIHRoZSBmb2xsb3dpbmcgZGlzY2xhaW1lciBp
bgogKiAgICB0aGUgZG9jdW1lbnRhdGlvbiBhbmQvb3Igb3RoZXIgbWF0ZXJpYWxzIHByb3ZpZGVk
IHdpdGggdGhlCiAqICAgIGRpc3RyaWJ1dGlvbi4KICoKICogVEhJUyBTT0ZUV0FSRSBJUyBQUk9W
SURFRCBCWSBUSEUgQ09QWVJJR0hUIEhPTERFUlMgQU5EIENPTlRSSUJVVE9SUwogKiAiQVMgSVMi
IEFORCBBTlkgRVhQUkVTUyBPUiBJTVBMSUVEIFdBUlJBTlRJRVMsIElOQ0xVRElORywgQlVUIE5P
VAogKiBMSU1JVEVEIFRPLCBUSEUgSU1QTElFRCBXQVJSQU5USUVTIE9GIE1FUkNIQU5UQUJJTElU
WSBBTkQgRklUTkVTUwogKiBGT1IgQSBQQVJUSUNVTEFSIFBVUlBPU0UgQVJFIERJU0NMQUlNRUQu
IElOIE5PIEVWRU5UIFNIQUxMIFRIRQogKiBDT1BZUklHSFQgT1dORVIgT1IgQ09OVFJJQlVUT1JT
IEJFIExJQUJMRSBGT1IgQU5ZIERJUkVDVCwgSU5ESVJFQ1QsCiAqIElOQ0lERU5UQUwsIFNQRUNJ
QUwsIEVYRU1QTEFSWSwgT1IgQ09OU0VRVUVOVElBTCBEQU1BR0VTIChJTkNMVURJTkcsCiAqIEJV
VCBOT1QgTElNSVRFRCBUTywgUFJPQ1VSRU1FTlQgT0YgU1VCU1RJVFVURSBHT09EUyBPUiBTRVJW
SUNFUzsgTE9TUwogKiBPRiBVU0UsIERBVEEsIE9SIFBST0ZJVFM7IE9SIEJVU0lORVNTIElOVEVS
UlVQVElPTikgSE9XRVZFUiBDQVVTRUQKICogQU5EIE9OIEFOWSBUSEVPUlkgT0YgTElBQklMSVRZ
LCBXSEVUSEVSIElOIENPTlRSQUNULCBTVFJJQ1QgTElBQklMSVRZLAogKiBPUiBUT1JUIChJTkNM
VURJTkcgTkVHTElHRU5DRSBPUiBPVEhFUldJU0UpIEFSSVNJTkcgSU4gQU5ZIFdBWSBPVVQKICog
T0YgVEhFIFVTRSBPRiBUSElTIFNPRlRXQVJFLCBFVkVOIElGIEFEVklTRUQgT0YgVEhFIFBPU1NJ
QklMSVRZIE9GCiAqIFNVQ0ggREFNQUdFLgogKi8KI2lmbmRlZiBfUFRIUkVBRF9JTlRFUk5BTF9I
XwojZGVmaW5lIF9QVEhSRUFEX0lOVEVSTkFMX0hfCgojaW5jbHVkZSA8cHRocmVhZC5oPgoKc3Ry
dWN0IHB0aHJlYWRfaW50ZXJuYWxfdCB7CiAgc3RydWN0IHB0aHJlYWRfaW50ZXJuYWxfdCogbmV4
dDsKICBzdHJ1Y3QgcHRocmVhZF9pbnRlcm5hbF90KiBwcmV2OwoKICBwaWRfdCB0aWQ7CgogIHZv
aWQqKiB0bHM7CgogIHZvbGF0aWxlIHB0aHJlYWRfYXR0cl90IGF0dHI7CgogIF9fcHRocmVhZF9j
bGVhbnVwX3QqIGNsZWFudXBfc3RhY2s7CgogIHZvaWQqICgqc3RhcnRfcm91dGluZSkodm9pZCop
OwogIHZvaWQqIHN0YXJ0X3JvdXRpbmVfYXJnOwogIHZvaWQqIHJldHVybl92YWx1ZTsKCiAgdm9p
ZCogYWx0ZXJuYXRlX3NpZ25hbF9zdGFjazsKCiAgLyoKICAgKiBUaGUgZHluYW1pYyBsaW5rZXIg
aW1wbGVtZW50cyBkbGVycm9yKDMpLCB3aGljaCBtYWtlcyBpdCBoYXJkIGZvciB1cyB0byBpbXBs
ZW1lbnQgdGhpcwogICAqIHBlci10aHJlYWQgYnVmZmVyIGJ5IHNpbXBseSB1c2luZyBtYWxsb2Mo
MykgYW5kIGZyZWUoMykuCiAgICovCiNkZWZpbmUgX19CSU9OSUNfRExFUlJPUl9CVUZGRVJfU0la
RSA1MDgKICBjaGFyIGRsZXJyb3JfYnVmZmVyW19fQklPTklDX0RMRVJST1JfQlVGRkVSX1NJWkVd
OwoJCgkvLyAgdWdseSBoYWNrOiB1c2UgbGFzdCA0IGJ5dGVzIG9mIGRsZXJyb3JfYnVmZmVyIGFz
IGNhbmNlbF9sb2NrCglwdGhyZWFkX211dGV4X3QgY2FuY2VsX2xvY2s7IAp9OwoKLyogSGFzIHRo
ZSB0aHJlYWQgYSBjYW5jZWxsYXRpb24gcmVxdWVzdD8gKi8KI2RlZmluZSBQVEhSRUFEX0FUVFJf
RkxBR19DQU5DRUxfUEVORElORyAweDAwMDAwMDA4CgovKiBIYXMgdGhlIHRocmVhZCBlbmFibGVk
IGNhbmNlbGxhdGlvbj8gKi8KI2RlZmluZSBQVEhSRUFEX0FUVFJfRkxBR19DQU5DRUxfRU5BQkxF
IDB4MDAwMDAwMTAKCi8qIEhhcyB0aGUgdGhyZWFkIGFzeW5jcm9ub3VzIGNhbmNlbGxhdGlvbj8g
Ki8KI2RlZmluZSBQVEhSRUFEX0FUVFJfRkxBR19DQU5DRUxfQVNZTkNST05PVVMgMHgwMDAwMDAy
MAoKLyogSGFzIHRoZSB0aHJlYWQgYSBjYW5jZWxsYXRpb24gaGFuZGxlcj8gKi8KI2RlZmluZSBQ
VEhSRUFEX0FUVFJfRkxBR19DQU5DRUxfSEFORExFUiAweDAwMDAwMDQwCgpzdHJ1Y3QgcHRocmVh
ZF9pbnRlcm5hbF90ICpfX3B0aHJlYWRfZ2V0aWQgKCBwdGhyZWFkX3QgKTsKCmludCBfX3B0aHJl
YWRfZG9fY2FuY2VsIChzdHJ1Y3QgcHRocmVhZF9pbnRlcm5hbF90ICopOwoKdm9pZCBwdGhyZWFk
X2luaXQodm9pZCk7CgojZW5kaWYgLyogX1BUSFJFQURfSU5URVJOQUxfSF8gKi8K
--00000000000023b38a060fab6fd9
Content-Type: text/x-c++src; charset="US-ASCII"; name="just-pt.cc"
Content-Disposition: attachment; filename="just-pt.cc"
Content-Transfer-Encoding: base64
Content-ID: <f_lrrekk7p5>
X-Attachment-Id: f_lrrekk7p5

LyogQ2FuY2VsIGEgdGhyZWFkLgogICBDb3B5cmlnaHQgKEMpIDIwMDIgRnJlZSBTb2Z0d2FyZSBG
b3VuZGF0aW9uLCBJbmMuCiAgIFRoaXMgZmlsZSBpcyBwYXJ0IG9mIHRoZSBHTlUgQyBMaWJyYXJ5
LgoKICAgVGhlIEdOVSBDIExpYnJhcnkgaXMgZnJlZSBzb2Z0d2FyZTsgeW91IGNhbiByZWRpc3Ry
aWJ1dGUgaXQgYW5kL29yCiAgIG1vZGlmeSBpdCB1bmRlciB0aGUgdGVybXMgb2YgdGhlIEdOVSBM
aWJyYXJ5IEdlbmVyYWwgUHVibGljIExpY2Vuc2UgYXMKICAgcHVibGlzaGVkIGJ5IHRoZSBGcmVl
IFNvZnR3YXJlIEZvdW5kYXRpb247IGVpdGhlciB2ZXJzaW9uIDIgb2YgdGhlCiAgIExpY2Vuc2Us
IG9yIChhdCB5b3VyIG9wdGlvbikgYW55IGxhdGVyIHZlcnNpb24uCgogICBUaGUgR05VIEMgTGli
cmFyeSBpcyBkaXN0cmlidXRlZCBpbiB0aGUgaG9wZSB0aGF0IGl0IHdpbGwgYmUgdXNlZnVsLAog
ICBidXQgV0lUSE9VVCBBTlkgV0FSUkFOVFk7IHdpdGhvdXQgZXZlbiB0aGUgaW1wbGllZCB3YXJy
YW50eSBvZgogICBNRVJDSEFOVEFCSUxJVFkgb3IgRklUTkVTUyBGT1IgQSBQQVJUSUNVTEFSIFBV
UlBPU0UuICBTZWUgdGhlIEdOVQogICBMaWJyYXJ5IEdlbmVyYWwgUHVibGljIExpY2Vuc2UgZm9y
IG1vcmUgZGV0YWlscy4KCiAgIFlvdSBzaG91bGQgaGF2ZSByZWNlaXZlZCBhIGNvcHkgb2YgdGhl
IEdOVSBMaWJyYXJ5IEdlbmVyYWwgUHVibGljCiAgIExpY2Vuc2UgYWxvbmcgd2l0aCB0aGUgR05V
IEMgTGlicmFyeTsgc2VlIHRoZSBmaWxlIENPUFlJTkcuTElCLiAgSWYgbm90LAogICB3cml0ZSB0
byB0aGUgRnJlZSBTb2Z0d2FyZSBGb3VuZGF0aW9uLCBJbmMuLCA1OSBUZW1wbGUgUGxhY2UgLSBT
dWl0ZSAzMzAsCiAgIEJvc3RvbiwgTUEgMDIxMTEtMTMwNywgVVNBLiAgKi8KI2luY2x1ZGUgPHN0
ZGlvLmg+CiNpZiBkZWZpbmVkKF9fVEVSTVVYX18pCgojaW5jbHVkZSA8cHRocmVhZC5oPgoKI2lu
Y2x1ZGUgPHB0LWludGVybmFsLmg+CgojaW5jbHVkZSA8ZXJybm8uaD4KCmludApwdGhyZWFkX2Nh
bmNlbCAocHRocmVhZF90IHQpCnsKICBpbnQgZXJyID0gMDsKICBzdHJ1Y3QgcHRocmVhZF9pbnRl
cm5hbF90ICpwID0gKHN0cnVjdCBwdGhyZWFkX2ludGVybmFsX3QqKSB0OwoJCglwdGhyZWFkX2lu
aXQoKTsKCQogIHB0aHJlYWRfbXV0ZXhfbG9jayAoJnAtPmNhbmNlbF9sb2NrKTsKICBpZiAocC0+
YXR0ci5mbGFncyAmIFBUSFJFQURfQVRUUl9GTEFHX0NBTkNFTF9QRU5ESU5HKQogICAgewogICAg
ICBwdGhyZWFkX211dGV4X3VubG9jayAoJnAtPmNhbmNlbF9sb2NrKTsKICAgICAgcmV0dXJuIDA7
CiAgICB9CiAgICAKICBwLT5hdHRyLmZsYWdzIHw9IFBUSFJFQURfQVRUUl9GTEFHX0NBTkNFTF9Q
RU5ESU5HOwoKICBpZiAoIShwLT5hdHRyLmZsYWdzICYgUFRIUkVBRF9BVFRSX0ZMQUdfQ0FOQ0VM
X0VOQUJMRSkpCiAgICB7CiAgICAgIHB0aHJlYWRfbXV0ZXhfdW5sb2NrICgmcC0+Y2FuY2VsX2xv
Y2spOwogICAgICByZXR1cm4gMDsKICAgIH0KCiAgaWYgKHAtPmF0dHIuZmxhZ3MgJiBQVEhSRUFE
X0FUVFJfRkxBR19DQU5DRUxfQVNZTkNST05PVVMpIHsKCQlwdGhyZWFkX211dGV4X3VubG9jayAo
JnAtPmNhbmNlbF9sb2NrKTsKICAgIGVyciA9IF9fcHRocmVhZF9kb19jYW5jZWwgKHApOwoJfSBl
bHNlIHsKCQkvLyBERUZFUlJFRCBDQU5DRUwgTk9UIElNUExFTUVOVEVEIFlFVAoJCXB0aHJlYWRf
bXV0ZXhfdW5sb2NrICgmcC0+Y2FuY2VsX2xvY2spOwoJfQoKICByZXR1cm4gZXJyOwp9Ci8qIENh
bmNlbCBhIHRocmVhZC4gKi8KCiNpbmNsdWRlIDxwdGhyZWFkLmg+CgojaW5jbHVkZSA8cHQtaW50
ZXJuYWwuaD4KCnN0YXRpYyB2b2lkCmNhbGxfZXhpdCAodm9pZCkKewogIHB0aHJlYWRfZXhpdCAo
MCk7Cn0KCmludApfX3B0aHJlYWRfZG9fY2FuY2VsIChzdHJ1Y3QgcHRocmVhZF9pbnRlcm5hbF90
ICpwKQp7CgkKCWlmKHAgPT0gKHN0cnVjdCBwdGhyZWFkX2ludGVybmFsX3QgKilwdGhyZWFkX3Nl
bGYoKSkKICAgIGNhbGxfZXhpdCAoKTsKICBlbHNlIGlmKHAtPmF0dHIuZmxhZ3MgJiBQVEhSRUFE
X0FUVFJfRkxBR19DQU5DRUxfSEFORExFUikKICAgIHB0aHJlYWRfa2lsbCgocHRocmVhZF90KXAs
IFNJR1JUTUlOKTsKCWVsc2UKCQlwdGhyZWFkX2tpbGwoKHB0aHJlYWRfdClwLCBTSUdURVJNKTsK
CiAgcmV0dXJuIDA7Cn0KLyogSW5pdCBhIHRocmVhZC4gKi8KCiNpbmNsdWRlIDxwdGhyZWFkLmg+
CiNpbmNsdWRlIDxidGhyZWFkLmg+CiNpbmNsdWRlIDxwdC1pbnRlcm5hbC5oPgojaW5jbHVkZSA8
c2lnbmFsLmg+Cgp2b2lkIHB0aHJlYWRfY2FuY2VsX2hhbmRsZXIoaW50IHNpZ251bSkgewoJcHRo
cmVhZF9leGl0KDApOwp9Cgp2b2lkIHB0aHJlYWRfaW5pdCh2b2lkKSB7CglzdHJ1Y3Qgc2lnYWN0
aW9uIHNhOwoJc3RydWN0IHB0aHJlYWRfaW50ZXJuYWxfdCAqIHAgPSAoc3RydWN0IHB0aHJlYWRf
aW50ZXJuYWxfdCAqKXB0aHJlYWRfc2VsZigpOwoJCglpZihwLT5hdHRyLmZsYWdzICYgUFRIUkVB
RF9BVFRSX0ZMQUdfQ0FOQ0VMX0hBTkRMRVIpCgkJcmV0dXJuOwoJCgkvLyBzZXQgdGhyZWFkIHN0
YXR1cyBhcyBwdGhyZWFkX2NyZWF0ZSBzaG91bGQgZG8uCgkvLyBBU1lOQ1JPVU5PVVMgaXMgbm90
IHNldCwgc2VlIHB0aHJlYWRfc2V0Y2FuY2Vsc3RhdGUoMykKCXAtPmF0dHIuZmxhZ3MgfD0gUFRI
UkVBRF9BVFRSX0ZMQUdfQ0FOQ0VMX0hBTkRMRVJ8UFRIUkVBRF9BVFRSX0ZMQUdfQ0FOQ0VMX0VO
QUJMRTsKCQoJc2Euc2FfaGFuZGxlciA9IHB0aHJlYWRfY2FuY2VsX2hhbmRsZXI7CglzaWdlbXB0
eXNldCgmKHNhLnNhX21hc2spKTsKCXNhLnNhX2ZsYWdzID0gMDsKCQoJc2lnYWN0aW9uKFNJR1JU
TUlOLCAmc2EsIE5VTEwpOwp9Ci8qIFNldCB0aGUgY2FuY2VsIHN0YXRlIGZvciB0aGUgY2FsbGlu
ZyB0aHJlYWQuICAqLwoKI2luY2x1ZGUgPHB0aHJlYWQuaD4KI2luY2x1ZGUgPGJ0aHJlYWQuaD4K
I2luY2x1ZGUgPHB0LWludGVybmFsLmg+CiNpbmNsdWRlIDxlcnJuby5oPgoKaW50CnB0aHJlYWRf
c2V0Y2FuY2Vsc3RhdGUgKGludCBzdGF0ZSwgaW50ICpvbGRzdGF0ZSkKewogIHN0cnVjdCBwdGhy
ZWFkX2ludGVybmFsX3QgKnAgPSAoc3RydWN0IHB0aHJlYWRfaW50ZXJuYWxfdCopcHRocmVhZF9z
ZWxmKCk7CglpbnQgbmV3ZmxhZ3M7CgoJcHRocmVhZF9pbml0KCk7CgkKICBzd2l0Y2ggKHN0YXRl
KQogICAgewogICAgZGVmYXVsdDoKICAgICAgcmV0dXJuIEVJTlZBTDsKICAgIGNhc2UgUFRIUkVB
RF9DQU5DRUxfRU5BQkxFOgogICAgY2FzZSBQVEhSRUFEX0NBTkNFTF9ESVNBQkxFOgogICAgICBi
cmVhazsKICAgIH0KCiAgcHRocmVhZF9tdXRleF9sb2NrICgmcC0+Y2FuY2VsX2xvY2spOwogIGlm
IChvbGRzdGF0ZSkKICAgICpvbGRzdGF0ZSA9IHAtPmF0dHIuZmxhZ3MgJiBQVEhSRUFEX0FUVFJf
RkxBR19DQU5DRUxfRU5BQkxFOwogIAoJaWYoc3RhdGUgPT0gUFRIUkVBRF9BVFRSX0ZMQUdfQ0FO
Q0VMX0VOQUJMRSkKCQlwLT5hdHRyLmZsYWdzIHw9IFBUSFJFQURfQVRUUl9GTEFHX0NBTkNFTF9F
TkFCTEU7CgllbHNlCgkJcC0+YXR0ci5mbGFncyAmPSB+UFRIUkVBRF9BVFRSX0ZMQUdfQ0FOQ0VM
X0VOQUJMRTsKCW5ld2ZsYWdzPXAtPmF0dHIuZmxhZ3M7CiAgcHRocmVhZF9tdXRleF91bmxvY2sg
KCZwLT5jYW5jZWxfbG9jayk7CgoJaWYoKG5ld2ZsYWdzICYgUFRIUkVBRF9BVFRSX0ZMQUdfQ0FO
Q0VMX1BFTkRJTkcpICYmIChuZXdmbGFncyAmIFBUSFJFQURfQVRUUl9GTEFHX0NBTkNFTF9FTkFC
TEUpICYmIChuZXdmbGFncyAmIFBUSFJFQURfQVRUUl9GTEFHX0NBTkNFTF9BU1lOQ1JPTk9VUykp
CgkJX19wdGhyZWFkX2RvX2NhbmNlbChwKTsKCQogIHJldHVybiAwOwp9Ci8qICAgKi8KCiNpbmNs
dWRlIDxwdGhyZWFkLmg+CiNpbmNsdWRlIDxidGhyZWFkLmg+CiNpbmNsdWRlIDxwdC1pbnRlcm5h
bC5oPgojaW5jbHVkZSA8ZXJybm8uaD4KCmludApwdGhyZWFkX3NldGNhbmNlbHR5cGUgKGludCB0
eXBlLCBpbnQgKm9sZHR5cGUpCnsKICBzdHJ1Y3QgcHRocmVhZF9pbnRlcm5hbF90ICpwID0gKHN0
cnVjdCBwdGhyZWFkX2ludGVybmFsX3QqKXB0aHJlYWRfc2VsZigpOwoJaW50IG5ld2ZsYWdzOwoJ
CglwdGhyZWFkX2luaXQoKTsKCQogIHN3aXRjaCAodHlwZSkKICAgIHsKICAgIGRlZmF1bHQ6CiAg
ICAgIHJldHVybiBFSU5WQUw7CiAgICBjYXNlIFBUSFJFQURfQ0FOQ0VMX0RFRkVSUkVEOgogICAg
Y2FzZSBQVEhSRUFEX0NBTkNFTF9BU1lOQ0hST05PVVM6CiAgICAgIGJyZWFrOwogICAgfQoKICBw
dGhyZWFkX211dGV4X2xvY2sgKCZwLT5jYW5jZWxfbG9jayk7CiAgaWYgKG9sZHR5cGUpCiAgICAq
b2xkdHlwZSA9IHAtPmF0dHIuZmxhZ3MgJiBQVEhSRUFEX0FUVFJfRkxBR19DQU5DRUxfQVNZTkNS
T05PVVM7CgkKCWlmKHR5cGUgPT0gUFRIUkVBRF9DQU5DRUxfQVNZTkNIUk9OT1VTKQoJCXAtPmF0
dHIuZmxhZ3MgfD0gUFRIUkVBRF9BVFRSX0ZMQUdfQ0FOQ0VMX0FTWU5DUk9OT1VTOwoJZWxzZQoJ
CXAtPmF0dHIuZmxhZ3MgJj0gflBUSFJFQURfQVRUUl9GTEFHX0NBTkNFTF9BU1lOQ1JPTk9VUzsK
CW5ld2ZsYWdzPXAtPmF0dHIuZmxhZ3M7CiAgcHRocmVhZF9tdXRleF91bmxvY2sgKCZwLT5jYW5j
ZWxfbG9jayk7CgoJaWYoKG5ld2ZsYWdzICYgUFRIUkVBRF9BVFRSX0ZMQUdfQ0FOQ0VMX1BFTkRJ
TkcpICYmIChuZXdmbGFncyAmIFBUSFJFQURfQVRUUl9GTEFHX0NBTkNFTF9FTkFCTEUpICYmIChu
ZXdmbGFncyAmIFBUSFJFQURfQVRUUl9GTEFHX0NBTkNFTF9BU1lOQ1JPTk9VUykpCgkJX19wdGhy
ZWFkX2RvX2NhbmNlbChwKTsKCQogIHJldHVybiAwOwp9Ci8qIEFkZCBhbiBleHBsaWNpdCBjYW5j
ZWxhdGlvbiBwb2ludC4gICovCgojaW5jbHVkZSA8cHRocmVhZC5oPgojaW5jbHVkZSA8YnRocmVh
ZC5oPgojaW5jbHVkZSA8cHQtaW50ZXJuYWwuaD4KCnZvaWQKcHRocmVhZF90ZXN0Y2FuY2VsICh2
b2lkKQp7CiAgc3RydWN0IHB0aHJlYWRfaW50ZXJuYWxfdCAqcCA9IChzdHJ1Y3QgcHRocmVhZF9p
bnRlcm5hbF90KilwdGhyZWFkX3NlbGYoKTsKICBpbnQgY2FuY2VsbGVkOwoJCglwdGhyZWFkX2lu
aXQoKTsKCiAgcHRocmVhZF9tdXRleF9sb2NrICgmcC0+Y2FuY2VsX2xvY2spOwogIGNhbmNlbGxl
ZCA9IChwLT5hdHRyLmZsYWdzICYgUFRIUkVBRF9BVFRSX0ZMQUdfQ0FOQ0VMX0VOQUJMRSkgJiYg
KHAtPmF0dHIuZmxhZ3MgJiBQVEhSRUFEX0FUVFJfRkxBR19DQU5DRUxfUEVORElORyk7CiAgcHRo
cmVhZF9tdXRleF91bmxvY2sgKCZwLT5jYW5jZWxfbG9jayk7CgogIGlmIChjYW5jZWxsZWQpCiAg
ICBwdGhyZWFkX2V4aXQgKFBUSFJFQURfQ0FOQ0VMRUQpOwoJCQp9CiNlbmRpZgo=
--00000000000023b38a060fab6fd9
Content-Type: text/markdown; charset="US-ASCII"; name="README.md"
Content-Disposition: attachment; filename="README.md"
Content-Transfer-Encoding: base64
Content-ID: <f_lrrekk7f4>
X-Attachment-Id: f_lrrekk7f4

bGliYnRocmVhZAo9PT09PT09PT09CgpsaWJyYXJ5IHRoYXQgcHJvdmlkZSBzb21lIG1pc3Npbmcg
cG9zaXggdGhyZWFkaW5nIGZ1bmN0aW9uIHRvIHRoZSBiaW9uaWMgbGliYy4KCndoaWxlIGkgd2Fz
IHBvcnRpbmcgdGVucyBvZiBsaW51eCBwcm9qZWN0cyB1bmRlciB0aGUgZFNwbG9pdCBhbmRyb2lk
IGFwcCBpIGZvdW5kIHRoYXQKdGhlIGJpb25pYyBsaWJjIGRvZXMgbm90IHByb3ZpZGUgc29tZSBQ
T1NJWCB0aHJlYWQgZnVuY3Rpb25zIGxpa2UgYHB0aHJlYWRfY2FuY2VsYCwgYHB0aHJlYWRfdGVz
dGNhbmNlbGAgYW5kIHNvIG9uLgoKc28sIGkgZGV2ZWxvcGVkIHRoaXMgbGlicmFyeSwgd2hpY2gg
ZXhwbG9pdCBzb21lIHVudXNlZCBiaXRzIGluIHRoZSBiaW9uaWMgdGhyZWFkIHN0cnVjdHVyZS4K
CnRoZXJlIGlzIG1hbnkgdGhpbmcgdG8gZGV2ZWxvcCwgbGlrZSBzdXBwb3J0IGZvciBkZWZlcnJl
ZCBjYW5jZWxzLCBidXQgYmFzaWMgdGhyZWFkIGNhbmNlbGxhdGlvbiB3b3JrcyA6c21pbGV5OgoK
aSBob3BlIHRoYXQgeW91IGZpbmQgdGhpcyBsaWJyYXJ5IHVzZWZ1bCA6d2luazogCgotLSB0dXhf
bWluZAoKTGljZW5zZQo9PT09PT09PT09CgpQcm9qZWN0IGlzIGxpY2Vuc2VkIHVuZGVyIEdOVSBM
R1BMIHYyLjAgKExpYnJhcnkgR2VuZXJhbCBQdWJsaWMgTGljZW5zZSkKCnB0LWludGVybmFsLmgg
LSBpcyBmcm9tIFRoZSBBbmRyb2lkIE9wZW4gU291cmNlIFByb2plY3QgYW5kIGxpY2Vuc2VkIHVu
ZGVyIEFwYWNoZSBMaWNlbnNlLCBWZXJzaW9uIDIuMAoKYnVpbGRpbmcKPT09PT09PT0KCmBgYGJh
c2gKJCBhdXRvcmVjb25mIC1pCiQgZXhwb3J0IFBBVEg9IiRQQVRIOi9wYXRoL3RvL25kay90b29s
Y2hhaW5zL2xsdm0vcHJlYnVpbHQvbGludXgteDg2XzY0L2JpbiIKJCB0YXJnZXRfaG9zdD1hYXJj
aDY0LWxpbnV4LWFuZHJvaWQKJCBleHBvcnQgQVI9JHt0YXJnZXRfaG9zdH0tYXIKJCBleHBvcnQg
QVM9JHt0YXJnZXRfaG9zdH0tYXMKJCBleHBvcnQgQ0M9JHt0YXJnZXRfaG9zdH0yMS1jbGFuZwok
IGV4cG9ydCBDWFg9JHt0YXJnZXRfaG9zdH0yMS1jbGFuZysrCiQgZXhwb3J0IExEPSR7dGFyZ2V0
X2hvc3R9LWxkCiQgZXhwb3J0IFNUUklQPSR7dGFyZ2V0X2hvc3R9LXN0cmlwCiQgZXhwb3J0IENG
TEFHUz0iLWZQSUUgLWZQSUMiCiQgZXhwb3J0IExERkxBR1M9Ii1waWUiCiQgLi9jb25maWd1cmUg
LS1ob3N0PSR7dGFyZ2V0X2hvc3R9CiQgbWFrZQpgYGAK
--00000000000023b38a060fab6fd9
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--00000000000023b38a060fab6fd9
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users

--00000000000023b38a060fab6fd9--

