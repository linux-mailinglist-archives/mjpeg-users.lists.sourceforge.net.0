Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D32C604D6A
	for <lists+mjpeg-users@lfdr.de>; Wed, 19 Oct 2022 18:29:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1olBwv-0001fR-95;
	Wed, 19 Oct 2022 16:29:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <janos@andraslinux.jgklinux.jankom.net>)
 id 1olBmw-0001UJ-4b for mjpeg-users@lists.sourceforge.net;
 Wed, 19 Oct 2022 16:19:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nnDdjhoG12SXZ7EyZwLkU9gC1F0/jnmN2gB8Zz3BQdU=; b=gpxaarZcweX0qC+NtjuKeCfvjx
 yZnGCDWfVKcFz3r0LuWruXWHUynq1DDZcC+TsugsEBzE7Ri0CIB0K20nOnnzWeVza8tZOuSaN4HJY
 lE6Y+Y6BumHRkmxuvc1JF4YUGHG+wH5HfOYwfBbSjSn+dH8J8rGTihS9/NA8p5Mgm+90=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nnDdjhoG12SXZ7EyZwLkU9gC1F0/jnmN2gB8Zz3BQdU=; b=QKJnZmN5V12aOfngl+icuY/iAi
 NF4Bts22Nf4nVfp9FUlhv3rMnuIpFvXI66Y4eIh7WUskqh3BEwtPSlsPZ3Bg3ALF0Hi8io6ZfAgK3
 u9z5Su4q8OI6vVQUAYI7jt9Nw5HmZ1PukXTa34JBcau7qTweJ06f/2B+Dt2eFylY2Oe4=;
Received: from jgklinux.jankom.net ([198.74.55.83]
 helo=andraslinux.jgklinux.jankom.net)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1olBmv-009qk7-3b for mjpeg-users@lists.sourceforge.net;
 Wed, 19 Oct 2022 16:19:26 +0000
Received: from andraslinux (jgklinux [10.8.0.1])
 by andraslinux.jgklinux.jankom.net (Postfix) with ESMTPS id E505E40DC4;
 Wed, 19 Oct 2022 12:19:15 -0400 (EDT)
Date: Wed, 19 Oct 2022 12:19:13 -0400
From: Janos G Komaromi <janos@andraslinux.jgklinux.jankom.net>
To: Bernhard Praschinger <bernhard@griesbach.at>
Message-ID: <20221019121913.008f7f9d@andraslinux>
In-Reply-To: <20221018152218.0b680513@andraslinux>
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
 Content preview:  Update: I've installed alsa-oss and now glav does not die.
 But it is still not working properly. Here is the command and terminal output:
 Quote: Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: jankom.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
X-Headers-End: 1olBmv-009qk7-3b
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

VXBkYXRlOgoKSSd2ZSBpbnN0YWxsZWQgYWxzYS1vc3MgYW5kIG5vdyBnbGF2IGRvZXMgbm90IGRp
ZS4gQnV0IGl0IGlzIHN0aWxsIG5vdAp3b3JraW5nIHByb3Blcmx5LiBIZXJlIGlzIHRoZSBjb21t
YW5kIGFuZCB0ZXJtaW5hbCBvdXRwdXQ6CgpRdW90ZToKCmphbm9zQGFuZHJhc2xpbnV4IH4vdG1w
ICQgYW9zcyBnbGF2IG91dHB1dC5hdmkgCisrOiArKyBXQVJOOiBbbGF2cGxheV0gVW5hYmxlIHRv
IHNldCBuZWdhdGl2ZSBwcmlvcml0eSBmb3IgYXVkaW8gdGhyZWFkLgorKzogKysgV0FSTjogW2xh
dnBsYXldIFB0aHJlYWQgUmVhbC10aW1lIHNjaGVkdWxpbmcgZm9yIGF1ZGlvIHRocmVhZApjb3Vs
ZCBub3QgYmUgZW5hYmxlZC4gKys6IGxhdnRvb2xzIHZlcnNpb24gMi4yLjEKKys6ICoqRVJST1I6
IFtsYXZwbGF5XSBFcnJvciBwbGF5aW5nIGF1ZGlvOiBCdWZmZXIgb3ZlcmZsb3cgd3JpdGluZwph
dWRpbyArKzogCgpVbnF1b3RlCgpUaGUgaW5pdGlhbCBzY3JlZW4gYXBwZWFycywgYW5kIGFmdGVy
IGFib3V0IDQgc2Vjb25kIHNvbWUgbm9pc2UgY29tZXMKb3V0IG9mIHRoZSBzcGVha2VycywgYW5k
IHNvb24gYWZ0ZXIgdGhlIHdob2xlIHRoaW5nIGRpZXMuIFNhbWUgd2l0aApsYXZwbGF5LiBIb3dl
dmVyLCBtcGxheWVyIGNhbiBwbGF5IHRoZSBhbG1vc3QgNyBHaWcgb3V0cHV0LGF2aQpjb3JyZWN0
bHkgd2l0aCBzb3VuZC4KCklzIHRoZSBmaWxlIHRvbyBiaWc/IEFueSBvdGhlciBtZXRob2RzPwoK
VGhhbmtzIGZvciB5b3VyIGF0dGVudGlvbiwKCkphbm9zCi0tIApzZW50IGZyb20gSmFub3MnIEhp
bGxhcnkgc2VydmVyIGFuZApOT1QgZnJvbSBpUGhvbmUgbm9yIEdvb2dsZQpmYWNlYm9vaywgaW5z
dGFncmFtLCB2aWJlciwgc25hcGNoYXQsIHR3aXR0ZXIsIHRpay10b2ssIGV0Yy4KLSBuZWl0aGVy
IG9mIGxpa2UgdGhvc2UuCmh0dHBzOi8vYW5kcmFzbGludXguamdrbGludXguamFua29tLm5ldC8K
Ck9uIFR1ZSwgMTggT2N0IDIwMjIgMTU6MjI6MTggLTA0MDAKSmFub3MgRyBLb21hcm9taSA8amFu
b3NAYW5kcmFzbGludXguamdrbGludXguamFua29tLm5ldD4gd3JvdGU6Cgo+IFllcywgaXQgZGlk
Lgo+IAo+IEFsdGhvdWdoIGdsYXYgc3RpbGwgZGllZCBiZWNhdXNlIG9mIG1pc3NpbmcgL2Rldi9k
c3AuCj4gCj4gSSByZW1lbWJlciBmcm9tIGEgZmV3IHllYXJzIGFnbyB0aGF0IGdsYXYgdXNlcyBP
U1Mgbm90IEFsc2EuIENhbiB5b3UKPiBwbGVhc2UgaGVscCB3aGF0IHRvIGRvIG5leHQ/IAo+IAo+
IE9uIFR1ZSwgMTggT2N0IDIwMjIgMTk6Mjc6NDUgKzAyMDAKPiBCZXJuaGFyZCBQcmFzY2hpbmdl
ciA8YmVybmhhcmRAZ3JpZXNiYWNoLmF0PiB3cm90ZToKPiAK4oCLCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTWpwZWctdXNlcnMgbWFpbGluZyBsaXN0
Ck1qcGVnLXVzZXJzQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZv
cmdlLm5ldC9saXN0cy9saXN0aW5mby9tanBlZy11c2Vycwo=
