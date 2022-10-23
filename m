Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AC5A060B1A7
	for <lists+mjpeg-users@lfdr.de>; Mon, 24 Oct 2022 18:30:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1on0Lb-0001Ve-8o;
	Mon, 24 Oct 2022 16:30:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <janos@andraslinux.jgklinux.jankom.net>)
 id 1omjva-0000LM-K6 for mjpeg-users@lists.sourceforge.net;
 Sun, 23 Oct 2022 22:58:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iL8ljg2PkxvD0jl/Y/pxCw5Pqj5GYSk2f/lGuSj2Yhw=; b=SkGvandgBBnAiCneUOMxIrTQGY
 7RWDlWgBRmtN2g4YZSW3cDYHkH2Xzy2Op9XNOBfQa+/h5o/WC4vizenHkI/Y8yvzS6qSKQaUBBk9L
 v8R5iipFBkSWo8KsatAcIQAHjnhXPMjHIhykAPxhT0Bs9W5QkGN/lOCeRQhEcIu8jflM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iL8ljg2PkxvD0jl/Y/pxCw5Pqj5GYSk2f/lGuSj2Yhw=; b=Jhnq3h/aCodi5nqVh3P2QAimkC
 buHTDWip8HbIS0qw2FB3UaL7dxyKpg5S5uAkPpYPatv7FUnntLSJpUlzYNhAM2VG2mN8dA0K5MDdD
 G2P8qtTNLgsNW6XRKiVP7PuYHxg8gbmE/MKGgWdLo+ogDC/Jh5cIPO46okfgEh8gsD8I=;
Received: from jgklinux.jankom.net ([198.74.55.83]
 helo=andraslinux.jgklinux.jankom.net)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1omjvY-0003ds-VC for mjpeg-users@lists.sourceforge.net;
 Sun, 23 Oct 2022 22:58:45 +0000
Received: from andraslinux (jgklinux [10.8.0.1])
 by andraslinux.jgklinux.jankom.net (Postfix) with ESMTPS id 9528740E49;
 Sun, 23 Oct 2022 18:58:35 -0400 (EDT)
Date: Sun, 23 Oct 2022 18:58:29 -0400
From: Janos G Komaromi <janos@andraslinux.jgklinux.jankom.net>
To: Bernhard Praschinger <bernhard@griesbach.at>
Message-ID: <20221023185829.289dd0bb@andraslinux>
In-Reply-To: <6a1c6526-dadb-81a5-d859-e1f8bfca9a39@griesbach.at>
References: <1f684654-8907-655c-b8c0-ed5bb8a15d82@griesbach.at>
 <9f4c6922fbd9940e07875116618012df8a133c6a.camel@jankom.net>
 <20221006092153.1d76bbd3@andraslinux>
 <74c98e9f-ac31-e318-8d53-f62c7705fdab@griesbach.at>
 <20221008095345.23b41f1a@andraslinux>
 <2a17fa6e-a342-1cb9-f75c-03106b139078@griesbach.at>
 <20221010145111.65e78e39@andraslinux>
 <20221015111424.55e183bf@andraslinux>
 <adbcae19-e903-fa75-359b-72f281f82d86@griesbach.at>
 <20221017145851.19351786@andraslinux>
 <346fe3b1-e2ef-1384-d819-e3a892a2a235@griesbach.at>
 <20221018152218.0b680513@andraslinux>
 <20221019121913.008f7f9d@andraslinux>
 <c7673683-b952-979c-d167-f02070b896b0@griesbach.at>
 <b2717eb91f342c02257b644730c43ef436c6391b.camel@jankom.net>
 <20221020110308.2e94f862@andraslinux>
 <6a1c6526-dadb-81a5-d859-e1f8bfca9a39@griesbach.at>
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
 Content preview:  Hi Bernie, I did a little research and math. (1) The original
 video was recorded with a "Canovision 8" camcorder purchased in the mid-80s.
 The spec says the CCD is 1/3 inch with 320k pixels. This particular camera
 was made for the US (American) [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: jankom.net]
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
X-Headers-End: 1omjvY-0003ds-VC
X-Mailman-Approved-At: Mon, 24 Oct 2022 16:30:41 +0000
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

