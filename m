Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 386E834B857
	for <lists+mjpeg-users@lfdr.de>; Sat, 27 Mar 2021 17:56:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1lQCEs-0008NQ-Kq; Sat, 27 Mar 2021 16:56:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <shadowlord@utanet.at>) id 1lQCEr-0008K6-Fe
 for mjpeg-users@lists.sourceforge.net; Sat, 27 Mar 2021 16:56:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EzV9Q/2Sk7/xv/ywiOrrFrpHwa4ZUzrZunpnmzyhZCI=; b=ZlvQOqkBE7G5o+RMLCEpIZyng9
 vtZrs2uqA8N5sIVJ6lcp7QtB4ImwmCijrLOgoQZzvjhy/yneWpijo7Okf8wSno+OoPBLT7fxLjlbh
 T9DZRPKMDeqJWXLPEr1HiJKFCXMVVCt7jfx+UgPPshfrcJX9B6x9wlXlnVRSRnoSBfPU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EzV9Q/2Sk7/xv/ywiOrrFrpHwa4ZUzrZunpnmzyhZCI=; b=hVNNCdlcUWWo+/n2ib3+nmbsgD
 njqfnwPNBEMGzhimWQDVifoU6AfSFxy3IO8CbgMRoS5achYT/2sy5Eo1ufJ9/L945CuN2Iip22DuU
 exmh4linB1ild49fGgiAPuAfMyf+oU2yik7ZrtCqQeM37jh8M1M/VL+PNVEmzvUaqVtc=;
Received: from taro-1.utanet.at ([213.90.36.44])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lQBuh-0011bo-Ve
 for mjpeg-users@lists.sourceforge.net; Sat, 27 Mar 2021 16:36:07 +0000
Received: from paris-s.drei.host ([213.90.36.62])
 by taro.utanet.at with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <shadowlord@utanet.at>)
 id 1lQBuU-00004s-OQ; Sat, 27 Mar 2021 17:35:38 +0100
Received: from 193-83-254-34.oan.highway.a1.net ([193.83.254.34]
 helo=[10.20.30.37])
 by paris-s.drei.host with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <shadowlord@utanet.at>)
 id 1lQDo5-0002Oi-N6; Sat, 27 Mar 2021 19:37:09 +0100
To: MJPEG-tools user list <mjpeg-users@lists.sourceforge.net>,
 William Lum <lumwaiman@gmail.com>
References: <CA+84gYsnKaCg_q5hvoeNeHNOR+QfBMs_UP5P6HvgZ1GLyxRnwA@mail.gmail.com>
 <b12d2efc-73a6-adf0-09db-313ab9861d7d@utanet.at>
 <CA+84gYtje4TyUPNA_-ntjKOO-c2Ar3wjc==X7UH6Rka0khhC5g@mail.gmail.com>
 <32f0a419-2012-a662-5d8a-4d2b039942ec@utanet.at>
 <CA+84gYvj12J_kyxHdu9aNR9djm4JY1Qmywz3A9rXCLN07o=Y8g@mail.gmail.com>
 <48397ad2-f5c7-8472-c048-ebfeb0f5ca0d@utanet.at>
 <CA+84gYvq74z3mTp5OpY10jSVPWQtDUPO-YybOj=gNqoyEUWPbg@mail.gmail.com>
From: Bernhard Praschinger <shadowlord@utanet.at>
Message-ID: <15ef888e-1545-1db9-2782-6a7a5c132d82@utanet.at>
Date: Sat, 27 Mar 2021 17:35:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 SeaMonkey/2.53.5.1
MIME-Version: 1.0
In-Reply-To: <CA+84gYvq74z3mTp5OpY10jSVPWQtDUPO-YybOj=gNqoyEUWPbg@mail.gmail.com>
X-H3G-Authenticated-As: 2492d812503ae882f041a3ed11d939a345349e8a
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: liu.se]
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lQBuh-0011bo-Ve
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

