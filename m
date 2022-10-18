Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0145760311C
	for <lists+mjpeg-users@lfdr.de>; Tue, 18 Oct 2022 18:56:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1okptS-0006lR-A7;
	Tue, 18 Oct 2022 16:56:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <janos@andraslinux.jgklinux.jankom.net>)
 id 1oknl3-0003oG-1C for mjpeg-users@lists.sourceforge.net;
 Tue, 18 Oct 2022 14:39:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Le5mzerhzr2+wRWmqi7V5ZAj+kswyzt/Fg6GatkAEw0=; b=kc1Kj6MTMyZFvhtKpLhvc9G2Ma
 fBwjyIhGtp9YPiuYyeCOzdsVpLW2XKK7K8G92jNDcI5B7UQACKcnxQ3bkmbR0chWTKGZzVqSn0s6Z
 PFC1NO7/qqpcOGleyOEjgZ5FgGIEkp/mDrgNk89VPcb+NGOZuCKRLL/bg+pvuLRvP0wE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Le5mzerhzr2+wRWmqi7V5ZAj+kswyzt/Fg6GatkAEw0=; b=kC6XogEu2OYI/4sCLm8e97M/Cc
 ny9MN92RSnfWjfC1J74Sb+BM5BBfz9uHPxEPglTx43IeOpVtgF/nBsePsgRGC17ImaoB05q2MB+WC
 rVFjvMjOrkaOlQbvJan/LAOBfZbR8z15O6jmqL5V/IEoA2AcXNcLw6WTShvXuKlGhqqk=;
Received: from jgklinux.jankom.net ([198.74.55.83]
 helo=andraslinux.jgklinux.jankom.net)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1oknky-0005o3-56 for mjpeg-users@lists.sourceforge.net;
 Tue, 18 Oct 2022 14:39:52 +0000
Received: from andraslinux (jgklinux [10.8.0.1])
 by andraslinux.jgklinux.jankom.net (Postfix) with ESMTPS id 0CAC94089E;
 Tue, 18 Oct 2022 10:39:36 -0400 (EDT)
Date: Tue, 18 Oct 2022 10:39:30 -0400
From: Janos G Komaromi <janos@andraslinux.jgklinux.jankom.net>
To: Bernhard Praschinger <bernhard@griesbach.at>
Message-ID: <20221017145851.19351786@andraslinux>
In-Reply-To: <adbcae19-e903-fa75-359b-72f281f82d86@griesbach.at>
References: <1f684654-8907-655c-b8c0-ed5bb8a15d82@griesbach.at>
 <9f4c6922fbd9940e07875116618012df8a133c6a.camel@jankom.net>
 <20221006092153.1d76bbd3@andraslinux>
 <74c98e9f-ac31-e318-8d53-f62c7705fdab@griesbach.at>
 <20221008095345.23b41f1a@andraslinux>
 <2a17fa6e-a342-1cb9-f75c-03106b139078@griesbach.at>
 <20221010145111.65e78e39@andraslinux>
 <20221015111424.55e183bf@andraslinux>
 <adbcae19-e903-fa75-359b-72f281f82d86@griesbach.at>
Organization: fitlet_andraslinux_home
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Bernie,
 I had to recompile (re-emerge in Gentoo) mjpegtools
 with quicktime and dv included (with -f a the file size was over 2 Gig).
 Looks like I had the right idea but not the precise way to get there. Follo
 [...] Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: liu.se]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
X-Headers-End: 1oknky-0005o3-56
X-Mailman-Approved-At: Tue, 18 Oct 2022 16:56:40 +0000
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

