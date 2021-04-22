Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B9336863A
	for <lists+mjpeg-users@lfdr.de>; Thu, 22 Apr 2021 19:51:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1lZdU4-0008ET-Vt; Thu, 22 Apr 2021 17:51:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <shadowlord@utanet.at>) id 1lZdU2-0008EG-MH
 for mjpeg-users@lists.sourceforge.net; Thu, 22 Apr 2021 17:51:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ys7+y8ofLYZCOl8DFw3FNxrAqZx8zl8Wgh6iOXXTuBQ=; b=YsaOKf+U0nHh4K4DaUxlXoMOyI
 /xrv/q9BWEjBf4GhyV9KkwZ0DObMsIOFcK0BaNFX37gchKSFNt2jDU6YZdIk/xJSGoQCWnlG4/WC3
 a9sRwtsWsRNTDcqIQ2qTcNduy5fOsHRUq663ox9MJKPXPRFSYfnh0OcbVQsY+ukJMryM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ys7+y8ofLYZCOl8DFw3FNxrAqZx8zl8Wgh6iOXXTuBQ=; b=JCBq0kgcLFylOJsmw99FdGHwWz
 buUg50OozxxzcscmVN93+rF3kPEfls80hcRjuKJQdcU0eLNS4B5In72KTT8gkiBy1ixIbHtVfdgx5
 wNSL4vhGEt6YK1UMkv2ha80bD6MQyzjLWGum6EWN2M1VSSaEjtPnWH0p8CIhFAWuBNwM=;
Received: from tatiana2.utanet.at ([213.90.36.33])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lZdTx-0006er-Bg
 for mjpeg-users@lists.sourceforge.net; Thu, 22 Apr 2021 17:51:23 +0000
Received: from pam-s.drei.host ([213.90.36.66])
 by tatiana.utanet.at with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <shadowlord@utanet.at>)
 id 1lZdTl-0007wv-0r; Thu, 22 Apr 2021 19:51:05 +0200
Received: from 193-83-252-63.oan.highway.a1.net ([193.83.252.63]
 helo=[10.20.30.37])
 by pam-s.drei.host with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <shadowlord@utanet.at>)
 id 1lZdTk-0003tI-UV; Thu, 22 Apr 2021 19:51:04 +0200
To: MJPEG-tools user list <mjpeg-users@lists.sourceforge.net>,
 William Lum <lumwaiman@gmail.com>
References: <CA+84gYsnKaCg_q5hvoeNeHNOR+QfBMs_UP5P6HvgZ1GLyxRnwA@mail.gmail.com>
 <b12d2efc-73a6-adf0-09db-313ab9861d7d@utanet.at>
 <CA+84gYtje4TyUPNA_-ntjKOO-c2Ar3wjc==X7UH6Rka0khhC5g@mail.gmail.com>
 <32f0a419-2012-a662-5d8a-4d2b039942ec@utanet.at>
 <CA+84gYvj12J_kyxHdu9aNR9djm4JY1Qmywz3A9rXCLN07o=Y8g@mail.gmail.com>
 <48397ad2-f5c7-8472-c048-ebfeb0f5ca0d@utanet.at>
 <CA+84gYvq74z3mTp5OpY10jSVPWQtDUPO-YybOj=gNqoyEUWPbg@mail.gmail.com>
 <15ef888e-1545-1db9-2782-6a7a5c132d82@utanet.at>
 <CA+84gYvLZHVzrzPUZRU6K5X8n6inpuG9uKtBScqhXcnuu-pr=A@mail.gmail.com>
From: Bernhard Praschinger <shadowlord@utanet.at>
Message-ID: <35adce91-5952-e788-b645-9683e9d6c657@utanet.at>
Date: Thu, 22 Apr 2021 19:50:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 SeaMonkey/2.53.5.1
MIME-Version: 1.0
In-Reply-To: <CA+84gYvLZHVzrzPUZRU6K5X8n6inpuG9uKtBScqhXcnuu-pr=A@mail.gmail.com>
X-H3G-Authenticated-As: 2492d812503ae882f041a3ed11d939a345349e8a
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: utanet.at]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1lZdTx-0006er-Bg
Subject: Re: [Mjpeg-users] Lubuntu doesn't seem to recognize IOmega Buz
 capture card
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

