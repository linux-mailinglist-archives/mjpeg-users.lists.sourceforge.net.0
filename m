Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EE12E60318D
	for <lists+mjpeg-users@lfdr.de>; Tue, 18 Oct 2022 19:28:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1okqNo-0001DL-27;
	Tue, 18 Oct 2022 17:28:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bernhard@griesbach.at>) id 1okqNl-0001D2-QQ
 for mjpeg-users@lists.sourceforge.net;
 Tue, 18 Oct 2022 17:28:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HXv76xZlNPsVV5CQYLHY8XTUYUWqyTZ95e2gy5syVoo=; b=hwazAd+vzz6TVz654cnHELgpwO
 7rnbUnu71yVaflQBIAUtaPNgZ3YXxcaYfIDVwXkkNr7myAt4caTy9X/WSkOOjpKpKLCu+PrsCQF9P
 mYcljI1+teJHyfn4W7B+PcQ2hAaDtbO94hXQWjIDKZAgVuamX0z2t7XDUjypnGQVkExg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HXv76xZlNPsVV5CQYLHY8XTUYUWqyTZ95e2gy5syVoo=; b=VIdXtIejypkC0Q9fsgzjQcCczu
 frpsRSwzvwNJ0gbpLIL3PDCZpB+UunjbMYYXR38dPCML7v35+8B1me36kXdG3gzsX5JXc9bp4NLUb
 OBAkbqEGXS+RipMebXFB/kIUVJ7QMGJ2L7Zu5ZkXHVoFAaTAJYk8YfrLVD16i+ZEID40=;
Received: from srv211.suspace.net ([176.28.0.211] helo=srv1.suspace.net)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1okqNk-008fYC-1g for mjpeg-users@lists.sourceforge.net;
 Tue, 18 Oct 2022 17:28:01 +0000
Received: from srv1.suspace.net (localhost.localdomain [127.0.0.1])
 by srv1.suspace.net (Postfix) with ESMTP id A5D17162A04;
 Tue, 18 Oct 2022 19:27:50 +0200 (CEST)
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
 with ESMTP id eMDhujsGYGQD; Tue, 18 Oct 2022 19:27:50 +0200 (CEST)
Received: from [10.20.30.37] (193-81-241-43.oan.highway.a1.net [193.81.241.43])
 by srv1.suspace.net (Postfix) with ESMTPSA id 08ABA1621A7;
 Tue, 18 Oct 2022 19:27:50 +0200 (CEST)
Received-SPF: pass (srv1.suspace.net: connection is authenticated)
To: Janos G Komaromi <janos@andraslinux.jgklinux.jankom.net>
References: <1f684654-8907-655c-b8c0-ed5bb8a15d82@griesbach.at>
 <9f4c6922fbd9940e07875116618012df8a133c6a.camel@jankom.net>
 <20221006092153.1d76bbd3@andraslinux>
 <74c98e9f-ac31-e318-8d53-f62c7705fdab@griesbach.at>
 <20221008095345.23b41f1a@andraslinux>
 <2a17fa6e-a342-1cb9-f75c-03106b139078@griesbach.at>
 <20221010145111.65e78e39@andraslinux> <20221015111424.55e183bf@andraslinux>
 <adbcae19-e903-fa75-359b-72f281f82d86@griesbach.at>
 <20221017145851.19351786@andraslinux>
From: Bernhard Praschinger <bernhard@griesbach.at>
Message-ID: <346fe3b1-e2ef-1384-d819-e3a892a2a235@griesbach.at>
Date: Tue, 18 Oct 2022 19:27:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 SeaMonkey/2.53.13
MIME-Version: 1.0
In-Reply-To: <20221017145851.19351786@andraslinux>
X-PPP-Message-ID: <166611407021.15494.14659644830540837986@srv1.suspace.net>
X-PPP-Vhost: griesbach.at
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hallo, my fault. You have a .wav file an need to add that
 to the video file. So you can skip this command: cat audio.wav | mp2enc -v
 2 -V -o sound.mp2 And just use that command: lavaddwav video_without_sound.avi
 audio.wav output.avi 
 Content analysis details:   (-2.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: liu.se]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1okqNk-008fYC-1g
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

