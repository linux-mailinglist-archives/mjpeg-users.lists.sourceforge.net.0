Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B74255F6018
	for <lists+mjpeg-users@lfdr.de>; Thu,  6 Oct 2022 06:27:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1ogITf-0000mo-T7;
	Thu, 06 Oct 2022 04:27:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bernhard@griesbach.at>) id 1ogITe-0000me-Qg
 for mjpeg-users@lists.sourceforge.net;
 Thu, 06 Oct 2022 04:27:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5n2K4nyXOIZysROeBZ1pmStIm9exPYH0L7ae5WMGVvE=; b=ipx91CsXgYQ4l7WQjZaVmAmENt
 zZbMCr073gkTLk+5uy2AvggnTuhNGOrlvqN2J/yOP2ldJox4zmlLtHEmbkQ42nj9YNduQicdZg5J/
 TcyTOlUMXASBnd7q8O6gjmHUGbGLTY2eKm4JcH5B4KdRyY2VIUZQqYwBuQfMAXA9I/H8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5n2K4nyXOIZysROeBZ1pmStIm9exPYH0L7ae5WMGVvE=; b=HbBMfp7J0Fa2rB7YmUCxZAEaYr
 9l5+sm2BIOPGBZWqHSxodSSzzyhqPaXw+tRnuqPZIW1Ll+EFxbnndyWCYOGTeS1QRUH/lxc5bZAu8
 1mZI0pBYQXNkVOd953fSXXhF8Xyw/okTKmVREbMqI13RotSUxXYAB7UguzMvmEk+bjps=;
Received: from srv211.suspace.net ([176.28.0.211] helo=srv1.suspace.net)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ogITd-0006W7-1k for mjpeg-users@lists.sourceforge.net;
 Thu, 06 Oct 2022 04:27:18 +0000
Received: from srv1.suspace.net (localhost.localdomain [127.0.0.1])
 by srv1.suspace.net (Postfix) with ESMTP id 916A2162A04;
 Thu,  6 Oct 2022 06:27:08 +0200 (CEST)
Authentication-Results: srv1.suspace.net;
 spf=pass (sender IP is 127.0.0.1) smtp.mailfrom=bernhard@griesbach.at
 smtp.helo=srv1.suspace.net
Received-SPF: pass (srv1.suspace.net: localhost is always allowed.)
 client-ip=127.0.0.1; envelope-from=bernhard@griesbach.at;
 helo=srv1.suspace.net; 
