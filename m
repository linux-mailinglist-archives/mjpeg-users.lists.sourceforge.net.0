Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 332CC604D6B
	for <lists+mjpeg-users@lfdr.de>; Wed, 19 Oct 2022 18:29:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1olBwu-0001fL-UJ;
	Wed, 19 Oct 2022 16:29:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <janos@andraslinux.jgklinux.jankom.net>)
 id 1oksAg-0001HZ-NX for mjpeg-users@lists.sourceforge.net;
 Tue, 18 Oct 2022 19:22:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KUyzler+XLal6aJrMQJ/+Z5+uRLrJFfaRcK/el9SBgA=; b=W56f4PdyX5Cu/pA8d9FDh8yPbd
 F0EkCvelBCW91bkzPcf3GPnL+9oUEMmAEQPVa8000l9cVbYzm0drPdBwMyFnlA9GAL80k1EpV44EQ
 0weAoS+MXaTjxrpVk46hLEMg6iU6KUqHQIMePvIdhKzXBuFCXIPDlGoNE0Vrd8bdIHSU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KUyzler+XLal6aJrMQJ/+Z5+uRLrJFfaRcK/el9SBgA=; b=ezp3zSN9jZIwfvxjRYZ7FAIFCW
 9swXvLqDFdbXq+hZXdaSs8kadWvvH3T/jSMWsIlvQnpFOWcmAjbgbQL/i8GnCFKtOPOLbF3oQ/TD7
 pS8M0GWZCqEWTdPZI3eJSTwJIVWoUNoGkGK/bl0ne816KC0Zv6k7DGDegYJuPLol81jM=;
Received: from jgklinux.jankom.net ([198.74.55.83]
 helo=andraslinux.jgklinux.jankom.net)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1oksAc-0007v2-Mf for mjpeg-users@lists.sourceforge.net;
 Tue, 18 Oct 2022 19:22:38 +0000
Received: from andraslinux (jgklinux [10.8.0.1])
 by andraslinux.jgklinux.jankom.net (Postfix) with ESMTPS id 8C7B04089E;
 Tue, 18 Oct 2022 15:22:24 -0400 (EDT)
Date: Tue, 18 Oct 2022 15:22:18 -0400
From: Janos G Komaromi <janos@andraslinux.jgklinux.jankom.net>
To: Bernhard Praschinger <bernhard@griesbach.at>
Message-ID: <20221018152218.0b680513@andraslinux>
In-Reply-To: <346fe3b1-e2ef-1384-d819-e3a892a2a235@griesbach.at>
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
 Content preview:  Yes,
 it did. Although glav still died because of missing /dev/dsp.
 I remember from a few years ago that glav uses OSS not Alsa. Can you please
 help what to do next? 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: jankom.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
X-Headers-End: 1oksAc-0007v2-Mf
X-Mailman-Approved-At: Wed, 19 Oct 2022 16:29:43 +0000
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

