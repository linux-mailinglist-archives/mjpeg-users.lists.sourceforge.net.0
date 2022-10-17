Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C764E6014A7
	for <lists+mjpeg-users@lfdr.de>; Mon, 17 Oct 2022 19:20:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1okTnA-0003o7-SJ;
	Mon, 17 Oct 2022 17:20:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <janos@andraslinux.jgklinux.jankom.net>)
 id 1okGHu-0003OT-WE for mjpeg-users@lists.sourceforge.net;
 Mon, 17 Oct 2022 02:55:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=poVx2OcKZbWoHh393mr7Bl7qJYVkEyYjk63d2bb6eS0=; b=JnP3VEGoe38dFYhBFTrgvK3usI
 Gg2SwCITASkMk63MlI2iRAvmDYIlze5ep3IX90GZcagtLSJu6qUBpn0hN9FQ/dEHnClMvB3cH1tJS
 nkrvuOWGUxzmmkhbNwabG4E92LLh1cf2Q+CLyTO5tKR4Ihz2UR/dDU/NFYJ1z9Vsp+rY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=poVx2OcKZbWoHh393mr7Bl7qJYVkEyYjk63d2bb6eS0=; b=bmt1fPs7Y5TAGZyzoCeEczKMuK
 oSt976/IyhP9qFIUlacHEYaohF9Gf719iBZP67J+7aF975n8R2xS3PIfXaTD/oQNl7TJ5RDzEPjX7
 7ogcK+T4fnhvQ2x4vEsI/Kro/MaapHSLKgUKeZDDHC+Vfvl+2IV/4T94TyWbQ4uNW84M=;
Received: from jgklinux.jankom.net ([198.74.55.83]
 helo=andraslinux.jgklinux.jankom.net)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1okGHs-0008Oh-CT for mjpeg-users@lists.sourceforge.net;
 Mon, 17 Oct 2022 02:55:34 +0000
Received: from andraslinux (jgklinux [10.8.0.1])
 by andraslinux.jgklinux.jankom.net (Postfix) with ESMTPS id 6E9E7400ED;
 Sun, 16 Oct 2022 22:55:25 -0400 (EDT)
Date: Sun, 16 Oct 2022 22:55:22 -0400
From: Janos G Komaromi <janos@andraslinux.jgklinux.jankom.net>
To: "Janos G. Komaromi" <janos@jankom.net>, <molletts@yahoo.com>,
 mjpeg-users@lists.sourceforge.net
Message-ID: <20221016225522.33775e6d@andraslinux>
In-Reply-To: <e194723a719d70a337182e6bfc286f3eca80cb9f.camel@jankom.net>
References: <bd339e0e-7d58-78ed-e66d-3bd6921fad81@yahoo.com>
 <e194723a719d70a337182e6bfc286f3eca80cb9f.camel@jankom.net>
Organization: fitlet_andraslinux_home
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Stephen, Thank you for your very useful comments. Yes,
 it is clear for me how to use ffmpeg for "topping and tailing" and will try
 that, and add it to my toolbox. Presenty I'm proceeding along Bernie's instruc
 [...] Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-Headers-End: 1okGHs-0008Oh-CT
X-Mailman-Approved-At: Mon, 17 Oct 2022 17:20:42 +0000
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

