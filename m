Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E46565F82EF
	for <lists+mjpeg-users@lfdr.de>; Sat,  8 Oct 2022 06:29:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1oh1T7-0008Ds-8C;
	Sat, 08 Oct 2022 04:29:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bernhard@griesbach.at>) id 1oh1T5-0008Dm-49
 for mjpeg-users@lists.sourceforge.net;
 Sat, 08 Oct 2022 04:29:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oU0qMznk8Pahsre2bBeoGHAkc4WrqMIbJkEfcvR8MPY=; b=fWswIap1+v5Zbj2MwAy8872CYw
 YQ9XRUmZ6yx3x4PV7LGRNeXglpogdZkn3rqIBCwZzqVBIT2Ws0W96l8kt8TKf9eVw38UCT/aUuOc1
 l7VrDmC1B1FGlo5lruSEVRZfBjCXczjczcar9jC2hJz6KOImovebFJwfjTbdyDAAqdmQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oU0qMznk8Pahsre2bBeoGHAkc4WrqMIbJkEfcvR8MPY=; b=mF3CZ6M2RdOuIXLlESDAgb0JRq
 Wa/s9iavtMECLOVD/CH8D9bZ5LNpzwZJBv+/9ACgGTbybb/lp4mbhGkePPUti6nD5tVoLLAkQJO5V
 PLFzOxlu1HhdEEt0hKe4rckKMKqUNIvYvwv1VCcBmMlzeqPK95MR9BdaU/eXHG+kxS10=;
Received: from srv211.suspace.net ([176.28.0.211] helo=srv1.suspace.net)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oh1T3-00082n-Aw for mjpeg-users@lists.sourceforge.net;
 Sat, 08 Oct 2022 04:29:43 +0000
Received: from srv1.suspace.net (localhost.localdomain [127.0.0.1])
 by srv1.suspace.net (Postfix) with ESMTP id DE1D2162A04;
 Sat,  8 Oct 2022 06:29:32 +0200 (CEST)
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
 with ESMTP id uUkPaEgCHl3E; Sat,  8 Oct 2022 06:29:32 +0200 (CEST)
Received: from [10.20.30.37] (193-83-8-41.oan.highway.a1.net [193.83.8.41])
 by srv1.suspace.net (Postfix) with ESMTPSA id 2EEEA1604B4;
 Sat,  8 Oct 2022 06:29:32 +0200 (CEST)
Received-SPF: pass (srv1.suspace.net: connection is authenticated)
To: Janos G Komaromi <janos@andraslinux.jgklinux.jankom.net>,
 "Janos G. Komaromi" <janos@jankom.net>, mjpeg-users@lists.sourceforge.net
References: <1f684654-8907-655c-b8c0-ed5bb8a15d82@griesbach.at>
 <9f4c6922fbd9940e07875116618012df8a133c6a.camel@jankom.net>
 <20221006092153.1d76bbd3@andraslinux>
