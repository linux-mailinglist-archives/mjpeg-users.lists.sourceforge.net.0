Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A18311CE1
	for <lists+mjpeg-users@lfdr.de>; Sat,  6 Feb 2021 12:26:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1l8Liu-00015D-Vf; Sat, 06 Feb 2021 11:25:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <shadowlord@utanet.at>) id 1l8Lit-000151-QJ
 for mjpeg-users@lists.sourceforge.net; Sat, 06 Feb 2021 11:25:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wvjRqqZjfjGIjq9WhGB7saWJXpPFJ/oYNNbqJUvjhhE=; b=M+rqffCJao2A3POrsRsWUjg/j2
 kGEIoGV6JeTS/lHVKV2sbCY3CphrvB8ycZ4iGFCwUF3e0gFNHkgBnjq0XwrJgQOvMG87gLfglHnfA
 vqUHfHgAN5T0YQtDrqjObEzn5AuhHEdY54sYOxK6WHhqd582nPK+ORKZzrJO1WPVZ8wg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wvjRqqZjfjGIjq9WhGB7saWJXpPFJ/oYNNbqJUvjhhE=; b=Uj/vFNJw/XpF0S+rlX/bvx/KB4
 bbPhNII/qLRWaIoGG+grsvvzuFH+pEwGo7DoU5SYUMp9xcaGFnjArKUTASPCxut6d5oEmH1vXscMc
 pphyvmeywN/xsVnbQe3Myd04LwZCsKd5cJuPze6S2C2G0AJw4dUI5/pYc6wUI4nZ5Dy4=;
Received: from tatiana2.utanet.at ([213.90.36.33])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l8Lim-00ArPe-TL
 for mjpeg-users@lists.sourceforge.net; Sat, 06 Feb 2021 11:25:55 +0000
Received: from pam-s.drei.host ([213.90.36.66])
 by tatiana.utanet.at with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <shadowlord@utanet.at>)
 id 1l8LGY-0005KQ-KN; Sat, 06 Feb 2021 11:56:38 +0100
Received: from 193-83-253-255.oan.highway.a1.net ([193.83.253.255]
 helo=[10.20.30.37])
 by pam-s.drei.host with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <shadowlord@utanet.at>)
 id 1l8LGY-0001Xv-Hl; Sat, 06 Feb 2021 11:56:38 +0100
To: MJPEG-tools user list <mjpeg-users@lists.sourceforge.net>,
 William Lum <lumwaiman@gmail.com>
