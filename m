Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BB96E343330
	for <lists+mjpeg-users@lfdr.de>; Sun, 21 Mar 2021 16:33:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1lO05M-00056L-LR; Sun, 21 Mar 2021 15:33:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <shadowlord@utanet.at>) id 1lO05K-00056D-Mt
 for mjpeg-users@lists.sourceforge.net; Sun, 21 Mar 2021 15:33:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ltcg5RyDx6IOdXBtBCDTYAFIYEPkbYoHDeS/sWR8dSQ=; b=EVHlPnlBmc2ErRoT2I5Mn3kHBH
 WjCVDFTuO07+5sYt5QVb504G0hNgH+9kvGAMEXK9uEkv+QoBxmdS0yYic26u7HAYt24WDuQzOxpK8
 kEajDO5b115Zs77dKXwOWlDMov2EaIcVtLNG3rjwasGRn8UYzrD+yIkW1aZzhqohR2GU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ltcg5RyDx6IOdXBtBCDTYAFIYEPkbYoHDeS/sWR8dSQ=; b=K12E7CbpoSYv4hCEd+Pcoe1u5J
 aOjxHwVBwWUmWJu5/cUZgA0UOyyyDGLVgUioBUYIRiFAIuOOzQhieL5Y72h3e86G7CUmkxDTe0JE5
 YQZ7eRih2P67+4AaOp0q+HdBoEXqRujEJPxNAkZUYkv0JJzkR8cYimtBHcNHZVjtjP/8=;
Received: from taro-1.utanet.at ([213.90.36.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lO05E-0000BE-Cn
 for mjpeg-users@lists.sourceforge.net; Sun, 21 Mar 2021 15:33:46 +0000
Received: from paris-s.drei.host ([213.90.36.62])
 by taro.utanet.at with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <shadowlord@utanet.at>)
 id 1lO051-00046E-8L; Sun, 21 Mar 2021 16:33:27 +0100
Received: from 193-83-163-218.oan.highway.a1.net ([193.83.163.218]
 helo=[10.20.30.37])
 by paris-s.drei.host with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <shadowlord@utanet.at>)
 id 1lO1uR-0001Ax-Hy; Sun, 21 Mar 2021 18:30:39 +0100
To: MJPEG-tools user list <mjpeg-users@lists.sourceforge.net>,
 William Lum <lumwaiman@gmail.com>
References: <CA+84gYsnKaCg_q5hvoeNeHNOR+QfBMs_UP5P6HvgZ1GLyxRnwA@mail.gmail.com>
 <b12d2efc-73a6-adf0-09db-313ab9861d7d@utanet.at>
 <CA+84gYtje4TyUPNA_-ntjKOO-c2Ar3wjc==X7UH6Rka0khhC5g@mail.gmail.com>
 <32f0a419-2012-a662-5d8a-4d2b039942ec@utanet.at>
 <CA+84gYvj12J_kyxHdu9aNR9djm4JY1Qmywz3A9rXCLN07o=Y8g@mail.gmail.com>
From: Bernhard Praschinger <shadowlord@utanet.at>
Message-ID: <48397ad2-f5c7-8472-c048-ebfeb0f5ca0d@utanet.at>
Date: Sun, 21 Mar 2021 16:33:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 SeaMonkey/2.53.5.1
MIME-Version: 1.0
In-Reply-To: <CA+84gYvj12J_kyxHdu9aNR9djm4JY1Qmywz3A9rXCLN07o=Y8g@mail.gmail.com>
X-H3G-Authenticated-As: 2492d812503ae882f041a3ed11d939a345349e8a
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: liu.se]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1lO05E-0000BE-Cn
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