X-Spam-Flag: NO
X-Spam-Score: -2.901
X-Spam-Level: 
X-Spam-Status: No, score=-2.901 tagged_above=-9999 required=2
 tests=[ALL_TRUSTED=-1, BAYES_00=-1.9, NICE_REPLY_A=-0.001,
 SPF_PASS=-0.001, URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Received: from srv1.suspace.net ([127.0.0.1])
 by srv1.suspace.net (srv1.suspace.net [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K-BUdlMj0BJF; Thu,  6 Oct 2022 06:27:08 +0200 (CEST)
Received: from [10.20.30.37] (193-83-161-85.oan.highway.a1.net [193.83.161.85])
 by srv1.suspace.net (Postfix) with ESMTPSA id DBC4F1610E6;
 Thu,  6 Oct 2022 06:27:07 +0200 (CEST)
Received-SPF: pass (srv1.suspace.net: connection is authenticated)
To: "Janos G. Komaromi" <janos@jankom.net>,
 MJPEG-tools user list <mjpeg-users@lists.sourceforge.net>
References: <ed5481fd618006e4d259165748a48fd06c58789e.camel@jankom.net>
 <e837da44-2ef5-2543-6382-3713116b7298@griesbach.at>
 <69f2345cb64545b377ac23904524ba299f542f3f.camel@jankom.net>
From: Bernhard Praschinger <bernhard@griesbach.at>
Message-ID: <1f684654-8907-655c-b8c0-ed5bb8a15d82@griesbach.at>
Date: Thu, 6 Oct 2022 06:27:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 SeaMonkey/2.53.13
MIME-Version: 1.0
In-Reply-To: <69f2345cb64545b377ac23904524ba299f542f3f.camel@jankom.net>
X-PPP-Message-ID: <166503042806.12532.792439756901359000@srv1.suspace.net>
X-PPP-Vhost: griesbach.at
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hallo, mkfifo creates a file where one file/process reads
 it's content, and another process puts data into. You need is when program
 data can't pipe direct to each other. So you create the named pipe. You st
 [...] Content analysis details:   (-2.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1ogITd-0006W7-1k
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

SGFsbG8sCgpta2ZpZm8gY3JlYXRlcyBhIGZpbGUgd2hlcmUgb25lIGZpbGUvcHJvY2VzcyByZWFk
cyBpdCdzIGNvbnRlbnQsIGFuZCAKYW5vdGhlciBwcm9jZXNzIHB1dHMgZGF0YSBpbnRvLiBZb3Ug
bmVlZCBpcyB3aGVuIHByb2dyYW0gZGF0YSBjYW4ndCBwaXBlIApkaXJlY3QgdG8gZWFjaCBvdGhl
ci4gU28geW91IGNyZWF0ZSB0aGUgbmFtZWQgcGlwZS4gWW91IHN0YXJ0IGFmdGVyd2FyZHMgCnRo
ZSBwcm9jZXNzIHRoYXQgcmVhZHMgdGhlIGRhdGEgYW5kIGFzIGxhc3Qgc3RlcCB5b3UgcHV0IHRo
ZSBkYXRhIGludG8gaXQuCgpUaGUgY29tbWFuZHMgZm9yIHRoZSB2aWRlbyB3b3VsZCB0aGFuIGJl
IGluIG9uZSB0ZXJtaW5hbCB3aW5kb3c6CiA+IG1rZmlmbyBzdHJlYW0ueXV2CiA+IGNhdCBzdHJl
YW0ueXV2IOKUgiB5dXZzY2FsZXIgLU8gU1ZDRCDilIIgbXBlZzJlbmMgLWYgNCAtbyB2aWRlb19z
dmNkLm0ydiAmCiA+IG1wbGF5ZXIgLW5vc291bmQgLW5vZnJhbWVkcm9wIC12byB5dXY0bXBlZyBl
emNhcDAwMDEuYXZpCgpEb24ndCBmb3JnZXQgdG8gYWRkIHRoZSAmIGluIHRoZSAybmQgbGluZSB0
byBzdGFydCB0aGUgcHJvY2VzcyBpbiB0aGUgCmJhY2tncm91bmQuIFlvdSBkb24ndCBuZWVkIHRv
IHN0YXJ0IG1wbGF5ZXIgaW4gdGhlIGJhY2tncm91bmQuCgpGb3IgYXVkaW86CiA+IG1wbGF5ZXIg
LXZvIG51bGwgLWFvIHBjbTpmaWxlPWF1ZGlvLndhdiBlemNhcDAwMDEuYXZpCiA+IGNhdCBhdWRp
by53YXYg4pSCIG1wMmVuYyAtdiAyIC1WIC1vIHNvdW5kLm1wMgoKQWZ0ZXJ3YXJkcyBtdXRpcGxl
eCB0aGUgZmlsZXMgdG9nZXRoZXIgd2l0aDoKbXBsZXggLWYgNCBzb3VuZC5tcDIgdmlkZW9fc3Zj
ZC5tMnYgLW8gU1ZDRC5tcGcKCllvdSBoYXZlIHRoZW4gYSBlbmNvZGVkIE1QRUcgZmlsZSB3aXRo
IGlzdCBzdWl0YWJsZSBmb3IgU1ZDRC4gWW91IG5lZWQgCnRvIGNoYW5nZSB0aGUgY29tbWFuZHMg
Zm9yIHlvdSBuZWVkLgpXaGF0IGRvIHlvdSB3YW50IHdpdGggdGhlIEFWSSBmaWxlID8KCklmIHlv
dSBlbmNvdW50ZXIgZXJyb3JzIHBsZWFzZSBhZGQgdGhlIG91dHB1dCB0byB0aGUgbWFpbC4KCkph
bm9zIEcuIEtvbWFyb21pIHdyb3RlOgo+IEhpIEJlcm5pZSwgdGhhbmtzIGZvciB5b3VyIGFuc3dl
ci4gU29ycnksIEkgaGF2ZSBub3QgYmVlbiBkb2luZyB2aWRlbwo+IGVkaXRzIGxhdGVseSwgc28g
SSBuZWVkIGEgbGl0dGxlIG1vcmUgaGVscC4gTGF0IHRpbWUgSSB1c2VkIENpbmVsZXJyYQo+IGZv
ciB2aWRlbyBlZGl0IG9uIG15IG9sZCBGQy0zIGRlc2t0b3AuCj4gCj4gSSB0cmllZAo+IFF1b3Rl
Cj4+IG1rZmlmbyBzdHJlYW0ueXV2Cj4+ICAgPmNhdCBzdHJlYW0ueXV2IOKUgiB5dXZkZW5vaXNl
IOKUgiB5dXZzY2FsZXIgLU8gU1ZDRCDilIIgbXBlZzJlbmMgLWYgNCAtbwo+PiB2aWRlb19zdmNk
Lm0ydgo+PiAgID5tcGxheWVyIC1ub3NvdW5kIC1ub2ZyYW1lZHJvcCAtdm8geXV2NG1wZWcgYW55
ZmlsZS5tcGcKPj4KPj4gRm9yIEF1ZGlvOgo+PiAgID5tcGxheWVyIC12byBudWxsIC1hbyBwY206
ZmlsZT1hbnlmaWxlLndhdiBhbnlmaWxlLm1wZwo+PiAgID4gY2F0IGFueWZpbGUud2F2IOKUgiBt
cDJlbmMgLXYgMiAtViAtbyBzb3VuZC5tcDIKPj4KPiBVbnF1b3RlCj4gCj4gYnV0IGRpZCBub3Qg
Z2V0IGZhci4KPiAKPiBNeSB2aWRlbyBjbGlwIGlzICJlemNhcDAwMDEuYXZpIiBhcyBzaG93biBp
biBERVRBSUxTIGJlbG93LiBXaGF0IGFyZQo+IHRoZSBleGFjdCBjb21tYW5kcyBJIG5lZWQgdG8g
aXNzdWU/IEhvdyBkbyBJIG1ha2UgdGhlICJzdHJlYW0ueXV2Ij8gSWYKPiBJIGp1c3QgaXNzdWUg
dGhlIGNvbW1hbmQgIm1rZmlmbyBzdHJlYW0ueXV2IiBpdCBjcmVhdGVzIGEgemVybyBieXRlCj4g
cGlwZSBmaWxlIHRoYXQgdGhlIG5leHQgY29tbWFuZCB1c2VzOiAiY2F0IHN0cmVhbS55dXYgfCB5
dXZkZW5vaXNlLi4uLgo+IGV0YyIsIGJ1dCBpdCBkb2VzIG5vdCBkbyBhbnl0aGluZy4gQW5kIHdo
YXQgaXMgdGhlICJhbnlmaWxlLm1wZyIKPiBvdXRwdXQ/IElzIGl0IHRoZSBmaWxlIHRoYXQgY2Fu
IGJlIGVkaXRlZCB3aXRoIGdsYXY/IElmIGl0IGlzIG9ubHkgdGhlCj4gcGljdHVyZSBjb250ZW50
IG9mIG15IHZpZGVvIGhvdyB0aGUgZWRpdGVkIHZlcnNpb24gd2lsbCBiZSBzeW5jaHJvbml6ZWQK
PiB3aXRoIHRoZSB1bmVkaXRlZCBzb3VuZCBwYXJ0IG9mIHRoZSBvcmlnaW5hbCBjbGlwPwo+IAo+
IFNvcnJ5LCB0aGVzZSBtYXkgYmUgc3R1cGlkIHF1ZXN0aW9ucyBidXQgSSdkIGxpa2UgdG8gdW5k
ZXJzdGFuZCB0aGUKPiB3aG9sZSB0aGluZyBiZXR0ZXIuIE9LLCB0aGVyZSBpcyB0aGUgUlRGTSBw
cmluY2lwbGUsIGFuZCBJIHJlYWQgTUpQRUcKPiBIT1dUTyBkb2N1bWVudCA0LjEgdGhyb3VnaCA0
LjMgYnV0IHN0aWxsIGRvbid0IGtub3cgaG93IHRvIGVkaXQgbXkKPiAiZXpjYXAwMDAxLmF2aSIg
dmlkZW8gZmlsZSB3aXRoIGdsYXYuCj4gCj4gUExlYXNlLCBleHBsYWluIC0gSmFub3MKPiBQLlMu
IHRyaWVkIG90aGVyIG9wZW5zb3VyY2UgbGludXggdmlkZW8gZWRpdG9ycyBvbiBteSBHZW50b28g
bWFjaGluZSwKPiBidXQgb3BlbnNob3QgZG9lcyBub3QgcnVuLCBhbmQgY291bGQgbm90IGNvbXBp
bGUgZmxvd2JsYWRlIHlldC4gSSBsaWtlCj4gdGhlIHNpbXBsaWNpdHkgb2YgeW91ciBnbGF2Lgo+
IAo+IE9uIFRodSwgMjAyMi0wOS0yOSBhdCAxOToyMCArMDIwMCwgQmVybmhhcmQgUHJhc2NoaW5n
ZXIgd3JvdGU6Cj4gLi4uCj4+Pgo+Pj4gREVUQUlMUzoKPj4+IGphbm9zQGFuZHJhc2xpbnV4IH4v
dG1wICQgbGF2cGxheSAtcCBTIC12IDIgZXpjYXAwMDAxLmF2aQo+Pj4gbGF2cGxheTIuMi4xCj4+
PiBsYXZ0b29scyB2ZXJzaW9uIDIuMi4xCj4+PiAtLURFQlVHOiBbbGF2cGxheV0gT3BlbmluZyB2
aWRlbyBmaWxlIGV6Y2FwMDAwMS5hdmkgLi4uCj4+PiAqKkVSUk9SOiBbbGF2cGxheV0gRXJyb3Ig
b3BlbmluZyBlemNhcDAwMDEuYXZpCj4+Pgo+Pj4gamFub3NAYW5kcmFzbGludXggfi90bXAgJCBm
aWxlIGV6Y2FwMDAwMS5hdmkKPj4+IGV6Y2FwMDAwMS5hdmk6IFJJRkYgKGxpdHRsZS1lbmRpYW4p
IGRhdGEsIEFWSSwgODAwIHggNTkyLCAzMC4wMAo+Pj4gZnBzLAo+Pj4gdmlkZW86IFh2aUQsIGF1
ZGlvOiBNUEVHLTEgTGF5ZXIgMyAoc3RlcmVvLCA0NDEwMCBIeikKPj4+Cj4+PiBqYW5vc0BhbmRy
YXNsaW51eCB+L3RtcCAkIGZmcHJvYmUgZXpjYXAwMDAxLmF2aQo+Pj4gZmZwcm9iZSB2ZXJzaW9u
IDQuNC4yIENvcHlyaWdodCAoYykgMjAwNy0yMDIxIHRoZSBGRm1wZWcgZGV2ZWxvcGVycwo+Pj4g
IMKgwqAgYnVpbHQgd2l0aCBnY2MgMTEuMy4wIChHZW50b28gMTEuMy4wIHA0KQo+Pj4gLi4uCj4+
PiBJbnB1dCAjMCwgYXZpLCBmcm9tICdlemNhcDAwMDEuYXZpJzoKPj4+ICDCoMKgIER1cmF0aW9u
OiAwMTo0ODo1MS42Nywgc3RhcnQ6IDAuMDAwMDAwLCBiaXRyYXRlOiA5Njcga2Ivcwo+Pj4gIMKg
wqAgU3RyZWFtICMwOjA6IFZpZGVvOiBtcGVnNCAoQWR2YW5jZWQgU2ltcGxlIFByb2ZpbGUpIChY
VklEIC8KPj4+IDB4NDQ0OTU2NTgpLCB5dXY0MjBwLCA4MDB4NTkyIFtTQVIgMToxIERBUiA1MDoz
N10sIDg5NiBrYi9zLCAzMAo+Pj4gZnBzLCAzMAo+Pj4gdGJyLCAzMCB0Ym4sIDMwIHRiYyBTdHJl
YW0gIzA6MTogQXVkaW86IG1wMyAoVVswXVswXVswXSAvIDB4MDA1NSksCj4+PiA0NDEwMCBIeiwg
c3RlcmVvLCBmbHRwLCA2NCBrYi9zVGhlIG1qcGVndG9vbHMgY2FuIG9ubHkgaGFuZGxlIGEgZmV3
Cj4+PiBBVkkgQ29kZWNzLiBGb3IgZXhhbXBsZTogZHZ2aWRlbwo+PiBhbmQgbWpwZWcgaXQgY2Fu
J3QgZGVjb2RlIHRoZSBlbmNvZGVkIE1QRUc0Cj4+Cj4+IEkgZG9uJ3Qga25vdyBpZiBmZm1wZWcg
Y2FuIGRlY29kZSBpdCBpbiBhIGZvcm1hdCB0aGUgbWpwZWd0b29scwo+PiB1bmRlcnN0YW5kLiBC
dXQgbXBsYXllciBjYW4gKHNob3VsZCkgZG8gaXQsIGhlcmUgaXMgYXJlIGV4YW1wbGUKPj4gY29t
bWFuZHMKPj4gZm9yIHZpZGVvOgo+PiAgwqA+bWtmaWZvIHN0cmVhbS55dXYKPj4gIMKgPmNhdCBz
dHJlYW0ueXV2IOKUgiB5dXZkZW5vaXNlIOKUgiB5dXZzY2FsZXIgLU8gU1ZDRCDilIIgbXBlZzJl
bmMgLWYgNCAtbwo+PiB2aWRlb19zdmNkLm0ydgo+PiAgwqA+bXBsYXllciAtbm9zb3VuZCAtbm9m
cmFtZWRyb3AgLXZvIHl1djRtcGVnIGFueWZpbGUubXBnCj4+Cj4+IEZvciBBdWRpbzoKPj4gIMKg
Pm1wbGF5ZXIgLXZvIG51bGwgLWFvIHBjbTpmaWxlPWFueWZpbGUud2F2IGFueWZpbGUubXBnCj4+
ICDCoD4gY2F0IGFueWZpbGUud2F2IOKUgiBtcDJlbmMgLXYgMiAtViAtbyBzb3VuZC5tcDIKPj4K
Pj4gWW91IGZpbmQgYSBzZWN0aW9uIGluIHRoZTogbWpwZWd0b29scyBtYW5wYWdlIGNhbGxlZDog
RGVjb2RpbmcKPj4gc3RyZWFtcwo+PiB3aXRoIG1wbGF5ZXIgdGhhdCBzaG91bGQgZXhwbGFpbiBp
dCBpbiBtb3JlIGRldGFpbC4gSSBob3BlIHRoZQo+PiBwcm9ncmFtCmF1ZiBob2ZmZW50bGljaCBi
YWxkLAoKQmVybmkgdGhlIENoYW9zIG9mIFdvb2RxdWFydGVyCgpFbWFpbDogYmVybmhhcmRAZ3Jp
ZXNiYWNoLmF0Cnd3dzogaHR0cDovL3d3dy5seXNhdG9yLmxpdS5zZS9+Z3ovYmVybmhhcmQKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpNanBlZy11c2Vy
cyBtYWlsaW5nIGxpc3QKTWpwZWctdXNlcnNAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8v
bGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL21qcGVnLXVzZXJzCg==
