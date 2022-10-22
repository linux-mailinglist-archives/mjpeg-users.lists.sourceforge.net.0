Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B51B608B17
	for <lists+mjpeg-users@lfdr.de>; Sat, 22 Oct 2022 11:36:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1omAvU-0005YU-JR;
	Sat, 22 Oct 2022 09:36:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bernhard@griesbach.at>) id 1omAvM-0005YM-CS
 for mjpeg-users@lists.sourceforge.net;
 Sat, 22 Oct 2022 09:36:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gJLsuawcrVqRMTdrTrpoyIXV7l9XJ7+Q/ESY58FBUF4=; b=HC639IylBaQUnLMKgO1NbCT1px
 dJq+M9bYJaOasu5UTJPHt6l4J6jQZ2fjDZJSKZAZZMXaiMBFl/G19N3S3aYI2mF1LMofspkudQAZ9
 BpQaxAvxb1NFfURZvFQCH9lVcY2Xao8AD2nEjPxLKAbC5Tl0Y2rgQa7R/MYdL0/9h+Gk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gJLsuawcrVqRMTdrTrpoyIXV7l9XJ7+Q/ESY58FBUF4=; b=eO0mlIkgwDOWVcS1K0bXSOlcvq
 /rJO93W9FdBMW9NA0J3WVqJoGgCG95WTYt4bFfj5qRFssFqboKYQ90coGjVEm21dTxiKHavUtd+US
 zhZ24fd8NJ/CLsb9hU3yXRbZqWbvwmS0agtHhomqBqkyPe6BhwbYwz1rdlg5chMn4pyk=;
Received: from srv211.suspace.net ([176.28.0.211] helo=srv1.suspace.net)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1omAvK-0004SN-7y for mjpeg-users@lists.sourceforge.net;
 Sat, 22 Oct 2022 09:36:12 +0000
Received: from srv1.suspace.net (localhost.localdomain [127.0.0.1])
 by srv1.suspace.net (Postfix) with ESMTP id CE22B162A14;
 Sat, 22 Oct 2022 11:36:03 +0200 (CEST)
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
 with ESMTP id LadAEjTLqvRu; Sat, 22 Oct 2022 11:36:03 +0200 (CEST)
Received: from [10.20.30.37] (193-81-241-43.oan.highway.a1.net [193.81.241.43])
 by srv1.suspace.net (Postfix) with ESMTPSA id 48AF5162A04;
 Sat, 22 Oct 2022 11:36:03 +0200 (CEST)
Received-SPF: pass (srv1.suspace.net: connection is authenticated)
To: Janos G Komaromi <janos@andraslinux.jgklinux.jankom.net>,
 "Janos G. Komaromi" <janos@jankom.net>
References: <1f684654-8907-655c-b8c0-ed5bb8a15d82@griesbach.at>
 <9f4c6922fbd9940e07875116618012df8a133c6a.camel@jankom.net>
 <20221006092153.1d76bbd3@andraslinux>
 <74c98e9f-ac31-e318-8d53-f62c7705fdab@griesbach.at>
 <20221008095345.23b41f1a@andraslinux>
 <2a17fa6e-a342-1cb9-f75c-03106b139078@griesbach.at>
 <20221010145111.65e78e39@andraslinux> <20221015111424.55e183bf@andraslinux>
 <adbcae19-e903-fa75-359b-72f281f82d86@griesbach.at>
 <20221017145851.19351786@andraslinux>
 <346fe3b1-e2ef-1384-d819-e3a892a2a235@griesbach.at>
 <20221018152218.0b680513@andraslinux> <20221019121913.008f7f9d@andraslinux>
 <c7673683-b952-979c-d167-f02070b896b0@griesbach.at>
 <b2717eb91f342c02257b644730c43ef436c6391b.camel@jankom.net>
 <20221020110308.2e94f862@andraslinux>
From: Bernhard Praschinger <bernhard@griesbach.at>
Message-ID: <6a1c6526-dadb-81a5-d859-e1f8bfca9a39@griesbach.at>
Date: Sat, 22 Oct 2022 11:36:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 SeaMonkey/2.53.14
MIME-Version: 1.0
In-Reply-To: <20221020110308.2e94f862@andraslinux>
X-PPP-Message-ID: <166643136347.20027.10823940114368465566@srv1.suspace.net>
X-PPP-Vhost: griesbach.at
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hallo, I digged it up from a older mail: Stream #0:0: Video:
 mpeg4 (Advanced Simple Profile) (XVID / 0x44495658), yuv420p, 800x592 [SAR
 1:1 DAR 50:37], 896 kb/s, 30 fps, 30 tbr, 30 tbn, I'm not sure what kind
 source you have: because the size is with 800x592 a little bit strange. That
 is neither PAL not NTSC or SECAM 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: liu.se]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1omAvK-0004SN-7y
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

