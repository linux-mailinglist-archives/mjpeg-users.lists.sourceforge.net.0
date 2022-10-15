Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E7C25FFD38
	for <lists+mjpeg-users@lfdr.de>; Sun, 16 Oct 2022 06:10:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1ojuyz-0002v7-67;
	Sun, 16 Oct 2022 04:10:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <janos@andraslinux.jgklinux.jankom.net>)
 id 1ojis8-00050k-Iu for mjpeg-users@lists.sourceforge.net;
 Sat, 15 Oct 2022 15:14:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+/nUKqccewi0hYUbfymEZl5gw3i59sjbFmMPQACTcnc=; b=UO/5ylLnK/aVVSfUZYCqbWjBoc
 kjkgmJX4wuBBcFdQf8sc9vRDpaD91/xZgA70lDc5G0buSsN3XW0FqDnwmLPeO4Bl8MI6G0jINWMF/
 L0W2LttXwkTUTnTu6Y5tdEXtlZjQ0+CuHYTtA5uNhXqrKU/h72DcO/4cWsja0Kszqn1I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+/nUKqccewi0hYUbfymEZl5gw3i59sjbFmMPQACTcnc=; b=U1D38JF7Sp8i9ie/9EjcfcQQ3t
 nx9xBAjLAB9ahp3Sz/v7X9nCnkVzn4Y+uQuIgExphIEC4YBX4HvJ7olYlM8ERTSqga7oM4ej97nnE
 eYdJN+TV2VOXruVs9qYdAepNQrRUwoFZG3kUgiEX0JTzBxCnCR1mBNmuzcBRRaI417Lg=;
Received: from jgklinux.jankom.net ([198.74.55.83]
 helo=andraslinux.jgklinux.jankom.net)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1ojis6-0001tQ-Pd for mjpeg-users@lists.sourceforge.net;
 Sat, 15 Oct 2022 15:14:44 +0000
Received: from andraslinux (jgklinux [10.8.0.1])
 by andraslinux.jgklinux.jankom.net (Postfix) with ESMTPS id 8B5CF42855;
 Sat, 15 Oct 2022 11:14:32 -0400 (EDT)
Date: Sat, 15 Oct 2022 11:14:24 -0400
From: Janos G Komaromi <janos@andraslinux.jgklinux.jankom.net>
To: Bernhard Praschinger <bernhard@griesbach.at>
Message-ID: <20221015111424.55e183bf@andraslinux>
In-Reply-To: <20221010145111.65e78e39@andraslinux>
References: <1f684654-8907-655c-b8c0-ed5bb8a15d82@griesbach.at>
 <9f4c6922fbd9940e07875116618012df8a133c6a.camel@jankom.net>
 <20221006092153.1d76bbd3@andraslinux>
 <74c98e9f-ac31-e318-8d53-f62c7705fdab@griesbach.at>
 <20221008095345.23b41f1a@andraslinux>
 <2a17fa6e-a342-1cb9-f75c-03106b139078@griesbach.at>
 <20221010145111.65e78e39@andraslinux>