SGkgQmVybmllLAoKSSBkaWQgYSBsaXR0bGUgcmVzZWFyY2ggYW5kIG1hdGguCgooMSkgVGhlIG9y
aWdpbmFsIHZpZGVvIHdhcyByZWNvcmRlZCB3aXRoIGEgIkNhbm92aXNpb24gOCIgY2FtY29yZGVy
CnB1cmNoYXNlZCBpbiB0aGUgbWlkLTgwcy4gVGhlIHNwZWMgc2F5cyB0aGUgQ0NEIGlzIDEvMyBp
bmNoIHdpdGggMzIwayBwaXhlbHMuIFRoaXMgcGFydGljdWxhciBjYW1lcmEgd2FzIG1hZGUgZm9y
IHRoZSBVUyAoQW1lcmljYW4pCm1hcmtldCwgYW5kIGl0IGhhcyBhIHNpbXBsZSBSQ0Egb25lIHZp
ZG8gYW5kIG9uZSBSQ0EgbW9ubyBvdXRwdXRzLgpDb25uZWN0aW5nIGl0IHRvIGFuIG9sZCBUViBz
ZXQgKE5UU0MpIGl0IHByb3ZpZGVkIGEgZGVjZW50IHZpZGVvIHBsYXkuCk15IGRpZ2l0YXppbmcg
ZGV2aWNlIChJT04gVmlkZW8gMiBTRCkgaGFzIG9uZSBSQ0EgdmlkZW8gaW5wdXQgYW5kIHR3bwpS
Q0Egc3RlcmVvIGlucHV0cyAoSSB1c2VkIGFuIFJDQSAiWSIgY29ubmVjdG9yIHRvIHByb3ZpZGUg
ZmFrZSBzdGVyZW8KaW5wdXQgdG8gdGhlIGRldmljZSkuIFRoZSBlemNhcDAwMDEuYXZpIGZpbGUg
Y3JlYXRlZCBieSB0aGUgZGV2aWNlCmRvZXMgaW5kZWVkIGhhdmUgdGhlIHN0cmFuZ2UgODAweDU5
MiByZXNvbHV0aW9uLiBPSywgYnV0IGl0IGlzIGFsbW9zdAo0OjMgb3IgODAwOjYwMC4KCigyKSBP
bmUgb2YgdGhlIHN0YW5kYXJkIEFzcGVjdCBSYXRpb3Mgb2YgRGlnaXRhbCBWaWRlb3MgaXMgNC8z
LiBJZiB0aGUKQ2Fub3Zpc2lvbiBjYW1lcmEgaGFzIDMyMGsgcGl4ZWxzIHRoZW4gZm9yIGEgNC8z
IEFSIG9mIHRoZSBtaWQgODBzIFRWCnNldHMgdGhlIHZpZGVvIG91dHB1dCBvZiB0aGUgY2FtZXJh
IG11c3QgaGF2ZSA2OTIuODJ4NDYxLjg4CnBpeGVsIG91dHB1dC4gQXBwYXJlbnRseSB0aGUgSU9O
IGRldmljZSBjb252ZXJ0ZWQgaXQgdG8gODAweDU5Mi4gSQpkb24ndCBrbm93IGhvdyBhbmQgd2h5
LCBidXQgdGhhdCdzIE9LIFRoZSBkaXNjcmVwYW5jeSBiZXR3ZWVuIDYwMCBhbmQKNTkyIG11c3Qg
YmUgdG8gdGhlIHpvb21pbmcgYWxnb3JpdGhtIGRlc2lnbmVkIGludG8gdGhlIElPTiBzb2Z0d2Fy
ZS4gQXMKZmFyIGFzIHRoZSBjb21wcmVzc2lvbiBtZXRob2RzICh2YXJpb3VzIGF1ZGlvIGFuZCB2
aWRlbyBtcD8/PywgZXRjLikgYXJlCmNvbmNlcm5lZCAtIGFnYWluLCBpdCBpcyBkZXNpZ25lZCBp
bnRvIHRoZSByZXN1bHRpbmcgZGlnaXRhbCBmaWxlCmZvcm1hdCBvZiBlemNhcG5ubm4uYXZpLgoK
KDMpIEkgZGVjaWRlZCB0byB1c2UgZmZtcGVnIHRvIHRyYW5zY29kZSB0aGUgZXpjYXAuLi4gZmls
ZToKZmZtcGVnIC1pIGV6Y2FwMDAwMS5hdmkgLXZjb2RlYyBtanBlZyAtYWNvZGVjIHBjbV9zMTZs
ZSB4LmF2aQphbmQgdGhlbiB1c2UgZ2xhdiBmb3IgZWRpdGluZyAoaGFkIHRvIHVzZSAtYSAwIGJl
Y2F1c2Ugb2YgdGhlIGRzcCBpc3N1ZQotbGF0ZXIpLCBhbmQgSVQgV09SS0VEISBUaGUgdmlkZW8g
bG9va3MgZ29vZCwgZ29vZCBhc3BlY3QgcmF0aW8gKG5vdApzcXVlZXplZCBob3Jpem9udGFsbHkg
b3IgdmVydGljYWxseSkuCgpJIHRoaW5rLCBJJ20gYWxsIHNldCBmb3Igbm93LiBUaGlzIHdhcyBh
IGdvb2QgbGVhcm5pbmcgZXhwZXJpZW5jZS4KClRoYW5rcyBhZ2FpbiwKCkphbm9zCgoKT24gU2F0
LCAyMiBPY3QgMjAyMiAxMTozNjowMyArMDIwMApCZXJuaGFyZCBQcmFzY2hpbmdlciA8YmVybmhh
cmRAZ3JpZXNiYWNoLmF0PiB3cm90ZToKCj4gSGFsbG8sCj4gCj4gSSBkaWdnZWQgaXQgdXAgZnJv
bSBhIG9sZGVyIG1haWw6Cj4gU3RyZWFtICMwOjA6IFZpZGVvOiBtcGVnNCAoQWR2YW5jZWQgU2lt
cGxlIFByb2ZpbGUpIChYVklEIC8KPiAweDQ0NDk1NjU4KSwKPiB5dXY0MjBwLCA4MDB4NTkyIFtT
QVIgMToxIERBUiA1MDozN10sIDg5NiBrYi9zLCAzMCBmcHMsIDMwIHRiciwgMzAKPiB0Ym4sCj4g
Cj4gSSdtIG5vdCBzdXJlIHdoYXQga2luZCBzb3VyY2UgeW91IGhhdmU6IGJlY2F1c2UgdGhlIHNp
emUgaXMgd2l0aAo+IDgwMHg1OTIgYSBsaXR0bGUgYml0IHN0cmFuZ2UuIFRoYXQgaXMgbmVpdGhl
ciBQQUwgbm90IE5UU0Mgb3IgU0VDQU0KPiAKPiBJZiB5b3Ugd2FudCB0byBlbmNvZGUgdGhlIHJl
c3VsdCBmb3IgdmlkZW8gcGxlYXNlIHRyeSBhIGNvbW1hbmQgbGlrZSAKPiB0aGF0IGFzc3VtaW5n
IHlvdSBoYXZlIGEgNDozIHNvdXJjZToKPiAgPiBjYXQgc3RyZWFtLnl1diDilIIgeXV2c2NhbGVy
IC1PIERWRCB8IHl1djJsYXYgLUkgMCAtcSA5MCAtZiBxIC1vICAKPiB2aWRlb193aXRob3V0X3Nv
dW5kLnF0ICYKPiAKPiBEZXBlbmRpbmcgb24gdGhlIHNvdXJjZSB2aWRlbyB5b3UgbWlnaHQgbmVl
ZCB0byBhZGQgdGhlIC1uIHAvcy9uIAo+IHA9cGFsLHM9c2VjYW0sbj1udHNjIHN3aXRjaCB0byB5
dXZzY2FsZXIuCj4gCj4gSWYgaXQgbG9va2VzIHN0cmFuZ2UgcGxlYXNlIGFkZCB0aGUgb3V0cHV0
IGZyb20gdGhlIGNvbW1hbmRzIHRvIHRoZSAKPiBtYWlsLiBBZGQgdG8geXV2c2NhbGVyIGFuZCB5
dXYybGF2OiAtdiAyIHNvIHRoZSBvdXRwdXQgaXMgbW9yZQo+IHZlcmJvc2UuCj4gCj4gCj4gCj4g
SmFub3MgRyBLb21hcm9taSB3cm90ZToKPiA+IFNvcnJ5IHRvIGJvdGhlciB0aGlzIGNvbW11bml0
eSBhZ2FpbiB3aXRoIGEgZm9sbG93IHVwIHF1ZXN0aW9uOgo+ID4gCj4gPiBOb3cgdGhhdCBnbGF2
IHdvcmtzIEkgaGF2ZSB2aXN1YWxseSBub3RpY2VkIGEgZGlmZmVyZW5jZSBiZXR3ZWVuIHRoZQo+
ID4gb3JpZ2luYWwgKGNvbXByZXNzZWQpIGZpbGUgYW5kIHRoZSBnbGF2LWNvbXBhdGlibGUgKGh1
Z2UpIGZpbGUuIEluCj4gPiBvcmRlciB0byBjb25maXJtIG15IHN1c3BpY2lvbiBJIGlzc3VlZCB0
aGUgY29tbWFuZDoKPiA+IGZmcHJvYmUgLXYgZXJyb3IgLXNob3dfZm9ybWF0IC1zaG93X3N0cmVh
bXMgPGJvdGggdmVyc2lvbnM+Cj4gPiBhbmQgY29tcGFyZWQgdGhlIG91dHB1dHMgLSBzZWUgYXR0
YWNoZWQgZGlmZi50eHQgZmlsZS4KPiA+IAo+ID4gSXQgaXMgb2J2aW91cyB0aGF0Cj4gPiAoYSkg
d2lkdGggYW5kIGhlaWdodCByYXRpbyBpcyBjaGFuZ2VkIChsaW5lcyAxMi0xMyB2cyAxOS0yMCk7
Cj4gPiAoYikgeXV2NDIwcCB2cyB5dXZqNDIycCAobGluZXMgMjYgdnMgMzMpIC0gbWF5YmUgbm90
IHJlbGV2YW50IGZvcgo+ID4gdmlzdWFsIGFwcGVhcmFuY2U7Cj4gPiAoYykgdGltZSBiYXNlIChs
aW5lcyA0MiB2cyA0NCkgLSB0aGlzIGV4cGxhaW5zIHRoZSBibG9hdGVkIHNpemUsIGRvCj4gPiB3
ZSBuZWVkIHRoaXMsIGFuZCBpZiBub3QsIGhvdyB0byBsZWF2ZSBpdCBhcyBvcmlnaW5hbD8KPiA+
IAo+ID4gT2J2aW91c2x5LCBvbmx5IGl0ZW0gKGEpIGlzIGltcG9ydGFudCwgdGhlIHJlc3QgaXMg
bWFpbmx5IGZvciBteQo+ID4gY3VyaW9zaXR5IGFuZCBiZXR0ZXIgdW5kZXJzdGFuZGluZyBvZiB0
aGUgZGlnaXRhbCB2aWRlbyBjb25jZXB0cy4KPiA+IAo+ID4gSmFub3MKPiA+IAo+ID4gCj4gPiBP
biBXZWQsIDE5IE9jdCAyMDIyIDE0OjM2OjU4IC0wNDAwCj4gPiAiSmFub3MgRy4gS29tYXJvbWki
IDxqYW5vc0BqYW5rb20ubmV0PiB3cm90ZToKPiA+ICAgCj4gPj4gVGhhbmtzLiBZZXMsIGdsYXYg
d29ya3Mgd2l0aCAtYSAwLgo+ID4+Cj4gPj4gQXMgZmFyIGFzIC9kZXYvZHNwIGlzIGNvbmNlcm5l
ZCBJIG1heSBoYXZlIHRvIHJlY29tcGlsZSBrZXJuZWwgdG8KPiA+PiBpbmNsdWRlIG9zcyBkcml2
ZXJzLiBJJ2xsIGtlZXAgb24gd29ya2luZyB0aGUgc291bmQgcGFydCwgYnV0IGZvcgo+ID4+IG15
IG1vc3QgaW1tZWRpYXRlIGVkaXRpbmcgdGFza3Mgc291bmQgb3V0cHV0IGlzIG5vdCB0aGF0IGlt
cG9ydGFudC4KPiA+Pgo+ID4+IFRoYW5rcyBhZ2FpbiBmb3IgYWxsIHlvdSBzdXBwb3J0IGFuZCBh
bHNvIGZvciBTdGVwaGVuJ3MgaWRlYSBvZgo+ID4+IGZmbXBlZyBtZXRob2Qgb2Ygc2ltbXBseSBj
dXR0aW5nIG91dCBhIHNlY3Rpb24gb2YgdGhlIG9yaWdpbmFsCj4gPj4gKGNvbXByZXNzZWQpIC5h
dmkgZmlsZS4KPiA+Pgo+ID4+IEJlc3QgdG8gYWxsLAo+ID4+Cj4gPj4gSmFub3MKPiA+PiBQUyAt
IHBsZWFzZSBhZGQgbXkgb3RoZXIgZW1haWwgYWRkcmVzcwo+ID4+IGphbm9zQGFuZHJhc2xpbnV4
Lmpna2xpbnV4LmphbmtvbS5uZXQKPiA+PiB0byBtZW1iZXJzIG9mIHlvdXIgbWFpbGluZyBsaXN0
Lgo+ID4+ICAKPiAKCgoKLS0gCnNlbnQgZnJvbSBKYW5vcycgSGlsbGFyeSBzZXJ2ZXIgYW5kCk5P
VCBmcm9tIGlQaG9uZSBub3IgR29vZ2xlCmZhY2Vib29rLCBpbnN0YWdyYW0sIHZpYmVyLCBzbmFw
Y2hhdCwgdHdpdHRlciwgdGlrLXRvaywgZXRjLgotIG5laXRoZXIgb2YgbGlrZSB0aG9zZS4KaHR0
cHM6Ly9hbmRyYXNsaW51eC5qZ2tsaW51eC5qYW5rb20ubmV0LwrigIsKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpNanBlZy11c2VycyBtYWlsaW5nIGxp
c3QKTWpwZWctdXNlcnNAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNl
Zm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL21qcGVnLXVzZXJzCg==