SGFsbG8sCgpteSBmYXVsdC4gWW91IGhhdmUgYSAud2F2IGZpbGUgYW4gbmVlZCB0byBhZGQgdGhh
dCB0byB0aGUgdmlkZW8gZmlsZS4KU28geW91IGNhbiBza2lwIHRoaXMgY29tbWFuZDogY2F0IGF1
ZGlvLndhdiB8IG1wMmVuYyAtdiAyIC1WIC1vIHNvdW5kLm1wMgoKQW5kIGp1c3QgdXNlIHRoYXQg
Y29tbWFuZDoKbGF2YWRkd2F2IHZpZGVvX3dpdGhvdXRfc291bmQuYXZpIGF1ZGlvLndhdiBvdXRw
dXQuYXZpCgpJIGhvcGUgdGhhdCB3b3Jrcy4KClJlZ2FyZHMsIEJlcm5oYXJkCgpKYW5vcyBHIEtv
bWFyb21pIHdyb3RlOgo+IEhpIEJlcm5pZSwKPiAKPiBJIGhhZCB0byByZWNvbXBpbGUgKHJlLWVt
ZXJnZSBpbiBHZW50b28pIG1qcGVndG9vbHMgd2l0aCBxdWlja3RpbWUgYW5kCj4gZHYgaW5jbHVk
ZWQgKHdpdGggLWYgYSB0aGUgZmlsZSBzaXplIHdhcyBvdmVyIDIgR2lnKS4gTG9va3MgbGlrZSBJ
IGhhZAo+IHRoZSByaWdodCBpZGVhIGJ1dCBub3QgdGhlIHByZWNpc2Ugd2F5IHRvIGdldCB0aGVy
ZS4gRm9sbG93ZWQgeW91cgo+IGluc3RydWN0aW9ucywgYnV0IHN0aWxsIG5vdCBmaW5zaGVkLiBO
b3RlLCBJIGhhZCB0byBhZGQgLW4gbiBwYXJhbWV0ZXJzCj4gdG8gdGhlIHl1dnNjYWxlciBiZWNh
dXNlIGl0IGRpZCBub3QgcmVjb2duaXplIHRoZSBmb3JtYXQuIEhlcmUgaXMgdGhlCj4gcHJvYmxl
bToKPiAKPiBRdW90ZQo+IAo+IGphbm9zQGFuZHJhc2xpbnV4IH4vdG1wICQgY2F0IGF1ZGlvLndh
diB8IG1wMmVuYyAtdiAyIC1WIC1vIHNvdW5kLm1wMgo+IC4uLgo+IC0tREVCVUc6IFttcDJlbmNd
IDY1MzMgc2Vjb25kcyBkb25lCj4gICAgIElORk86IFttcDJlbmNdIE51bSBmcmFtZXMgMjUwMDM2
IEF2ZyBzbG90cy9mcmFtZSA9IDczMS40Mjk7IGIvc21wID0KPiA1LjA4OyBiciA9IDIyNC4wMDAg
a2JwcyBJTkZPOiBbbXAyZW5jXSBFbmNvZGluZyB0byBsYXllciAyIHdpdGgKPiBwc3ljaG9hY291
c3RpYyBtb2RlbCAyIGlzIGZpbmlzaGVkIElORk86IFttcDJlbmNdIFRoZSBNUEVHIGVuY29kZWQK
PiBvdXRwdXQgZmlsZSBuYW1lIGlzICJzb3VuZC5tcDIiCj4gCj4gamFub3NAYW5kcmFzbGludXgg
fi90bXAgJCBsYXZhZGR3YXYgdmlkZW9fd2l0aG91dF9zb3VuZC5hdmkgc291bmQubXAyCj4gb3V0
cHV0LmF2aSAtLURFQlVHOiBbbGF2YWRkd2F2XSBGaWxlOiB2aWRlb193aXRob3V0X3NvdW5kLmF2
aQo+IC0tREVCVUc6IFtsYXZhZGR3YXZdICAgIGZvcm1hdDogICAgICAgICAgICAgcQo+IC0tREVC
VUc6IFtsYXZhZGR3YXZdICAgIGZyYW1lczogICAgICAgIDE5NTk1MAo+IC0tREVCVUc6IFtsYXZh
ZGR3YXZdICAgIHdpZHRoOiAgICAgICAgICAgIDQ4MAo+IC0tREVCVUc6IFtsYXZhZGR3YXZdICAg
IGhlaWdodDogICAgICAgICAgIDQ4MAo+IC0tREVCVUc6IFtsYXZhZGR3YXZdICAgIGludGVybGFj
aW5nOiAgICAgICAgMAo+IC0tREVCVUc6IFtsYXZhZGR3YXZdICAgIGZyYW1lcy9zZWM6ICAgIDMw
LjAwMAo+IC0tREVCVUc6IFtsYXZhZGR3YXZdICAgIGR1cmF0aW9uOiAgICA2NTMxLjY2NyBzZWMK
PiAtLURFQlVHOiBbbGF2YWRkd2F2XQo+ICoqRVJST1I6IFtsYXZhZGR3YXZdIEVycm9yIGluIFdB
ViBoZWFkZXIgb2Ygc291bmQubXAyCj4gKipFUlJPUjogW2xhdmFkZHdhdl0gVW5hYmxlIHRvIGZp
bGwgYXVkaW8gZmlsZSBzdHJ1Y3R1cmUKPiAKPiBVbnF1b3RlCj4gCj4gVGhlIG9yaWdpbmFsIHZp
ZGVvIGV4Y2FwMDAwMS5hdmkgaXMgNzUzIE1pQgo+IFRoZSB2aWRlb193aXRob3V0X3NvdW5kLmF2
aSBpcyA1LjcgR2lCIChzYW1lIGFzIHdpdGggLWEgYSkKPiBUaGUgIHNvdW5kLm1wMiBpcyAxNzQg
TWlCCj4gCj4gV2h5IGlzIHRoZSAiRXJyb3IgaW4gV0FWIGhlYWRlciI/Cj4gTXkgYXVkaW8ud2F2
IGZpbGUgaXMgMS4xIEdpQgo+IAo+IAo+IE9uIFN1biwgMTYgT2N0IDIwMjIgMTA6Mzg6NDEgKzAy
MDAKPiBCZXJuaGFyZCBQcmFzY2hpbmdlciA8YmVybmhhcmRAZ3JpZXNiYWNoLmF0PiB3cm90ZToK
PiAKPj4gSGFsbG8sCj4+Cj4+IFNvcnJ5IGZvciB0aGUgZGVsYXkuCj4+IFdoZW4geW91IHdhbnQg
dG8gY29udmVydCB0aGUgZmlsZSBzbyB5b3UgY2FuIGVkaXQgaXQgd2l0aCBnbGF2LCB5b3UKPj4g
bmVlZCB0byBjaGFuZ2UgdGhlIGNvbW1hbmRzIGEgbGl0dGxlIGJpdCBzbyBnbGF2IHVuZGVyc3Rh
bmQgdGhlIEFWSS4KPj4gWW91IG5lZWQgdG8gY3JlYXRlIGEgaW50ZXJtZWRpYXRlIEFWSSBmaWxl
Ogo+Pgo+PiBta2ZpZm8gc3RyZWFtLnl1dgo+PiBjYXQgc3RyZWFtLnl1diDilIIgeXV2c2NhbGVy
IC1PIFNWQ0Qg4pSCIHl1djJsYXYgLXEgOTAgLWYgYSAtbwo+PiB2aWRlb193aXRob3V0X3NvdW5k
LmF2aSAmCj4+IG1wbGF5ZXIgLW5vc291bmQgLW5vZnJhbWVkcm9wIC12byB5dXY0bXBlZyBlemNh
cDAwMDEuYXZpCj4+Cj4+IG1wbGF5ZXIgLXZvIG51bGwgLWFvIHBjbTpmaWxlPWF1ZGlvLndhdiBl
emNhcDAwMDEuYXZpCj4+IGNhdCBhdWRpby53YXYg4pSCIG1wMmVuYyAtdiAyIC1WIC1vIHNvdW5k
Lm1wMgo+Pgo+PiBZb3UgbmVlZCB0aGFuIHRvIGFkZCB0aGUgc291bmQvYXVkaW8gdG8gdGhlIHZp
ZGVvOgo+PiBsYXZhZGR3YXYgdmlkZW9fd2l0aG91dF9zb3VuZC5hdmkgc291bmQubXAyIG91dHB1
dC5hdmkKPj4KPj4gSWYgdGhlIGF2aSBmaWxlIHJlYWNoZXMgdGhlIDJHQiBGaWxlc2l6ZWxpbWl0
IHlvdSBzaG91bGQgY2hhbmdlIHRvCj4+IHRoZSBRdWlja3RpbWUuIFlvdSBuZWVkIHRvIHJlcGxh
Y2UgdGhlIHl1djJsYXYgb3B0aW9uIC1mIGEgd2l0aDogLWYgcQo+Pgo+PiBvdXRwdXQuYXZpIGNv
bnRhaW5zIHZpZGVvIGFuZCBzb3VuZCwgeW91IGNhbiBlZGl0IGl0IHdpdGggZ2xhdi4KPj4gQWZ0
ZXIgZWRpdGluZyB5b3UgZ2V0IHRoZSBlZGlsaXN0IGZpbGUsIHlvdSBjYW4gcHJvY2VzcyBhcyB5
b3UgYXJlCj4+IHVzZWQuIHRvLgo+Pgo+PiBKYW5vcyBHIEtvbWFyb21pIHdyb3RlOgo+Pj4gUHJv
Z3Jlc3MgcmVwb3J0IGFmdGVyIHJlYWRpbmcgdGhlIEZNLgo+Pj4KPj4+IEV4ZWN1dGVkIHRoZSBm
b2xsb3dpZyBjb21tYW5kczoKPj4+IG1wbGF5ZXIgLWFvIHBjbTpmYXN0OmZpbGU9YXVkaW8ud2F2
IC12IG51bGwgZXpjYXAwMDAxLmF2aQo+Pj4gY2F0IGF1ZGlvLndhdiB8IG1wMmVuYyAtbyBhdWRp
by5tcDIKPj4+IG1wbGV4IGF1ZGlvLm1wMiB2aWRlb19zdmNkLm0ydiAtbyB0ZXN0Lm1wZwo+Pj4g
bXBsZXggLVYgLXIgMTc0MCBhdWRpby5tcDIgdmlkZW9fc3ZjZC5tMnYgLW8gdGVzdC5tcGcKPj4+
IG1wbGF5ZXIgdGVzdC5tcGcKPj4+IGdsYXYgdGVzdC5tcGcKPj4+Cj4+PiBSZXN1bHRzOgo+Pj4g
KDEpIG1wbGV4IGluIGVpdGhlciBmb3JtcyBjb21wbGFpbnMgYWJvdXQgdG9vIG1hbnkgZnJhbWVz
IGRyb3BwZWQKPj4+IGFuZCB0aGVuIHF1aXRzLgo+Pj4gKDIpIG1wbGF5ZXIgcGxheXMgdGhlIGZp
bGUsIGJ1dCBpdCBpcyBhIGxvbmcgdmlkZW8sIHNvIEkgc3RvcHBlZCBCNAo+Pj4gY29tcGxldGlv
bi4KPj4+ICgzKSBnbGF2IGhhcyB0aGUgc2FtZSBlcnJvciBhcyBpbiBteSBpbml0aWFsIHBvc3Qu
Cj4+Pgo+Pj4gU28gSSdtIHN0aWxsIGFza2luZyBmb3IgaGVscC4gVGhlcmUgaXMgbm8gdmlkZW8g
ZWRpdG9yIGF2YWlsYWJsZSBmb3IKPj4+IEdlbnRvby4gSSBsaWtlIGdsYXYgYW5kIHdvdWxkIGxp
a2UgdG8gdXNlIGl0IGZvciBteSB2aWRlbyBmaWxlcwo+Pj4gdHJhbnNmZXJyZWQgZnJvbSBvbGQg
dmlkZW8gcmVjb3JkZXIgdGFwZXMuCj4+Pgo+Pj4gVGh4IC0gSmFub3MKPj4+Cj4+Pgo+Pj4gT24g
TW9uLCAxMCBPY3QgMjAyMiAxNDo1MToxMSAtMDQwMAo+Pj4gSmFub3MgRyBLb21hcm9taSA8amFu
b3NAYW5kcmFzbGludXguamdrbGludXguamFua29tLm5ldD4gd3JvdGU6CgotLSAKYXVmIGhvZmZl
bnRsaWNoIGJhbGQsCgpCZXJuaSB0aGUgQ2hhb3Mgb2YgV29vZHF1YXJ0ZXIKCkVtYWlsOiBiZXJu
aGFyZEBncmllc2JhY2guYXQKd3d3OiBodHRwOi8vd3d3Lmx5c2F0b3IubGl1LnNlL35nei9iZXJu
aGFyZAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk1q
cGVnLXVzZXJzIG1haWxpbmcgbGlzdApNanBlZy11c2Vyc0BsaXN0cy5zb3VyY2Vmb3JnZS5uZXQK
aHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vbWpwZWctdXNlcnMK