WWVzLCBpdCBkaWQuCgpBbHRob3VnaCBnbGF2IHN0aWxsIGRpZWQgYmVjYXVzZSBvZiBtaXNzaW5n
IC9kZXYvZHNwLgoKSSByZW1lbWJlciBmcm9tIGEgZmV3IHllYXJzIGFnbyB0aGF0IGdsYXYgdXNl
cyBPU1Mgbm90IEFsc2EuIENhbiB5b3UKcGxlYXNlIGhlbHAgd2hhdCB0byBkbyBuZXh0PyAKCk9u
IFR1ZSwgMTggT2N0IDIwMjIgMTk6Mjc6NDUgKzAyMDAKQmVybmhhcmQgUHJhc2NoaW5nZXIgPGJl
cm5oYXJkQGdyaWVzYmFjaC5hdD4gd3JvdGU6Cgo+IEhhbGxvLAo+IAo+IG15IGZhdWx0LiBZb3Ug
aGF2ZSBhIC53YXYgZmlsZSBhbiBuZWVkIHRvIGFkZCB0aGF0IHRvIHRoZSB2aWRlbyBmaWxlLgo+
IFNvIHlvdSBjYW4gc2tpcCB0aGlzIGNvbW1hbmQ6IGNhdCBhdWRpby53YXYgfCBtcDJlbmMgLXYg
MiAtViAtbwo+IHNvdW5kLm1wMgo+IAo+IEFuZCBqdXN0IHVzZSB0aGF0IGNvbW1hbmQ6Cj4gbGF2
YWRkd2F2IHZpZGVvX3dpdGhvdXRfc291bmQuYXZpIGF1ZGlvLndhdiBvdXRwdXQuYXZpCj4gCj4g
SSBob3BlIHRoYXQgd29ya3MuCj4gCj4gUmVnYXJkcywgQmVybmhhcmQKPiAKPiBKYW5vcyBHIEtv
bWFyb21pIHdyb3RlOgo+ID4gSGkgQmVybmllLAo+ID4gCj4gPiBJIGhhZCB0byByZWNvbXBpbGUg
KHJlLWVtZXJnZSBpbiBHZW50b28pIG1qcGVndG9vbHMgd2l0aCBxdWlja3RpbWUKPiA+IGFuZCBk
diBpbmNsdWRlZCAod2l0aCAtZiBhIHRoZSBmaWxlIHNpemUgd2FzIG92ZXIgMiBHaWcpLiBMb29r
cwo+ID4gbGlrZSBJIGhhZCB0aGUgcmlnaHQgaWRlYSBidXQgbm90IHRoZSBwcmVjaXNlIHdheSB0
byBnZXQgdGhlcmUuCj4gPiBGb2xsb3dlZCB5b3VyIGluc3RydWN0aW9ucywgYnV0IHN0aWxsIG5v
dCBmaW5zaGVkLiBOb3RlLCBJIGhhZCB0bwo+ID4gYWRkIC1uIG4gcGFyYW1ldGVycyB0byB0aGUg
eXV2c2NhbGVyIGJlY2F1c2UgaXQgZGlkIG5vdCByZWNvZ25pemUKPiA+IHRoZSBmb3JtYXQuIEhl
cmUgaXMgdGhlIHByb2JsZW06Cj4gPiAKPiA+IFF1b3RlCj4gPiAKPiA+IGphbm9zQGFuZHJhc2xp
bnV4IH4vdG1wICQgY2F0IGF1ZGlvLndhdiB8IG1wMmVuYyAtdiAyIC1WIC1vCj4gPiBzb3VuZC5t
cDIgLi4uCj4gPiAtLURFQlVHOiBbbXAyZW5jXSA2NTMzIHNlY29uZHMgZG9uZQo+ID4gICAgIElO
Rk86IFttcDJlbmNdIE51bSBmcmFtZXMgMjUwMDM2IEF2ZyBzbG90cy9mcmFtZSA9IDczMS40Mjk7
Cj4gPiBiL3NtcCA9IDUuMDg7IGJyID0gMjI0LjAwMCBrYnBzIElORk86IFttcDJlbmNdIEVuY29k
aW5nIHRvIGxheWVyIDIKPiA+IHdpdGggcHN5Y2hvYWNvdXN0aWMgbW9kZWwgMiBpcyBmaW5pc2hl
ZCBJTkZPOiBbbXAyZW5jXSBUaGUgTVBFRwo+ID4gZW5jb2RlZCBvdXRwdXQgZmlsZSBuYW1lIGlz
ICJzb3VuZC5tcDIiCj4gPiAKPiA+IGphbm9zQGFuZHJhc2xpbnV4IH4vdG1wICQgbGF2YWRkd2F2
IHZpZGVvX3dpdGhvdXRfc291bmQuYXZpCj4gPiBzb3VuZC5tcDIgb3V0cHV0LmF2aSAtLURFQlVH
OiBbbGF2YWRkd2F2XSBGaWxlOgo+ID4gdmlkZW9fd2l0aG91dF9zb3VuZC5hdmkgLS1ERUJVRzog
W2xhdmFkZHdhdl0gICAgZm9ybWF0Ogo+ID4gcSAtLURFQlVHOiBbbGF2YWRkd2F2XSAgICBmcmFt
ZXM6ICAgICAgICAxOTU5NTAKPiA+IC0tREVCVUc6IFtsYXZhZGR3YXZdICAgIHdpZHRoOiAgICAg
ICAgICAgIDQ4MAo+ID4gLS1ERUJVRzogW2xhdmFkZHdhdl0gICAgaGVpZ2h0OiAgICAgICAgICAg
NDgwCj4gPiAtLURFQlVHOiBbbGF2YWRkd2F2XSAgICBpbnRlcmxhY2luZzogICAgICAgIDAKPiA+
IC0tREVCVUc6IFtsYXZhZGR3YXZdICAgIGZyYW1lcy9zZWM6ICAgIDMwLjAwMAo+ID4gLS1ERUJV
RzogW2xhdmFkZHdhdl0gICAgZHVyYXRpb246ICAgIDY1MzEuNjY3IHNlYwo+ID4gLS1ERUJVRzog
W2xhdmFkZHdhdl0KPiA+ICoqRVJST1I6IFtsYXZhZGR3YXZdIEVycm9yIGluIFdBViBoZWFkZXIg
b2Ygc291bmQubXAyCj4gPiAqKkVSUk9SOiBbbGF2YWRkd2F2XSBVbmFibGUgdG8gZmlsbCBhdWRp
byBmaWxlIHN0cnVjdHVyZQo+ID4gCj4gPiBVbnF1b3RlCj4gPiAKPiA+IFRoZSBvcmlnaW5hbCB2
aWRlbyBleGNhcDAwMDEuYXZpIGlzIDc1MyBNaUIKPiA+IFRoZSB2aWRlb193aXRob3V0X3NvdW5k
LmF2aSBpcyA1LjcgR2lCIChzYW1lIGFzIHdpdGggLWEgYSkKPiA+IFRoZSAgc291bmQubXAyIGlz
IDE3NCBNaUIKPiA+IAo+ID4gV2h5IGlzIHRoZSAiRXJyb3IgaW4gV0FWIGhlYWRlciI/Cj4gPiBN
eSBhdWRpby53YXYgZmlsZSBpcyAxLjEgR2lCCj4gPiAKPiA+IAo+ID4gT24gU3VuLCAxNiBPY3Qg
MjAyMiAxMDozODo0MSArMDIwMAo+ID4gQmVybmhhcmQgUHJhc2NoaW5nZXIgPGJlcm5oYXJkQGdy
aWVzYmFjaC5hdD4gd3JvdGU6Cj4gPiAgIAo+ID4+IEhhbGxvLAo+ID4+Cj4gPj4gU29ycnkgZm9y
IHRoZSBkZWxheS4KPiA+PiBXaGVuIHlvdSB3YW50IHRvIGNvbnZlcnQgdGhlIGZpbGUgc28geW91
IGNhbiBlZGl0IGl0IHdpdGggZ2xhdiwgeW91Cj4gPj4gbmVlZCB0byBjaGFuZ2UgdGhlIGNvbW1h
bmRzIGEgbGl0dGxlIGJpdCBzbyBnbGF2IHVuZGVyc3RhbmQgdGhlCj4gPj4gQVZJLiBZb3UgbmVl
ZCB0byBjcmVhdGUgYSBpbnRlcm1lZGlhdGUgQVZJIGZpbGU6Cj4gPj4KPiA+PiBta2ZpZm8gc3Ry
ZWFtLnl1dgo+ID4+IGNhdCBzdHJlYW0ueXV2IOKUgiB5dXZzY2FsZXIgLU8gU1ZDRCDilIIgeXV2
MmxhdiAtcSA5MCAtZiBhIC1vCj4gPj4gdmlkZW9fd2l0aG91dF9zb3VuZC5hdmkgJgo+ID4+IG1w
bGF5ZXIgLW5vc291bmQgLW5vZnJhbWVkcm9wIC12byB5dXY0bXBlZyBlemNhcDAwMDEuYXZpCj4g
Pj4KPiA+PiBtcGxheWVyIC12byBudWxsIC1hbyBwY206ZmlsZT1hdWRpby53YXYgZXpjYXAwMDAx
LmF2aQo+ID4+IGNhdCBhdWRpby53YXYg4pSCIG1wMmVuYyAtdiAyIC1WIC1vIHNvdW5kLm1wMgo+
ID4+Cj4gPj4gWW91IG5lZWQgdGhhbiB0byBhZGQgdGhlIHNvdW5kL2F1ZGlvIHRvIHRoZSB2aWRl
bzoKPiA+PiBsYXZhZGR3YXYgdmlkZW9fd2l0aG91dF9zb3VuZC5hdmkgc291bmQubXAyIG91dHB1
dC5hdmkKPiA+Pgo+ID4+IElmIHRoZSBhdmkgZmlsZSByZWFjaGVzIHRoZSAyR0IgRmlsZXNpemVs
aW1pdCB5b3Ugc2hvdWxkIGNoYW5nZSB0bwo+ID4+IHRoZSBRdWlja3RpbWUuIFlvdSBuZWVkIHRv
IHJlcGxhY2UgdGhlIHl1djJsYXYgb3B0aW9uIC1mIGEgd2l0aDoKPiA+PiAtZiBxCj4gPj4KPiA+
PiBvdXRwdXQuYXZpIGNvbnRhaW5zIHZpZGVvIGFuZCBzb3VuZCwgeW91IGNhbiBlZGl0IGl0IHdp
dGggZ2xhdi4KPiA+PiBBZnRlciBlZGl0aW5nIHlvdSBnZXQgdGhlIGVkaWxpc3QgZmlsZSwgeW91
IGNhbiBwcm9jZXNzIGFzIHlvdSBhcmUKPiA+PiB1c2VkLiB0by4KPiA+Pgo+ID4+IEphbm9zIEcg
S29tYXJvbWkgd3JvdGU6ICAKPiA+Pj4gUHJvZ3Jlc3MgcmVwb3J0IGFmdGVyIHJlYWRpbmcgdGhl
IEZNLgo+ID4+Pgo+ID4+PiBFeGVjdXRlZCB0aGUgZm9sbG93aWcgY29tbWFuZHM6Cj4gPj4+IG1w
bGF5ZXIgLWFvIHBjbTpmYXN0OmZpbGU9YXVkaW8ud2F2IC12IG51bGwgZXpjYXAwMDAxLmF2aQo+
ID4+PiBjYXQgYXVkaW8ud2F2IHwgbXAyZW5jIC1vIGF1ZGlvLm1wMgo+ID4+PiBtcGxleCBhdWRp
by5tcDIgdmlkZW9fc3ZjZC5tMnYgLW8gdGVzdC5tcGcKPiA+Pj4gbXBsZXggLVYgLXIgMTc0MCBh
dWRpby5tcDIgdmlkZW9fc3ZjZC5tMnYgLW8gdGVzdC5tcGcKPiA+Pj4gbXBsYXllciB0ZXN0Lm1w
Zwo+ID4+PiBnbGF2IHRlc3QubXBnCj4gPj4+Cj4gPj4+IFJlc3VsdHM6Cj4gPj4+ICgxKSBtcGxl
eCBpbiBlaXRoZXIgZm9ybXMgY29tcGxhaW5zIGFib3V0IHRvbyBtYW55IGZyYW1lcyBkcm9wcGVk
Cj4gPj4+IGFuZCB0aGVuIHF1aXRzLgo+ID4+PiAoMikgbXBsYXllciBwbGF5cyB0aGUgZmlsZSwg
YnV0IGl0IGlzIGEgbG9uZyB2aWRlbywgc28gSSBzdG9wcGVkCj4gPj4+IEI0IGNvbXBsZXRpb24u
Cj4gPj4+ICgzKSBnbGF2IGhhcyB0aGUgc2FtZSBlcnJvciBhcyBpbiBteSBpbml0aWFsIHBvc3Qu
Cj4gPj4+Cj4gPj4+IFNvIEknbSBzdGlsbCBhc2tpbmcgZm9yIGhlbHAuIFRoZXJlIGlzIG5vIHZp
ZGVvIGVkaXRvciBhdmFpbGFibGUKPiA+Pj4gZm9yIEdlbnRvby4gSSBsaWtlIGdsYXYgYW5kIHdv
dWxkIGxpa2UgdG8gdXNlIGl0IGZvciBteSB2aWRlbwo+ID4+PiBmaWxlcyB0cmFuc2ZlcnJlZCBm
cm9tIG9sZCB2aWRlbyByZWNvcmRlciB0YXBlcy4KPiA+Pj4KPiA+Pj4gVGh4IC0gSmFub3MKPiA+
Pj4KPiA+Pj4KPiA+Pj4gT24gTW9uLCAxMCBPY3QgMjAyMiAxNDo1MToxMSAtMDQwMAo+ID4+PiBK
YW5vcyBHIEtvbWFyb21pIDxqYW5vc0BhbmRyYXNsaW51eC5qZ2tsaW51eC5qYW5rb20ubmV0PiB3
cm90ZTogIAo+IAoKCgotLSAKc2VudCBmcm9tIEphbm9zJyBIaWxsYXJ5IHNlcnZlciBhbmQKTk9U
IGZyb20gaVBob25lIG5vciBHb29nbGUKZmFjZWJvb2ssIGluc3RhZ3JhbSwgdmliZXIsIHNuYXBj
aGF0LCB0d2l0dGVyLCB0aWstdG9rLCBldGMuCi0gbmVpdGhlciBvZiBsaWtlIHRob3NlLgpodHRw
czovL2FuZHJhc2xpbnV4Lmpna2xpbnV4LmphbmtvbS5uZXQvCuKAiwoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk1qcGVnLXVzZXJzIG1haWxpbmcgbGlz
dApNanBlZy11c2Vyc0BsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vm
b3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vbWpwZWctdXNlcnMK
