Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B90AA5EFC17
	for <lists+mjpeg-users@lfdr.de>; Thu, 29 Sep 2022 19:36:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1odxRn-0005bf-5A;
	Thu, 29 Sep 2022 17:35:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bernhard@griesbach.at>) id 1odxRl-0005bZ-NX
 for mjpeg-users@lists.sourceforge.net;
 Thu, 29 Sep 2022 17:35:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zTW/ISQ1eaADLrNGeX/hA0Kak6b8C4ST6pYTYQimg+o=; b=Al0eJNnB5GjPUlVOwZWYPTuREp
 4ntJXyBJA9q0+T8HqN8sl2tdXDS4uTZuuQJ6dKmuZGTqWheqrgqSdfALtB/jrrMtagD3ghGsC+opd
 eoS6L7nHsoT9xF1nl0RhvQDAgRLzjKpczEyyoaTWY0X1vpBFvzZq9/k13N6FXtJjgxVY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zTW/ISQ1eaADLrNGeX/hA0Kak6b8C4ST6pYTYQimg+o=; b=MWCSDrjTAckE2lfK9YcSMU+Abs
 ihurJMYWaaa022LyGes9T4wYjzb1rc1bTZZppMjgWCqr3GEap+R8ep5JWoTJU/VCrIwz6Glgky8j5
 ZQLES/08yAQ7x2jMx9G9ffuBU+tfELxf6Rmr7iO4GdspM13o2TdKYVM6WgMJh81781rA=;
Received: from srv211.suspace.net ([176.28.0.211] helo=srv1.suspace.net)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1odxRu-006r1q-AP for mjpeg-users@lists.sourceforge.net;
 Thu, 29 Sep 2022 17:35:53 +0000
Received: from srv1.suspace.net (localhost.localdomain [127.0.0.1])
 by srv1.suspace.net (Postfix) with ESMTP id 3DC34162A1B;
 Thu, 29 Sep 2022 19:20:13 +0200 (CEST)
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
 with ESMTP id O-TzMNPTcyPg; Thu, 29 Sep 2022 19:20:12 +0200 (CEST)
Received: from [10.20.30.37] (193-83-161-85.oan.highway.a1.net [193.83.161.85])
 by srv1.suspace.net (Postfix) with ESMTPSA id A5EEF161242;
 Thu, 29 Sep 2022 19:20:12 +0200 (CEST)
Received-SPF: pass (srv1.suspace.net: connection is authenticated)
To: MJPEG-tools user list <mjpeg-users@lists.sourceforge.net>,
 "Janos G. Komaromi" <janos@jankom.net>
