Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1531137CE79
	for <lists+mjpeg-users@lfdr.de>; Wed, 12 May 2021 19:22:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1lgsYh-0001vm-F9; Wed, 12 May 2021 17:22:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mchehab@kernel.org>) id 1lgoL8-0001Lz-CI
 for mjpeg-users@lists.sourceforge.net; Wed, 12 May 2021 12:51:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vMyCwXt1BgueI/cvJiqS5oexNepjPrAd3kfjTG8Q/C0=; b=B9VsL52Qyu6bFiPs9xgTS7hISz
 Bf2F/OwdLCI1uJtL0mm+GSD8VPR0wBIa+h4pZuEan0CTTLo8jvztGnef3RRo0o9ZObwc8UijSF1qE
 HuSWFD5MKlYBMmNhvbKaMjid7TJK0lCFxqDCTw3PQDWbNSWY2Uq6B6js22Gr/FR0o4Fo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vMyCwXt1BgueI/cvJiqS5oexNepjPrAd3kfjTG8Q/C0=; b=EdhoVBGDex3LNVYFfg8yJnNW4A
 YhMadi612nRtkfXqAx2sHQMGLFc6GySv1A3IZxLtrFqI9I7Y/WTegPU9HvGacSzoeXk/eBe3Do5NL
 u316Sy2v+5WeiNvGdrCfgV5Djb7VbYWcRFKJ/NO5dr8Atc+0T2rhuHrOxufNZ+pEe224=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lgoL5-0006bA-Du
 for mjpeg-users@lists.sourceforge.net; Wed, 12 May 2021 12:51:51 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3CA0C613FE;
 Wed, 12 May 2021 12:51:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620823902;
 bh=gBojUuAxkEIMMYcr4yqiMf2CAE+iYREtTJ0SySLQafU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RS2dnaaG4Peowz7mEncXM71htgkxYx4eu7bN4QiWUF1PpM0CqPkD8YUD02Bjz/M+l
 c1vyG3OBlLEBjlsHdhplqDN4koCozEOswNOS1PNzOKLzjtqrfeEOig+tXQ1AIq1u7j
 P64PUf5HTtBZbf+QMBNcsjakFcxLZTbwhw18S+3c9xMIsXNi02HnLHA1fsHdf6/2Py
 6TNuRp/89vvS4U8+arJgh7/vtKoj0Hy9Bid+rRBCQHxLhcFz5iZld7iLI9617g5lMr
 uNNs1Elhvu3yQvcpQU5s1cdmUKnyjaY/m0YuWTXuGWYMqrtKwqR+ASkdtRq1PgQPg8
 iFkLRxeJIlBSQ==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1lgoKy-0018hN-CM; Wed, 12 May 2021 14:51:40 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>
Date: Wed, 12 May 2021 14:50:13 +0200
Message-Id: <99228c03965f3347cd910e20f7c914e14c7243b7.1620823573.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1620823573.git.mchehab+huawei@kernel.org>
References: <cover.1620823573.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sourceforge.io]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lgoL5-0006bA-Du
X-Mailman-Approved-At: Wed, 12 May 2021 17:22:06 +0000
Subject: [Mjpeg-users] [PATCH v2 09/40] docs: driver-api: media: drivers:
 Use ASCII subset instead of UTF-8 alternate symbols
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
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

