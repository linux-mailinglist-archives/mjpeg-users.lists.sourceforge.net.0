Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 31CFD401DF0
	for <lists+mjpeg-users@lfdr.de>; Mon,  6 Sep 2021 18:00:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mNH31-0007ik-4k; Mon, 06 Sep 2021 16:00:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <hverkuil@xs4all.nl>) id 1mNGCQ-0006IA-Li
 for mjpeg-users@lists.sourceforge.net; Mon, 06 Sep 2021 15:06:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yeHa/t0AGOYf+3WJOb6kO5tvc+5inH6bRJkSTgSvV0I=; b=atgHI+OBjfzyO0bFtZgFy7/xLU
 /OQ/B33b51oU7UzeT2Nlu4OFfnQjt5Jn44J9d2XdLMKAEAeXXH2wqFcq/2pFykT4bRuk2x7A7LShf
 rwzog7DhchF9DIItQysYxr1PELjUmnDWMuKfIKPnWHuv5M4ufrd3FhS6cE34bVHCKOUc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yeHa/t0AGOYf+3WJOb6kO5tvc+5inH6bRJkSTgSvV0I=; b=UfFrpukC8G+9vr8FvVijUMgQgG
 e5OKWxn9lCTE3Oh+JWM2kHqyruQjfaG7zO205r9S6CykbSMSrGmNwVAV8fpJtSFou7WZySwZWi8wj
 QbhocfijoA+1M/LFrIoExkw05OIsfRKxSDrVNsaZu3AfRYtMoM77EswR0UO2YuuJD5xo=;
Received: from lb2-smtp-cloud7.xs4all.net ([194.109.24.28])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mNGCO-00HUq2-8U
 for mjpeg-users@lists.sourceforge.net; Mon, 06 Sep 2021 15:06:18 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud7.xs4all.net with ESMTPA
 id NGCDmvT9n0e6wNGCEmjmQm; Mon, 06 Sep 2021 17:06:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1630940766; bh=yeHa/t0AGOYf+3WJOb6kO5tvc+5inH6bRJkSTgSvV0I=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=PMI6lg4+idACUqyL35yCYZ9GGGWKr8OcG6ZYfC8o9ti4eowRMBfSi2HLmkvXsYc8s
 PXa1ww5aLk25Y3iJZFCFUYm88bEIJRbUdY7JnEIuqwj691uXMtSImVgd8NPuIk+fwr
 vSJwKvapZ6+8vP7hodx8Gk4TPjND67bZlpFnIUBpsjCRZR9TZTVUCoIpFEY/KpC20i
 hmX3hw8UXiJqj73O6bOMgGrRwDggX52UQfGymVkjkeEj8R76TVAXAkSgBm9Q4dpcNy
 LgLSo1yRRcsHxpyMCNMyWH4xgFGw28B46AEEOUZ7Kz4QpT2CBLJfkc18lKCdsquwAn
 WepygwiopS1UQ==
To: LABBE Corentin <clabbe@baylibre.com>
References: <20210903191540.3052775-1-clabbe@baylibre.com>
 <efe035cc-1839-210f-c0d4-4d58801aa65c@xs4all.nl> <YTYcf3We4dcvBx1h@Red>
 <940d5bdf-89b8-b5a4-f485-aa5b1c51286b@xs4all.nl> <YTYsL5i0B48k/V0Z@Red>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <3745aef0-bab0-06ee-6073-892b80fb4c8b@xs4all.nl>