From: Bernhard Praschinger <bernhard@griesbach.at>
Message-ID: <74c98e9f-ac31-e318-8d53-f62c7705fdab@griesbach.at>
Date: Sat, 8 Oct 2022 06:29:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 SeaMonkey/2.53.13
MIME-Version: 1.0
In-Reply-To: <20221006092153.1d76bbd3@andraslinux>
X-PPP-Message-ID: <166520337236.26468.544847281723508260@srv1.suspace.net>
X-PPP-Vhost: griesbach.at
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hallo, It seems that your version of mplayer was not complied
 with the That is the important line: Error opening/initializing the selected
 video_out (-vo) device. Please do a test: > mplayer -vo help You should find
 a line like: yuv4mpeg yuv4mpeg output for mjpegtools 
 Content analysis details:   (-2.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1oh1T3-00082n-Aw
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

SGFsbG8sCgpJdCBzZWVtcyB0aGF0IHlvdXIgdmVyc2lvbiBvZiBtcGxheWVyIHdhcyBub3QgY29t
cGxpZWQgd2l0aCB0aGUKVGhhdCBpcyB0aGUgaW1wb3J0YW50IGxpbmU6IEVycm9yIG9wZW5pbmcv
aW5pdGlhbGl6aW5nIHRoZSBzZWxlY3RlZCAKdmlkZW9fb3V0ICgtdm8pIGRldmljZS4KClBsZWFz
ZSBkbyBhIHRlc3Q6ID4gbXBsYXllciAtdm8gaGVscApZb3Ugc2hvdWxkIGZpbmQgYSBsaW5lIGxp
a2U6Cgl5dXY0bXBlZwl5dXY0bXBlZyBvdXRwdXQgZm9yIG1qcGVndG9vbHMKCklmIG5vdCwgaXQg
d291bGQgbWVhbiB0byBtZSB0aGF0IG1wbGF5ZXIgd2FzIGNvbXBpbGVkIHdpdGhvdXQgeXV2NG1w
ZWcgCnN1cHBvcnQuIE15IHZlcnNpb24gb2YgbXBsYXllcjogTVBsYXllciAxLjQtNwoKSWYgeW91
IGRpZCBjb21waWxlIGl0IG9uIHlvdSBvd24gcGxlYXNlIGNoZWNrIHdoZW4gcnVubmluZyB0IGNv
bmZpZ3VyZSAKdGhhdCB5b3UgZmluZCBpbiB0aGUgZW5hYmxlZCBkcml2ZXIgeXV2NG1wZWcuCiAg
RW5hYmxlZCBvcHRpb25hbCBkcml2ZXJzOgogICAgIElucHV0OiBmdHAgcHZyIHR2LXY0bDIgdHYg
Y2RkYiBjZGRhIGR2ZHJlYWQgdmNkIGR2YiBuZXR3b3JraW5nCiAgICAgQ29kZWNzOiBsaWJ2cHgg
eHZpZCBmZm1wZWcoaW50ZXJuYWwpIHJlYWwgeGFuaW0gZmFhYyBsaWJtcGVnMiAKbXBnMTIzIHNw
ZWV4CiAgICAgQXVkaW8gb3V0cHV0OiBhbHNhIHB1bHNlIG9zcyB2NGwyIHNkbCBtcGVncGVzKGR2
YikKICAgICBWaWRlbyBvdXRwdXQ6IHY0bDIgbWF0cml4dmlldyBvcGVuZ2wgc2RsIHBubSBqcGVn
IG1wZWdwZXMoZHZiKSAKZmJkZXYgeHZpZGl4IGN2aWRpeCB4MTEgeG92ZXIgeXV2NG1wZWcgbWQ1
c3VtIHRnYQotLS1FTkQtLS0KCklmIHlvdSB1c2UgdGhlIHByZWNvbXBpbGVkIHZlcnNpb24gZnJv
bSB5b3VyIGRpc3RyaWJ1dGlvbiBJIHdvdWxkIApyZWNvbW1lbmQgdGhhdCB5b3UgZG93bmxvYWQg
dGhlIHNvdXJjZSBhbmQgY29tcGlsZSBpdCBvbiB5b3VyIG93bi4KCgpKYW5vcyBHIEtvbWFyb21p
IHdyb3RlOgo+IEhlbGxvIEJlcm5pZSwgdGhhbmtzLiBIZXJlIGlzIHdoYXQgaGFwcGVuZWQ6Cj4g
Cj4gamFub3NAYW5kcmFzbGludXggfi90bXAgJCBjYXQgc3RyZWFtLnl1diB8IHl1dnNjYWxlciAt
TyBTVkNEIHwgbXBlZzJlbmMKPiAtZiA0IC1vIHZpZGVvX3N2Y2QubTJ2ICYgbXBsYXllciAtbm9z
b3VuZCAtbm9mcmFtZWRyb3AgLXZvIHl1djRtcGVnCj4gZXpjYXAwMDAxLmF2aQo+IAo+IFsxXSAy
MTUzNSBJTkZPOiBbeXV2c2NhbGVyXSB5dXZzY2FsZXIgMi4yLjEgMTEtRGVjLTIwMDcKPiAgICAg
SU5GTzogW3l1dnNjYWxlcl0gKEMpIDIwMDEtMjAwNCBYYXZpZXIgQmlxdWFyZCA8eGJpcXVhcmRA
ZnJlZS5mcj4sCj4geXV2c2NhbGVyIC1oIGZvciBoZWxwLCBvciBtYW4geXV2c2NhbGVyIElORk86
IFttcGVnMmVuY10gU0VUVElORwo+IEVYVEVOREVEIE1NWCBmb3IgTU9USU9OISBJTkZPOiBbbXBl
ZzJlbmNdIFNFVFRJTkcgU1NFIGFuZCBNTVggZm9yCj4gVFJBTlNGT1JNISBJTkZPOiBbbXBlZzJl
bmNdIFNFVFRJTkcgRVhURU5ERUQgTU1YIGZvciBQUkVESUNUSU9OIQo+IE1QbGF5ZXIgMS40LTEx
LjMuMCAoQykgMjAwMC0yMDE5IE1QbGF5ZXIgVGVhbQo+IAo+IFBsYXlpbmcgZXpjYXAwMDAxLmF2
aS4KPiBsaWJhdmZvcm1hdCB2ZXJzaW9uIDU4Ljc2LjEwMCAoZXh0ZXJuYWwpCj4gQVZJIGZpbGUg
Zm9ybWF0IGRldGVjdGVkLgo+IFthdmloZWFkZXJdIFZpZGVvIHN0cmVhbSBmb3VuZCwgLXZpZCAw
Cj4gW2F2aWhlYWRlcl0gQXVkaW8gc3RyZWFtIGZvdW5kLCAtYWlkIDEKPiBWSURFTzogIFtYVklE
XSAgODAweDU5MiAgMjRicHAgIDMwLjAwMCBmcHMgIDg5Ni41IGticHMgKDEwOS40IGtieXRlL3Mp
Cj4gRXJyb3Igb3BlbmluZy9pbml0aWFsaXppbmcgdGhlIHNlbGVjdGVkIHZpZGVvX291dCAoLXZv
KSBkZXZpY2UuCj4gTm8gc3RyZWFtIGZvdW5kLgo+IAo+IAo+IEV4aXRpbmcuLi4gKEVuZCBvZiBm
aWxlKQo+IGphbm9zQGFuZHJhc2xpbnV4IH4vdG1wICQgbHMKPiBlemNhcDAwMDEuYXZpICBzdHJl
YW0ueXV2Cj4gCj4gSSBkb24ndCB1bmRlcnN0YW5kLiBpZiBJIGlzc3VlIGNvbW1hbmQKPiAKPiBq
YW5vc0BhbmRyYXNsaW51eCB+L3RtcCAkIG1wbGF5ZXIgZXpjYXAwMDAxLmF2aQo+IAo+IE1QbGF5
ZXIgMS40LTExLjMuMCAoQykgMjAwMC0yMDE5IE1QbGF5ZXIgVGVhbQo+IAo+IFBsYXlpbmcgZXpj
YXAwMDAxLmF2aS4KPiBsaWJhdmZvcm1hdCB2ZXJzaW9uIDU4Ljc2LjEwMCAoZXh0ZXJuYWwpCj4g
QVZJIGZpbGUgZm9ybWF0IGRldGVjdGVkLgo+IFthdmloZWFkZXJdIFZpZGVvIHN0cmVhbSBmb3Vu
ZCwgLXZpZCAwCj4gW2F2aWhlYWRlcl0gQXVkaW8gc3RyZWFtIGZvdW5kLCAtYWlkIDEKPiBWSURF
TzogIFtYVklEXSAgODAweDU5MiAgMjRicHAgIDMwLjAwMCBmcHMgIDg5Ni41IGticHMgKDEwOS40
IGtieXRlL3MpCj4gPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KPiBPcGVuaW5nIHZpZGVvIGRlY29kZXI6IFtm
Zm1wZWddIEZGbXBlZydzIGxpYmF2Y29kZWMgY29kZWMgZmFtaWx5Cj4gbGliYXZjb2RlYyB2ZXJz
aW9uIDU4LjEzNC4xMDAgKGV4dGVybmFsKQo+IFttcGVnNCBAIDB4N2ZmNmJhM2E4ZjYwXVJlcXVl
c3RlZCBmcmFtZSB0aHJlYWRpbmcgd2l0aCBhIGN1c3RvbQo+IGdldF9idWZmZXIyKCkgaW1wbGVt
ZW50YXRpb24gd2hpY2ggaXMgbm90IG1hcmtlZCBhcyB0aHJlYWQgc2FmZS4gVGhpcwo+IGlzIG5v
dCBzdXBwb3J0ZWQgYW55bW9yZSwgbWFrZSB5b3VyIGNhbGxiYWNrIHRocmVhZC1zYWZlLiBTZWxl
Y3RlZAo+IHZpZGVvIGNvZGVjOiBbZmZvZGl2eF0gdmZtOiBmZm1wZWcgKEZGbXBlZyBNUEVHLTQp
Cj4gPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT0KPiBMb2FkIHN1YnRpdGxlcyBpbiAuLwo+ID09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09Cj4gT3BlbmluZyBhdWRpbyBkZWNvZGVyOiBbbXBnMTIzXSBNUEVHIDEuMC8yLjAvMi41
IGxheWVycyBJLCBJSSwgSUlJCj4gQVVESU86IDQ0MTAwIEh6LCAyIGNoLCBzMTZsZSwgNjQuMCBr
Yml0LzQuNTQlIChyYXRpbzogODAwMC0+MTc2NDAwKQo+IFNlbGVjdGVkIGF1ZGlvIGNvZGVjOiBb
bXBnMTIzXSBhZm06IG1wZzEyMyAoTVBFRyAxLjAvMi4wLzIuNSBsYXllcnMgSSwKPiBJSSwgSUlJ
KQo+ID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09Cj4gQU86IFthbHNhXSA0ODAwMEh6IDJjaCBzMTZsZSAoMiBi
eXRlcyBwZXIgc2FtcGxlKQo+IFN0YXJ0aW5nIHBsYXliYWNrLi4uCj4gTW92aWUtQXNwZWN0IGlz
IHVuZGVmaW5lZCAtIG5vIHByZXNjYWxpbmcgYXBwbGllZC4KPiBWTzogW3h2XSA4MDB4NTkyID0+
IDgwMHg1OTIgUGxhbmFyIFlWMTIKPiBNb3ZpZS1Bc3BlY3QgaXMgMS4zNToxIC0gcHJlc2NhbGlu
ZyB0byBjb3JyZWN0IG1vdmllIGFzcGVjdC4KPiBWTzogW3h2XSA4MDB4NTkyID0+IDgwMHg1OTIg
UGxhbmFyIFlWMTIKPiBBOiAgMTYuMiBWOiAgMTYuMiBBLVY6IC0wLjAwMSBjdDogIDAuMDEyIDQ4
Ni80ODYgMjclICAwJSAgMC45JSAxNyAwCj4gCj4gRXhpdGluZy4uLiAoUXVpdCkKPiBqYW5vc0Bh
bmRyYXNsaW51eCB+L3RtcCAkCj4gCj4gdGhlIGZpbGUgc3RhcnRzIHRvIHBsYXkgYWxtb3N0IGlt
ZWRpYXRlbHkgaW4gYSBuZXcgd2luZG93LCBwZXJmZWN0bHkKPiB3aXRoIHNvdW5kIGFuZCBwaWN0
dXJlLiBTbyB0aGUgdmlkZW8tb3V0ICgtdm8pIGRldmljZSB3b3Jrcwo+IGF1dG9tYXRpY2FsbHkg
d2l0aCBtcGxheWVyLgo+IAo+IEphbm9zCj4gUC5TLiBJJ20gc2VuZGluZyB0aGlzIG1lc3NhZ2Ug
ZnJvbSBteSBvdGhlciBlbWFpbCBhZGRyZXNzLCBhIG1haWxzZXJ2ZXIKPiBvbiBteSBmaXRsZXQg
bWFjaGluZSB3aGVyZSBJIHRyeSBnbGF2LCBldGMuCj4gCj4gT24gVGh1LCAwNiBPY3QgMjAyMiAw
ODowNjoxOSAtMDQwMAo+ICJKYW5vcyBHLiBLb21hcm9taSIgPGphbm9zQGphbmtvbS5uZXQ+IHdy
b3RlOgo+IAo+PiAtLS0tLS0tLSBGb3J3YXJkZWQgTWVzc2FnZSAtLS0tLS0tLQo+PiBGcm9tOiBC
ZXJuaGFyZCBQcmFzY2hpbmdlciA8YmVybmhhcmRAZ3JpZXNiYWNoLmF0Pgo+PiBUbzogSmFub3Mg
Ry4gS29tYXJvbWkgPGphbm9zQGphbmtvbS5uZXQ+LCBNSlBFRy10b29scyB1c2VyIGxpc3QKPj4g
PG1qcGVnLXVzZXJzQGxpc3RzLnNvdXJjZWZvcmdlLm5ldD4KPj4gU3ViamVjdDogUmU6IFtNanBl
Zy11c2Vyc10gZ2xhdiBlcnJvciBvcGVuaW5nIC5hdmkgZmlsZQo+PiBEYXRlOiBUaHUsIDYgT2N0
IDIwMjIgMDY6Mjc6MDAgKzAyMDAKPj4gTWFpbGVyOiBNb3ppbGxhLzUuMCAoWDExOyBMaW51eCB4
ODZfNjQ7IHJ2OjY4LjApIEdlY2tvLzIwMTAwMTAxCj4+IEZpcmVmb3gvNjguMCBTZWFNb25rZXkv
Mi41My4xMwo+Pgo+PiBIYWxsbywKPj4KPj4gbWtmaWZvIGNyZWF0ZXMgYSBmaWxlIHdoZXJlIG9u
ZSBmaWxlL3Byb2Nlc3MgcmVhZHMgaXQncyBjb250ZW50LCBhbmQKPj4gYW5vdGhlciBwcm9jZXNz
IHB1dHMgZGF0YSBpbnRvLiBZb3UgbmVlZCBpcyB3aGVuIHByb2dyYW0gZGF0YSBjYW4ndAo+PiBw
aXBlCj4+IGRpcmVjdCB0byBlYWNoIG90aGVyLiBTbyB5b3UgY3JlYXRlIHRoZSBuYW1lZCBwaXBl
LiBZb3Ugc3RhcnQKPj4gYWZ0ZXJ3YXJkcwo+PiB0aGUgcHJvY2VzcyB0aGF0IHJlYWRzIHRoZSBk
YXRhIGFuZCBhcyBsYXN0IHN0ZXAgeW91IHB1dCB0aGUgZGF0YSBpbnRvCj4+IGl0Lgo+Pgo+PiBU
aGUgY29tbWFuZHMgZm9yIHRoZSB2aWRlbyB3b3VsZCB0aGFuIGJlIGluIG9uZSB0ZXJtaW5hbCB3
aW5kb3c6Cj4+ICDCoD4gbWtmaWZvIHN0cmVhbS55dXYKPj4gIMKgPiBjYXQgc3RyZWFtLnl1diDi
lIIgeXV2c2NhbGVyIC1PIFNWQ0Qg4pSCIG1wZWcyZW5jIC1mIDQgLW8KPj4gdmlkZW9fc3ZjZC5t
MnYgJgo+PiAgwqA+IG1wbGF5ZXIgLW5vc291bmQgLW5vZnJhbWVkcm9wIC12byB5dXY0bXBlZyBl
emNhcDAwMDEuYXZpCj4+Cj4+IERvbid0IGZvcmdldCB0byBhZGQgdGhlICYgaW4gdGhlIDJuZCBs
aW5lIHRvIHN0YXJ0IHRoZSBwcm9jZXNzIGluIHRoZQo+PiBiYWNrZ3JvdW5kLiBZb3UgZG9uJ3Qg
bmVlZCB0byBzdGFydCBtcGxheWVyIGluIHRoZSBiYWNrZ3JvdW5kLgo+Pgo+PiBGb3IgYXVkaW86
Cj4+ICDCoD4gbXBsYXllciAtdm8gbnVsbCAtYW8gcGNtOmZpbGU9YXVkaW8ud2F2IGV6Y2FwMDAw
MS5hdmkKPj4gIMKgPiBjYXQgYXVkaW8ud2F2IOKUgiBtcDJlbmMgLXYgMiAtViAtbyBzb3VuZC5t
cDIKPj4KPj4gQWZ0ZXJ3YXJkcyBtdXRpcGxleCB0aGUgZmlsZXMgdG9nZXRoZXIgd2l0aDoKPj4g
bXBsZXggLWYgNCBzb3VuZC5tcDIgdmlkZW9fc3ZjZC5tMnYgLW8gU1ZDRC5tcGcKPj4KPj4gWW91
IGhhdmUgdGhlbiBhIGVuY29kZWQgTVBFRyBmaWxlIHdpdGggaXN0IHN1aXRhYmxlIGZvciBTVkNE
LiBZb3UKPj4gbmVlZCB0byBjaGFuZ2UgdGhlIGNvbW1hbmRzIGZvciB5b3UgbmVlZC4KPj4gV2hh
dCBkbyB5b3Ugd2FudCB3aXRoIHRoZSBBVkkgZmlsZSA/Cj4+Cj4+IElmIHlvdSBlbmNvdW50ZXIg
ZXJyb3JzIHBsZWFzZSBhZGQgdGhlIG91dHB1dCB0byB0aGUgbWFpbC4KPj4KPj4gSmFub3MgRy4g
S29tYXJvbWkgd3JvdGU6Cj4+PiBIaSBCZXJuaWUsIHRoYW5rcyBmb3IgeW91ciBhbnN3ZXIuIFNv
cnJ5LCBJIGhhdmUgbm90IGJlZW4gZG9pbmcKPj4+IHZpZGVvIGVkaXRzIGxhdGVseSwgc28gSSBu
ZWVkIGEgbGl0dGxlIG1vcmUgaGVscC4gTGF0IHRpbWUgSSB1c2VkCj4+PiBDaW5lbGVycmEgZm9y
IHZpZGVvIGVkaXQgb24gbXkgb2xkIEZDLTMgZGVza3RvcC4KYXVmIGhvZmZlbnRsaWNoIGJhbGQs
CgpCZXJuaSB0aGUgQ2hhb3Mgb2YgV29vZHF1YXJ0ZXIKCkVtYWlsOiBiZXJuaGFyZEBncmllc2Jh
Y2guYXQKd3d3OiBodHRwOi8vd3d3Lmx5c2F0b3IubGl1LnNlL35nei9iZXJuaGFyZAoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk1qcGVnLXVzZXJzIG1h
aWxpbmcgbGlzdApNanBlZy11c2Vyc0BsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0
cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vbWpwZWctdXNlcnMK
