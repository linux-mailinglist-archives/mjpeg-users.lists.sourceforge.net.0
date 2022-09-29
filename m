Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E3EBB5EFEA4
	for <lists+mjpeg-users@lfdr.de>; Thu, 29 Sep 2022 22:26:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1oe07D-0005tR-2i;
	Thu, 29 Sep 2022 20:26:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <SRS0=5SY+XA=2A=jankom.net=janos@eigbox.net>)
 id 1oe07B-0005tJ-Kj for mjpeg-users@lists.sourceforge.net;
 Thu, 29 Sep 2022 20:26:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:MIME-Version:Content-Transfer-Encoding:
 Content-Type:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
 Cc:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iwO/ut9/gfYXHOWMMQTl6/0e6iHf0szCNeWjys0UhVU=; b=TnFwCbc9XM5uqeJ2WF0KHk8kph
 cF16kG5Kq1uNA2vwlIYAveMhhflRyJvFg1r6TJKMJ5kIh1s18TRrkn4kHxfzwsG3UU8ceNiawXOe3
 ctLd+vjkW3KXZmx7ColXFpiER0pi2PfXXW+AjhIzzFKo8j8XtVYEsXk5MQwwrs8iF/cI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iwO/ut9/gfYXHOWMMQTl6/0e6iHf0szCNeWjys0UhVU=; b=EVxeqqQUhFe+e/bc8Px5a9M1Oc
 aJGEla48QOkSiCKfMApr2/sM1q1c59YCNHfLkX4jN8KoRwc7pySTioq9u4DZFY+5oGSuWh3OB/iXo
 W8AkXqGenwRyaByeRe5CfVD3avOPAtmASUhGiZ6El9nca45wb0r7ykFrWYZnALrAv39A=;
Received: from bosmailout03.eigbox.net ([66.96.189.3])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oe078-0005Cu-Qz for mjpeg-users@lists.sourceforge.net;
 Thu, 29 Sep 2022 20:26:37 +0000
Received: from bosmailscan04.eigbox.net ([10.20.15.4])
 by bosmailout03.eigbox.net with esmtp (Exim) id 1oe06x-0007dA-8J
 for mjpeg-users@lists.sourceforge.net; Thu, 29 Sep 2022 16:26:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=jankom.net; 
 s=dkim;
 h=Sender:MIME-Version:Content-Transfer-Encoding:Content-Type:
 References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe
 :List-Post:List-Owner:List-Archive;
 bh=iwO/ut9/gfYXHOWMMQTl6/0e6iHf0szCNeWjys0UhVU=; b=H9+alUecBXNrml7piiM2g6jaFr
 9JnDN7yCdfD0mfsYce2OZn4BkpSyyAZPrzQZ6EncwCLqtWS6gmdRaNE8ka79ml8J3zxmO9HUJ49Pe
 vaE/45G2i3cZsEDslOEewOCO3pcpVhi/VhaE5QBSkzfVqhrXzrX56X5yIMVGbt2ivMpuPCgts2bR1
 dGClJ2gnR25KU+QXApappu/OaDAPeZDFEwLHXNm6lNVJbMZkQ+fkgpcJwreh4gV8ThlQPMzOmHAfn
 s6jm2EGeHRbiPZ5oxcuZZFwq3RDJ5gv30q7W6fUj6K7IRh5TKnnDz6fcwLflArnbPbjZ2guBJnBYW
 12OaSjYw==;
Received: from [10.115.3.33] (helo=bosimpout13)
 by bosmailscan04.eigbox.net with esmtp (Exim) id 1oe06w-00064L-VH
 for mjpeg-users@lists.sourceforge.net; Thu, 29 Sep 2022 16:26:22 -0400
Received: from bosauthsmtp09.yourhostingaccount.com ([10.20.18.9])
 by bosimpout13 with 
 id RwSK280020BkY8i01wSN4G; Thu, 29 Sep 2022 16:26:22 -0400
X-Authority-Analysis: v=2.3 cv=H7JAP9Qi c=1 sm=1 tr=0
 a=+tcVrJynzLVJ9yqDAOBWjQ==:117 a=BMPAqxsBfaMw7D4mMDT+Qw==:17
 a=IkcTkHD0fZMA:10 a=xOM3xZuef0cA:10 a=Kd1Wz92Rn5oA:10 a=jDPn5Ez8AAAA:8
 a=l4hga9LzAAAA:8 a=wFyEqDRaejgj_FCmH7YA:9 a=QEXdDO2ut3YA:10 a=a5gSgiVMYwYA:10
 a=qBBZk9_c10KGGu05SxeP:22 a=3HEqyBG9YizcQX9YUvu1:22