SGFsbG8sCgpJIGRpZ2dlZCBpdCB1cCBmcm9tIGEgb2xkZXIgbWFpbDoKU3RyZWFtICMwOjA6IFZp
ZGVvOiBtcGVnNCAoQWR2YW5jZWQgU2ltcGxlIFByb2ZpbGUpIChYVklEIC8KMHg0NDQ5NTY1OCks
Cnl1djQyMHAsIDgwMHg1OTIgW1NBUiAxOjEgREFSIDUwOjM3XSwgODk2IGtiL3MsIDMwIGZwcywg
MzAgdGJyLCAzMCB0Ym4sCgpJJ20gbm90IHN1cmUgd2hhdCBraW5kIHNvdXJjZSB5b3UgaGF2ZTog
YmVjYXVzZSB0aGUgc2l6ZSBpcyB3aXRoIDgwMHg1OTIgCmEgbGl0dGxlIGJpdCBzdHJhbmdlLiBU
aGF0IGlzIG5laXRoZXIgUEFMIG5vdCBOVFNDIG9yIFNFQ0FNCgpJZiB5b3Ugd2FudCB0byBlbmNv
ZGUgdGhlIHJlc3VsdCBmb3IgdmlkZW8gcGxlYXNlIHRyeSBhIGNvbW1hbmQgbGlrZSAKdGhhdCBh
c3N1bWluZyB5b3UgaGF2ZSBhIDQ6MyBzb3VyY2U6CiA+IGNhdCBzdHJlYW0ueXV2IOKUgiB5dXZz
Y2FsZXIgLU8gRFZEIHwgeXV2MmxhdiAtSSAwIC1xIDkwIC1mIHEgLW8KdmlkZW9fd2l0aG91dF9z
b3VuZC5xdCAmCgpEZXBlbmRpbmcgb24gdGhlIHNvdXJjZSB2aWRlbyB5b3UgbWlnaHQgbmVlZCB0
byBhZGQgdGhlIC1uIHAvcy9uIApwPXBhbCxzPXNlY2FtLG49bnRzYyBzd2l0Y2ggdG8geXV2c2Nh
bGVyLgoKSWYgaXQgbG9va2VzIHN0cmFuZ2UgcGxlYXNlIGFkZCB0aGUgb3V0cHV0IGZyb20gdGhl
IGNvbW1hbmRzIHRvIHRoZSAKbWFpbC4gQWRkIHRvIHl1dnNjYWxlciBhbmQgeXV2MmxhdjogLXYg
MiBzbyB0aGUgb3V0cHV0IGlzIG1vcmUgdmVyYm9zZS4KCgoKSmFub3MgRyBLb21hcm9taSB3cm90
ZToKPiBTb3JyeSB0byBib3RoZXIgdGhpcyBjb21tdW5pdHkgYWdhaW4gd2l0aCBhIGZvbGxvdyB1
cCBxdWVzdGlvbjoKPiAKPiBOb3cgdGhhdCBnbGF2IHdvcmtzIEkgaGF2ZSB2aXN1YWxseSBub3Rp
Y2VkIGEgZGlmZmVyZW5jZSBiZXR3ZWVuIHRoZQo+IG9yaWdpbmFsIChjb21wcmVzc2VkKSBmaWxl
IGFuZCB0aGUgZ2xhdi1jb21wYXRpYmxlIChodWdlKSBmaWxlLiBJbgo+IG9yZGVyIHRvIGNvbmZp
cm0gbXkgc3VzcGljaW9uIEkgaXNzdWVkIHRoZSBjb21tYW5kOgo+IGZmcHJvYmUgLXYgZXJyb3Ig
LXNob3dfZm9ybWF0IC1zaG93X3N0cmVhbXMgPGJvdGggdmVyc2lvbnM+Cj4gYW5kIGNvbXBhcmVk
IHRoZSBvdXRwdXRzIC0gc2VlIGF0dGFjaGVkIGRpZmYudHh0IGZpbGUuCj4gCj4gSXQgaXMgb2J2
aW91cyB0aGF0Cj4gKGEpIHdpZHRoIGFuZCBoZWlnaHQgcmF0aW8gaXMgY2hhbmdlZCAobGluZXMg
MTItMTMgdnMgMTktMjApOwo+IChiKSB5dXY0MjBwIHZzIHl1dmo0MjJwIChsaW5lcyAyNiB2cyAz
MykgLSBtYXliZSBub3QgcmVsZXZhbnQgZm9yIHZpc3VhbAo+IGFwcGVhcmFuY2U7Cj4gKGMpIHRp
bWUgYmFzZSAobGluZXMgNDIgdnMgNDQpIC0gdGhpcyBleHBsYWlucyB0aGUgYmxvYXRlZCBzaXpl
LCBkbyB3ZQo+IG5lZWQgdGhpcywgYW5kIGlmIG5vdCwgaG93IHRvIGxlYXZlIGl0IGFzIG9yaWdp
bmFsPwo+IAo+IE9idmlvdXNseSwgb25seSBpdGVtIChhKSBpcyBpbXBvcnRhbnQsIHRoZSByZXN0
IGlzIG1haW5seSBmb3IgbXkKPiBjdXJpb3NpdHkgYW5kIGJldHRlciB1bmRlcnN0YW5kaW5nIG9m
IHRoZSBkaWdpdGFsIHZpZGVvIGNvbmNlcHRzLgo+IAo+IEphbm9zCj4gCj4gCj4gT24gV2VkLCAx
OSBPY3QgMjAyMiAxNDozNjo1OCAtMDQwMAo+ICJKYW5vcyBHLiBLb21hcm9taSIgPGphbm9zQGph
bmtvbS5uZXQ+IHdyb3RlOgo+IAo+PiBUaGFua3MuIFllcywgZ2xhdiB3b3JrcyB3aXRoIC1hIDAu
Cj4+Cj4+IEFzIGZhciBhcyAvZGV2L2RzcCBpcyBjb25jZXJuZWQgSSBtYXkgaGF2ZSB0byByZWNv
bXBpbGUga2VybmVsIHRvCj4+IGluY2x1ZGUgb3NzIGRyaXZlcnMuIEknbGwga2VlcCBvbiB3b3Jr
aW5nIHRoZSBzb3VuZCBwYXJ0LCBidXQgZm9yIG15Cj4+IG1vc3QgaW1tZWRpYXRlIGVkaXRpbmcg
dGFza3Mgc291bmQgb3V0cHV0IGlzIG5vdCB0aGF0IGltcG9ydGFudC4KPj4KPj4gVGhhbmtzIGFn
YWluIGZvciBhbGwgeW91IHN1cHBvcnQgYW5kIGFsc28gZm9yIFN0ZXBoZW4ncyBpZGVhIG9mIGZm
bXBlZwo+PiBtZXRob2Qgb2Ygc2ltbXBseSBjdXR0aW5nIG91dCBhIHNlY3Rpb24gb2YgdGhlIG9y
aWdpbmFsIChjb21wcmVzc2VkKQo+PiAuYXZpIGZpbGUuCj4+Cj4+IEJlc3QgdG8gYWxsLAo+Pgo+
PiBKYW5vcwo+PiBQUyAtIHBsZWFzZSBhZGQgbXkgb3RoZXIgZW1haWwgYWRkcmVzcwo+PiBqYW5v
c0BhbmRyYXNsaW51eC5qZ2tsaW51eC5qYW5rb20ubmV0Cj4+IHRvIG1lbWJlcnMgb2YgeW91ciBt
YWlsaW5nIGxpc3QuCj4+CgotLSAKYXVmIGhvZmZlbnRsaWNoIGJhbGQsCgpCZXJuaSB0aGUgQ2hh
b3Mgb2YgV29vZHF1YXJ0ZXIKCkVtYWlsOiBiZXJuaGFyZEBncmllc2JhY2guYXQKd3d3OiBodHRw
Oi8vd3d3Lmx5c2F0b3IubGl1LnNlL35nei9iZXJuaGFyZAoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCk1qcGVnLXVzZXJzIG1haWxpbmcgbGlzdApNanBl
Zy11c2Vyc0BsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5u
ZXQvbGlzdHMvbGlzdGluZm8vbWpwZWctdXNlcnMK
