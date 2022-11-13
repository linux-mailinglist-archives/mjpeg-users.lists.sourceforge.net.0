Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BF7BD62711A
	for <lists+mjpeg-users@lfdr.de>; Sun, 13 Nov 2022 18:04:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1ouGOk-0006eP-R9;
	Sun, 13 Nov 2022 17:03:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <SRS0=EyfBzj=3N=jankom.net=janos@eigbox.net>)
 id 1ouGOS-0006e6-8R for mjpeg-users@lists.sourceforge.net;
 Sun, 13 Nov 2022 17:03:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:MIME-Version:Content-Transfer-Encoding:
 Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eDSrUn0gXrlJYZZTfeEGt2tnU6MzajOigRwPs90XC2A=; b=V8P+JYFeYqo+d2LbMGgUVahyHY
 EjwYrvqR841MrRAHvmMldsWeAgju8o74j31syQNNPc0qXbdlzZ0KGBqmwM0YBf59POy3PXCqZ3Jdm
 a1loRIqhJ9hMtITTu2MCt6BHq18/g5dZdc8oX++x2cbafKxaH9NzzPE3ARpUns3HqyeM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eDSrUn0gXrlJYZZTfeEGt2tnU6MzajOigRwPs90XC2A=; b=a/js2I0NWpPThhs43xz7X3fcao
 Llus0vWKcourYo/6i/8x79zCJeenYqIO2WgKS8PCxWHL88CUHFDNDmV5Bv3RAvc8uU+T3jOthebQk
 rHTjFh+YUpS2tJvBsk/ZrweiFhqkoEM29KIsAZa9st+hEGPLiDrv+U2bsxHpxCtCIvus=;
Received: from bosmailout02.eigbox.net ([66.96.189.2])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ouGOK-006t5V-SY for mjpeg-users@lists.sourceforge.net;
 Sun, 13 Nov 2022 17:03:40 +0000
Received: from [10.20.15.5] (helo=bosmailscan05.eigbox.net)
 by bosmailout02.eigbox.net with esmtp (Exim) id 1ouGOE-0006wF-RM
 for mjpeg-users@lists.sourceforge.net; Sun, 13 Nov 2022 12:03:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=jankom.net; 
 s=dkim;
 h=Sender:MIME-Version:Content-Transfer-Encoding:Content-Type:
 References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe
 :List-Post:List-Owner:List-Archive;
 bh=eDSrUn0gXrlJYZZTfeEGt2tnU6MzajOigRwPs90XC2A=; b=HvgB+buAX/KKGVtu6Tr65c5/ME
 BoL8Ww7b4bRpmhfZz3HhRobu9uO0z2iitZro4xdvSevdiP6BKVChVt5YOSlhIxg+wLkpGm06zEiDX
 HVI/cqfoKsBb0JV54dzAXxuyISHzQJi7HXM9Crqod5E41x7sup/ryNi6ZK3Kg2y9QhktTyHYkJb6F
 LL/hTff6dB9eMGKLGU4JDeRt3piZuGL3I/OSSws9roGJhjk2yk839R5Zov2ueeJ05ebg2cYlfwn+N
 q8KIX1mksN0dkWlpKNRux+cnKKyJ7ldZw+Ingb+y3TWwE2P0C8UlwKZ9jIOZVJ6wSfn2CN8wOff2l
 lxUI/KqQ==;
Received: from [10.115.3.32] (helo=bosimpout12)
 by bosmailscan05.eigbox.net with esmtp (Exim) id 1ouGOE-0008K2-Fn
 for mjpeg-users@lists.sourceforge.net; Sun, 13 Nov 2022 12:03:26 -0500
Received: from bosauthsmtp11.yourhostingaccount.com ([10.20.18.11])
 by bosimpout12 with 
 id jt3N2800A0EKspE01t3RZX; Sun, 13 Nov 2022 12:03:26 -0500