Date: Mon, 6 Sep 2021 17:06:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <YTYsL5i0B48k/V0Z@Red>
Content-Language: en-US
X-CMAE-Envelope: MS4xfPe4A5wkLGAmuzlYMzRdamij6d8UPn4nlc9TZZD7roox9yA20SQmNTRN9cmzE0US4z3HGIflLVfCJ7NLjEHYE1Z9cHTRlXpU1xGDT/qlEf+/I9iv5ljq
 R+BDC2m3dOyU7l1EsLjBP0JaBvS/G+TItpqfmIlw8ir3e97cAiL5en3g07R7nLHHcA4V0UtobPd8+EPuMiWGlakdkltPcTW+NDNT51N75dw6YQZERY6ht5Kg
 DPRKCfgNqFT3hujB5BQAQjUiT9mHaqlbVrGt8O6ZBmPmXqI9MfCzOHTTNW5vsemgFX2RvyIsXFLg9IiSKsNxIeJBZapp9Isn42+8lhOwOXlNiQclbN8ifZC4
 bpFeKzGbnroE6iCxvZBRT9dIuADg6x1CPySnwJsViot8CzNXaYcKQy4Ow1DO7bq89dj8SOepfcq+7JVRSzkiL3B9o20CpiR7dgoDbZfhBS8bFk9A/5M+oJJq
 zUquhXQtuuz/w70eeQ87VwynNDuYnX9CNy5+ScZyPAHg6Pm1/0fJwKwfLYE=
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 06/09/2021 16:56, LABBE Corentin wrote: > Le Mon, Sep 06,
    2021 at 04:11:16PM +0200, Hans Verkuil a écrit : >> On 06/09/2021 15:49,
    LABBE Corentin wrote: >>> Le Mon, Sep 06, 2021 at 01:03:56PM +020 [...] 
 
 Content analysis details:   (-2.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [194.109.24.28 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [194.109.24.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mNGCO-00HUq2-8U
X-Mailman-Approved-At: Mon, 06 Sep 2021 16:00:35 +0000
Subject: Re: [Mjpeg-users] [PATCH 0/8] staging: media: zoran: fusion in one
 module
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
Cc: gregkh@linuxfoundation.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, mjpeg-users@lists.sourceforge.net,
 mchehab@kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

T24gMDYvMDkvMjAyMSAxNjo1NiwgTEFCQkUgQ29yZW50aW4gd3JvdGU6Cj4gTGUgTW9uLCBTZXAg
MDYsIDIwMjEgYXQgMDQ6MTE6MTZQTSArMDIwMCwgSGFucyBWZXJrdWlsIGEgw6ljcml0IDoKPj4g
T24gMDYvMDkvMjAyMSAxNTo0OSwgTEFCQkUgQ29yZW50aW4gd3JvdGU6Cj4+PiBMZSBNb24sIFNl
cCAwNiwgMjAyMSBhdCAwMTowMzo1NlBNICswMjAwLCBIYW5zIFZlcmt1aWwgYSDDqWNyaXQgOgo+
Pj4+IEhpIENvcmVudGluLAo+Pj4+Cj4+Pj4gSSBmaW5hbGx5IGhhZCB0aGUgb3Bwb3J0dW5pdHkg
dG8gdGVzdCB0aGUgc3RhZ2luZyB6b3JhbiBkcml2ZXIuCj4+Pj4KPj4+PiBJIGZvdW5kIHNldmVy
YWwgaXNzdWVzIHdoZW4gcnVubmluZyB2NGwyLWNvbXBsaWFuY2UgLXMgKEkgcG9zdGVkIGEgcGF0
Y2gKPj4+PiBmb3IgdGhhdCksIGJ1dCBtb3JlIHNlcmlvdXNseSBpcyB0aGUgZmFjdCB0aGF0IHRy
eWluZyB0byBjYXB0dXJlIE1KUEcKPj4+PiBhdCByZXNvbHV0aW9ucyAzODR4Mjg4IG9yIGxlc3Mg
anVzdCBoYW5ncyBteSBQQy4gSXQgd29ya3MgT0sgd2l0aCA3Njh4NTc2Lgo+Pj4+Cj4+Pj4gSSBk
aXNjb3ZlcmVkIHRoaXMgd2hlbiBydW5uaW5nICd2NGwyLWNvbXBsaWFuY2UgLXMgLWEgLWYnLgo+
Pj4+Cj4+Pj4gQlRXLCB3aHkgaXNuJ3QgdGhlIGluaXRpYWwgZm9ybWF0IGVxdWFsIHRvIE1KUEcg
NzY4eDU3Nj8KPj4+PiBJIHdvdWxkIGV4cGVjdCB0aGF0IGZvciB0aGVzZSBib2FyZHMgdGhhdCBz
aG91bGQgYmUgdGhlIGRlZmF1bHQgZm9ybWF0Lgo+Pj4+Cj4+Pj4gQW5vdGhlciBpc3N1ZSBpcyB0
aGF0IHRoZSBUT0RPIHNob3VsZCBtZW50aW9uIHRoYXQgZm9yIHZpZGVvIG91dHB1dCB0aGVyZQo+
Pj4+IHNob3VsZCBiZSBhIHNlY29uZCB2aWRlbyBkZXZpY2Ugbm9kZS4gQW5kIHRoYXQncyByZWFs
bHkgc29tZXRoaW5nIHRoYXQKPj4+PiBoYXMgdG8gYmUgZG9uZSBiZWZvcmUgdGhlIHpvcmFuIGRy
aXZlciBjYW4gYmUgbW92ZWQgb3V0IG9mIHN0YWdpbmcuCj4+Pj4KPj4+PiBJdCBzaG91bGRuJ3Qg
YmUgdGhhdCBoYXJkIHRvIGltcGxlbWVudCwgSSB0aGluay4KPj4+Pgo+Pj4+IFJpZ2h0IG5vdyBp
dCBpcyBpbXBvc3NpYmxlIHRvIHJ1biB0aGUgY29tcGxpYW5jZSB0ZXN0IGZvciB0aGUgb3V0cHV0
LCBzaW5jZQo+Pj4+IGl0IGRvZXNuJ3QgZXZlbiBzZWUgaXQgYXMgYW4gb3V0cHV0Lgo+Pj4+Cj4+
Pj4gUmVnYXJkcywKPj4+Pgo+Pj4+IAlIYW5zCj4+Pgo+Pj4gSSB3b3JrIG9uIGhhdmluZyBhIHNl
Y29uZCBkZXZpY2UgZm9yIG91dHB1dCwgKGl0IGlzIHRoZSByZWFzb24gb2YgInN0YWdpbmc6IG1l
ZGlhOiB6b3JhbjogbW92ZSB2aWRlb2RldiBhbGxvYyIgd2hpY2ggd2lsbCBoZWxwKS4KPj4+Cj4+
PiBCdXQgSSBzdGlsbCBoYXZlIHRoZSBwcm9ibGVtIG9mIG5vbiB3b3JraW5nIG91dHB1dC4KPj4+
Cj4+PiBEb2VzIG91dHB1dCBpcyByZWFsbHkgbmVlZGVkIGZvciBnb2luZyBvdXQgb2Ygc3RhZ2lu
ZyA/Cj4+PiBQcm9iYWJseSBub2JvZHkgaGF2ZSBpdCB3b3JraW5nIGZvciBhZ2VzLiBUaGUgb25s
eSB3YXkgdG8gaGFkIGl0IHdhcyB0byB1c2UgYW4gb2xkIG1wbGF5ZXIgb3V0cHV0IHdoaWNoIGlz
IGJyb2tlbiBzaW5jZSBzbyBtYW55IHRpbWUuCj4+PiBOb3RlIHRoYXQgdGhpcyBwbHVnaW4gd2ls
bCBuZXZlciB3b3JrIGFnYWluLgo+Pj4KPj4+IFRoZSBvbmx5IHdheSB0byB3b3JrIG9uIG91dHB1
dCBpcyB0byB1c2UgZmZtcGVnIHdoaWNoIGp1c3QgcmVjZW50bHkgaGF2ZSBzdXBvcnQgZm9yIHdy
aXRpbmcgbm9uLXJhdyB2aWRlbyB0byBWNEwuCj4+Cj4+IFRoZW4ganVzdCByZW1vdmUgaXQuIFRo
ZSBjb2RlIGZvciBvdXRwdXQgcmVtYWlucyBpbiB0aGUgZ2l0IGhpc3Rvcnkgc28gaWYgc29tZW9u
ZSB3YW50cyB0bwo+PiByZXN1cnJlY3QgdGhhdCwgdGhlbiB0aGF0J3MgYWx3YXlzIHBvc3NpYmxl
Lgo+Pgo+PiBUaGUgcG9pbnQgaXMgdGhhdCBJIGRvbid0IHdhbnQgdG8gaGF2ZSBoYWxmLWJha2Vk
IG91dHB1dCBzdXBwb3J0IGluIG1haW5saW5lLgo+Pgo+PiBCdXQgd2hhdCBleGFjdGx5IGlzIHRo
ZSBwcm9ibGVtIHdpdGggZ2V0dGluZyBvdXRwdXQgdG8gd29yaz8gRG9lc24ndCBpdCBqdXN0IGRl
Y29kZQo+PiBNSlBFRyBmcmFtZXM/IChTb3JyeSBpZiB5b3UgZXhwbGFpbmVkIGl0IGJlZm9yZSwg
aXQncyBzbyBsb25nIGFnbyB0aGF0IEkgbG9va2VkIGF0IHRoaXMKPj4gdGhhdCBJIGZvcmdvdCB0
aGUgZGV0YWlscykKPj4KPiAKPiBUaGUgZmlyc3QgcHJvYmxlbSBpcyB0aGF0IHpvcmFuIGRvbnQg
bGlrZSBjb21tZW50IENPTS9BUFAwIG1hcmtlcnMuCj4gVGhpcyBpbXBseSBhIHBlciBidWZmZXIg
ZmlsdGVyaW5nIGJ1dCB0aGlzIGlzIGFscmVhZHkgaGFuZGxlZCBpbiBteSBuZXh0IGJyYW5jaC4K
PiAKPiBCdXQgdGhlIHJlbWFpbmluZyBwcm9ibGVtIGlzIHRoYXQgYW55IG91dHB1dCBpcyBsaWtl
IGh0dHA6Ly9rZXJuZWwubW9udGpvaWUub3ZoL3pvcmFuX291dC5wbmcuCj4gCj4gSSBoYWNrZWQg
dGhlIGRyaXZlciB0byBncmFiIGEgd29ya2luZyBidWZmZXIgd2hlbiBkb2luZyBpbnB1dCBhbmQg
b3ZlcnJ1biBvdXRwdXQgYnVmZmVyIGxhdGVyLgo+IEFuZCB0aGUgcmVzdWx0IGlzIGEgd29ya2lu
ZyBzdGF0aWMgb3V0cHV0Lgo+IFNvIHRoZSBodyBoYW5kbGluZyBpcyBnb29kIGFuZCB0aGUgcHJv
YmxlbSBjYW1lIGZyb20gdGhlIGRhdGEgZmVlZGluZy9oYW5kbGluZy4KPiAKPiBJIGJlbGlldmUg
dGhhdCBzb21ldGhpbmcgaXMgd3JvbmcgaW4gd2hhdCBmZm1wZWcgbmVnb2NpYXRlL3NlbmQuCj4g
Cj4gUmVnYXJkcwo+IAoKV2h5IG5vdCB1c2UgdjRsMi1jdGwgdG8gY2FwdHVyZSB2aWRlbyBhbmQg
dGhlbiByZXBsYXkgaXQ/IFlvdSBzaG91bGQgYmUgYWJsZSB0byBkbyB0aGlzOgoKdjRsMi1jdGwg
LS1zdHJlYW0tbW1hcCAtLXN0cmVhbS10by1oZHIgY2FwLmhkciAtLXN0cmVhbS1jb3VudCA2MAoK
dGhlbiB0aGlzOgoKdjRsMi1jdGwgLS1zdHJlYW0tb3V0LW1tYXAgLS1zdHJlYW0tZnJvbS1oZHIg
Y2FwLmhkcgoKVGhlIC1oZHIgb3B0aW9ucyB3cml0ZSB0aGUgZnJhbWVzIHByZWZpeGVkIHdpdGgg
YSBoZWFkZXIgY29udGFpbmluZyB0aGUgbGVuZ3RoIG9mIHRoZSBmcmFtZS4KVGhhdCB3YXkgeW91
IGNhbiBjYXB0dXJlIHZhcmlhYmxlLWxlbmd0aCBmcmFtZXMgYW5kIHN0cmVhbSB0aGVtIG91dCB3
aXRoIHRoZSBzYW1lIHBheWxvYWQKbGVuZ3RoLgoKUmVnYXJkcywKCglIYW5zCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTWpwZWctdXNlcnMgbWFpbGlu
ZyBsaXN0Ck1qcGVnLXVzZXJzQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9tanBlZy11c2Vycwo=
