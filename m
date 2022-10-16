Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F555FFE32
	for <lists+mjpeg-users@lfdr.de>; Sun, 16 Oct 2022 10:39:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1ojzAl-0001Fn-P7;
	Sun, 16 Oct 2022 08:39:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bernhard@griesbach.at>) id 1ojzAa-0001FR-4f
 for mjpeg-users@lists.sourceforge.net;
 Sun, 16 Oct 2022 08:38:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:References:Cc:To:Subject:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aQzM9Y3muWEybHqJPphiceLmDj4u/kE0ZRzNKUlZZe8=; b=Kcka5KBnK8D4BiRjsADqF4KwJs
 uxw11gm6q0oAPDnwk4deiuqNGwWf/h+5DFYWIaG1FPFCo2oQuk4BpfeyUEl0U7H2tdvko1OSBZJV3
 AsxUnYBO5+fzlLvKDTtH/pnT97YAHhHFiI05UjKbw1/J0i+3I2giYkVaOzOkEuFJ1byA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:References:Cc:To:Subject:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aQzM9Y3muWEybHqJPphiceLmDj4u/kE0ZRzNKUlZZe8=; b=gu5EcqP5IKYm/7R1nvm7rCeYXP
 H+QjsvAwfRxT8JRm1UbTMAeHtKi3nB9K2xXa/oya8OAoug1PITBjrwjDulOPnmslrAr3qoFBhGAE6
 4MdzRRJVSAAmI7g9HKA6xSbwK8gnjT2HP1pJlrQtCh479Ov4XbqePF5pUOrwrioqXbNY=;
Received: from srv211.suspace.net ([176.28.0.211] helo=srv1.suspace.net)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ojzAX-0006TG-TP for mjpeg-users@lists.sourceforge.net;
 Sun, 16 Oct 2022 08:38:51 +0000
Received: from srv1.suspace.net (localhost.localdomain [127.0.0.1])
 by srv1.suspace.net (Postfix) with ESMTP id 340FB1620D8;
 Sun, 16 Oct 2022 10:38:42 +0200 (CEST)
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
 with ESMTP id szaKDIO6_rkN; Sun, 16 Oct 2022 10:38:41 +0200 (CEST)
Received: from [10.20.30.37] (193-81-241-43.oan.highway.a1.net [193.81.241.43])
 by srv1.suspace.net (Postfix) with ESMTPSA id A4391160773;
 Sun, 16 Oct 2022 10:38:41 +0200 (CEST)
Received-SPF: pass (srv1.suspace.net: connection is authenticated)
From: Bernhard Praschinger <bernhard@griesbach.at>
To: Janos G Komaromi <janos@andraslinux.jgklinux.jankom.net>
References: <1f684654-8907-655c-b8c0-ed5bb8a15d82@griesbach.at>
 <9f4c6922fbd9940e07875116618012df8a133c6a.camel@jankom.net>
 <20221006092153.1d76bbd3@andraslinux>
 <74c98e9f-ac31-e318-8d53-f62c7705fdab@griesbach.at>
 <20221008095345.23b41f1a@andraslinux>
 <2a17fa6e-a342-1cb9-f75c-03106b139078@griesbach.at>
 <20221010145111.65e78e39@andraslinux> <20221015111424.55e183bf@andraslinux>
