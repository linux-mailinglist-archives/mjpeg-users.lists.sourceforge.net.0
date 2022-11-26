Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DE8B563AE13
	for <lists+mjpeg-users@lfdr.de>; Mon, 28 Nov 2022 17:47:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1ozhHf-0003Qh-Li;
	Mon, 28 Nov 2022 16:47:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <janos@andraslinux.jgklinux.jankom.net>)
 id 1oz3DI-0003KV-1h for mjpeg-users@lists.sourceforge.net;
 Sat, 26 Nov 2022 21:59:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1o3mBgAHYV/0CZtH1zC+Mb0MijYk5iVpVQYl0bZeeJI=; b=et1ptTeXz04y4D4x4zx1jo6Pgn
 xtSw4PfJGN6EA9MO4KJ96w+8qs48kkcTrm2GtTM9jRN/4b5JQLmO5qnt+i2kQc5xTajSSqJuhXXCb
 bhIU5l3nyuAzFUO4xjAxfzsk6Z2MRrTVqJDwYr47/K1AkVL+jFeDoEWhFOBmACAvGipY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1o3mBgAHYV/0CZtH1zC+Mb0MijYk5iVpVQYl0bZeeJI=; b=CKIQyixN9n3LlTN18dnxgyawVE
 guXcY3drIQrVJJksMMQmtQnv/5k8pGAq+faIGlfaQAjcN1I0qtj6zqNN+TXkzymqyxienUMdP4OHD
 NIeRuO/1asIJFiDqPHrdUFh+rx8bXb7tUyZT36ceb+M2rRstmZ2x4prhZxPVSCCXDPSw=;
Received: from jgklinux.jankom.net ([198.74.55.83]
 helo=andraslinux.jgklinux.jankom.net)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1oz3DE-00ErfQ-MT for mjpeg-users@lists.sourceforge.net;
 Sat, 26 Nov 2022 21:59:56 +0000
Received: from andraslinux (jgklinux [10.8.0.1])
 by andraslinux.jgklinux.jankom.net (Postfix) with ESMTPS id 4BB24403FF;
 Sat, 26 Nov 2022 16:59:39 -0500 (EST)
Date: Sat, 26 Nov 2022 16:59:31 -0500
From: Janos G Komaromi <janos@andraslinux.jgklinux.jankom.net>
To: Bernhard Praschinger <bernhard@griesbach.at>
Message-ID: <20221126165931.41e9c15f@andraslinux>
In-Reply-To: <6c25a2a5-5856-539d-5717-71dc5c430be0@griesbach.at>
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
 <20221023185829.289dd0bb@andraslinux>
 <d8370cfaaf94363ec31308fd504b394bc1987489.camel@jankom.net>
 <6c25a2a5-5856-539d-5717-71dc5c430be0@griesbach.at>
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
 Content preview:  I'm closing this thread for now. Thank you,
 Bernie and Stephen, 
 for your ideas and guidance. In summary: The OS on my Fitlet2 computer is
 Gentoo, Desktop stable. It has Alsa for sound. After trying to resolve the
 Alsa / OSS issue with help from Gentoo Forum community I found a solution
 to the simple video editing task: avidemux. 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
X-Headers-End: 1oz3DE-00ErfQ-MT
X-Mailman-Approved-At: Mon, 28 Nov 2022 16:47:05 +0000
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