SGFsbG8sCgpXaWxsaWFtIEx1bSB3cm90ZToKPiBZZXMgbXkgY2FyZCBkb2VzIGhhdmUgdGhlIFND
U0kgY29ubmVjdG9yIGZvciB0aGUgZXh0ZXJuYWwgZHJpdmUgd2hpY2ggSSAKPiBkb24ndCB1c2Ug
YW5kIHRoZSAxNSBwaW4gZm9yIHRoZSBicmVha291dCBib3guCklzIHRoZSBTQ1NJIEFkYXB0ZXIg
cmVjb2duaXplZCBpbiB0aGUgc3lzdGVtID8KVGhlIFBDSSBCcmlkZ2UgaXN0IHRoZSBOYXRpb25h
bCAgUGljb3xQb3dlciBJQy4gVGhlIEFkdmFuc3lzIHNob3VsZCBiZSAKdGhlIFNDU0kgY29udHJv
bGxlci4KCklzIHRoZSBkcml2ZXIgYWxyZWFkeSBsb2FkZWQgPwpUYWtlIGEgbG9vayBpbiAvcHJv
Yy9zY3NpIHRoZXJlIHNob3VsZCBiZSAgc2NzaSBmaWxlIHlvdSBjYW4gdmlldy4KCk9yIHlvdSB0
cnkgbG9hZGluZyB0aGUgZHJpdmVyIGZvciB0aGUgU0NTSSBjb250cm9sbGVyOgppbnNtb2Qgb3Ig
bW9kcHJvYmUgYWR2YW5zeXMKCldoZW4geW91IGxvYWQgdGhlIG1vZHVsZSBpdCB3b3VsZCBiZSBn
b29kIHRvIGNoZWNrIGlmIHRoZSBrZXJuZWwgd3JpdGVzIApzb21ldGhpbmcgdG8gL3Zhci9sb2cv
bWVzc2FnZXMKCj4gV2hlbiB5b3Ugc2F5IHN3aXRjaCBpcyBpdCBwaHlzaWNhbD/CoCBEbyBJIG5l
ZWQgdG8gc2V0IGl0IHRvIGEgY2VydGFpbiAKPiBjb25maWc/CkkgZG9uJ3Qga25vdyBpZiB0aGVy
ZSBpcyBhIHBvc3NpYmlsaXR5IHRvIHNldCBhbnl0aGluZy4KCldoZW4geW91IHNlYXJjaCB0aGUg
L3Zhci9sb2cvYm9vdC5sb2cgIGFuZCAvdmFyL2xvZy9ib290Lm1zZwpkbyB5b3UgZmluZCBhbnkg
aGludHMgYWJvdXQgdGhlIGJ1eiwgYWR2YW5zeXMgb3Igem9yYW4gPwoKZG1lc2cgbGV0cyB5b3Ug
dmlldyB0aGUgYm9vdCBtZXNzYWdlcyAocHJvYmFibHkgYSBmaWxlIGluIC92YXIvbG9nKSBhbnkg
CmhpbnQgYWJvdXQgdGhlIHpvcmFuIGFuZCB0aGUgZHJpdmVyIHdvdWxkIGJlIHZlcnkgaGVscGZ1
bC4KCj4gT24gU3VuLiwgTWFyLiAyMSwgMjAyMSwgMTE6MzMgYS5tLiBCZXJuaGFyZCBQcmFzY2hp
bmdlciwgCj4gPHNoYWRvd2xvcmRAdXRhbmV0LmF0IDxtYWlsdG86c2hhZG93bG9yZEB1dGFuZXQu
YXQ+PiB3cm90ZToKPiAKPiAgICAgSGFsbG8sCj4gCj4gICAgIHNvcnJ5IEkgd2FzIG9mZmxpbmUg
Zm9yIHF1aXRlIGEgd2hpbGUuCj4gCj4gICAgIFlvdSB3cml0ZSBpbiB0aGUgc3ViamVjdCB0aGF0
IHlvdSBoYXZlIGEgSW9tZWdhIEJ1eiBjYXJkLCBidXQgdGhlIGxzcGNpCj4gICAgIG91dHB1dCBz
YXkncyBaUjM2MDU3LiBXaGljaCB3YXMgdXNlZCBpbiB0aGUgREMxMC9EQzMwLiBEb2VzIHlvdXIg
Y2FyZAo+ICAgICBoYXZlIGEgU0NTSSBpbnRlcmZhY2UgY29ubmVjdG9yIGFuZCBhIDE1IHBpbiBj
b25uZWN0b3Igb24gdGhlCj4gICAgIGJhY2twbGFuZSA/Cj4gICAgIFRoZSBidXogd2FzIHRoZSBt
b3N0IHByb2JsZW1hdGljIGNhcmQsIGJlY2F1c2UgaXQgaGFkIGEgUENJIFN3aXRjaCBvbgo+ICAg
ICB0aGUgY2FyZCBmb3IgdGhlIFpSMzYwNjcgYW5kIHRoZSBTQ1NJIGNvbnRyb2xsZXIuCj4gCj4g
ICAgIFdpbGxpYW0gTHVtIHdyb3RlOgo+ICAgICAgPiBIZWxsbywKPiAgICAgID4KPiAgICAgID4g
Rm9sbG93aW5nIHlvdXIgaW5zdHJ1Y3Rpb25zIGhlcmUgaXMgd2hhdCBJIGZvdW5kLgo+ICAgICAg
Pgo+ICAgICAgPiBJIHNob3VsZCBhbHNvIG5vdGUgdGhhdCBJIGFtIHRlc3Rpbmcgb24gYSBsaXZl
IFVTQiBzdGljayB2cwo+ICAgICBpbnN0YWxsZWQgb24KPiAgICAgID4gc3NkLsKgIFRoaXMgd2Fz
IG1haW5seSBiZWNhdXNlIEkgaGFkIGluc3RhbGxlZCAzLTUgZGlmZmVyZW50Cj4gICAgIHZlcnNp
b25zIGFuZAo+ICAgICAgPiBmbGF2b3VycyBvZiBsaW51eCB0cnlpbmcgdG8gZ2V0IHRoaXMgdG8g
d29yayBhbmQgd2FudGVkIHRvIGF2b2lkCj4gICAgICA+IGluc3RhbGxpbmcgbW9yZSB1bnRpbCBJ
IGZpbmQgYSBzb2x1dGlvbi7CoCBQbGVhc2UgbGV0IG1lIGtub3cgaWYKPiAgICAgdGhpcyBpcwo+
ICAgICAgPiBhbiBpc3N1ZS4KPiAgICAgID4KPiAgICAgID4gT24gVWJ1bnR1IDE1LjA0IChMaW51
eMKgdWJ1bnR1IDMuMTkuMC0xNS1nZW5lcmljKQo+ICAgICAgPiBUaGUgaGFyZHdhcmUgaXMgdGhl
IElPbWVnYSBCdXogKDAuNjowOS4wIE11bHRpbWVkaWEgdmlkZW8gY29udHJvbGxlcgo+ICAgICAg
PiBbMDQwMF06IFpvcmFuIENvcnBvcmF0aW9uICpaUjM2MDU3KlBRQyBWaWRlbyBjdXR0aW5nIGNo
aXBzZXQKPiAgICAgWzExZGU6NjA1N10KPiAgICAgID4gKHJldiAwMSkKPiAgICAgID4KPiAgICAg
ID4gSSBsb29rZWQgZm9yIGRyaXZlcnMgaW4gL2xpYi9tb2R1bGVzL8KgIHRoYXQgdG9vayBtZSB0
bwo+ICAgICAgPiAvbGliL21vZHVsZXMvMy4xOS4wLTE1LWdlbmVyaWMva2VybmVsL2RyaXZlci9t
ZWRpYS9wY2kvem9yYW4KPiAgICAgd2hlcmUgSSBmb3VuZDoKPiAgICAgID4gLSB2aWRlb2NvZGVj
LmtvCj4gICAgICA+IC0genIzNjAxNi5rbwo+ICAgICAgPiAtIHpyMzYwNTAua28KPiAgICAgID4g
LSB6cjM2MDYwLmtvCj4gICAgICA+IC0genIzNjA2Ny5rbwo+ICAgICAgPiBub25lIHNlZW0gdG8g
YmUgYSBkaXJlY3QgbWF0Y2ggZm9yIHRoZSB6cjM2MDU3Cj4gICAgIFRoYXQgc2hvdWxkIGJlIG5v
IHByb2JsZW0ganVzdCB1c2UgdGhlIHpyMzYwNjcgaW5zdGVhZC4KPiAKPiAgICAgID4gVHJpZWQg
dG8gbG9hZCB0aGUgZHJpdmVywqAgIm1vZHByb2JlIC1uIC12IC0tc2hvdy1kZXBlbmRzIHpvcmFu
IiB0aGlzCj4gICAgICA+IHJlc3VsdGVkICJGQVRBTDogTW9kdWxlIHpvcmFuIG5vdCBmb3VuZC4i
Cj4gICAgICA+Cj4gICAgICA+IFRoZW4gdHJpZWQgIm1vZHByb2JlIC1uIC12IC0tc2hvdy1kZXBl
bmRzIHpyMzYwNjciIHRoaXMgc2VlbWVkIHRvCj4gICAgICA+IGluc3RhbGwgbW9kdWxlcwo+ICAg
ICAgPiBpbnNtb2QgL2xpYi9tb2RldWxlcy8zLjE5LjAtMTUtZ2VuZXJpYy9rZXJuZWwvZHJpdmVy
Ly4uLmtvCj4gICAgIChpYzIvYWxvZ28sCj4gICAgICA+IG1lZGlhLCBWNGwyLCB2aWRlb2NvZGVj
LCB6cjM2MDY3KQo+ICAgICBJdCBzaG91bGQgYWxzbyBsb2FkIHRoZSBkcml2ZXIgZm9yIHRoZSBU
ViBkZWNvZGVyIGFuZCBlbmNvZGVyLgo+IAo+ICAgICBXaGVuIHlvdSBkbyBhIGxzbW9kIHwgZ3Jl
cCB6ciB5b3Ugc2hvdWxkIHNlZSB0aGUgbG9hZGVkIG1vZHVsZXMuIEFyZQo+ICAgICBzb21lIHY0
bCAodmlkZW80bGludXgpIG1vZHVsZXMgbG9hZGVkIHRvbyA/Cj4gCj4gICAgICA+IGJ1dCB3aGVu
IEkgImxzcGNpIC1ubmsiIGl0IHN0aWxsIGRvZXMgbm90IHNob3cgYW55IHN1YnN5c3RlbSBvcgo+
ICAgICBkcml2ZXIKPiAgICAgID4gaW4gdXNlIHNvIG5vdCBzdXJlIGlmIGl0IHdvcmtlZC4uLiBh
bHNvIHdhbnRlZCB0byB0cnkgdGVzdGluZyBpdAo+ICAgICB3aXRoCj4gICAgICA+IFZMQyBidXQg
Y291bGRuJ3QgaW5zdGFsbCBhcyB0aGUgVWJ1bnR1IHNvZnR3YXJlIGNlbnRlciBpcyB0b28gb2xk
Cj4gICAgIGFuZAo+ICAgICAgPiB0aGUgbGlua3Mgbm8gbG9uZ2VyIHNlZW0gdG8gd29yay7CoCBU
aGlzIHdvcnJpZXMgbWUsIGlmIEkgZG8gZ2V0IHRoaXMKPiAgICAgID4gd29ya2luZyB3aWxsIEkg
YmUgYWJsZSB0byBpbnN0YWxsIGFueSBzb2Z0d2FyZSAoaS5lLiBLZGVubGl2ZSBldGMpLgo+ICAg
ICAgPiBEb247dCBrbm93IGhvdyB0byBkbyB0aGlzIGlmIHRoZSB1YnVudHUgc29mdHdhcmUgY2Vu
dGVyIGlzbid0Cj4gICAgIHdvcmtpbmcuCj4gICAgICA+IGFwdCBnZXQgYWxzbyBoYWQgZXJyb3Jz
IGFzIHRoZSBmb2xkZXJzIGZvciB0aGlzIHZlcnNpb24gb2YgdWJ1bnR1Cj4gICAgIHNlZW0KPiAg
ICAgID4gdG8gbm8gbG9uZ2VyIGV4aXN0Lgo+ICAgICBJIGRvbid0IGtub3cgaWYgaXQgaXMgYSBw
cm9ibGVtIGlmIHRoZSBsc3BjaSBkb2VzIG5vdCBzaG93IHlvdSB0aGUKPiAgICAgY2FyZC4KPiAg
ICAgRG9lcyB0aGUgbHNwY2kgY29tbWFuZCAob3Igc29tZSBib290IGxvZykgc2hvdyB5b3UgYSBo
aW50IHRoYXQgdGhlIHNjc2kKPiAgICAgY29udHJvbGxlciBpc3QgcmVjb2duaXplZC4KPiAKPiAg
ICAgV2hlbiB5b3Ugc3RhcnQgaW4gYSAybmQgdGVybWluYWwgYSBjb21tYW5kIGxpa2UgdGhhdDoK
PiAgICAgdGFpbCAtZiAvdmFyL2xvZy9tZXNzYWdlcwo+IAo+ICAgICBZb3Ugc2hvdWxkIHNlZSB0
aGUgbWVzc2FnZXMgd2hlbiB0aGUga2VybmVsIGxvYWRzIHRoZSBkcml2ZXIuIFRoYXQKPiAgICAg
b3V0cHV0IHdvdWxkIGJlIHZlcnkgaGVscGZ1bC4KPiAKPiAgICAgID4gVGhvdWdodHMgb24gaG93
IEkgc2hvdWxkIHByb2NlZWQ/Cj4gICAgIFRoZSBvdXRwdXQgZnJvbSB0aGUga2VybmVsIHdoZW4g
eW91IGxvYWQgdGhlIGRyaXZlcnMgc2hvdWxkIGJlIHZlcnkKPiAgICAgaGVscGZ1bC4gVG8gc2Vl
IGlmIHRoYXQga2VybmVsIHJlY29nbml6ZXMgdGhlIGNhcmQuCmF1ZiBob2ZmZW50bGljaCBiYWxk
LAoKQmVybmkgdGhlIENoYW9zIG9mIFdvb2RxdWFydGVyCgpFbWFpbDogc2hhZG93bG9yZEB1dGFu
ZXQuYXQKd3d3OiBodHRwOi8vd3d3Lmx5c2F0b3IubGl1LnNlL35nei9iZXJuaGFyZAoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk1qcGVnLXVzZXJzIG1h
aWxpbmcgbGlzdApNanBlZy11c2Vyc0BsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0
cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vbWpwZWctdXNlcnMK