X-Authority-Analysis: v=2.3 cv=d4VuNSrE c=1 sm=1 tr=0
 a=anyYG9rjTBM1sAjEBQ8Cew==:117 a=idPZml9a/j3TBdTdF3XqzQ==:17
 a=IkcTkHD0fZMA:10 a=9xFQ1JgjjksA:10 a=s5cPaWbHZgMA:10 a=jDPn5Ez8AAAA:8
 a=C1SL6R9q6GVGnEDUHYwA:9 a=QEXdDO2ut3YA:10 a=qBBZk9_c10KGGu05SxeP:22
Received: from catv-89-132-170-6.catv.fixed.vodafone.hu ([89.132.170.6]:41846
 helo=[192.168.0.241]) by bosauthsmtp11.eigbox.net with esmtpa (Exim)
 id 1ouGO9-0005Es-WB; Sun, 13 Nov 2022 12:03:22 -0500
Message-ID: <d8370cfaaf94363ec31308fd504b394bc1987489.camel@jankom.net>
From: "Janos G. Komaromi" <janos@jankom.net>
To: Janos G Komaromi <janos@andraslinux.jgklinux.jankom.net>, Bernhard
 Praschinger <bernhard@griesbach.at>
Date: Sun, 13 Nov 2022 12:03:16 -0500
In-Reply-To: <20221023185829.289dd0bb@andraslinux>
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
 <6a1c6526-dadb-81a5-d859-e1f8bfca9a39@griesbach.at>
 <20221023185829.289dd0bb@andraslinux>