References: <CA+84gYsnKaCg_q5hvoeNeHNOR+QfBMs_UP5P6HvgZ1GLyxRnwA@mail.gmail.com>
From: Bernhard Praschinger <shadowlord@utanet.at>
Message-ID: <b12d2efc-73a6-adf0-09db-313ab9861d7d@utanet.at>
Date: Sat, 6 Feb 2021 11:56:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 SeaMonkey/2.53.5.1
MIME-Version: 1.0
In-Reply-To: <CA+84gYsnKaCg_q5hvoeNeHNOR+QfBMs_UP5P6HvgZ1GLyxRnwA@mail.gmail.com>
X-H3G-Authenticated-As: 2492d812503ae882f041a3ed11d939a345349e8a
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: utanet.at]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [213.90.36.33 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.1 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1l8Lim-00ArPe-TL
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

SGFsbG8sCgpTb21lIHRob3VnaHQncyBhYm91dCB3aGF0IHlvdSB0cnkgdG8gYWNjb21wbGlzaC4g
U29ycnkgZm9yIHRoZSBsb25nZXIgCmRlbGF5LgoKPiBJIGhhdmUgYSBab3JhbiBiYXNlZCBjYXB0
dXJlIGNhcmQgdGhhdCBMdWJ1bnR1IGRvZXNuJ3Qgc2VlbSB0byAKPiByZWNvZ25pemUuwqAgSGVy
ZSBpcyB3aGF0IEkgaGF2ZSBkb25lIHNvwqBmYXIuwqAgSSdtIG5ldyB0byBsaW51eCBzbyBwbGVh
c2UgCj4gdGFrZSB0aGF0IGludG8gY29uc2lkZXJhdGlvbiB3aXRoIHlvdSBpbnN0cnVjdGlvbnMu
Cj4gCj4gIDEuIGxzcGNpIHwgZ3JlcCBab3JhbgpXaGljaCBjYXJkIGRvIHlvdSBhY3R1YWxseSB3
YW50IHRvIHVzZSA/IEkgZG9uJ3Qga25vdyB0aGUgdHlwZSBieSB0aGUgCm91dHB1dCBvZiBsc3Bj
aS4KCj4gIDIuIHN1ZG8gZG1pZGVjb2RlIC10IDIKPiAKPiBJcyB0aGVyZSBzdXBwb3J0IGZvciBB
TUQgNzkwRlggY2hpcHNldD8KV2hpY2gga2VybmVsIGRvZXMgdGhlIGRpc3RyaWJ1dGlvbiB1c2Ug
PyAodW5hbWUgLWEpCgo+IDMuIEtlcm5lbC5vcmcgCj4gaHR0cHM6Ly93d3cua2VybmVsLm9yZy9k
b2MvaHRtbC92NC4xNC9tZWRpYS92NGwtZHJpdmVycy96b3Jhbi5odG1s77u/IAo+IDxodHRwczov
L3d3dy5rZXJuZWwub3JnL2RvYy9odG1sL3Y0LjE0L21lZGlhL3Y0bC1kcml2ZXJzL3pvcmFuLmh0
bWw+Cj4gCj4gInVuaWZpZWQgem9yYW4gZHJpdmVyICh6cjM2MHg3LCB6b3JhbiwgYnV6LCBkYzEw
KCspLCBkYzMwKCspLCBsbWwzMykiCj4gCj4gSSB0aGluayB0aGlzIGNvdmVycyBteSBjYXJkIHJp
Z2h0PwpUaGF0IGlzIHRoZSBjb3JyZWN0IHBhcnQgb2YgdGhlIGRvY3VtZW50YXRpb24uCgo+IDQu
IFRyaWVkIHN0ZXBzCj4gaHR0cHM6Ly93d3cua2VybmVsLm9yZy9kb2MvaHRtbC92NC4xNC9tZWRp
YS92NGwtZHJpdmVycy96b3Jhbi5odG1sI2hvdy1kby1pLWdldC10aGlzLWRhbW4tdGhpbmctdG8t
d29yawo+IExvb2tpbmcgZm9yIHRoZSBab3JhbiBDb25mIGZpbGUgYnV0IGl0J3Mgbm90IHRoZXJl
CklmIEkgdW5kZXJzdGFuZCB0aGUgdGV4dCBjb3JyZWN0IHlvdSBzaG91bGQgdHJ5IHRvIGxvYWQg
dGhlIGRyaXZlciAKbWFudWFsbHksIGFuZCBpZiB0aGF0IHdvcmtzIHlvdSBjcmVhdGUgdGhlIGZp
bGUgc28geW91IGRvbid0IG5lZWQgdG8gZG8gCmV2ZXJ5dGhpbmcgbWFudWFsbHkuCgo+IDUuIExv
YWQgenIzNjA2Ny5vLgo+IEhvdyBkbyBJIGRvIHRoYXQ/CkRlcGVuZGluZyBvbiB0aGUga2VybmVs
IHlvdXIgZGlzdHJpYnV0aW9uIHVzZXMgaXQgY2FuIGJlIHRoYXQgdGhlIGRyaXZlciAKaXMgaW4g
dGhlIHN0YWdpbmcgYXJlYS4gQW5kIG5vdCBhdmFpbGFibGUgYnkgZGVmYXVsdC4KTmV3ZXIgS2Vy
bmVsIGxpa2UgNC54IG1pZ2h0IGhhdmUgdGhhdCBwcm9ibGVtLiBTbyBpZiBwb3NzaWJsZSB1c2Ug
YSAKb2xkZXIgZGlzdHJpYnV0aW9uIHVzaW5nIGEga2VybmVsIDMueCBvciAyLjYueCBBbHNvIHRo
ZSBtanBlZ3Rvb2xzIGFuZCAKbGF2cmVjIG5lZWQgb3NzLCBhbmQgaGF2ZSBubyBuYXRpdmUgc3Vw
cG9ydCBmb3IgYWxzYSBtZWFucyB0aGF0IApyZWNvcmRpbmcgc291bmQgY2FuIGJlIHRyaWNreS4K
Cj4gIDYuIHJ1biDigJh2NGwtY29uZiAtYyA8ZGV2aWNlPuKAmQo+ICAgICB3aGF0IGRvIEkgdXNl
IGZvciB0aGUgZGV2aWNlP8KgIElzIGl0IHNvbWUgcGFydCBvZiB3aGF0IEkgZm91bmQgaW4KPiAg
ICAgbHNwY2k/wqAgVGhlIG51bWVyaWMgcG9ydGlvbiAoaXMgdGhhdCBhbiBJRD8pCgoKYXVmIGhv
ZmZlbnRsaWNoIGJhbGQsCgpCZXJuaSB0aGUgQ2hhb3Mgb2YgV29vZHF1YXJ0ZXIKCkVtYWlsOiBz
aGFkb3dsb3JkQHV0YW5ldC5hdAp3d3c6IGh0dHA6Ly93d3cubHlzYXRvci5saXUuc2Uvfmd6L2Jl
cm5oYXJkCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TWpwZWctdXNlcnMgbWFpbGluZyBsaXN0Ck1qcGVnLXVzZXJzQGxpc3RzLnNvdXJjZWZvcmdlLm5l
dApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9tanBlZy11c2Vy
cwo=