SSdtIGNsb3NpbmcgdGhpcyB0aHJlYWQgZm9yIG5vdy4gVGhhbmsgeW91LCBCZXJuaWUgYW5kIFN0
ZXBoZW4sIGZvciB5b3VyCmlkZWFzIGFuZCBndWlkYW5jZS4gSW4gc3VtbWFyeToKClRoZSBPUyBv
biBteSBGaXRsZXQyIGNvbXB1dGVyIGlzIEdlbnRvbywgRGVza3RvcCBzdGFibGUuIEl0IGhhcyBB
bHNhCmZvciBzb3VuZC4KCkFmdGVyIHRyeWluZyB0byByZXNvbHZlIHRoZSBBbHNhIC8gT1NTIGlz
c3VlIHdpdGggaGVscCBmcm9tIEdlbnRvbyBGb3J1bQpjb21tdW5pdHkgSSBmb3VuZCBhIHNvbHV0
aW9uIHRvIHRoZSBzaW1wbGUgdmlkZW8gZWRpdGluZyB0YXNrOiBhdmlkZW11eC4KCkJlc3QgcmVn
YXJkcyB0byB5b3UgYWxsLAoKSmFub3MKCgpPbiBTYXQsIDE5IE5vdiAyMDIyIDA2OjU3OjAzICsw
MTAwCkJlcm5oYXJkIFByYXNjaGluZ2VyIDxiZXJuaGFyZEBncmllc2JhY2guYXQ+IHdyb3RlOgoK
PiBjZCBkb3dIYWxsbywKPiAKPiBKYW5vcyBHLiBLb21hcm9taSB3cm90ZToKPiA+IFNvcnJ5LCBJ
J20gYmFjayBhZ2Fpbi4gSSBzdGlsbCB3b3VsZCBsaWtlIHRvIGRvIG15IHZpZGVvIGVkaXRpbmcK
PiA+IHdpdGggZ2xhdiBhbmQgc291bmQuIENvbnNlcXVlbnRseSBJIGRpZCBhIGxvdCBvZiByZXNl
YXJjaCBhbmQKPiA+IEdlbnRvbyBGb3J1bSBtZXNzYWdlIGV4Y2hhbmdlcyBhYm91dCBhbHNhIGFu
ZCBPU1MuIEkgdHJpZWQgdG8KPiA+IHJlc29sdmUgdGhlIGlzc3VlIHdpdGhvdXQgdHVybmluZyB0
byB0aGlzIG1haWxpbmcgbGlzdCBjb21tdW5pdHkuCj4gPiBIZXJlIGlzIHRoZSBsYXRlc3Qgc2l0
dWF0aW9uLCBhbmQgbm93IEknbSBhc2tpbmcgZm9yIGNvbW1lbnRzLAo+ID4gc3VnZ2VzdGlvbnMu
Cj4gPiAKPiA+IEFmdGVyIGVuYWJsaW5nIC9kZXYvZHNwIGFuZCBtYWtpbmcgc3VyZSB0aGF0IGFs
c2Egb3NzIGVtdWxhdGlvbiBpcwo+ID4gY29uZmlndXJlZCBjb3JyZWN0bHkgLSBxdW90ZToKPiA+
IAo+ID4gamFub3NAYW5kcmFzbGludXggfi9zYXZlL3RtcC92aWRlb0RpZ2l0aXppbmcgJCBnbGF2
IHhjb2RlZC5hdmkKPiA+ICsrOiAqKkVSUk9SOiBbbGF2cGxheV0gRXJyb3IgaW5pdGlhbGl6aW5n
IEF1ZGlvOiBBdWRpbyB0YXNrIGRpZWQuCj4gPiBSZWFzb246IEVycm9yOiBTb3VuZGNhcmQgZnJh
Z21lbnQgc2l6ZSB1bmV4cGVjdGVkCj4gPiArKzogbGF2dG9vbHMgdmVyc2lvbiAyLjIuMSAgCj4g
SSBnZXQgdGhhdCBlcnJvciB0b28uCj4gCj4gPiBqYW5vc0BhbmRyYXNsaW51eCB+L3NhdmUvdG1w
L3ZpZGVvRGlnaXRpemluZyAkIGFvc3MgZ2xhdiB4Y29kZWQuYXZpCj4gPiArKzogKipFUlJPUjog
W2xhdnBsYXldIEVycm9yIGluaXRpYWxpemluZyBBdWRpbzogQXVkaW8gdGFzayBkaWVkLgo+ID4g
UmVhc29uOiBFcnJvcjogSW52YWxpZCBhcmd1bWVudCAtIG1hcHBpbmcgYXVkaW8gYnVmZmVyIChj
b25zaWRlcgo+ID4gdXNpbmcgcmVhZC93cml0ZSBpbnN0ZWFkIG9mIG1tYXApCj4gPiArKzogbGF2
dG9vbHMgdmVyc2lvbiAyLjIuMQo+ID4gVW5xdW90ZS4gIAo+IFdpdGggdGhlIHNhbWUgb3B0aW9u
cyB0aGUgc2FtZSBlcnJvciBtZXNzYWdlLiBJdCBnZXQncyBtb3JlCj4gZGVzY3JpcHRpdmUgaWYg
eW91IGFkZCAtdiAyCj4gRGlkIHlvdSBhZGQgLVUgc28gaXQgdXNlcyB0aGUgdGhlIFJlYWQvd3Jp
dGUgbW9kZSBpbnN0ZWFkIG9mIHRoZSBtbWFwIAo+IG1vZGUgPyBUaGlzIGhlbHBzIG1lIGhlcmUg
dG8gbGF2cGxheS9nbGF2IGRvZXMgbm90IGNyYXNoLgo+IAo+IERvZXMgeW91ciBkaXN0cmlidXRp
b24gdXNlIHN0aWxsIEFMU0EgPyBNeSBvcGVuc3VzZSB1c2VzIFB1bHNlQXVkaW8sIAo+IHVzaW5n
IHRoZSBwYWRzcCAtIFB1bHNlQXVkaW8gT1NTIFdyYXBwZXIgaW5zdGVhZCBvZiBhb3NzLCBtYWRl
Cj4gbGF2cGxheSBwbGF5IGJhY2sgdGhlIHZpZGVvcyBhdWRpbyBhbmQgc291bmQuIFRoZSBjb21t
YW5kIGxvb2tlZCBsaWtlCj4gdGhpczogcGFkc3AgbGF2cGxheSBmaWxlLmF2aSAtVQo+IAo+ID4g
QXBwYXJlbnRseSBzb21ldGhpbmcgaXMgd3JvbmcgZWl0aGVyIHdpdGggImZyYWdtZW50IHNpemUi
LiBJIGNvdWxkCj4gPiBwcm9iYWJseSBjb25maWd1cmUgZnJhZ21lbnQgc2l6ZSBpZiBJIGtuZXcg
d2hhdCBsYXZwbGF5IGV4cGVjdHM7IHRoZQo+ID4gbG9hZGVkIG1vZHVsZXMgYXJlOgo+ID4gCj4g
PiBzbmRfcGNtX29zcwo+ID4gc25kX21peGVyX29zcwo+ID4gb3Igc29tZXRoaW5nIGlzIHdyb25n
IHdpdGggaW4gdGhlIGNvZGUgb2YgbGF2cGxheS4gIAo+IENvdWxkIGJlLCBidXQgSSBqdXN0IGVu
am95IGEgb2xkIE11c2ljIFZpZGVvIGZyb20gTWFydXNoYSA6LSkKPiAKPiBhdWYgaG9mZmVudGxp
Y2ggYmFsZCwKPiAKPiBCZXJuaSB0aGUgQ2hhb3Mgb2YgV29vZHF1YXJ0ZXIKPiAKPiBFbWFpbDog
YmVybmhhcmRAZ3JpZXNiYWNoLmF0Cj4gd3d3OiBodHRwOi8vd3d3Lmx5c2F0b3IubGl1LnNlL35n
ei9iZXJuaGFyZAoKCgotLSAKc2VudCBmcm9tIEphbm9zJyBIaWxsYXJ5IHNlcnZlciBhbmQKTk9U
IGZyb20gaVBob25lIG5vciBHb29nbGUKZmFjZWJvb2ssIGluc3RhZ3JhbSwgdmliZXIsIHNuYXBj
aGF0LCB0d2l0dGVyLCB0aWstdG9rLCBldGMuCi0gbmVpdGhlciBvZiBsaWtlIHRob3NlLgpodHRw
czovL2FuZHJhc2xpbnV4Lmpna2xpbnV4LmphbmtvbS5uZXQvCuKAiwoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk1qcGVnLXVzZXJzIG1haWxpbmcgbGlz
dApNanBlZy11c2Vyc0BsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vm
b3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vbWpwZWctdXNlcnMK