SGkgU3RlcGhlbiwKClRoYW5rIHlvdSBmb3IgeW91ciB2ZXJ5IHVzZWZ1bCBjb21tZW50cy4gWWVz
LCBpdCBpcyBjbGVhciBmb3IgbWUgaG93IHRvCnVzZSBmZm1wZWcgZm9yICJ0b3BwaW5nIGFuZCB0
YWlsaW5nIiBhbmQgd2lsbCB0cnkgdGhhdCwgYW5kIGFkZCBpdCB0byBteQp0b29sYm94LiBQcmVz
ZW50eSBJJ20gcHJvY2VlZGluZyBhbG9uZyBCZXJuaWUncyBpbnN0cnVjdGlvbnMgc28gdGhhdCBJ
CmNhbiBtYXN0ZXIgZ2xhdi4gRm9yIG5vdyBJJ20gbG9va2luZyBmb3Igc2ltcGxlLCBub3QgZmFu
Y3kgbWV0aG9kcywgYnV0CndpbGwgZXZlbnR1YWxseSBsb29rIGF0IHBpdGl2aSBhcyB3ZWxsLgoK
UmVnYXJkcywKCkphbm9zClAuUy4gc2VuZGluZyB0aGlzIGZyb20gbXkgbWFjaGluZSB3aGVyZSBJ
IGRvIHRoZSB2aWRlbyBzdHVmZi4gCgpPbiBTdW4sIDE2IE9jdCAyMDIyIDExOjI4OjU5IC0wNDAw
CiJKYW5vcyBHLiBLb21hcm9taSIgPGphbm9zQGphbmtvbS5uZXQ+IHdyb3RlOgoKPiAtLS0tLS0t
LSBGb3J3YXJkZWQgTWVzc2FnZSAtLS0tLS0tLQo+IEZyb206IFN0ZXBoZW4gTW9sbGV0dCA8bW9s
bGV0dHNAeWFob28uY29tPgo+IFRvOiBtanBlZy11c2Vyc0BsaXN0cy5zb3VyY2Vmb3JnZS5uZXQs
IGphbm9zQGphbmtvbS5uZXQKPiBTdWJqZWN0OiBSZTogW01qcGVnLXVzZXJzXSBnbGF2IGVycm9y
IG9wZW5pbmcgLmF2aSBmaWxlCj4gRGF0ZTogU3VuLCAxNiBPY3QgMjAyMiAxMDo0NjoxNCArMDEw
MAo+IE1haWxlcjogTW96aWxsYS81LjAgKFgxMTsgTGludXggeDg2XzY0OyBydjoxMDIuMCkgR2Vj
a28vMjAxMDAxMDEKPiBUaHVuZGVyYmlyZC8xMDIuMy4xCj4gCj4gSGkgSmFub3MsCj4gCj4gSSBr
bm93IEknbSBjb21pbmcgaW50byB0aGlzIGRpc2N1c3Npb24gYSBiaXQgbGF0ZSBidXQgd2hhdCBr
aW5kIG9mIAo+IGVkaXRpbmcgZG8geW91IG5lZWQgdG8gZG8gb24gdGhlIGZpbGVzPyBJZiBpdCdz
IGp1c3QgInRvcHBpbmcgYW5kIAo+IHRhaWxpbmciIC0gZXh0cmFjdGluZyBzcGVjaWZpYyB0aW1l
ZCBzZWN0aW9ucyBvdXQgb2YgdGhlIGNhcHR1cmUKPiBmaWxlcyBhbmQgZW5jb2RpbmcgdGhlbSB0
byBhbm90aGVyIGZpbGUgLSB0aGVuIHRoZSB3YXkgSSBkbyBpdCBpcwo+IHdpdGggZmZtcGVnIHVz
aW5nIHNvbWV0aGluZyBsaWtlOgo+IAo+ICQgZmZtcGVnIC1hY2N1cmF0ZV9zZWVrIC1zcyAkU1RB
UlRfVElNRV9TRUNTIC10ICREVVJBVElPTl9TRUNTIFwKPiAtaSAkU09VUkNFX0ZJTEUgLWM6diAk
VklERU9fQ09ERUMgJFZJREVPX0NPREVDX09QVElPTlMgLXZ0YWcgJEZPVVJDQyBcCj4gLWM6YSAk
QVVESU9fQ09ERUMgJEFVRElPX0NPREVDX09QVElPTlMgJE9VVFBVVF9GSUxFCj4gCj4gSG9wZWZ1
bGx5LCB0aGUgc2hlbGwgdmFyaWFibGVzIGFyZSBzZWxmLWV4cGxhbmF0b3J5LiBJIGNhbiBnZXQg
dGhlCj4gdGltZXMgCj4gYnkgc2ltcGx5IHBsYXlpbmcgdGhlIHZpZGVvIHdpdGggdmxjIG9yIHNp
bWlsYXIgYW5kIHVzaW5nIHRoZSBmaW5lIAo+IGFkanVzdG1lbnQgY29udHJvbHMgYW5kL29yIHJl
ZHVjZWQgcGxheSBzcGVlZC4gWW91IGNhbiBhZGQgaW4gZmlsdGVycwo+IGFzIAo+IG5lY2Vzc2Fy
eSB0byBzaGFycGVuL2Rlbm9pc2UvY3JvcC4KPiAKPiBJIHVzZWQgdG8gZG8gdGhpcyBxdWl0ZSBy
ZWd1bGFybHkgYW5kIGhhZCBhIHNjcmlwdCB0byBhdXRvbWF0ZSBpdCwKPiB3aGljaCAKPiBJIGR1
bXBlZCBvbnRvIGdpdGh1YiBhIGZldyB5ZWFycyBhZ28gYXQ6Cj4gaHR0cHM6Ly9naXRodWIuY29t
L21vbGxldHRzL2hhbmR5LXNjcmlwdHMvdHJlZS9tYXN0ZXIvY3V0LXZpZGVvCj4gaW4gY2FzZSBz
b21lb25lIHNvbWV3aGVyZSBmb3VuZCBpdCB1c2VmdWwuIEl0J3Mgc29tZSB5ZWFycyBzaW5jZSBJ
Cj4gbGFzdCB1c2VkIGl0IHNvIEkgZG9uJ3Qga25vdyB3aGV0aGVyIGl0IHN0aWxsIHdvcmtzLiBC
b3RoIGNvbXBvbmVudHMKPiAodGhlIG1haW4gc2NyaXB0IGFuZCB0aGUgaGVscGVyIHdoaWNoIGl0
IGNhbGxzKSBuZWVkIHRvIGJlIGluICRQQVRILgo+IAo+IEkndmUgbmV2ZXIgdHJpZWQgS2Rlbmxp
dmUgb3IgUGl0aXZpIHNvIEkgZG9uJ3Qga25vdyB3aGF0IHRoZXkncmUgbGlrZSAKPiBidXQgSSd2
ZSBzZWVuIHRoZW0gYm90aCBtZW50aW9uZWQgYXMgZ29vZC1lbm91Z2ggdmlkZW8gZWRpdG9ycyBm
b3IKPiBiYXNpYyAKPiB3b3JrLiBUaGV5J3ZlIGJvdGggZ290IGVidWlsZHMgaW4gdGhlIG1haW4g
R2VudG9vIHJlcG8gc28gaXQgbWF5IGJlIAo+IHdvcnRoIGdpdmluZyBvbmUgb3IgYm90aCBhIHRy
eS4gKEtkZW5saXZlIGlzIGxpa2VseSB0byBwdWxsIGluIGEgdG9uCj4gb2YgS0RFIGRlcGVuZGVu
Y2llcywgb2YgY291cnNlLikKPiAKPiBIb3BlIHRoaXMgaGVscHMsCj4gU3RlcGhlbgo+IAo+IE9u
IDE1LzEwLzIwMjIgMTY6MTQsIEphbm9zIEcgS29tYXJvbWkgd3JvdGU6Cj4gPiBQcm9ncmVzcyBy
ZXBvcnQgYWZ0ZXIgcmVhZGluZyB0aGUgRk0uCj4gPiAKPiA+IEV4ZWN1dGVkIHRoZSBmb2xsb3dp
ZyBjb21tYW5kczoKPiA+IG1wbGF5ZXIgLWFvIHBjbTpmYXN0OmZpbGU9YXVkaW8ud2F2IC12IG51
bGwgZXpjYXAwMDAxLmF2aQo+ID4gY2F0IGF1ZGlvLndhdiB8IG1wMmVuYyAtbyBhdWRpby5tcDIK
PiA+IG1wbGV4IGF1ZGlvLm1wMiB2aWRlb19zdmNkLm0ydiAtbyB0ZXN0Lm1wZwo+ID4gbXBsZXgg
LVYgLXIgMTc0MCBhdWRpby5tcDIgdmlkZW9fc3ZjZC5tMnYgLW8gdGVzdC5tcGcKPiA+IG1wbGF5
ZXIgdGVzdC5tcGcKPiA+IGdsYXYgdGVzdC5tcGcKPiA+IAo+ID4gUmVzdWx0czoKPiA+ICgxKSBt
cGxleCBpbiBlaXRoZXIgZm9ybXMgY29tcGxhaW5zIGFib3V0IHRvbyBtYW55IGZyYW1lcyBkcm9w
cGVkCj4gPiBhbmQgdGhlbiBxdWl0cy4KPiA+ICgyKSBtcGxheWVyIHBsYXlzIHRoZSBmaWxlLCBi
dXQgaXQgaXMgYSBsb25nIHZpZGVvLCBzbyBJIHN0b3BwZWQgQjQKPiA+IGNvbXBsZXRpb24uCj4g
PiAoMykgZ2xhdiBoYXMgdGhlIHNhbWUgZXJyb3IgYXMgaW4gbXkgaW5pdGlhbCBwb3N0Lgo+ID4g
Cj4gPiBTbyBJJ20gc3RpbGwgYXNraW5nIGZvciBoZWxwLiBUaGVyZSBpcyBubyB2aWRlbyBlZGl0
b3IgYXZhaWxhYmxlIGZvcgo+ID4gR2VudG9vLiBJIGxpa2UgZ2xhdiBhbmQgd291bGQgbGlrZSB0
byB1c2UgaXQgZm9yIG15IHZpZGVvIGZpbGVzCj4gPiB0cmFuc2ZlcnJlZCBmcm9tIG9sZCB2aWRl
byByZWNvcmRlciB0YXBlcy4KPiA+IAo+ID4gVGh4IC0gSmFub3MKPiA+IAo+ID4gCj4gPiBPbiBN
b24sIDEwIE9jdCAyMDIyIDE0OjUxOjExIC0wNDAwCj4gPiBKYW5vcyBHIEtvbWFyb21pIDxqYW5v
c0BhbmRyYXNsaW51eC5qZ2tsaW51eC5qYW5rb20ubmV0PiB3cm90ZToKPiA+ICAgCj4gPiA+IEhp
LAo+ID4gPiAKPiA+ID4gVGhhbmtzLCBCZXJuaWUuIE9uZSBzdGVwIGNsb3Nlci4KPiA+ID4gSSBy
ZWNvbXBpbGVkIG1wbGF5ZXIsIGFuZCBub3cgdGhlIGNvbW1hbmQgd29ya3MuIEkgbm93IGhhdmUg
YQo+ID4gPiAidmlkZW9fc3ZjZC5tMnYiIGZpbGUuIEl0IHBsYXlzIHdpdGggbXBsYXllciBidXQg
dGhlcmUgaXMgbm8KPiA+ID4gc291bmQuIFNvIHRoZSBuZXh0IHN0ZXA6IGhvdyBkbyBJIG1ha2Ug
YSBjb21wbGV0ZSBmaWxlLCB2aWRlbyBhbmQKPiA+ID4gc291bmQsIHRoYXQKPiA+ID4gZ2xhdiB3
aWxsIGJlIGFibGUgdG8gcHJvY2VzcyBmb3IgZWRpdGluZz8KPiA+ID4gCj4gPiA+IFJlZ2FyZHMs
Cj4gPiA+IAo+ID4gPiBKYW5vcwo+ID4gPiAKPiA+ID4gT24gU2F0LCA4IE9jdCAyMDIyIDE5OjE1
OjA0ICswMjAwCj4gPiA+IEJlcm5oYXJkIFByYXNjaGluZ2VyIDxiZXJuaGFyZEBncmllc2JhY2gu
YXQ+IHdyb3RlOgo+ID4gPiAgIAo+ID4gPiA+IEhhbGxvCj4gPiA+ID4gCj4gPiA+ID4gSmFub3Mg
RyBLb21hcm9taSB3cm90ZTogIAo+ID4gPiA+ID4gWWVzIEJlcm5pZSwgdGhhdCdzIGl0LiBNeSBk
aXN0cm8gaXMgR2VudG9vLCB3aGljaCBtZWFucyBpdCBpCj4gPiA+ID4gPiBjb21waWxlZCBmcm9t
IGEgR2VudG9vIHNvdXJjZS4gSSBiZWxpZXZlIEkgY2FuIHJlY29tcGlsZSBpdAo+ID4gPiA+ID4g
d2l0aAo+ID4gPiA+ID4gdGhlIHl1djRtcGVnIHVzZSBmbGFnLiBJJ2xsIHBvc3QgYW5vdGhlciBt
ZXNzYWdlIG9uY2UgSQo+ID4gPiA+ID4gc3VjY2VlZCB3aXRoIHRoZSBvcmlnaW5hbCBjb21tYW5k
IHNldCBqdXN0IHRvIGNsb3NlIHRoaXMKPiA+ID4gPiA+IHRocmVhZC4gVGhhbmsgeW91Cj4gPiA+
ID4gPiBmb3IgeW91ciBoZWxwIC0gSmFub3MgIAo+ID4gPiA+IE9uZSB0aGluZyBjb21lcyBpbnRv
IG15IG1pbmQsIGl0IG1pZ2h0IGJlIHRoYXQgdGhlIGNvbmZpZ3VyZQo+ID4gPiA+IHNjcmlwdAo+
ID4gPiA+IGNoZWNrcyBpZiB0aGUgbWpwZWd0b29scyBsaWJyYXJpZXMgYXJlIGF2YWlsYWJsZSBh
bmQgb25seQo+ID4gPiA+IGFjdGl2YXRlcwo+ID4gPiA+IGl0IGF1dG9tYXRpYyBpZiBpdCBmaW5k
cyB0aGVtIHRoZSBPcHRpb24gdGhhdCBmb3JjZSB5dXY0bXBlZyBpczoKPiA+ID4gPiAtLWVuYWJs
ZS15dXY0bXBlZy4gIAo+ID4gCj4gPiAKPiA+ICAgCgotLSAKc2VudCBmcm9tIEphbm9zJyBIaWxs
YXJ5IHNlcnZlciBhbmQKTk9UIGZyb20gaVBob25lIG5vciBHb29nbGUKZmFjZWJvb2ssIGluc3Rh
Z3JhbSwgdmliZXIsIHNuYXBjaGF0LCB0d2l0dGVyLCB0aWstdG9rLCBldGMuCi0gbmVpdGhlciBv
ZiBsaWtlIHRob3NlLgpodHRwczovL2FuZHJhc2xpbnV4Lmpna2xpbnV4LmphbmtvbS5uZXQvCuKA
iwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk1qcGVn
LXVzZXJzIG1haWxpbmcgbGlzdApNanBlZy11c2Vyc0BsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0
cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vbWpwZWctdXNlcnMK