SGFsbG8sCgpzb3JyeSBJIHdhcyBvZmZsaW5lIGZvciBxdWl0ZSBhIHdoaWxlLgoKWW91IHdyaXRl
IGluIHRoZSBzdWJqZWN0IHRoYXQgeW91IGhhdmUgYSBJb21lZ2EgQnV6IGNhcmQsIGJ1dCB0aGUg
bHNwY2kgCm91dHB1dCBzYXkncyBaUjM2MDU3LiBXaGljaCB3YXMgdXNlZCBpbiB0aGUgREMxMC9E
QzMwLiBEb2VzIHlvdXIgY2FyZCAKaGF2ZSBhIFNDU0kgaW50ZXJmYWNlIGNvbm5lY3RvciBhbmQg
YSAxNSBwaW4gY29ubmVjdG9yIG9uIHRoZSBiYWNrcGxhbmUgPwpUaGUgYnV6IHdhcyB0aGUgbW9z
dCBwcm9ibGVtYXRpYyBjYXJkLCBiZWNhdXNlIGl0IGhhZCBhIFBDSSBTd2l0Y2ggb24gCnRoZSBj
YXJkIGZvciB0aGUgWlIzNjA2NyBhbmQgdGhlIFNDU0kgY29udHJvbGxlci4KCldpbGxpYW0gTHVt
IHdyb3RlOgo+IEhlbGxvLAo+IAo+IEZvbGxvd2luZyB5b3VyIGluc3RydWN0aW9ucyBoZXJlIGlz
IHdoYXQgSSBmb3VuZC4KPiAKPiBJIHNob3VsZCBhbHNvIG5vdGUgdGhhdCBJIGFtIHRlc3Rpbmcg
b24gYSBsaXZlIFVTQiBzdGljayB2cyBpbnN0YWxsZWQgb24gCj4gc3NkLsKgIFRoaXMgd2FzIG1h
aW5seSBiZWNhdXNlIEkgaGFkIGluc3RhbGxlZCAzLTUgZGlmZmVyZW50IHZlcnNpb25zIGFuZCAK
PiBmbGF2b3VycyBvZiBsaW51eCB0cnlpbmcgdG8gZ2V0IHRoaXMgdG8gd29yayBhbmQgd2FudGVk
IHRvIGF2b2lkIAo+IGluc3RhbGxpbmcgbW9yZSB1bnRpbCBJIGZpbmQgYSBzb2x1dGlvbi7CoCBQ
bGVhc2UgbGV0IG1lIGtub3cgaWYgdGhpcyBpcyAKPiBhbiBpc3N1ZS4KPiAKPiBPbiBVYnVudHUg
MTUuMDQgKExpbnV4wqB1YnVudHUgMy4xOS4wLTE1LWdlbmVyaWMpCj4gVGhlIGhhcmR3YXJlIGlz
IHRoZSBJT21lZ2EgQnV6ICgwLjY6MDkuMCBNdWx0aW1lZGlhIHZpZGVvIGNvbnRyb2xsZXIgCj4g
WzA0MDBdOiBab3JhbiBDb3Jwb3JhdGlvbiAqWlIzNjA1NypQUUMgVmlkZW8gY3V0dGluZyBjaGlw
c2V0IFsxMWRlOjYwNTddIAo+IChyZXYgMDEpCj4gCj4gSSBsb29rZWQgZm9yIGRyaXZlcnMgaW4g
L2xpYi9tb2R1bGVzL8KgIHRoYXQgdG9vayBtZSB0byAKPiAvbGliL21vZHVsZXMvMy4xOS4wLTE1
LWdlbmVyaWMva2VybmVsL2RyaXZlci9tZWRpYS9wY2kvem9yYW4gd2hlcmUgSSBmb3VuZDoKPiAt
IHZpZGVvY29kZWMua28KPiAtIHpyMzYwMTYua28KPiAtIHpyMzYwNTAua28KPiAtIHpyMzYwNjAu
a28KPiAtIHpyMzYwNjcua28KPiBub25lIHNlZW0gdG8gYmUgYSBkaXJlY3QgbWF0Y2ggZm9yIHRo
ZSB6cjM2MDU3ClRoYXQgc2hvdWxkIGJlIG5vIHByb2JsZW0ganVzdCB1c2UgdGhlIHpyMzYwNjcg
aW5zdGVhZC4KCj4gVHJpZWQgdG8gbG9hZCB0aGUgZHJpdmVywqAgIm1vZHByb2JlIC1uIC12IC0t
c2hvdy1kZXBlbmRzIHpvcmFuIiB0aGlzIAo+IHJlc3VsdGVkICJGQVRBTDogTW9kdWxlIHpvcmFu
IG5vdCBmb3VuZC4iCj4gCj4gVGhlbiB0cmllZCAibW9kcHJvYmUgLW4gLXYgLS1zaG93LWRlcGVu
ZHMgenIzNjA2NyIgdGhpcyBzZWVtZWQgdG8gCj4gaW5zdGFsbCBtb2R1bGVzCj4gaW5zbW9kIC9s
aWIvbW9kZXVsZXMvMy4xOS4wLTE1LWdlbmVyaWMva2VybmVsL2RyaXZlci8uLi5rbyAoaWMyL2Fs
b2dvLCAKPiBtZWRpYSwgVjRsMiwgdmlkZW9jb2RlYywgenIzNjA2NykKSXQgc2hvdWxkIGFsc28g
bG9hZCB0aGUgZHJpdmVyIGZvciB0aGUgVFYgZGVjb2RlciBhbmQgZW5jb2Rlci4KCldoZW4geW91
IGRvIGEgbHNtb2QgfCBncmVwIHpyIHlvdSBzaG91bGQgc2VlIHRoZSBsb2FkZWQgbW9kdWxlcy4g
QXJlIApzb21lIHY0bCAodmlkZW80bGludXgpIG1vZHVsZXMgbG9hZGVkIHRvbyA/Cgo+IGJ1dCB3
aGVuIEkgImxzcGNpIC1ubmsiIGl0IHN0aWxsIGRvZXMgbm90IHNob3cgYW55IHN1YnN5c3RlbSBv
ciBkcml2ZXIgCj4gaW4gdXNlIHNvIG5vdCBzdXJlIGlmIGl0IHdvcmtlZC4uLiBhbHNvIHdhbnRl
ZCB0byB0cnkgdGVzdGluZyBpdCB3aXRoIAo+IFZMQyBidXQgY291bGRuJ3QgaW5zdGFsbCBhcyB0
aGUgVWJ1bnR1IHNvZnR3YXJlIGNlbnRlciBpcyB0b28gb2xkIGFuZCAKPiB0aGUgbGlua3Mgbm8g
bG9uZ2VyIHNlZW0gdG8gd29yay7CoCBUaGlzIHdvcnJpZXMgbWUsIGlmIEkgZG8gZ2V0IHRoaXMg
Cj4gd29ya2luZyB3aWxsIEkgYmUgYWJsZSB0byBpbnN0YWxsIGFueSBzb2Z0d2FyZSAoaS5lLiBL
ZGVubGl2ZSBldGMpLiAgCj4gRG9uO3Qga25vdyBob3cgdG8gZG8gdGhpcyBpZiB0aGUgdWJ1bnR1
IHNvZnR3YXJlIGNlbnRlciBpc24ndCB3b3JraW5nLiAgCj4gYXB0IGdldCBhbHNvIGhhZCBlcnJv
cnMgYXMgdGhlIGZvbGRlcnMgZm9yIHRoaXMgdmVyc2lvbiBvZiB1YnVudHUgc2VlbSAKPiB0byBu
byBsb25nZXIgZXhpc3QuCkkgZG9uJ3Qga25vdyBpZiBpdCBpcyBhIHByb2JsZW0gaWYgdGhlIGxz
cGNpIGRvZXMgbm90IHNob3cgeW91IHRoZSBjYXJkLiAKRG9lcyB0aGUgbHNwY2kgY29tbWFuZCAo
b3Igc29tZSBib290IGxvZykgc2hvdyB5b3UgYSBoaW50IHRoYXQgdGhlIHNjc2kgCmNvbnRyb2xs
ZXIgaXN0IHJlY29nbml6ZWQuCgpXaGVuIHlvdSBzdGFydCBpbiBhIDJuZCB0ZXJtaW5hbCBhIGNv
bW1hbmQgbGlrZSB0aGF0Ogp0YWlsIC1mIC92YXIvbG9nL21lc3NhZ2VzCgpZb3Ugc2hvdWxkIHNl
ZSB0aGUgbWVzc2FnZXMgd2hlbiB0aGUga2VybmVsIGxvYWRzIHRoZSBkcml2ZXIuIFRoYXQgCm91
dHB1dCB3b3VsZCBiZSB2ZXJ5IGhlbHBmdWwuCgo+IFRob3VnaHRzIG9uIGhvdyBJIHNob3VsZCBw
cm9jZWVkPwpUaGUgb3V0cHV0IGZyb20gdGhlIGtlcm5lbCB3aGVuIHlvdSBsb2FkIHRoZSBkcml2
ZXJzIHNob3VsZCBiZSB2ZXJ5IApoZWxwZnVsLiBUbyBzZWUgaWYgdGhhdCBrZXJuZWwgcmVjb2du
aXplcyB0aGUgY2FyZC4KCgphdWYgaG9mZmVudGxpY2ggYmFsZCwKCkJlcm5pIHRoZSBDaGFvcyBv
ZiBXb29kcXVhcnRlcgoKRW1haWw6IHNoYWRvd2xvcmRAdXRhbmV0LmF0Cnd3dzogaHR0cDovL3d3
dy5seXNhdG9yLmxpdS5zZS9+Z3ovYmVybmhhcmQKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpNanBlZy11c2VycyBtYWlsaW5nIGxpc3QKTWpwZWctdXNl
cnNAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xp
c3RzL2xpc3RpbmZvL21qcGVnLXVzZXJzCg==
