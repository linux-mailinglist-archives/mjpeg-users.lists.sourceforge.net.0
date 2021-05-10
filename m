Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CB39D37952E
	for <lists+mjpeg-users@lfdr.de>; Mon, 10 May 2021 19:13:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1lg9TN-0003d8-AV; Mon, 10 May 2021 17:13:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mchehab@kernel.org>) id 1lg38Y-0001lj-M1
 for mjpeg-users@lists.sourceforge.net; Mon, 10 May 2021 10:27:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FrOKDwcva5i5+9QkEeE/VUurw+A5IHFTJAB/0eR3j+c=; b=Cu5MYlJTIy9ta6yQ0o16R4xwfH
 +N+mZbnFluO9SQtZ1TslD7bKpJtVgclXwxV9J2hmwkSYMYAFg9kmV8gSlk2VUCGUkMNnPCRFLmUyp
 CasMRBpjdn1LUEU8Ys/zIC/pfCWazHc5UoPKPJun5dydKeuItrkTMJ9jlhu3Y8kXV4EA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FrOKDwcva5i5+9QkEeE/VUurw+A5IHFTJAB/0eR3j+c=; b=mIQTjC2ZcqrClK52lmTh7jbDLt
 UmWRISdGe6LMwinLM4RnS/16n+7lzo2SmiTGipf9g3eGZ8uLi76tOpVbb77AoRaZ2NGD2hTUwzBJ1
 KfxPC86Qhy9ye2RTzxKtAN18TyARz0iGWr8q8ku9raZQOhO95EkGTaP4DH5cYdmGrhs0=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lg38M-001HFq-BW
 for mjpeg-users@lists.sourceforge.net; Mon, 10 May 2021 10:27:44 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id E3B8461926;
 Mon, 10 May 2021 10:27:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620642444;
 bh=/5KMYe58DrtVU6l39giXpj+U2gVE007fTByxX+3Tg3c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ouvWHnUkWNIek6ysDZyOLr0orzQJUsSM8F8wrl+uiRMvNbKSPC7MeEXnDeDqjHe0p
 5uiQ56iJ+5zDgQOB5CDlcR4Ujp8RWoJUrBWtB6pFI+R294nrQNinF15XHAgxs0fMGY
 peTHkiJqz+lotfT9CzM0o+Ykfrb53WF8tQ6VJRhvQa+edVR4IdJRHRmAvrZ5MiKjV/
 gy+NxdTtxOCYNcMAknc7K9huM+yAQD60dG0yQY5Fxr0ZJ1hodjRR6RBwZJM7lPEf04
 nzOsfCRTxilgDc1TXHfWHXrhoDlmo/skvw+JApgekIcVml9K91BflNXE2tANCztzt7
 EYf43lP2VZ70A==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1lg38D-000UPM-3K; Mon, 10 May 2021 12:27:21 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>
Date: Mon, 10 May 2021 12:26:28 +0200
Message-Id: <572748e2c82217ca8e7ffb8417389365b526b947.1620641727.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1620641727.git.mchehab+huawei@kernel.org>
References: <cover.1620641727.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lg38M-001HFq-BW
X-Mailman-Approved-At: Mon, 10 May 2021 17:13:35 +0000
Subject: [Mjpeg-users] [PATCH 16/53] docs: driver-api: media: drivers: avoid
 using UTF-8 chars
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
Cc: Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 linux-kernel@vger.kernel.org, mjpeg-users@lists.sourceforge.net,
 Corentin Labbe <clabbe@baylibre.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "Daniel W. S. Almeida" <dwlsalmeida@gmail.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