User-Agent: Evolution 3.44.4-0ubuntu1 
MIME-Version: 1.0
X-EN-UserInfo: 44a69bc9b6dca178582a57c3954217da:931c98230c6409dcc37fa7e93b490c27
X-EN-AuthUser: janos@jankom.net
X-EN-OrigIP: 89.132.170.6
X-EN-OrigHost: catv-89-132-170-6.catv.fixed.vodafone.hu
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Sorry,
 I'm back again. I still would like to do my video editing
 with glav and sound. Consequently I did a lot of research and Gentoo Forum
 message exchanges about alsa and OSS. I tried to resolve the [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [66.96.189.2 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1ouGOK-006t5V-SY
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

U29ycnksIEknbSBiYWNrIGFnYWluLiBJIHN0aWxsIHdvdWxkIGxpa2UgdG8gZG8gbXkgdmlkZW8g
ZWRpdGluZyB3aXRoCmdsYXYgYW5kIHNvdW5kLiBDb25zZXF1ZW50bHkgSSBkaWQgYSBsb3Qgb2Yg
cmVzZWFyY2ggYW5kIEdlbnRvbyBGb3J1bQptZXNzYWdlIGV4Y2hhbmdlcyBhYm91dCBhbHNhIGFu
ZCBPU1MuIEkgdHJpZWQgdG8gcmVzb2x2ZSB0aGUgaXNzdWUKd2l0aG91dCB0dXJuaW5nIHRvIHRo
aXMgbWFpbGluZyBsaXN0IGNvbW11bml0eS4gSGVyZSBpcyB0aGUgbGF0ZXN0CnNpdHVhdGlvbiwg
YW5kIG5vdyBJJ20gYXNraW5nIGZvciBjb21tZW50cywgc3VnZ2VzdGlvbnMuCgpBZnRlciBlbmFi
bGluZyAvZGV2L2RzcCBhbmQgbWFraW5nIHN1cmUgdGhhdCBhbHNhIG9zcyBlbXVsYXRpb24gaXMK
Y29uZmlndXJlZCBjb3JyZWN0bHkgLSBxdW90ZToKCmphbm9zQGFuZHJhc2xpbnV4IH4vc2F2ZS90
bXAvdmlkZW9EaWdpdGl6aW5nICQgZ2xhdiB4Y29kZWQuYXZpIAorKzogKipFUlJPUjogW2xhdnBs
YXldIEVycm9yIGluaXRpYWxpemluZyBBdWRpbzogQXVkaW8gdGFzayBkaWVkLgpSZWFzb246IEVy
cm9yOiBTb3VuZGNhcmQgZnJhZ21lbnQgc2l6ZSB1bmV4cGVjdGVkCisrOiBsYXZ0b29scyB2ZXJz
aW9uIDIuMi4xCgpqYW5vc0BhbmRyYXNsaW51eCB+L3NhdmUvdG1wL3ZpZGVvRGlnaXRpemluZyAk
IGFvc3MgZ2xhdiB4Y29kZWQuYXZpIAorKzogKipFUlJPUjogW2xhdnBsYXldIEVycm9yIGluaXRp
YWxpemluZyBBdWRpbzogQXVkaW8gdGFzayBkaWVkLgpSZWFzb246IEVycm9yOiBJbnZhbGlkIGFy
Z3VtZW50IC0gbWFwcGluZyBhdWRpbyBidWZmZXIgKGNvbnNpZGVyIHVzaW5nCnJlYWQvd3JpdGUg
aW5zdGVhZCBvZiBtbWFwKQorKzogbGF2dG9vbHMgdmVyc2lvbiAyLjIuMQoKVW5xdW90ZS4KCkFw
cGFyZW50bHkgc29tZXRoaW5nIGlzIHdyb25nIGVpdGhlciB3aXRoICJmcmFnbWVudCBzaXplIi4g
SSBjb3VsZApwcm9iYWJseSBjb25maWd1cmUgZnJhZ21lbnQgc2l6ZSBpZiBJIGtuZXcgd2hhdCBs
YXZwbGF5IGV4cGVjdHM7IHRoZQpsb2FkZWQgbW9kdWxlcyBhcmU6CgpzbmRfcGNtX29zcwpzbmRf
bWl4ZXJfb3NzCgpvciBzb21ldGhpbmcgaXMgd3Jvbmcgd2l0aCBpbiB0aGUgY29kZSBvZiBsYXZw
bGF5LgoKR3JlZXRpbmdzIHRvIGFsbCwKCkphbm9zL2phbmtvbQoKLS0gCkphbm9zIEcuIEtvbWFy
b21pIHNlbnQgaXQKTk9UIGZyb20gaVBob25lIG5vciBHb29nbGUKZmFjZWJvb2ssIGluc3RhZ3Jh
bSwgdmliZXIsIHNuYXBjaGF0LCB0d2l0dGVyLCAjQCp+fApldGMuIC0gbmVpdGhlciBvZiB0aG9z
ZQpodHRwczovL2pna2xpbnV4LmphbmtvbS5uZXQvCuKAiwoKCk9uIFN1biwgMjAyMi0xMC0yMyBh
dCAxODo1OCAtMDQwMCwgSmFub3MgRyBLb21hcm9taSB3cm90ZToKPiBIaSBCZXJuaWUsCj4gCj4g
SSBkaWQgYSBsaXR0bGUgcmVzZWFyY2ggYW5kIG1hdGguCj4gCj4gKDEpIFRoZSBvcmlnaW5hbCB2
aWRlbyB3YXMgcmVjb3JkZWQgd2l0aCBhICJDYW5vdmlzaW9uIDgiIGNhbWNvcmRlcgo+IHB1cmNo
YXNlZCBpbiB0aGUgbWlkLTgwcy4gVGhlIHNwZWMgc2F5cyB0aGUgQ0NEIGlzIDEvMyBpbmNoIHdp
dGggMzIwawo+IHBpeGVscy4gVGhpcyBwYXJ0aWN1bGFyIGNhbWVyYSB3YXMgbWFkZSBmb3IgdGhl
IFVTIChBbWVyaWNhbikKPiBtYXJrZXQsIGFuZCBpdCBoYXMgYSBzaW1wbGUgUkNBIG9uZSB2aWRv
IGFuZCBvbmUgUkNBIG1vbm8gb3V0cHV0cy4KPiBDb25uZWN0aW5nIGl0IHRvIGFuIG9sZCBUViBz
ZXQgKE5UU0MpIGl0IHByb3ZpZGVkIGEgZGVjZW50IHZpZGVvCj4gcGxheS4KPiBNeSBkaWdpdGF6
aW5nIGRldmljZSAoSU9OIFZpZGVvIDIgU0QpIGhhcyBvbmUgUkNBIHZpZGVvIGlucHV0IGFuZCB0
d28KPiBSQ0Egc3RlcmVvIGlucHV0cyAoSSB1c2VkIGFuIFJDQSAiWSIgY29ubmVjdG9yIHRvIHBy
b3ZpZGUgZmFrZSBzdGVyZW8KPiBpbnB1dCB0byB0aGUgZGV2aWNlKS4gVGhlIGV6Y2FwMDAwMS5h
dmkgZmlsZSBjcmVhdGVkIGJ5IHRoZSBkZXZpY2UKPiBkb2VzIGluZGVlZCBoYXZlIHRoZSBzdHJh
bmdlIDgwMHg1OTIgcmVzb2x1dGlvbi4gT0ssIGJ1dCBpdCBpcyBhbG1vc3QKPiA0OjMgb3IgODAw
OjYwMC4KPiAKPiAoMikgT25lIG9mIHRoZSBzdGFuZGFyZCBBc3BlY3QgUmF0aW9zIG9mIERpZ2l0
YWwgVmlkZW9zIGlzIDQvMy4gSWYKPiB0aGUKPiBDYW5vdmlzaW9uIGNhbWVyYSBoYXMgMzIwayBw
aXhlbHMgdGhlbiBmb3IgYSA0LzMgQVIgb2YgdGhlIG1pZCA4MHMgVFYKPiBzZXRzIHRoZSB2aWRl
byBvdXRwdXQgb2YgdGhlIGNhbWVyYSBtdXN0IGhhdmUgNjkyLjgyeDQ2MS44OAo+IHBpeGVsIG91
dHB1dC4gQXBwYXJlbnRseSB0aGUgSU9OIGRldmljZSBjb252ZXJ0ZWQgaXQgdG8gODAweDU5Mi4g
SQo+IGRvbid0IGtub3cgaG93IGFuZCB3aHksIGJ1dCB0aGF0J3MgT0sgVGhlIGRpc2NyZXBhbmN5
IGJldHdlZW4gNjAwIGFuZAo+IDU5MiBtdXN0IGJlIHRvIHRoZSB6b29taW5nIGFsZ29yaXRobSBk
ZXNpZ25lZCBpbnRvIHRoZSBJT04gc29mdHdhcmUuCj4gQXMKPiBmYXIgYXMgdGhlIGNvbXByZXNz
aW9uIG1ldGhvZHMgKHZhcmlvdXMgYXVkaW8gYW5kIHZpZGVvIG1wPz8/LCBldGMuKQo+IGFyZQo+
IGNvbmNlcm5lZCAtIGFnYWluLCBpdCBpcyBkZXNpZ25lZCBpbnRvIHRoZSByZXN1bHRpbmcgZGln
aXRhbCBmaWxlCj4gZm9ybWF0IG9mIGV6Y2Fwbm5ubi5hdmkuCj4gCj4gKDMpIEkgZGVjaWRlZCB0
byB1c2UgZmZtcGVnIHRvIHRyYW5zY29kZSB0aGUgZXpjYXAuLi4gZmlsZToKPiBmZm1wZWcgLWkg
ZXpjYXAwMDAxLmF2aSAtdmNvZGVjIG1qcGVnIC1hY29kZWMgcGNtX3MxNmxlIHguYXZpCj4gYW5k
IHRoZW4gdXNlIGdsYXYgZm9yIGVkaXRpbmcgKGhhZCB0byB1c2UgLWEgMCBiZWNhdXNlIG9mIHRo
ZSBkc3AKPiBpc3N1ZQo+IC1sYXRlciksIGFuZCBJVCBXT1JLRUQhIFRoZSB2aWRlbyBsb29rcyBn
b29kLCBnb29kIGFzcGVjdCByYXRpbyAobm90Cj4gc3F1ZWV6ZWQgaG9yaXpvbnRhbGx5IG9yIHZl
cnRpY2FsbHkpLgo+IAo+IEkgdGhpbmssIEknbSBhbGwgc2V0IGZvciBub3cuIFRoaXMgd2FzIGEg
Z29vZCBsZWFybmluZyBleHBlcmllbmNlLgo+IAo+IFRoYW5rcyBhZ2FpbiwKPiAKPiBKYW5vcwo+
IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk1qcGVn
LXVzZXJzIG1haWxpbmcgbGlzdApNanBlZy11c2Vyc0BsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0
cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vbWpwZWctdXNlcnMK