Received: from 203.sub-174-242-137.myvzw.com ([174.242.137.203]:13976
 helo=[192.168.72.52]) by bosauthsmtp09.eigbox.net with esmtpa (Exim)
 id 1oe06s-0007Ah-LX; Thu, 29 Sep 2022 16:26:18 -0400
Message-ID: <d4f2d42bd9d869d43de5ff31724d819aabc2f9d4.camel@jankom.net>
From: "Janos G. Komaromi" <janos@jankom.net>
To: Bernhard Praschinger <bernhard@griesbach.at>, MJPEG-tools user list
 <mjpeg-users@lists.sourceforge.net>
Date: Thu, 29 Sep 2022 16:26:14 -0400
In-Reply-To: <e837da44-2ef5-2543-6382-3713116b7298@griesbach.at>
References: <ed5481fd618006e4d259165748a48fd06c58789e.camel@jankom.net>
 <e837da44-2ef5-2543-6382-3713116b7298@griesbach.at>
User-Agent: Evolution 3.44.1-0ubuntu1 
MIME-Version: 1.0
X-EN-UserInfo: 44a69bc9b6dca178582a57c3954217da:931c98230c6409dcc37fa7e93b490c27
X-EN-AuthUser: janos@jankom.net
X-EN-OrigIP: 174.242.137.203
X-EN-OrigHost: 203.sub-174-242-137.myvzw.com
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Thanks, Bernie. I understand. Greetings, Janos -- Janos G.
    Komaromi sent it NOT from iPhone nor Google facebook, instagram, viber, snapchat,
    twitter, #@*~| etc. - neither of those https://jgklinux.jankom.net/ ​ 
 
 Content analysis details:   (0.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [66.96.189.3 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [66.96.189.3 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
X-Headers-End: 1oe078-0005Cu-Qz
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

VGhhbmtzLCBCZXJuaWUuIEkgdW5kZXJzdGFuZC4KCkdyZWV0aW5ncywKCkphbm9zCi0tIApKYW5v
cyBHLiBLb21hcm9taSBzZW50IGl0Ck5PVCBmcm9tIGlQaG9uZSBub3IgR29vZ2xlCmZhY2Vib29r
LCBpbnN0YWdyYW0sIHZpYmVyLCBzbmFwY2hhdCwgdHdpdHRlciwgI0AqfnwKZXRjLiAtIG5laXRo
ZXIgb2YgdGhvc2UKaHR0cHM6Ly9qZ2tsaW51eC5qYW5rb20ubmV0LwrigIsKCgpPbiBUaHUsIDIw
MjItMDktMjkgYXQgMTk6MjAgKzAyMDAsIEJlcm5oYXJkIFByYXNjaGluZ2VyIHdyb3RlOgo+IEhh
bGxvLAo+IAo+ID4gSSBoYXZlIG5vdCBiZWVuIGRvaW5nIHZpZGVvIHN0dWZmIGZvciBhIGZldyB5
ZWFycywgYnV0IG5vdyBhcyBhCj4gPiByZXRpcmVlCj4gPiBJIHdhbnRlZCB0byBkaWdpdGl6ZSBt
eSBvbGQgdmlkZW9zIGZyb20gbWFnbmV0aWMgdGFwZXMuIEkgaGF2ZSBhCj4gPiBuZWF0Cj4gPiBn
aXptbyB0aGF0IGNyZWF0ZXMgYW4gLmF2aSBmaWxlIGZyb20gVkhTIHZpZGVvIGFuZCBzdGVyZW8g
aW5wdXRzIG9uCj4gPiBhCj4gPiBtaWNybyBzZCBjYXJkLiBUaGUgY3JlYXRlZCAuYXZpIGZpbGUg
cGxheXMgd2VsbCB3aXRoIHZsYy4KPiBUaGF0IGtpbmQgb2YgZGV2aWNlIGlzIHdoYXQgSSB3b3Vs
ZCB1c2UgdGhpcyBkYXkncyB0b28uCj4gCj4gPiBIZXJlIGlzIG15IGlzc3VlIGFuZCByZXF1ZXN0
IGZvciBoZWxwLgo+ID4gCj4gPiBJIHRyeSB0byBtYWtlIHNvbWUgdmVyeSBiYXNpYyBlZGl0aW5n
IG9mIHRoZSBkaWdpdGl6ZWQgLmF2aSBmaWxlLAo+ID4gYnV0Cj4gPiByYW4gaW50byBhIHByb2Js
ZW0uIEkgc3R1ZGllZCBteSBvbGRlciBwb3N0cywgbm90ZXMsIGJ1dCBhbSBzdGlsbAo+ID4gc3R1
Y2suIEl0IGxvb2tzIGxpa2UgdGhlLmF2aSBmaWxlIGNyZWF0ZWQgd2l0aCB0aGUgZGlnaXRpemlu
ZyBnaXptbwo+ID4gaXMKPiA+IHRvbyBzb3BoaXN0aWNhdGVkIGZvciBsYXZwbGF5IG9yIGdsYXYg
LSBzZWUgYmVsb3cuIERvIEkgbmVlZCB0bwo+ID4gdHJhbnMtCj4gPiBjb2RlIHRoZSAuYXZpIGZp
bGUsIGFuZCBob3c/IFRoYW5rIHlvdSBmb3IgeW91ciBhdHRlbnRpb24gLSBKYW5vcwo+ID4gCj4g
PiBBcyBhIHNpZGUgbm90ZTogY291bGQgeW91IHBsZWFzZSBhZGQgYW5vdGhlciBlbWFpbCBhZGRy
ZXNzIHRvIHRoaXMKPiA+IG1haWxpbmcgbGlzdC4gSXQgaXMgdGhlIGFkZHJlc3Mgb24gdGhlIG1h
aWwgc2VydmVyIHJ1bm5pbmcgb24gbXkKPiA+IEZpdGxldAo+ID4gbWFjaGluZSAtIGphbm9zQGFu
ZHJhc2xpbnV4Lmpna2xpbnV4LmphbmtvbS5uZXQKPiA+IAo+ID4gREVUQUlMUzoKPiA+IGphbm9z
QGFuZHJhc2xpbnV4IH4vdG1wICQgbGF2cGxheSAtcCBTIC12IDIgZXpjYXAwMDAxLmF2aQo+ID4g
bGF2cGxheTIuMi4xCj4gPiBsYXZ0b29scyB2ZXJzaW9uIDIuMi4xCj4gPiAtLURFQlVHOiBbbGF2
cGxheV0gT3BlbmluZyB2aWRlbyBmaWxlIGV6Y2FwMDAwMS5hdmkgLi4uCj4gPiAqKkVSUk9SOiBb
bGF2cGxheV0gRXJyb3Igb3BlbmluZyBlemNhcDAwMDEuYXZpCj4gPiAKPiA+IGphbm9zQGFuZHJh
c2xpbnV4IH4vdG1wICQgZmlsZSBlemNhcDAwMDEuYXZpCj4gPiBlemNhcDAwMDEuYXZpOiBSSUZG
IChsaXR0bGUtZW5kaWFuKSBkYXRhLCBBVkksIDgwMCB4IDU5MiwgMzAuMDAKPiA+IGZwcywKPiA+
IHZpZGVvOiBYdmlELCBhdWRpbzogTVBFRy0xIExheWVyIDMgKHN0ZXJlbywgNDQxMDAgSHopCj4g
PiAKPiA+IGphbm9zQGFuZHJhc2xpbnV4IH4vdG1wICQgZmZwcm9iZSBlemNhcDAwMDEuYXZpCj4g
PiBmZnByb2JlIHZlcnNpb24gNC40LjIgQ29weXJpZ2h0IChjKSAyMDA3LTIwMjEgdGhlIEZGbXBl
ZyBkZXZlbG9wZXJzCj4gPiDCoMKgIGJ1aWx0IHdpdGggZ2NjIDExLjMuMCAoR2VudG9vIDExLjMu
MCBwNCkKPiA+IC4uLgo+ID4gSW5wdXQgIzAsIGF2aSwgZnJvbSAnZXpjYXAwMDAxLmF2aSc6Cj4g
PiDCoMKgIER1cmF0aW9uOiAwMTo0ODo1MS42Nywgc3RhcnQ6IDAuMDAwMDAwLCBiaXRyYXRlOiA5
Njcga2Ivcwo+ID4gwqDCoCBTdHJlYW0gIzA6MDogVmlkZW86IG1wZWc0IChBZHZhbmNlZCBTaW1w
bGUgUHJvZmlsZSkgKFhWSUQgLwo+ID4gMHg0NDQ5NTY1OCksIHl1djQyMHAsIDgwMHg1OTIgW1NB
UiAxOjEgREFSIDUwOjM3XSwgODk2IGtiL3MsIDMwCj4gPiBmcHMsIDMwCj4gPiB0YnIsIDMwIHRi
biwgMzAgdGJjIFN0cmVhbSAjMDoxOiBBdWRpbzogbXAzIChVWzBdWzBdWzBdIC8gMHgwMDU1KSwK
PiA+IDQ0MTAwIEh6LCBzdGVyZW8sIGZsdHAsIDY0IGtiL3NUaGUgbWpwZWd0b29scyBjYW4gb25s
eSBoYW5kbGUgYSBmZXcKPiA+IEFWSSBDb2RlY3MuIEZvciBleGFtcGxlOiBkdnZpZGVvIAo+IGFu
ZCBtanBlZyBpdCBjYW4ndCBkZWNvZGUgdGhlIGVuY29kZWQgTVBFRzQKPiAKPiBJIGRvbid0IGtu
b3cgaWYgZmZtcGVnIGNhbiBkZWNvZGUgaXQgaW4gYSBmb3JtYXQgdGhlIG1qcGVndG9vbHMgCj4g
dW5kZXJzdGFuZC4gQnV0IG1wbGF5ZXIgY2FuIChzaG91bGQpIGRvIGl0LCBoZXJlIGlzIGFyZSBl
eGFtcGxlCj4gY29tbWFuZHMgCj4gZm9yIHZpZGVvOgo+IMKgPm1rZmlmbyBzdHJlYW0ueXV2Cj4g
wqA+Y2F0IHN0cmVhbS55dXYg4pSCIHl1dmRlbm9pc2Ug4pSCIHl1dnNjYWxlciAtTyBTVkNEIOKU
giBtcGVnMmVuYyAtZiA0IC1vIAo+IHZpZGVvX3N2Y2QubTJ2Cj4gwqA+bXBsYXllciAtbm9zb3Vu
ZCAtbm9mcmFtZWRyb3AgLXZvIHl1djRtcGVnIGFueWZpbGUubXBnCj4gCj4gRm9yIEF1ZGlvOgo+
IMKgPm1wbGF5ZXIgLXZvIG51bGwgLWFvIHBjbTpmaWxlPWFueWZpbGUud2F2IGFueWZpbGUubXBn
Cj4gwqA+IGNhdCBhbnlmaWxlLndhdiDilIIgbXAyZW5jIC12IDIgLVYgLW8gc291bmQubXAyCj4g
Cj4gWW91IGZpbmQgYSBzZWN0aW9uIGluIHRoZTogbWpwZWd0b29scyBtYW5wYWdlIGNhbGxlZDog
RGVjb2RpbmcKPiBzdHJlYW1zIAo+IHdpdGggbXBsYXllciB0aGF0IHNob3VsZCBleHBsYWluIGl0
IGluIG1vcmUgZGV0YWlsLiBJIGhvcGUgdGhlCj4gcHJvZ3JhbQo+IAo+IEkgZGlkIGEgcXVpY2sg
Y2hlY2sgaXQgc2hvdWxkIHdvcmsuIFBsZWFzZSB0ZXN0IGl0IGFuZCBsZXQgdXMga25vdyBpZgo+
IGl0IAo+IHdvcmtlZC4KPiAKPiBhdWYgaG9mZmVudGxpY2ggYmFsZCwKPiAKPiBCZXJuaSB0aGUg
Q2hhb3Mgb2YgV29vZHF1YXJ0ZXIKPiAKPiBFbWFpbDogYmVybmhhcmRAZ3JpZXNiYWNoLmF0Cj4g
d3d3OiBodHRwOi8vd3d3Lmx5c2F0b3IubGl1LnNlL35nei9iZXJuaGFyZAoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk1qcGVnLXVzZXJzIG1haWxpbmcg
bGlzdApNanBlZy11c2Vyc0BsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vbWpwZWctdXNlcnMK