SGFsbG8sCgpXaWxsaWFtIEx1bSB3cm90ZToKPiBIaSwKPiAKPiBJIGxvb2tlZCBpbiAvcHJvYy9z
Y3NpL2FkdmFuc3lzIGFuZCB0aGVyZSBpcyBhIGZpbGUgMTM6Cj4gCj4gQWR2YW5TeXMgU0NTSSAz
LjQ6IFBDSSBVbHRyYTogSU8gMHhBRTAwLTB4QUUwRiwgSVJRIDB4MTUKPiAKPiBEZXZpY2UgSW5m
b3JtYXRpb24gZm9yIEFkdmFuU3lzIFNDU0kgSG9zdCAxMzoKPiBUYXJnZXQgSURzIERldGVjdGVk
OiAyLCAoMj1Ib3N0IEFkYXB0ZXIpClsuLi5dCj4gRG9lcyB0aGlzIG1lYW4gaXQncyBsb2FkZWQ/
Ckl0IGxvb2tzIGF0IGxlYXN0IGdvb2QuIEl0IG1lYW5zIHRoYXQgdGhlIFBDSSBTd2l0Y2ggb24g
dGhlIGNhcmQgd29ya3MuCgo+IEluIHRoZSBTQ1NJIGZpbGUgc2hvd3M6Cj4gQXR0YWNoZWQgZGV2
aWNlczoKPiBIb3N0OiBzY3NpMSBDaGFubmVsOiAwMCBJZDogMDAgTHVuOiAwMAo+ICAgIFZlbmRv
cjogQVRBICAgICAgTW9kZWw6IFNBTVNVTkcgU1NEIFBNODMgUmV2OiAzRDFRCj4gICAgVHlwZTog
ICBEaXJlY3QtQWNjZXNzICAgICAgICAgICAgICAgICAgICBBTlNJICBTQ1NJIHJldmlzaW9uOiAw
NQoKPiBUcmllZCB0byBsb2FkIHRoZSBtb2R1bGUgYW5kIGRpZG4ndCBzZWUgYW4gZXJyb3IuLi4g
TG9va2VkIGF0IGJvb3QubG9nOgo+IEdlbmVyYXRpbmcgbG9jYWxlcy4uLgo+ICAgIGVuX1VTLlVU
Ri04Li4uIGRvbmUKPiBHZW5lcmF0aW9uIGNvbXBsZXRlLgo+IEZvdW5kIGxhYmVsICdVYnVudHUg
MTUuMDQgX1ZpdmlkIFZlcnZldF8gLSBSZWxlYXNlIGFtZDY0ICgyMDE1MDQyMiknCj4gVGhpcyBk
aXNjIGlzIGNhbGxlZDoKPiAnVWJ1bnR1IDE1LjA0IF9WaXZpZCBWZXJ2ZXRfIC0gUmVsZWFzZSBh
bWQ2NCAoMjAxNTA0MjIpJwo+ICAgICAgICAgICBTdGFydGluZyBXYWl0IGZvciBQbHltb3V0aCBC
b290IFNjcmVlbiB0byBRdWl0Li4uClsuLi5dCj4gRG9uJ3Qga25vdyBpZiB0aGlzIGhlbHBzPwpE
aWQgeW91IGFsc28gdHJ5IHRvIGxvYWQgdGhlIG1vZHVsZXMgZm9yIHRoZSBidXogYXMgSSBkaWQg
ZGVzY3JpYmUsIGFuZCAKbG9vayBhdCB0aGUgb3V0cHV0IG9mIHRoZSBrZXJuZWwgPyBUaGF0IHdv
dWxkIGJlIG1vcmUgaW50ZXJlc3RpbmcuClNvbWUgY29tbWFuZHMgbGlrZToKbW9kcHJvYmUgaTJj
LWNvcmUKbW9kcHJvYmUgaTJjLWFsZ28tYml0Cm1vZHByb2JlIHNhYTcxMTEKbW9kcHJvYmUgc2Fh
NzE4NQptb2Rwcm9iZSB6cjM2MDYwCgpZb3UgbWlnaHQgbmVlZCB0byByZXBsYWNlIHRoZSBtb2Rw
cm9iZSB3aXRoIGluc21vZCwgYW5kIGFkZCAua28gdG8gdGhlIAptb2R1bGUgbmFtZS4KCj4gT24g
My8yNy8yMSwgQmVybmhhcmQgUHJhc2NoaW5nZXIgPHNoYWRvd2xvcmRAdXRhbmV0LmF0PiB3cm90
ZToKPj4gSGFsbG8sCj4+Cj4+IFdpbGxpYW0gTHVtIHdyb3RlOgo+Pj4gWWVzIG15IGNhcmQgZG9l
cyBoYXZlIHRoZSBTQ1NJIGNvbm5lY3RvciBmb3IgdGhlIGV4dGVybmFsIGRyaXZlIHdoaWNoIEkK
Pj4+IGRvbid0IHVzZSBhbmQgdGhlIDE1IHBpbiBmb3IgdGhlIGJyZWFrb3V0IGJveC4KPj4gSXMg
dGhlIFNDU0kgQWRhcHRlciByZWNvZ25pemVkIGluIHRoZSBzeXN0ZW0gPwo+PiBUaGUgUENJIEJy
aWRnZSBpc3QgdGhlIE5hdGlvbmFsICBQaWNvfFBvd2VyIElDLiBUaGUgQWR2YW5zeXMgc2hvdWxk
IGJlCj4+IHRoZSBTQ1NJIGNvbnRyb2xsZXIuCj4+Cj4+IElzIHRoZSBkcml2ZXIgYWxyZWFkeSBs
b2FkZWQgPwo+PiBUYWtlIGEgbG9vayBpbiAvcHJvYy9zY3NpIHRoZXJlIHNob3VsZCBiZSAgc2Nz
aSBmaWxlIHlvdSBjYW4gdmlldy4KPj4KPj4gT3IgeW91IHRyeSBsb2FkaW5nIHRoZSBkcml2ZXIg
Zm9yIHRoZSBTQ1NJIGNvbnRyb2xsZXI6Cj4+IGluc21vZCBvciBtb2Rwcm9iZSBhZHZhbnN5cwo+
Pgo+PiBXaGVuIHlvdSBsb2FkIHRoZSBtb2R1bGUgaXQgd291bGQgYmUgZ29vZCB0byBjaGVjayBp
ZiB0aGUga2VybmVsIHdyaXRlcwo+PiBzb21ldGhpbmcgdG8gL3Zhci9sb2cvbWVzc2FnZXMKPj4K
Pj4+IFdoZW4geW91IHNheSBzd2l0Y2ggaXMgaXQgcGh5c2ljYWw/wqAgRG8gSSBuZWVkIHRvIHNl
dCBpdCB0byBhIGNlcnRhaW4KPj4+IGNvbmZpZz8KPj4gSSBkb24ndCBrbm93IGlmIHRoZXJlIGlz
IGEgcG9zc2liaWxpdHkgdG8gc2V0IGFueXRoaW5nLgo+Pgo+PiBXaGVuIHlvdSBzZWFyY2ggdGhl
IC92YXIvbG9nL2Jvb3QubG9nICBhbmQgL3Zhci9sb2cvYm9vdC5tc2cKPj4gZG8geW91IGZpbmQg
YW55IGhpbnRzIGFib3V0IHRoZSBidXosIGFkdmFuc3lzIG9yIHpvcmFuID8KPj4KPj4gZG1lc2cg
bGV0cyB5b3UgdmlldyB0aGUgYm9vdCBtZXNzYWdlcyAocHJvYmFibHkgYSBmaWxlIGluIC92YXIv
bG9nKSBhbnkKPj4gaGludCBhYm91dCB0aGUgem9yYW4gYW5kIHRoZSBkcml2ZXIgd291bGQgYmUg
dmVyeSBoZWxwZnVsLgo+PgphdWYgaG9mZmVudGxpY2ggYmFsZCwKCkJlcm5pIHRoZSBDaGFvcyBv
ZiBXb29kcXVhcnRlcgoKRW1haWw6IHNoYWRvd2xvcmRAdXRhbmV0LmF0Cnd3dzogaHR0cDovL3d3
dy5seXNhdG9yLmxpdS5zZS9+Z3ovYmVybmhhcmQKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpNanBlZy11c2VycyBtYWlsaW5nIGxpc3QKTWpwZWctdXNl
cnNAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xp
c3RzL2xpc3RpbmZvL21qcGVnLXVzZXJzCg==