V2hpbGUgVVRGLTggY2hhcmFjdGVycyBjYW4gYmUgdXNlZCBhdCB0aGUgTGludXggZG9jdW1lbnRh
dGlvbiwKdGhlIGJlc3QgaXMgdG8gdXNlIHRoZW0gb25seSB3aGVuIEFTQ0lJIGRvZXNuJ3Qgb2Zm
ZXIgYSBnb29kIHJlcGxhY2VtZW50LgpTbywgcmVwbGFjZSB0aGUgb2NjdXJlbmNlcyBvZiB0aGUg
Zm9sbG93aW5nIFVURi04IGNoYXJhY3RlcnM6CgoJLSBVKzAwYWQgKCfCrScpOiBTT0ZUIEhZUEhF
TgoJLSBVKzAwYjQgKCfCtCcpOiBBQ1VURSBBQ0NFTlQKCS0gVSsyMDE0ICgn4oCUJyk6IEVNIERB
U0gKClNpZ25lZC1vZmYtYnk6IE1hdXJvIENhcnZhbGhvIENoZWhhYiA8bWNoZWhhYitodWF3ZWlA
a2VybmVsLm9yZz4KLS0tCiAuLi4vZHJpdmVyLWFwaS9tZWRpYS9kcml2ZXJzL3NoX21vYmlsZV9j
ZXVfY2FtZXJhLnJzdCAgICAgfCA4ICsrKystLS0tCiBEb2N1bWVudGF0aW9uL2RyaXZlci1hcGkv
bWVkaWEvZHJpdmVycy92aWR0di5yc3QgICAgICAgICAgfCA0ICsrLS0KIERvY3VtZW50YXRpb24v
ZHJpdmVyLWFwaS9tZWRpYS9kcml2ZXJzL3pvcmFuLnJzdCAgICAgICAgICB8IDIgKy0KIDMgZmls
ZXMgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L0RvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9tZWRpYS9kcml2ZXJzL3NoX21vYmlsZV9jZXVfY2Ft
ZXJhLnJzdCBiL0RvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9tZWRpYS9kcml2ZXJzL3NoX21vYmls
ZV9jZXVfY2FtZXJhLnJzdAppbmRleCA4MjJmY2I4MzY4YWUuLjI4MGEzMjJjMzRjNiAxMDA2NDQK
LS0tIGEvRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL21lZGlhL2RyaXZlcnMvc2hfbW9iaWxlX2Nl
dV9jYW1lcmEucnN0CisrKyBiL0RvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9tZWRpYS9kcml2ZXJz
L3NoX21vYmlsZV9jZXVfY2FtZXJhLnJzdApAQCAtMzAsMTAgKzMwLDEwIEBAIEdlbmVyaWMgc2Nh
bGluZyAvIGNyb3BwaW5nIHNjaGVtZQogCXwgICAgICAgICAgICAgICAgICAgICAgIGAuIC42LS0K
IAl8CiAJfCAgICAgICAgICAgICAgICAgICAgICAgIC4gLjYnLQotCXwgICAgICAgICAgICAgICAg
ICAgICAgLsK0Ci0JfCAgICAgICAgICAgLi4uIC00Jy0gLsK0Ci0JfCAgICAgICAuLi7CtCAgICAg
ICAgICAgICAtIC03Jy4KLQkrLTUnLSAuwrQgICAgICAgICAgICAgICAtLworCXwgICAgICAgICAg
ICAgICAgICAgICAgLicKKwl8ICAgICAgICAgICAuLi4gLTQnLSAuJworCXwgICAgICAgLi4uJyAg
ICAgICAgICAgICAtIC03Jy4KKwkrLTUnLSAuJyAgICAgICAgICAgICAgIC0vCiAJfCAgICAgICAg
ICAgIC0tIC0zJy0gLS8KIAl8ICAgICAgICAgLS0vCiAJfCAgICAgIC0tLwpkaWZmIC0tZ2l0IGEv
RG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL21lZGlhL2RyaXZlcnMvdmlkdHYucnN0IGIvRG9jdW1l
bnRhdGlvbi9kcml2ZXItYXBpL21lZGlhL2RyaXZlcnMvdmlkdHYucnN0CmluZGV4IDY3M2JkZmY5
MTllYS4uYWJiNDU0MzAyYWM1IDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RyaXZlci1hcGkv
bWVkaWEvZHJpdmVycy92aWR0di5yc3QKKysrIGIvRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL21l
ZGlhL2RyaXZlcnMvdmlkdHYucnN0CkBAIC00NTgsOCArNDU4LDggQEAgQWRkIGEgd2F5IHRvIHRl
c3QgdmlkZW8KIAogQ3VycmVudGx5LCB2aWR0diBjYW4gb25seSBlbmNvZGUgUENNIGF1ZGlvLiBJ
dCB3b3VsZCBiZSBncmVhdCB0byBpbXBsZW1lbnQKIGEgYmFyZWJvbmVzIHZlcnNpb24gb2YgTVBF
Ry0yIHZpZGVvIGVuY29kaW5nIHNvIHdlIGNhbiBhbHNvIHRlc3QgdmlkZW8uIFRoZQotZmlyc3Qg
cGxhY2UgdG8gbG9vayBpbnRvIGlzICpJU08gMTM4MTgtMjogSW5mb3JtYXRpb24gdGVjaG5vbG9n
eSDigJQgR2VuZXJpYwotY29kaW5nIG9mIG1vdmluZyBwaWN0dXJlcyBhbmQgYXNzb2NpYXRlZCBh
dWRpbyBpbmZvcm1hdGlvbiDigJQgUGFydCAyOiBWaWRlbyosCitmaXJzdCBwbGFjZSB0byBsb29r
IGludG8gaXMgKklTTyAxMzgxOC0yOiBJbmZvcm1hdGlvbiB0ZWNobm9sb2d5IC0gR2VuZXJpYwor
Y29kaW5nIG9mIG1vdmluZyBwaWN0dXJlcyBhbmQgYXNzb2NpYXRlZCBhdWRpbyBpbmZvcm1hdGlv
biAtIFBhcnQgMjogVmlkZW8qLAogd2hpY2ggY292ZXJzIHRoZSBlbmNvZGluZyBvZiBjb21wcmVz
c2VkIHZpZGVvIGluIE1QRUcgVHJhbnNwb3J0IFN0cmVhbXMuCiAKIFRoaXMgbWlnaHQgb3B0aW9u
YWxseSB1c2UgdGhlIFZpZGVvNExpbnV4MiBUZXN0IFBhdHRlcm4gR2VuZXJhdG9yLCB2NGwyLXRw
ZywKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9tZWRpYS9kcml2ZXJzL3pv
cmFuLnJzdCBiL0RvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9tZWRpYS9kcml2ZXJzL3pvcmFuLnJz
dAppbmRleCA4M2NiYWU5Y2VkZWYuLmIyMDVlMTBjMzE1NCAxMDA2NDQKLS0tIGEvRG9jdW1lbnRh
dGlvbi9kcml2ZXItYXBpL21lZGlhL2RyaXZlcnMvem9yYW4ucnN0CisrKyBiL0RvY3VtZW50YXRp
b24vZHJpdmVyLWFwaS9tZWRpYS9kcml2ZXJzL3pvcmFuLnJzdApAQCAtMzE5LDcgKzMxOSw3IEBA
IENvbmV4YW50IGJ0ODY2IFRWIGVuY29kZXIKIH5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KIAog
LSBpcyB1c2VkIGluIEFWUzZFWUVTLCBhbmQKLS0gY2FuIGdlbmVyYXRlOiBOVFNDL1BBTCwgUEFM
wq1NLCBQQUzCrU4KKy0gY2FuIGdlbmVyYXRlOiBOVFNDL1BBTCwgUEFMLU0sIFBBTC1OCiAKIFRo
ZSBhZHY3MTd4LCBzaG91bGQgYmUgYWJsZSB0byBwcm9kdWNlIFBBTCBOLiBCdXQgeW91IGZpbmQg
bm90aGluZyBQQUwgTgogc3BlY2lmaWMgaW4gdGhlIHJlZ2lzdGVycy4gU2VlbSB0aGF0IHlvdSBo
YXZlIHRvIHJldXNlIGEgb3RoZXIgc3RhbmRhcmQKLS0gCjIuMzAuMgoKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpNanBlZy11c2VycyBtYWlsaW5nIGxp
c3QKTWpwZWctdXNlcnNAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNl
Zm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL21qcGVnLXVzZXJzCg==