VGhlIGNvbnZlcnNpb24gdG9vbHMgdXNlZCBkdXJpbmcgRG9jQm9vay9MYVRlWC9NYXJrZG93bi0+
UmVTVCBjb252ZXJzaW9uCmFuZCBzb21lIGF1dG9tYXRpYyBydWxlcyB3aGljaCBleGlzdHMgb24g
Y2VydGFpbiB0ZXh0IGVkaXRvcnMgbGlrZQpMaWJyZU9mZmljZSB0dXJuZWQgQVNDSUkgY2hhcmFj
dGVycyBpbnRvIHNvbWUgVVRGLTggYWx0ZXJuYXRpdmVzIHRoYXQKYXJlIGJldHRlciBkaXNwbGF5
ZWQgb24gaHRtbCBhbmQgUERGLgoKV2hpbGUgaXQgaXMgT0sgdG8gdXNlIFVURi04IGNoYXJhY3Rl
cnMgaW4gTGludXgsIGl0IGlzIGJldHRlciB0bwp1c2UgdGhlIEFTQ0lJIHN1YnNldCBpbnN0ZWFk
IG9mIHVzaW5nIGFuIFVURi04IGVxdWl2YWxlbnQgY2hhcmFjdGVyCmFzIGl0IG1ha2VzIGxpZmUg
ZWFzaWVyIGZvciB0b29scyBsaWtlIGdyZXAsIGFuZCBhcmUgZWFzaWVyIHRvIGVkaXQKd2l0aCB0
aGUgc29tZSBjb21tb25seSB1c2VkIHRleHQvc291cmNlIGNvZGUgZWRpdG9ycy4KCkFsc28sIFNw
aGlueCBhbHJlYWR5IGRvIHN1Y2ggY29udmVyc2lvbiBhdXRvbWF0aWNhbGx5IG91dHNpZGUgbGl0
ZXJhbCBibG9ja3M6CiAgIGh0dHBzOi8vZG9jdXRpbHMuc291cmNlZm9yZ2UuaW8vZG9jcy91c2Vy
L3NtYXJ0cXVvdGVzLmh0bWwKClNvLCByZXBsYWNlIHRoZSBvY2N1cmVuY2VzIG9mIHRoZSBmb2xs
b3dpbmcgVVRGLTggY2hhcmFjdGVyczoKCgktIFUrMDBhZCAoJ8KtJyk6IFNPRlQgSFlQSEVOCgkt
IFUrMDBiNCAoJ8K0Jyk6IEFDVVRFIEFDQ0VOVAoKU2lnbmVkLW9mZi1ieTogTWF1cm8gQ2FydmFs
aG8gQ2hlaGFiIDxtY2hlaGFiK2h1YXdlaUBrZXJuZWwub3JnPgotLS0KIC4uLi9kcml2ZXItYXBp
L21lZGlhL2RyaXZlcnMvc2hfbW9iaWxlX2NldV9jYW1lcmEucnN0ICAgICB8IDggKysrKy0tLS0K
IERvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9tZWRpYS9kcml2ZXJzL3pvcmFuLnJzdCAgICAgICAg
ICB8IDIgKy0KIDIgZmlsZXMgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9tZWRpYS9kcml2ZXJzL3No
X21vYmlsZV9jZXVfY2FtZXJhLnJzdCBiL0RvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9tZWRpYS9k
cml2ZXJzL3NoX21vYmlsZV9jZXVfY2FtZXJhLnJzdAppbmRleCA4MjJmY2I4MzY4YWUuLjI4MGEz
MjJjMzRjNiAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL21lZGlhL2RyaXZl
cnMvc2hfbW9iaWxlX2NldV9jYW1lcmEucnN0CisrKyBiL0RvY3VtZW50YXRpb24vZHJpdmVyLWFw
aS9tZWRpYS9kcml2ZXJzL3NoX21vYmlsZV9jZXVfY2FtZXJhLnJzdApAQCAtMzAsMTAgKzMwLDEw
IEBAIEdlbmVyaWMgc2NhbGluZyAvIGNyb3BwaW5nIHNjaGVtZQogCXwgICAgICAgICAgICAgICAg
ICAgICAgIGAuIC42LS0KIAl8CiAJfCAgICAgICAgICAgICAgICAgICAgICAgIC4gLjYnLQotCXwg
ICAgICAgICAgICAgICAgICAgICAgLsK0Ci0JfCAgICAgICAgICAgLi4uIC00Jy0gLsK0Ci0JfCAg
ICAgICAuLi7CtCAgICAgICAgICAgICAtIC03Jy4KLQkrLTUnLSAuwrQgICAgICAgICAgICAgICAt
LworCXwgICAgICAgICAgICAgICAgICAgICAgLicKKwl8ICAgICAgICAgICAuLi4gLTQnLSAuJwor
CXwgICAgICAgLi4uJyAgICAgICAgICAgICAtIC03Jy4KKwkrLTUnLSAuJyAgICAgICAgICAgICAg
IC0vCiAJfCAgICAgICAgICAgIC0tIC0zJy0gLS8KIAl8ICAgICAgICAgLS0vCiAJfCAgICAgIC0t
LwpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL21lZGlhL2RyaXZlcnMvem9y
YW4ucnN0IGIvRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL21lZGlhL2RyaXZlcnMvem9yYW4ucnN0
CmluZGV4IDgzY2JhZTljZWRlZi4uYjIwNWUxMGMzMTU0IDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0
aW9uL2RyaXZlci1hcGkvbWVkaWEvZHJpdmVycy96b3Jhbi5yc3QKKysrIGIvRG9jdW1lbnRhdGlv
bi9kcml2ZXItYXBpL21lZGlhL2RyaXZlcnMvem9yYW4ucnN0CkBAIC0zMTksNyArMzE5LDcgQEAg
Q29uZXhhbnQgYnQ4NjYgVFYgZW5jb2Rlcgogfn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgogCiAt
IGlzIHVzZWQgaW4gQVZTNkVZRVMsIGFuZAotLSBjYW4gZ2VuZXJhdGU6IE5UU0MvUEFMLCBQQUzC
rU0sIFBBTMKtTgorLSBjYW4gZ2VuZXJhdGU6IE5UU0MvUEFMLCBQQUwtTSwgUEFMLU4KIAogVGhl
IGFkdjcxN3gsIHNob3VsZCBiZSBhYmxlIHRvIHByb2R1Y2UgUEFMIE4uIEJ1dCB5b3UgZmluZCBu
b3RoaW5nIFBBTCBOCiBzcGVjaWZpYyBpbiB0aGUgcmVnaXN0ZXJzLiBTZWVtIHRoYXQgeW91IGhh
dmUgdG8gcmV1c2UgYSBvdGhlciBzdGFuZGFyZAotLSAKMi4zMC4yCgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk1qcGVnLXVzZXJzIG1haWxpbmcgbGlz
dApNanBlZy11c2Vyc0BsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vm
b3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vbWpwZWctdXNlcnMK