Message-ID: <adbcae19-e903-fa75-359b-72f281f82d86@griesbach.at>
Date: Sun, 16 Oct 2022 10:38:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 SeaMonkey/2.53.13
MIME-Version: 1.0
In-Reply-To: <20221015111424.55e183bf@andraslinux>
X-PPP-Message-ID: <166590952184.4348.8616632486560364198@srv1.suspace.net>
X-PPP-Vhost: griesbach.at
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hallo, Sorry for the delay. When you want to convert the file
 so you can edit it with glav, you need to change the commands a little bit
 so glav understand the AVI. You need to create a intermediate AVI file [...]
 Content analysis details:   (-2.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1ojzAX-0006TG-TP
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

SGFsbG8sCgpTb3JyeSBmb3IgdGhlIGRlbGF5LgpXaGVuIHlvdSB3YW50IHRvIGNvbnZlcnQgdGhl
IGZpbGUgc28geW91IGNhbiBlZGl0IGl0IHdpdGggZ2xhdiwgeW91IG5lZWQgCnRvIGNoYW5nZSB0
aGUgY29tbWFuZHMgYSBsaXR0bGUgYml0IHNvIGdsYXYgdW5kZXJzdGFuZCB0aGUgQVZJLiBZb3Ug
bmVlZCAKdG8gY3JlYXRlIGEgaW50ZXJtZWRpYXRlIEFWSSBmaWxlOgoKbWtmaWZvIHN0cmVhbS55
dXYKY2F0IHN0cmVhbS55dXYg4pSCIHl1dnNjYWxlciAtTyBTVkNEIOKUgiB5dXYybGF2IC1xIDkw
IC1mIGEgLW8gCnZpZGVvX3dpdGhvdXRfc291bmQuYXZpICYKbXBsYXllciAtbm9zb3VuZCAtbm9m
cmFtZWRyb3AgLXZvIHl1djRtcGVnIGV6Y2FwMDAwMS5hdmkKCm1wbGF5ZXIgLXZvIG51bGwgLWFv
IHBjbTpmaWxlPWF1ZGlvLndhdiBlemNhcDAwMDEuYXZpCmNhdCBhdWRpby53YXYg4pSCIG1wMmVu
YyAtdiAyIC1WIC1vIHNvdW5kLm1wMgoKWW91IG5lZWQgdGhhbiB0byBhZGQgdGhlIHNvdW5kL2F1
ZGlvIHRvIHRoZSB2aWRlbzoKbGF2YWRkd2F2IHZpZGVvX3dpdGhvdXRfc291bmQuYXZpIHNvdW5k
Lm1wMiBvdXRwdXQuYXZpCgpJZiB0aGUgYXZpIGZpbGUgcmVhY2hlcyB0aGUgMkdCIEZpbGVzaXpl
bGltaXQgeW91IHNob3VsZCBjaGFuZ2UgdG8gdGhlIApRdWlja3RpbWUuIFlvdSBuZWVkIHRvIHJl
cGxhY2UgdGhlIHl1djJsYXYgb3B0aW9uIC1mIGEgd2l0aDogLWYgcQoKb3V0cHV0LmF2aSBjb250
YWlucyB2aWRlbyBhbmQgc291bmQsIHlvdSBjYW4gZWRpdCBpdCB3aXRoIGdsYXYuCkFmdGVyIGVk
aXRpbmcgeW91IGdldCB0aGUgZWRpbGlzdCBmaWxlLCB5b3UgY2FuIHByb2Nlc3MgYXMgeW91IGFy
ZSB1c2VkLiAKdG8uCgpKYW5vcyBHIEtvbWFyb21pIHdyb3RlOgo+IFByb2dyZXNzIHJlcG9ydCBh
ZnRlciByZWFkaW5nIHRoZSBGTS4KPiAKPiBFeGVjdXRlZCB0aGUgZm9sbG93aWcgY29tbWFuZHM6
Cj4gbXBsYXllciAtYW8gcGNtOmZhc3Q6ZmlsZT1hdWRpby53YXYgLXYgbnVsbCBlemNhcDAwMDEu
YXZpCj4gY2F0IGF1ZGlvLndhdiB8IG1wMmVuYyAtbyBhdWRpby5tcDIKPiBtcGxleCBhdWRpby5t
cDIgdmlkZW9fc3ZjZC5tMnYgLW8gdGVzdC5tcGcKPiBtcGxleCAtViAtciAxNzQwIGF1ZGlvLm1w
MiB2aWRlb19zdmNkLm0ydiAtbyB0ZXN0Lm1wZwo+IG1wbGF5ZXIgdGVzdC5tcGcKPiBnbGF2IHRl
c3QubXBnCj4gCj4gUmVzdWx0czoKPiAoMSkgbXBsZXggaW4gZWl0aGVyIGZvcm1zIGNvbXBsYWlu
cyBhYm91dCB0b28gbWFueSBmcmFtZXMgZHJvcHBlZCBhbmQKPiB0aGVuIHF1aXRzLgo+ICgyKSBt
cGxheWVyIHBsYXlzIHRoZSBmaWxlLCBidXQgaXQgaXMgYSBsb25nIHZpZGVvLCBzbyBJIHN0b3Bw
ZWQgQjQKPiBjb21wbGV0aW9uLgo+ICgzKSBnbGF2IGhhcyB0aGUgc2FtZSBlcnJvciBhcyBpbiBt
eSBpbml0aWFsIHBvc3QuCj4gCj4gU28gSSdtIHN0aWxsIGFza2luZyBmb3IgaGVscC4gVGhlcmUg
aXMgbm8gdmlkZW8gZWRpdG9yIGF2YWlsYWJsZSBmb3IKPiBHZW50b28uIEkgbGlrZSBnbGF2IGFu
ZCB3b3VsZCBsaWtlIHRvIHVzZSBpdCBmb3IgbXkgdmlkZW8gZmlsZXMKPiB0cmFuc2ZlcnJlZCBm
cm9tIG9sZCB2aWRlbyByZWNvcmRlciB0YXBlcy4KPiAKPiBUaHggLSBKYW5vcwo+IAo+IAo+IE9u
IE1vbiwgMTAgT2N0IDIwMjIgMTQ6NTE6MTEgLTA0MDAKPiBKYW5vcyBHIEtvbWFyb21pIDxqYW5v
c0BhbmRyYXNsaW51eC5qZ2tsaW51eC5qYW5rb20ubmV0PiB3cm90ZToKPiAKPj4gSGksCj4+Cj4+
IFRoYW5rcywgQmVybmllLiBPbmUgc3RlcCBjbG9zZXIuCj4+IEkgcmVjb21waWxlZCBtcGxheWVy
LCBhbmQgbm93IHRoZSBjb21tYW5kIHdvcmtzLiBJIG5vdyBoYXZlIGEKPj4gInZpZGVvX3N2Y2Qu
bTJ2IiBmaWxlLiBJdCBwbGF5cyB3aXRoIG1wbGF5ZXIgYnV0IHRoZXJlIGlzIG5vIHNvdW5kLgo+
PiBTbyB0aGUgbmV4dCBzdGVwOiBob3cgZG8gSSBtYWtlIGEgY29tcGxldGUgZmlsZSwgdmlkZW8g
YW5kIHNvdW5kLCB0aGF0Cj4+IGdsYXYgd2lsbCBiZSBhYmxlIHRvIHByb2Nlc3MgZm9yIGVkaXRp
bmc/Cj4+Cj4+IFJlZ2FyZHMsCj4+Cj4+IEphbm9zCgphdWYgaG9mZmVudGxpY2ggYmFsZCwKCkJl
cm5pIHRoZSBDaGFvcyBvZiBXb29kcXVhcnRlcgoKRW1haWw6IGJlcm5oYXJkQGdyaWVzYmFjaC5h
dAp3d3c6IGh0dHA6Ly93d3cubHlzYXRvci5saXUuc2Uvfmd6L2Jlcm5oYXJkCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTWpwZWctdXNlcnMgbWFpbGlu
ZyBsaXN0Ck1qcGVnLXVzZXJzQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9tanBlZy11c2Vycwo=
