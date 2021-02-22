Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D6D6321F2F
	for <lists+mjpeg-users@lfdr.de>; Mon, 22 Feb 2021 19:31:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1lEFzJ-0006le-8b; Mon, 22 Feb 2021 18:31:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <shadowlord@utanet.at>) id 1lEFzG-0006lR-Ry
 for mjpeg-users@lists.sourceforge.net; Mon, 22 Feb 2021 18:31:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hkTCWkp/ql72Pr9G9TulWb5A9uHyjQ8XhgSZafmaNcc=; b=k+E2+YI/VK4tiaQlo0QsYnMZ8J
 cS/q2YfrUec9Rs9jXYDxIucedTwmCPMqqEAJDNny5fe/7kAFy7jsW6YVZCGfw0v2T3dT3RzCzmmYs
 ADwfRLtu/ijToKZ/dnDoRILCpS3pbutLB+sLZo34A7KD7psV0gDLn3VwIE9vG0HLPCos=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hkTCWkp/ql72Pr9G9TulWb5A9uHyjQ8XhgSZafmaNcc=; b=YOCpfR/h/soWQIi0iuVZ8TWlKW
 wX6PXU0drg4x7Y3ajS4k6fqjYur3pYRQu3Ji1iaNn5NmHlRUUcJ/3zHq4557UfZS3OLrj6hhI3LUu
 ypNVqrWgptISrDw4DYqLtsSvKEcdNyvlcC83uGdqFg/mlIPVqgOX+hIf+04Rkxatj+XA=;
Received: from tatiana2.utanet.at ([213.90.36.33])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lEFz8-001Xb6-3F
 for mjpeg-users@lists.sourceforge.net; Mon, 22 Feb 2021 18:31:14 +0000
Received: from paris-s.drei.host ([213.90.36.62])
 by tatiana.utanet.at with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <shadowlord@utanet.at>)
 id 1lEFyy-0002vT-CB; Mon, 22 Feb 2021 19:30:56 +0100
Received: from 193-81-240-229.oan.highway.a1.net ([193.81.240.229]
 helo=[10.20.30.37])
 by paris-s.drei.host with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <shadowlord@utanet.at>)
 id 1lEHVq-0007MS-4S; Mon, 22 Feb 2021 21:08:58 +0100
To: MJPEG-tools user list <mjpeg-users@lists.sourceforge.net>,
 William Lum <lumwaiman@gmail.com>
References: <CA+84gYsnKaCg_q5hvoeNeHNOR+QfBMs_UP5P6HvgZ1GLyxRnwA@mail.gmail.com>
 <b12d2efc-73a6-adf0-09db-313ab9861d7d@utanet.at>
 <CA+84gYtje4TyUPNA_-ntjKOO-c2Ar3wjc==X7UH6Rka0khhC5g@mail.gmail.com>
From: Bernhard Praschinger <shadowlord@utanet.at>
Message-ID: <32f0a419-2012-a662-5d8a-4d2b039942ec@utanet.at>
Date: Mon, 22 Feb 2021 19:30:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 SeaMonkey/2.53.5.1
MIME-Version: 1.0
In-Reply-To: <CA+84gYtje4TyUPNA_-ntjKOO-c2Ar3wjc==X7UH6Rka0khhC5g@mail.gmail.com>
X-H3G-Authenticated-As: 2492d812503ae882f041a3ed11d939a345349e8a
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1lEFz8-001Xb6-3F
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