References: <ed5481fd618006e4d259165748a48fd06c58789e.camel@jankom.net>
From: Bernhard Praschinger <bernhard@griesbach.at>
Message-ID: <e837da44-2ef5-2543-6382-3713116b7298@griesbach.at>
Date: Thu, 29 Sep 2022 19:20:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 SeaMonkey/2.53.13
MIME-Version: 1.0
In-Reply-To: <ed5481fd618006e4d259165748a48fd06c58789e.camel@jankom.net>
X-PPP-Message-ID: <166447201283.22022.7006049372314611485@srv1.suspace.net>
X-PPP-Vhost: griesbach.at
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hallo, > I have not been doing video stuff for a few years, 
 but now as a retiree > I wanted to digitize my old videos from magnetic tapes.
 I have a neat > gizmo that creates an .avi file from VHS video and s [...]
 Content analysis details:   (-2.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1odxRu-006r1q-AP
Subject: Re: [Mjpeg-users] glav error opening .avi file + mailing list
 addition
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

SGFsbG8sCgo+IEkgaGF2ZSBub3QgYmVlbiBkb2luZyB2aWRlbyBzdHVmZiBmb3IgYSBmZXcgeWVh
cnMsIGJ1dCBub3cgYXMgYSByZXRpcmVlCj4gSSB3YW50ZWQgdG8gZGlnaXRpemUgbXkgb2xkIHZp
ZGVvcyBmcm9tIG1hZ25ldGljIHRhcGVzLiBJIGhhdmUgYSBuZWF0Cj4gZ2l6bW8gdGhhdCBjcmVh
dGVzIGFuIC5hdmkgZmlsZSBmcm9tIFZIUyB2aWRlbyBhbmQgc3RlcmVvIGlucHV0cyBvbiBhCj4g
bWljcm8gc2QgY2FyZC4gVGhlIGNyZWF0ZWQgLmF2aSBmaWxlIHBsYXlzIHdlbGwgd2l0aCB2bGMu
ClRoYXQga2luZCBvZiBkZXZpY2UgaXMgd2hhdCBJIHdvdWxkIHVzZSB0aGlzIGRheSdzIHRvby4K
Cj4gSGVyZSBpcyBteSBpc3N1ZSBhbmQgcmVxdWVzdCBmb3IgaGVscC4KPiAKPiBJIHRyeSB0byBt
YWtlIHNvbWUgdmVyeSBiYXNpYyBlZGl0aW5nIG9mIHRoZSBkaWdpdGl6ZWQgLmF2aSBmaWxlLCBi
dXQKPiByYW4gaW50byBhIHByb2JsZW0uIEkgc3R1ZGllZCBteSBvbGRlciBwb3N0cywgbm90ZXMs
IGJ1dCBhbSBzdGlsbAo+IHN0dWNrLiBJdCBsb29rcyBsaWtlIHRoZS5hdmkgZmlsZSBjcmVhdGVk
IHdpdGggdGhlIGRpZ2l0aXppbmcgZ2l6bW8gaXMKPiB0b28gc29waGlzdGljYXRlZCBmb3IgbGF2
cGxheSBvciBnbGF2IC0gc2VlIGJlbG93LiBEbyBJIG5lZWQgdG8gdHJhbnMtCj4gY29kZSB0aGUg
LmF2aSBmaWxlLCBhbmQgaG93PyBUaGFuayB5b3UgZm9yIHlvdXIgYXR0ZW50aW9uIC0gSmFub3MK
PiAKPiBBcyBhIHNpZGUgbm90ZTogY291bGQgeW91IHBsZWFzZSBhZGQgYW5vdGhlciBlbWFpbCBh
ZGRyZXNzIHRvIHRoaXMKPiBtYWlsaW5nIGxpc3QuIEl0IGlzIHRoZSBhZGRyZXNzIG9uIHRoZSBt
YWlsIHNlcnZlciBydW5uaW5nIG9uIG15IEZpdGxldAo+IG1hY2hpbmUgLSBqYW5vc0BhbmRyYXNs
aW51eC5qZ2tsaW51eC5qYW5rb20ubmV0Cj4gCj4gREVUQUlMUzoKPiBqYW5vc0BhbmRyYXNsaW51
eCB+L3RtcCAkIGxhdnBsYXkgLXAgUyAtdiAyIGV6Y2FwMDAwMS5hdmkKPiBsYXZwbGF5Mi4yLjEK
PiBsYXZ0b29scyB2ZXJzaW9uIDIuMi4xCj4gLS1ERUJVRzogW2xhdnBsYXldIE9wZW5pbmcgdmlk
ZW8gZmlsZSBlemNhcDAwMDEuYXZpIC4uLgo+ICoqRVJST1I6IFtsYXZwbGF5XSBFcnJvciBvcGVu
aW5nIGV6Y2FwMDAwMS5hdmkKPiAKPiBqYW5vc0BhbmRyYXNsaW51eCB+L3RtcCAkIGZpbGUgZXpj
YXAwMDAxLmF2aQo+IGV6Y2FwMDAwMS5hdmk6IFJJRkYgKGxpdHRsZS1lbmRpYW4pIGRhdGEsIEFW
SSwgODAwIHggNTkyLCAzMC4wMCBmcHMsCj4gdmlkZW86IFh2aUQsIGF1ZGlvOiBNUEVHLTEgTGF5
ZXIgMyAoc3RlcmVvLCA0NDEwMCBIeikKPiAKPiBqYW5vc0BhbmRyYXNsaW51eCB+L3RtcCAkIGZm
cHJvYmUgZXpjYXAwMDAxLmF2aQo+IGZmcHJvYmUgdmVyc2lvbiA0LjQuMiBDb3B5cmlnaHQgKGMp
IDIwMDctMjAyMSB0aGUgRkZtcGVnIGRldmVsb3BlcnMKPiAgICBidWlsdCB3aXRoIGdjYyAxMS4z
LjAgKEdlbnRvbyAxMS4zLjAgcDQpCj4gLi4uCj4gSW5wdXQgIzAsIGF2aSwgZnJvbSAnZXpjYXAw
MDAxLmF2aSc6Cj4gICAgRHVyYXRpb246IDAxOjQ4OjUxLjY3LCBzdGFydDogMC4wMDAwMDAsIGJp
dHJhdGU6IDk2NyBrYi9zCj4gICAgU3RyZWFtICMwOjA6IFZpZGVvOiBtcGVnNCAoQWR2YW5jZWQg
U2ltcGxlIFByb2ZpbGUpIChYVklEIC8KPiAweDQ0NDk1NjU4KSwgeXV2NDIwcCwgODAweDU5MiBb
U0FSIDE6MSBEQVIgNTA6MzddLCA4OTYga2IvcywgMzAgZnBzLCAzMAo+IHRiciwgMzAgdGJuLCAz
MCB0YmMgU3RyZWFtICMwOjE6IEF1ZGlvOiBtcDMgKFVbMF1bMF1bMF0gLyAweDAwNTUpLAo+IDQ0
MTAwIEh6LCBzdGVyZW8sIGZsdHAsIDY0IGtiL3NUaGUgbWpwZWd0b29scyBjYW4gb25seSBoYW5k
bGUgYSBmZXcgQVZJIENvZGVjcy4gRm9yIGV4YW1wbGU6IGR2dmlkZW8gCmFuZCBtanBlZyBpdCBj
YW4ndCBkZWNvZGUgdGhlIGVuY29kZWQgTVBFRzQKCkkgZG9uJ3Qga25vdyBpZiBmZm1wZWcgY2Fu
IGRlY29kZSBpdCBpbiBhIGZvcm1hdCB0aGUgbWpwZWd0b29scyAKdW5kZXJzdGFuZC4gQnV0IG1w
bGF5ZXIgY2FuIChzaG91bGQpIGRvIGl0LCBoZXJlIGlzIGFyZSBleGFtcGxlIGNvbW1hbmRzIApm
b3IgdmlkZW86CiA+bWtmaWZvIHN0cmVhbS55dXYKID5jYXQgc3RyZWFtLnl1diDilIIgeXV2ZGVu
b2lzZSDilIIgeXV2c2NhbGVyIC1PIFNWQ0Qg4pSCIG1wZWcyZW5jIC1mIDQgLW8gCnZpZGVvX3N2
Y2QubTJ2CiA+bXBsYXllciAtbm9zb3VuZCAtbm9mcmFtZWRyb3AgLXZvIHl1djRtcGVnIGFueWZp
bGUubXBnCgpGb3IgQXVkaW86CiA+bXBsYXllciAtdm8gbnVsbCAtYW8gcGNtOmZpbGU9YW55Zmls
ZS53YXYgYW55ZmlsZS5tcGcKID4gY2F0IGFueWZpbGUud2F2IOKUgiBtcDJlbmMgLXYgMiAtViAt
byBzb3VuZC5tcDIKCllvdSBmaW5kIGEgc2VjdGlvbiBpbiB0aGU6IG1qcGVndG9vbHMgbWFucGFn
ZSBjYWxsZWQ6IERlY29kaW5nIHN0cmVhbXMgCndpdGggbXBsYXllciB0aGF0IHNob3VsZCBleHBs
YWluIGl0IGluIG1vcmUgZGV0YWlsLiBJIGhvcGUgdGhlIHByb2dyYW0KCkkgZGlkIGEgcXVpY2sg
Y2hlY2sgaXQgc2hvdWxkIHdvcmsuIFBsZWFzZSB0ZXN0IGl0IGFuZCBsZXQgdXMga25vdyBpZiBp
dCAKd29ya2VkLgoKYXVmIGhvZmZlbnRsaWNoIGJhbGQsCgpCZXJuaSB0aGUgQ2hhb3Mgb2YgV29v
ZHF1YXJ0ZXIKCkVtYWlsOiBiZXJuaGFyZEBncmllc2JhY2guYXQKd3d3OiBodHRwOi8vd3d3Lmx5
c2F0b3IubGl1LnNlL35nei9iZXJuaGFyZAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCk1qcGVnLXVzZXJzIG1haWxpbmcgbGlzdApNanBlZy11c2Vyc0Bs
aXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMv
bGlzdGluZm8vbWpwZWctdXNlcnMK