Organization: fitlet_andraslinux_home
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Progress report after reading the FM. Executed the followig
 commands: mplayer -ao pcm:fast:file=audio.wav -v null ezcap0001.avi cat
 audio.wav
 | mp2enc -o audio.mp2 mplex audio.mp2 video_svcd.m2v -o test.mpg mplex -V
 -r 1740 audio.mp2 vide [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
X-Headers-End: 1ojis6-0001tQ-Pd
X-Mailman-Approved-At: Sun, 16 Oct 2022 04:10:36 +0000
Subject: Re: [Mjpeg-users] glav error opening .avi file
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
Cc: mjpeg-users@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

UHJvZ3Jlc3MgcmVwb3J0IGFmdGVyIHJlYWRpbmcgdGhlIEZNLgoKRXhlY3V0ZWQgdGhlIGZvbGxv
d2lnIGNvbW1hbmRzOgptcGxheWVyIC1hbyBwY206ZmFzdDpmaWxlPWF1ZGlvLndhdiAtdiBudWxs
IGV6Y2FwMDAwMS5hdmkgCmNhdCBhdWRpby53YXYgfCBtcDJlbmMgLW8gYXVkaW8ubXAyCm1wbGV4
IGF1ZGlvLm1wMiB2aWRlb19zdmNkLm0ydiAtbyB0ZXN0Lm1wZwptcGxleCAtViAtciAxNzQwIGF1
ZGlvLm1wMiB2aWRlb19zdmNkLm0ydiAtbyB0ZXN0Lm1wZwptcGxheWVyIHRlc3QubXBnIApnbGF2
IHRlc3QubXBnIAoKUmVzdWx0czoKKDEpIG1wbGV4IGluIGVpdGhlciBmb3JtcyBjb21wbGFpbnMg
YWJvdXQgdG9vIG1hbnkgZnJhbWVzIGRyb3BwZWQgYW5kCnRoZW4gcXVpdHMuCigyKSBtcGxheWVy
IHBsYXlzIHRoZSBmaWxlLCBidXQgaXQgaXMgYSBsb25nIHZpZGVvLCBzbyBJIHN0b3BwZWQgQjQK
Y29tcGxldGlvbi4KKDMpIGdsYXYgaGFzIHRoZSBzYW1lIGVycm9yIGFzIGluIG15IGluaXRpYWwg
cG9zdC4KClNvIEknbSBzdGlsbCBhc2tpbmcgZm9yIGhlbHAuIFRoZXJlIGlzIG5vIHZpZGVvIGVk
aXRvciBhdmFpbGFibGUgZm9yCkdlbnRvby4gSSBsaWtlIGdsYXYgYW5kIHdvdWxkIGxpa2UgdG8g
dXNlIGl0IGZvciBteSB2aWRlbyBmaWxlcwp0cmFuc2ZlcnJlZCBmcm9tIG9sZCB2aWRlbyByZWNv
cmRlciB0YXBlcy4KClRoeCAtIEphbm9zCgoKT24gTW9uLCAxMCBPY3QgMjAyMiAxNDo1MToxMSAt
MDQwMApKYW5vcyBHIEtvbWFyb21pIDxqYW5vc0BhbmRyYXNsaW51eC5qZ2tsaW51eC5qYW5rb20u
bmV0PiB3cm90ZToKCj4gSGksCj4gCj4gVGhhbmtzLCBCZXJuaWUuIE9uZSBzdGVwIGNsb3Nlci4K
PiBJIHJlY29tcGlsZWQgbXBsYXllciwgYW5kIG5vdyB0aGUgY29tbWFuZCB3b3Jrcy4gSSBub3cg
aGF2ZSBhCj4gInZpZGVvX3N2Y2QubTJ2IiBmaWxlLiBJdCBwbGF5cyB3aXRoIG1wbGF5ZXIgYnV0
IHRoZXJlIGlzIG5vIHNvdW5kLgo+IFNvIHRoZSBuZXh0IHN0ZXA6IGhvdyBkbyBJIG1ha2UgYSBj
b21wbGV0ZSBmaWxlLCB2aWRlbyBhbmQgc291bmQsIHRoYXQKPiBnbGF2IHdpbGwgYmUgYWJsZSB0
byBwcm9jZXNzIGZvciBlZGl0aW5nPwo+IAo+IFJlZ2FyZHMsCj4gCj4gSmFub3MKPiAKPiBPbiBT
YXQsIDggT2N0IDIwMjIgMTk6MTU6MDQgKzAyMDAKPiBCZXJuaGFyZCBQcmFzY2hpbmdlciA8YmVy
bmhhcmRAZ3JpZXNiYWNoLmF0PiB3cm90ZToKPiAKPiA+IEhhbGxvCj4gPiAKPiA+IEphbm9zIEcg
S29tYXJvbWkgd3JvdGU6ICAKPiA+ID4gWWVzIEJlcm5pZSwgdGhhdCdzIGl0LiBNeSBkaXN0cm8g
aXMgR2VudG9vLCB3aGljaCBtZWFucyBpdCBpCj4gPiA+IGNvbXBpbGVkIGZyb20gYSBHZW50b28g
c291cmNlLiBJIGJlbGlldmUgSSBjYW4gcmVjb21waWxlIGl0IHdpdGgKPiA+ID4gdGhlIHl1djRt
cGVnIHVzZSBmbGFnLiBJJ2xsIHBvc3QgYW5vdGhlciBtZXNzYWdlIG9uY2UgSSBzdWNjZWVkCj4g
PiA+IHdpdGggdGhlIG9yaWdpbmFsIGNvbW1hbmQgc2V0IGp1c3QgdG8gY2xvc2UgdGhpcyB0aHJl
YWQuIFRoYW5rIHlvdQo+ID4gPiBmb3IgeW91ciBoZWxwIC0gSmFub3MgICAgCj4gPiBPbmUgdGhp
bmcgY29tZXMgaW50byBteSBtaW5kLCBpdCBtaWdodCBiZSB0aGF0IHRoZSBjb25maWd1cmUgc2Ny
aXB0IAo+ID4gY2hlY2tzIGlmIHRoZSBtanBlZ3Rvb2xzIGxpYnJhcmllcyBhcmUgYXZhaWxhYmxl
IGFuZCBvbmx5IGFjdGl2YXRlcwo+ID4gaXQgYXV0b21hdGljIGlmIGl0IGZpbmRzIHRoZW0gdGhl
IE9wdGlvbiB0aGF0IGZvcmNlIHl1djRtcGVnIGlzOiAKPiA+IC0tZW5hYmxlLXl1djRtcGVnLiAg
CgoKCi0tIApzZW50IGZyb20gSmFub3MnIEhpbGxhcnkgc2VydmVyIGFuZApOT1QgZnJvbSBpUGhv
bmUgbm9yIEdvb2dsZQpmYWNlYm9vaywgaW5zdGFncmFtLCB2aWJlciwgc25hcGNoYXQsIHR3aXR0
ZXIsIHRpay10b2ssIGV0Yy4KLSBuZWl0aGVyIG9mIGxpa2UgdGhvc2UuCmh0dHBzOi8vYW5kcmFz
bGludXguamdrbGludXguamFua29tLm5ldC8K4oCLCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTWpwZWctdXNlcnMgbWFpbGluZyBsaXN0Ck1qcGVnLXVz
ZXJzQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9s
aXN0cy9saXN0aW5mby9tanBlZy11c2Vycwo=