SGFsbG8KCgpXaWxsaWFtIEx1bSB3cm90ZToKPiBSZXNwb25zZXMgaW5saW5lIGluIFJlZC4gVGhh
bmtzIGZvciB5b3VyIGhlbHAuClRoZSBjb2xvciB2YW5pc2hlcyB3aGVuIEkgZG8gYSB0ZXh0IG9u
bHkgcmVwbHkuCgo+ID4gICAgU29tZSB0aG91Z2h0J3MgYWJvdXQgd2hhdCB5b3UgdHJ5IHRvIGFj
Y29tcGxpc2guIFNvcnJ5IGZvciB0aGUgbG9uZ2VyCj4gPiAgICBkZWxheS4KPiAKPiA+ICAgICA+
IEkgaGF2ZSBhIFpvcmFuIGJhc2VkIGNhcHR1cmUgY2FyZCB0aGF0IEx1YnVudHUgZG9lc24ndCBz
ZWVtIHRvCj4gPiAgICAgPiByZWNvZ25pemUuwqAgSGVyZSBpcyB3aGF0IEkgaGF2ZSBkb25lIHNv
wqBmYXIuwqAgSSdtIG5ldyB0byBsaW51eCBzbwo+ID4gICAgID4gcGxlYXNlIHRha2UgdGhhdCBp
bnRvIGNvbnNpZGVyYXRpb24gd2l0aCB5b3UgaW5zdHJ1Y3Rpb25zLgo+ID4gICAgID4KPiA+ICAg
ICA+wqAgMS4gbHNwY2kgfCBncmVwIFpvcmFuCj4gPiAgICBXaGljaCBjYXJkIGRvIHlvdSBhY3R1
YWxseSB3YW50IHRvIHVzZSA/IEkgZG9uJ3Qga25vdyB0aGUgdHlwZSBieSB0aGUKPiA+ICAgIG91
dHB1dCBvZiBsc3BjaS4KPiAwLjY6MDkuMCBNdWx0aW1lZGlhIHZpZGVvIGNvbnRyb2xsZXIgWzA0
MDBdOiBab3JhbiBDb3Jwb3JhdGlvbiAKPiBaUjM2MDU3UFFDIFZpZGVvIGN1dHRpbmcgY2hpcHNl
dCBbMTFkZTo2MDU3XSAocmV2IDAxKQoKVGhhdCBDaGlwIHdhcyB1c2VkIGluIHRoZSBQaW5uYWNs
ZS9NaXJvIERDMTAobmV3IGFuZCBvbGQpLCBhbmQgaW4gdGhlIApQaW5uYWNsZS9NaXJvIERDMzAu
IFRoZSBDYXJkcyB1c2UgZGlmZmVyZW4gSUMncyBmb3IgVFYgZW5jb2RpbmcgYSAKZGVjb2Rpbmcg
YW5kIGZvciB0aGUgbWpwZWcgZW5jb2RlcjoKaHR0cHM6Ly9tanBlZy5zb3VyY2Vmb3JnZS5pby9k
cml2ZXItem9yYW4vY2FyZHMucGhwCgoKPiA+ICAgICA+wqAgMi4gc3VkbyBkbWlkZWNvZGUgLXQg
Mgo+ID4gICAgID4KPiA+ICAgICA+IElzIHRoZXJlIHN1cHBvcnQgZm9yIEFNRCA3OTBGWCBjaGlw
c2V0Pwo+ID4gICAgV2hpY2gga2VybmVsIGRvZXMgdGhlIGRpc3RyaWJ1dGlvbiB1c2UgPyAodW5h
bWUgLWEpCj4gTGludXjCoHVidW50dSAzLjE5LjAtMTUtZ2VuZXJpYwpUaGF0IGlzIGEgb2xkZXIg
a2VybmVsICh+OHllYXJzIG9sZCkgd2hpY2ggaXMgYSBnb29kIHRoaW5nLgoKPiA+ICAgICA+IDQu
IFRyaWVkIHN0ZXBzCj4gPiAgICAgPgo+ID4gICAgID5odHRwczovL3d3dy5rZXJuZWwub3JnL2Rv
Yy9odG1sL3Y0LjE0L21lZGlhL3Y0bC1kcml2ZXJzL3pvcmFuLmh0bWwjaG93LWRvLWktZ2V0LXRo
aXMtZGFtbi10aGluZy10by13b3JrCj4gPiAgICAgPiBMb29raW5nIGZvciB0aGUgWm9yYW4gQ29u
ZiBmaWxlIGJ1dCBpdCdzIG5vdCB0aGVyZQo+ID4gICAgSWYgSSB1bmRlcnN0YW5kIHRoZSB0ZXh0
IGNvcnJlY3QgeW91IHNob3VsZCB0cnkgdG8gbG9hZCB0aGUgZHJpdmVyCj4gPiAgICBtYW51YWxs
eSwgYW5kIGlmIHRoYXQgd29ya3MgeW91IGNyZWF0ZSB0aGUgZmlsZSBzbyB5b3UgZG9uJ3QgbmVl
ZCB0byBkbwo+ID4gICAgZXZlcnl0aGluZyBtYW51YWxseS4KPiAgICAgQ2FuIHlvdSBwb2ludCBt
ZSB0byBpbnN0cnVjdGlvbnMgb24gd2hlcmUgdG8gZG93bmxvYWQgdGhlIHJpZ2h0Cj4gICAgIGRy
aXZlciBhbmQgdGhlbiBob3cgdG8gbG9hZCBhIGRyaXZlciBtYW51YWxseT8gClRoZSBjb3JyZWN0
IGRyaXZlciBzaG91bGQgYmUgc2hpcHBlZCB3aXRoIHRoZSBsaW51eCBrZXJuZWwuClVzdWFsbHkg
dGhlIGtlcm5lbCBtb2R1bGVzIGFyZSBsb2NhdGVkIGluIC9saWIvbW9kdWxlcy8gZ28gdG8gdGhh
dCAKZGlyZWN0b3J5IGFuZCBzZWFyY2ggZm9yIHpvcmFuLCB6cjM2LCBzYWE3MTEsIGFkdjcxNwoK
SXQgc2hvdWxkIGZpbmQgc29tZSBmaWxlcy4KCj4gPiAgICAgPiA1LiBMb2FkIHpyMzYwNjcuby4K
PiA+ICAgICA+IEhvdyBkbyBJIGRvIHRoYXQ/Cj4gPiAgICBEZXBlbmRpbmcgb24gdGhlIGtlcm5l
bCB5b3VyIGRpc3RyaWJ1dGlvbiB1c2VzIGl0IGNhbiBiZSB0aGF0IHRoZQo+ID4gICAgZHJpdmVy
Cj4gPiAgICBpcyBpbiB0aGUgc3RhZ2luZyBhcmVhLiBBbmQgbm90IGF2YWlsYWJsZSBieSBkZWZh
dWx0Lgo+ID4gICAgTmV3ZXIgS2VybmVsIGxpa2UgNC54IG1pZ2h0IGhhdmUgdGhhdCBwcm9ibGVt
LiBTbyBpZiBwb3NzaWJsZSB1c2UgYQo+ID4gICAgb2xkZXIgZGlzdHJpYnV0aW9uIHVzaW5nIGEg
a2VybmVsIDMueCBvciAyLjYueCBBbHNvIHRoZSBtanBlZ3Rvb2xzIGFuZAo+ID4gICAgbGF2cmVj
IG5lZWQgb3NzLCBhbmQgaGF2ZSBubyBuYXRpdmUgc3VwcG9ydCBmb3IgYWxzYSBtZWFucyB0aGF0
Cj4gPiAgICByZWNvcmRpbmcgc291bmQgY2FuIGJlIHRyaWNreS4KPiAgwqAgwqB0cmllZCBvbGRl
ciBrZXJuZWwgKHNlZSBhYm92ZSkgc3RpbGwgbm90IHdvcmtpbmcKSWYgdGhlcmUgc2VhcmNoIGRp
ZCBmaW5kIGEgem9yYW4gbW9kdWxlIHRyeSB0byBsb2FkIHRoZSBtb2R1bGVzIGFzIHJvb3QgCndp
dGggYSBjb21tYW5kIGxpa2UgdGhpcyBmb3IgYSBmaXJzdCB0ZXN0Ogptb2Rwcm9iZSAtbiAtdiAt
LXNob3ctZGVwZW5kcyB6b3JhbgoKQW5kIG9uY2Ugd2l0aG91dCB0aGUgLS1zaG93LWRlcGVuZHMs
IGFuZCBpZiB0aGUgb3V0cHV0IGxvb2tzIHByb3NpbmcgCndpdGhvdXQgdGhlIC1uCgpJZiB0aGVy
ZSBzIG5vIHpvcmFuLm8sIHJlcGxhY2UgdGhlIHpvcmFuIHdpdGggenIzNjA2Nywgc28gdGhlIGNv
bW1hbmQgCmxvb2tlZCBsaWtlIHRoYXQ6IG1vZHByb2JlIC1uIC12IC0tc2hvdy1kZXBlbmRzIHpy
MzYwNjcKCmF1ZiBob2ZmZW50bGljaCBiYWxkLAoKQmVybmkgdGhlIENoYW9zIG9mIFdvb2RxdWFy
dGVyCgpFbWFpbDogc2hhZG93bG9yZEB1dGFuZXQuYXQKd3d3OiBodHRwOi8vd3d3Lmx5c2F0b3Iu
bGl1LnNlL35nei9iZXJuaGFyZAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCk1qcGVnLXVzZXJzIG1haWxpbmcgbGlzdApNanBlZy11c2Vyc0BsaXN0cy5z
b3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGlu
Zm8vbWpwZWctdXNlcnMK