SGkgQmVybmllLAoKSSBoYWQgdG8gcmVjb21waWxlIChyZS1lbWVyZ2UgaW4gR2VudG9vKSBtanBl
Z3Rvb2xzIHdpdGggcXVpY2t0aW1lIGFuZApkdiBpbmNsdWRlZCAod2l0aCAtZiBhIHRoZSBmaWxl
IHNpemUgd2FzIG92ZXIgMiBHaWcpLiBMb29rcyBsaWtlIEkgaGFkCnRoZSByaWdodCBpZGVhIGJ1
dCBub3QgdGhlIHByZWNpc2Ugd2F5IHRvIGdldCB0aGVyZS4gRm9sbG93ZWQgeW91cgppbnN0cnVj
dGlvbnMsIGJ1dCBzdGlsbCBub3QgZmluc2hlZC4gTm90ZSwgSSBoYWQgdG8gYWRkIC1uIG4gcGFy
YW1ldGVycwp0byB0aGUgeXV2c2NhbGVyIGJlY2F1c2UgaXQgZGlkIG5vdCByZWNvZ25pemUgdGhl
IGZvcm1hdC4gSGVyZSBpcyB0aGUKcHJvYmxlbToKClF1b3RlCgpqYW5vc0BhbmRyYXNsaW51eCB+
L3RtcCAkIGNhdCBhdWRpby53YXYgfCBtcDJlbmMgLXYgMiAtViAtbyBzb3VuZC5tcDIKLi4uCi0t
REVCVUc6IFttcDJlbmNdIDY1MzMgc2Vjb25kcyBkb25lCiAgIElORk86IFttcDJlbmNdIE51bSBm
cmFtZXMgMjUwMDM2IEF2ZyBzbG90cy9mcmFtZSA9IDczMS40Mjk7IGIvc21wID0KNS4wODsgYnIg
PSAyMjQuMDAwIGticHMgSU5GTzogW21wMmVuY10gRW5jb2RpbmcgdG8gbGF5ZXIgMiB3aXRoCnBz
eWNob2Fjb3VzdGljIG1vZGVsIDIgaXMgZmluaXNoZWQgSU5GTzogW21wMmVuY10gVGhlIE1QRUcg
ZW5jb2RlZApvdXRwdXQgZmlsZSBuYW1lIGlzICJzb3VuZC5tcDIiIAoKamFub3NAYW5kcmFzbGlu
dXggfi90bXAgJCBsYXZhZGR3YXYgdmlkZW9fd2l0aG91dF9zb3VuZC5hdmkgc291bmQubXAyCm91
dHB1dC5hdmkgLS1ERUJVRzogW2xhdmFkZHdhdl0gRmlsZTogdmlkZW9fd2l0aG91dF9zb3VuZC5h
dmkKLS1ERUJVRzogW2xhdmFkZHdhdl0gICAgZm9ybWF0OiAgICAgICAgICAgICBxCi0tREVCVUc6
IFtsYXZhZGR3YXZdICAgIGZyYW1lczogICAgICAgIDE5NTk1MAotLURFQlVHOiBbbGF2YWRkd2F2
XSAgICB3aWR0aDogICAgICAgICAgICA0ODAKLS1ERUJVRzogW2xhdmFkZHdhdl0gICAgaGVpZ2h0
OiAgICAgICAgICAgNDgwCi0tREVCVUc6IFtsYXZhZGR3YXZdICAgIGludGVybGFjaW5nOiAgICAg
ICAgMAotLURFQlVHOiBbbGF2YWRkd2F2XSAgICBmcmFtZXMvc2VjOiAgICAzMC4wMDAKLS1ERUJV
RzogW2xhdmFkZHdhdl0gICAgZHVyYXRpb246ICAgIDY1MzEuNjY3IHNlYwotLURFQlVHOiBbbGF2
YWRkd2F2XSAgCioqRVJST1I6IFtsYXZhZGR3YXZdIEVycm9yIGluIFdBViBoZWFkZXIgb2Ygc291
bmQubXAyCioqRVJST1I6IFtsYXZhZGR3YXZdIFVuYWJsZSB0byBmaWxsIGF1ZGlvIGZpbGUgc3Ry
dWN0dXJlCgpVbnF1b3RlCgpUaGUgb3JpZ2luYWwgdmlkZW8gZXhjYXAwMDAxLmF2aSBpcyA3NTMg
TWlCClRoZSB2aWRlb193aXRob3V0X3NvdW5kLmF2aSBpcyA1LjcgR2lCIChzYW1lIGFzIHdpdGgg
LWEgYSkKVGhlICBzb3VuZC5tcDIgaXMgMTc0IE1pQgoKV2h5IGlzIHRoZSAiRXJyb3IgaW4gV0FW
IGhlYWRlciI/Ck15IGF1ZGlvLndhdiBmaWxlIGlzIDEuMSBHaUIKCgpPbiBTdW4sIDE2IE9jdCAy
MDIyIDEwOjM4OjQxICswMjAwCkJlcm5oYXJkIFByYXNjaGluZ2VyIDxiZXJuaGFyZEBncmllc2Jh
Y2guYXQ+IHdyb3RlOgoKPiBIYWxsbywKPiAKPiBTb3JyeSBmb3IgdGhlIGRlbGF5Lgo+IFdoZW4g
eW91IHdhbnQgdG8gY29udmVydCB0aGUgZmlsZSBzbyB5b3UgY2FuIGVkaXQgaXQgd2l0aCBnbGF2
LCB5b3UKPiBuZWVkIHRvIGNoYW5nZSB0aGUgY29tbWFuZHMgYSBsaXR0bGUgYml0IHNvIGdsYXYg
dW5kZXJzdGFuZCB0aGUgQVZJLgo+IFlvdSBuZWVkIHRvIGNyZWF0ZSBhIGludGVybWVkaWF0ZSBB
VkkgZmlsZToKPiAKPiBta2ZpZm8gc3RyZWFtLnl1dgo+IGNhdCBzdHJlYW0ueXV2IOKUgiB5dXZz
Y2FsZXIgLU8gU1ZDRCDilIIgeXV2MmxhdiAtcSA5MCAtZiBhIC1vIAo+IHZpZGVvX3dpdGhvdXRf
c291bmQuYXZpICYKPiBtcGxheWVyIC1ub3NvdW5kIC1ub2ZyYW1lZHJvcCAtdm8geXV2NG1wZWcg
ZXpjYXAwMDAxLmF2aQo+IAo+IG1wbGF5ZXIgLXZvIG51bGwgLWFvIHBjbTpmaWxlPWF1ZGlvLndh
diBlemNhcDAwMDEuYXZpCj4gY2F0IGF1ZGlvLndhdiDilIIgbXAyZW5jIC12IDIgLVYgLW8gc291
bmQubXAyCj4gCj4gWW91IG5lZWQgdGhhbiB0byBhZGQgdGhlIHNvdW5kL2F1ZGlvIHRvIHRoZSB2
aWRlbzoKPiBsYXZhZGR3YXYgdmlkZW9fd2l0aG91dF9zb3VuZC5hdmkgc291bmQubXAyIG91dHB1
dC5hdmkKPiAKPiBJZiB0aGUgYXZpIGZpbGUgcmVhY2hlcyB0aGUgMkdCIEZpbGVzaXplbGltaXQg
eW91IHNob3VsZCBjaGFuZ2UgdG8KPiB0aGUgUXVpY2t0aW1lLiBZb3UgbmVlZCB0byByZXBsYWNl
IHRoZSB5dXYybGF2IG9wdGlvbiAtZiBhIHdpdGg6IC1mIHEKPiAKPiBvdXRwdXQuYXZpIGNvbnRh
aW5zIHZpZGVvIGFuZCBzb3VuZCwgeW91IGNhbiBlZGl0IGl0IHdpdGggZ2xhdi4KPiBBZnRlciBl
ZGl0aW5nIHlvdSBnZXQgdGhlIGVkaWxpc3QgZmlsZSwgeW91IGNhbiBwcm9jZXNzIGFzIHlvdSBh
cmUKPiB1c2VkLiB0by4KPiAKPiBKYW5vcyBHIEtvbWFyb21pIHdyb3RlOgo+ID4gUHJvZ3Jlc3Mg
cmVwb3J0IGFmdGVyIHJlYWRpbmcgdGhlIEZNLgo+ID4gCj4gPiBFeGVjdXRlZCB0aGUgZm9sbG93
aWcgY29tbWFuZHM6Cj4gPiBtcGxheWVyIC1hbyBwY206ZmFzdDpmaWxlPWF1ZGlvLndhdiAtdiBu
dWxsIGV6Y2FwMDAwMS5hdmkKPiA+IGNhdCBhdWRpby53YXYgfCBtcDJlbmMgLW8gYXVkaW8ubXAy
Cj4gPiBtcGxleCBhdWRpby5tcDIgdmlkZW9fc3ZjZC5tMnYgLW8gdGVzdC5tcGcKPiA+IG1wbGV4
IC1WIC1yIDE3NDAgYXVkaW8ubXAyIHZpZGVvX3N2Y2QubTJ2IC1vIHRlc3QubXBnCj4gPiBtcGxh
eWVyIHRlc3QubXBnCj4gPiBnbGF2IHRlc3QubXBnCj4gPiAKPiA+IFJlc3VsdHM6Cj4gPiAoMSkg
bXBsZXggaW4gZWl0aGVyIGZvcm1zIGNvbXBsYWlucyBhYm91dCB0b28gbWFueSBmcmFtZXMgZHJv
cHBlZAo+ID4gYW5kIHRoZW4gcXVpdHMuCj4gPiAoMikgbXBsYXllciBwbGF5cyB0aGUgZmlsZSwg
YnV0IGl0IGlzIGEgbG9uZyB2aWRlbywgc28gSSBzdG9wcGVkIEI0Cj4gPiBjb21wbGV0aW9uLgo+
ID4gKDMpIGdsYXYgaGFzIHRoZSBzYW1lIGVycm9yIGFzIGluIG15IGluaXRpYWwgcG9zdC4KPiA+
IAo+ID4gU28gSSdtIHN0aWxsIGFza2luZyBmb3IgaGVscC4gVGhlcmUgaXMgbm8gdmlkZW8gZWRp
dG9yIGF2YWlsYWJsZSBmb3IKPiA+IEdlbnRvby4gSSBsaWtlIGdsYXYgYW5kIHdvdWxkIGxpa2Ug
dG8gdXNlIGl0IGZvciBteSB2aWRlbyBmaWxlcwo+ID4gdHJhbnNmZXJyZWQgZnJvbSBvbGQgdmlk
ZW8gcmVjb3JkZXIgdGFwZXMuCj4gPiAKPiA+IFRoeCAtIEphbm9zCj4gPiAKPiA+IAo+ID4gT24g
TW9uLCAxMCBPY3QgMjAyMiAxNDo1MToxMSAtMDQwMAo+ID4gSmFub3MgRyBLb21hcm9taSA8amFu
b3NAYW5kcmFzbGludXguamdrbGludXguamFua29tLm5ldD4gd3JvdGU6Cj4gPiAKPiA+PiBIaSwK
PiA+Pgo+ID4+IFRoYW5rcywgQmVybmllLiBPbmUgc3RlcCBjbG9zZXIuCj4gPj4gSSByZWNvbXBp
bGVkIG1wbGF5ZXIsIGFuZCBub3cgdGhlIGNvbW1hbmQgd29ya3MuIEkgbm93IGhhdmUgYQo+ID4+
ICJ2aWRlb19zdmNkLm0ydiIgZmlsZS4gSXQgcGxheXMgd2l0aCBtcGxheWVyIGJ1dCB0aGVyZSBp
cyBubyBzb3VuZC4KPiA+PiBTbyB0aGUgbmV4dCBzdGVwOiBob3cgZG8gSSBtYWtlIGEgY29tcGxl
dGUgZmlsZSwgdmlkZW8gYW5kIHNvdW5kLAo+ID4+IHRoYXQgZ2xhdiB3aWxsIGJlIGFibGUgdG8g
cHJvY2VzcyBmb3IgZWRpdGluZz8KPiA+Pgo+ID4+IFJlZ2FyZHMsCj4gPj4KPiA+PiBKYW5vcwo+
IAo+IGF1ZiBob2ZmZW50bGljaCBiYWxkLAo+IAo+IEJlcm5pIHRoZSBDaGFvcyBvZiBXb29kcXVh
cnRlcgo+IAo+IEVtYWlsOiBiZXJuaGFyZEBncmllc2JhY2guYXQKPiB3d3c6IGh0dHA6Ly93d3cu
bHlzYXRvci5saXUuc2Uvfmd6L2Jlcm5oYXJkCgoKCi0tIApzZW50IGZyb20gSmFub3MnIEhpbGxh
cnkgc2VydmVyIGFuZApOT1QgZnJvbSBpUGhvbmUgbm9yIEdvb2dsZQpmYWNlYm9vaywgaW5zdGFn
cmFtLCB2aWJlciwgc25hcGNoYXQsIHR3aXR0ZXIsIHRpay10b2ssIGV0Yy4KLSBuZWl0aGVyIG9m
IGxpa2UgdGhvc2UuCmh0dHBzOi8vYW5kcmFzbGludXguamdrbGludXguamFua29tLm5ldC8K4oCL
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTWpwZWct
dXNlcnMgbWFpbGluZyBsaXN0Ck1qcGVnLXVzZXJzQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRw
czovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9tanBlZy11c2Vycwo=
