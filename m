Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D0BE5F3322
	for <lists+mjpeg-users@lfdr.de>; Mon,  3 Oct 2022 18:13:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1ofO4e-00026H-OW;
	Mon, 03 Oct 2022 16:13:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <SRS0=o+gTRD=2E=jankom.net=janos@eigbox.net>)
 id 1ofO4W-000262-Cc for mjpeg-users@lists.sourceforge.net;
 Mon, 03 Oct 2022 16:13:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:MIME-Version:Content-Transfer-Encoding:
 Content-Type:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
 Cc:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7KpVKsz2+G/FOv2KLLsnxhX++44zsQRpCPaEknt+wOA=; b=B9UbzgWyDvVtHQB1s0OTfLt4vM
 zCKWOX3r/G8MKEmvx5Kat3YEsUQar3SU8DfB/tpyywOhj/KOjQvDDmUdR1xoefgKr4iym8C4OyXBT
 blcpLCTydsuR2xC/xpTWDa11VBgbQIOCQq8CddN6wHqVOjrvx+WrCcJDq7h0RVrN/Mr4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7KpVKsz2+G/FOv2KLLsnxhX++44zsQRpCPaEknt+wOA=; b=SdYrfy1NUSDG4+IL2WJkfDatS5
 lHtrsHstAALnYogHbVpWQMH2duZA/cNSlUCkW7FjhFsrPZz5MO3Pj7AJkAGwByj/k6fHc9m/7zceH
 r/xbS9tWAGiBn+Z+mS7e9I3+IOSBdSGd1ej6+/++BjLO136okJ18NBUF6sE6LFaDtO6Q=;
Received: from bosmailout05.eigbox.net ([66.96.189.5])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ofO4S-00BK1r-C2 for mjpeg-users@lists.sourceforge.net;
 Mon, 03 Oct 2022 16:13:36 +0000
Received: from bosmailscan07.eigbox.net ([10.20.15.7])
 by bosmailout05.eigbox.net with esmtp (Exim) id 1ofO4M-0002Xq-4k
 for mjpeg-users@lists.sourceforge.net; Mon, 03 Oct 2022 12:13:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=jankom.net; 
 s=dkim;
 h=Sender:MIME-Version:Content-Transfer-Encoding:Content-Type:
 References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe
 :List-Post:List-Owner:List-Archive;
 bh=7KpVKsz2+G/FOv2KLLsnxhX++44zsQRpCPaEknt+wOA=; b=PrTox8+q9rSxlRFWD9QtkxGSHx
 s94Tti5wMEr6oWKcpD0KYnGof/eJmhrqgsm1H72Mmek3pmf+NRQ4F79N5ksJ4VBGWITI0zZMmVre/
 9n+z2XRj4EVtplC6f65OqH2PdKFRR3vKre4Vdefd3MQOFsuC5rughvxRMhwtSOhlxZ2vkLViJKYej
 /K7pjal9sHpwACDbxkU/ZJpPMWskD2HN2wywoZqFE/Op09wsAD2BDuLeL+LSXEP10s5NLh8hfe6eo
 loU8/vUvi5d99lY8LD98d3FSPneGcR6g9GJD3hew/9c/hbHr6gL1mrnImJuKSONcz9nsXCt+A8JnN
 7lcMQ9pQ==;
Received: from [10.115.3.33] (helo=bosimpout13)
 by bosmailscan07.eigbox.net with esmtp (Exim) id 1ofO4J-0005QR-M7
 for mjpeg-users@lists.sourceforge.net; Mon, 03 Oct 2022 12:13:23 -0400
Received: from bosauthsmtp09.yourhostingaccount.com ([10.20.18.9])
 by bosimpout13 with 
 id TUDL280030BkY8i01UDPaQ; Mon, 03 Oct 2022 12:13:23 -0400
X-Authority-Analysis: v=2.3 cv=H7JAP9Qi c=1 sm=1 tr=0
 a=+tcVrJynzLVJ9yqDAOBWjQ==:117 a=BMPAqxsBfaMw7D4mMDT+Qw==:17
 a=IkcTkHD0fZMA:10 a=Qawa6l4ZSaYA:10 a=Kd1Wz92Rn5oA:10 a=l4hga9LzAAAA:8
 a=YxxwLUvd4mfDHxOCOdgA:9 a=QEXdDO2ut3YA:10 a=a5gSgiVMYwYA:10
 a=3HEqyBG9YizcQX9YUvu1:22
Received: from 203.sub-174-242-137.myvzw.com ([174.242.137.203]:13972
 helo=[192.168.72.52]) by bosauthsmtp09.eigbox.net with esmtpa (Exim)
 id 1ofO4F-00089w-KU; Mon, 03 Oct 2022 12:13:19 -0400
Message-ID: <69f2345cb64545b377ac23904524ba299f542f3f.camel@jankom.net>
From: "Janos G. Komaromi" <janos@jankom.net>
To: Bernhard Praschinger <bernhard@griesbach.at>, MJPEG-tools user list
 <mjpeg-users@lists.sourceforge.net>
Date: Mon, 03 Oct 2022 12:13:15 -0400
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
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Bernie, thanks for your answer. Sorry, I have not been
   doing video edits lately, so I need a little more help. Lat time I used Cinelerra
    for video edit on my old FC-3 desktop. I tried Quote >mkfifo stream.yuv >
    >cat stream.yuv │ yuvdenoise │ yuvscaler -O SVCD │ mpeg2enc -f 4 -o
    > video_svcd.m2v > >mplayer -nosound -noframedrop -vo yuv4mpeg anyfile.mpg
    > > For Audio: > [...] 
 
 Content analysis details:   (0.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [66.96.189.5 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [66.96.189.5 listed in list.dnswl.org]
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
X-Headers-End: 1ofO4S-00BK1r-C2
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

SGkgQmVybmllLCB0aGFua3MgZm9yIHlvdXIgYW5zd2VyLiBTb3JyeSwgSSBoYXZlIG5vdCBiZWVu
IGRvaW5nIHZpZGVvCmVkaXRzIGxhdGVseSwgc28gSSBuZWVkIGEgbGl0dGxlIG1vcmUgaGVscC4g
TGF0IHRpbWUgSSB1c2VkIENpbmVsZXJyYQpmb3IgdmlkZW8gZWRpdCBvbiBteSBvbGQgRkMtMyBk
ZXNrdG9wLgoKSSB0cmllZApRdW90ZQo+bWtmaWZvIHN0cmVhbS55dXYKPiAgPmNhdCBzdHJlYW0u
eXV2IOKUgiB5dXZkZW5vaXNlIOKUgiB5dXZzY2FsZXIgLU8gU1ZDRCDilIIgbXBlZzJlbmMgLWYg
NCAtbyAKPiB2aWRlb19zdmNkLm0ydgo+ICA+bXBsYXllciAtbm9zb3VuZCAtbm9mcmFtZWRyb3Ag
LXZvIHl1djRtcGVnIGFueWZpbGUubXBnCj4gCj4gRm9yIEF1ZGlvOgo+ICA+bXBsYXllciAtdm8g
bnVsbCAtYW8gcGNtOmZpbGU9YW55ZmlsZS53YXYgYW55ZmlsZS5tcGcKPiAgPiBjYXQgYW55Zmls
ZS53YXYg4pSCIG1wMmVuYyAtdiAyIC1WIC1vIHNvdW5kLm1wMgo+IApVbnF1b3RlCgpidXQgZGlk
IG5vdCBnZXQgZmFyLgoKTXkgdmlkZW8gY2xpcCBpcyAiZXpjYXAwMDAxLmF2aSIgYXMgc2hvd24g
aW4gREVUQUlMUyBiZWxvdy4gV2hhdCBhcmUKdGhlIGV4YWN0IGNvbW1hbmRzIEkgbmVlZCB0byBp
c3N1ZT8gSG93IGRvIEkgbWFrZSB0aGUgInN0cmVhbS55dXYiPyBJZgpJIGp1c3QgaXNzdWUgdGhl
IGNvbW1hbmQgIm1rZmlmbyBzdHJlYW0ueXV2IiBpdCBjcmVhdGVzIGEgemVybyBieXRlCnBpcGUg
ZmlsZSB0aGF0IHRoZSBuZXh0IGNvbW1hbmQgdXNlczogImNhdCBzdHJlYW0ueXV2IHwgeXV2ZGVu
b2lzZS4uLi4KZXRjIiwgYnV0IGl0IGRvZXMgbm90IGRvIGFueXRoaW5nLiBBbmQgd2hhdCBpcyB0
aGUgImFueWZpbGUubXBnIgpvdXRwdXQ/IElzIGl0IHRoZSBmaWxlIHRoYXQgY2FuIGJlIGVkaXRl
ZCB3aXRoIGdsYXY/IElmIGl0IGlzIG9ubHkgdGhlCnBpY3R1cmUgY29udGVudCBvZiBteSB2aWRl
byBob3cgdGhlIGVkaXRlZCB2ZXJzaW9uIHdpbGwgYmUgc3luY2hyb25pemVkCndpdGggdGhlIHVu
ZWRpdGVkIHNvdW5kIHBhcnQgb2YgdGhlIG9yaWdpbmFsIGNsaXA/CgpTb3JyeSwgdGhlc2UgbWF5
IGJlIHN0dXBpZCBxdWVzdGlvbnMgYnV0IEknZCBsaWtlIHRvIHVuZGVyc3RhbmQgdGhlCndob2xl
IHRoaW5nIGJldHRlci4gT0ssIHRoZXJlIGlzIHRoZSBSVEZNIHByaW5jaXBsZSwgYW5kIEkgcmVh
ZCBNSlBFRwpIT1dUTyBkb2N1bWVudCA0LjEgdGhyb3VnaCA0LjMgYnV0IHN0aWxsIGRvbid0IGtu
b3cgaG93IHRvIGVkaXQgbXkKImV6Y2FwMDAwMS5hdmkiIHZpZGVvIGZpbGUgd2l0aCBnbGF2LgoK
UExlYXNlLCBleHBsYWluIC0gSmFub3MKUC5TLiB0cmllZCBvdGhlciBvcGVuc291cmNlIGxpbnV4
IHZpZGVvIGVkaXRvcnMgb24gbXkgR2VudG9vIG1hY2hpbmUsCmJ1dCBvcGVuc2hvdCBkb2VzIG5v
dCBydW4sIGFuZCBjb3VsZCBub3QgY29tcGlsZSBmbG93YmxhZGUgeWV0LiBJIGxpa2UKdGhlIHNp
bXBsaWNpdHkgb2YgeW91ciBnbGF2LgoKT24gVGh1LCAyMDIyLTA5LTI5IGF0IDE5OjIwICswMjAw
LCBCZXJuaGFyZCBQcmFzY2hpbmdlciB3cm90ZToKLi4uCj4gPiAKPiA+IERFVEFJTFM6Cj4gPiBq
YW5vc0BhbmRyYXNsaW51eCB+L3RtcCAkIGxhdnBsYXkgLXAgUyAtdiAyIGV6Y2FwMDAwMS5hdmkK
PiA+IGxhdnBsYXkyLjIuMQo+ID4gbGF2dG9vbHMgdmVyc2lvbiAyLjIuMQo+ID4gLS1ERUJVRzog
W2xhdnBsYXldIE9wZW5pbmcgdmlkZW8gZmlsZSBlemNhcDAwMDEuYXZpIC4uLgo+ID4gKipFUlJP
UjogW2xhdnBsYXldIEVycm9yIG9wZW5pbmcgZXpjYXAwMDAxLmF2aQo+ID4gCj4gPiBqYW5vc0Bh
bmRyYXNsaW51eCB+L3RtcCAkIGZpbGUgZXpjYXAwMDAxLmF2aQo+ID4gZXpjYXAwMDAxLmF2aTog
UklGRiAobGl0dGxlLWVuZGlhbikgZGF0YSwgQVZJLCA4MDAgeCA1OTIsIDMwLjAwCj4gPiBmcHMs
Cj4gPiB2aWRlbzogWHZpRCwgYXVkaW86IE1QRUctMSBMYXllciAzIChzdGVyZW8sIDQ0MTAwIEh6
KQo+ID4gCj4gPiBqYW5vc0BhbmRyYXNsaW51eCB+L3RtcCAkIGZmcHJvYmUgZXpjYXAwMDAxLmF2
aQo+ID4gZmZwcm9iZSB2ZXJzaW9uIDQuNC4yIENvcHlyaWdodCAoYykgMjAwNy0yMDIxIHRoZSBG
Rm1wZWcgZGV2ZWxvcGVycwo+ID4gwqDCoCBidWlsdCB3aXRoIGdjYyAxMS4zLjAgKEdlbnRvbyAx
MS4zLjAgcDQpCj4gPiAuLi4KPiA+IElucHV0ICMwLCBhdmksIGZyb20gJ2V6Y2FwMDAwMS5hdmkn
Ogo+ID4gwqDCoCBEdXJhdGlvbjogMDE6NDg6NTEuNjcsIHN0YXJ0OiAwLjAwMDAwMCwgYml0cmF0
ZTogOTY3IGtiL3MKPiA+IMKgwqAgU3RyZWFtICMwOjA6IFZpZGVvOiBtcGVnNCAoQWR2YW5jZWQg
U2ltcGxlIFByb2ZpbGUpIChYVklEIC8KPiA+IDB4NDQ0OTU2NTgpLCB5dXY0MjBwLCA4MDB4NTky
IFtTQVIgMToxIERBUiA1MDozN10sIDg5NiBrYi9zLCAzMAo+ID4gZnBzLCAzMAo+ID4gdGJyLCAz
MCB0Ym4sIDMwIHRiYyBTdHJlYW0gIzA6MTogQXVkaW86IG1wMyAoVVswXVswXVswXSAvIDB4MDA1
NSksCj4gPiA0NDEwMCBIeiwgc3RlcmVvLCBmbHRwLCA2NCBrYi9zVGhlIG1qcGVndG9vbHMgY2Fu
IG9ubHkgaGFuZGxlIGEgZmV3Cj4gPiBBVkkgQ29kZWNzLiBGb3IgZXhhbXBsZTogZHZ2aWRlbyAK
PiBhbmQgbWpwZWcgaXQgY2FuJ3QgZGVjb2RlIHRoZSBlbmNvZGVkIE1QRUc0Cj4gCj4gSSBkb24n
dCBrbm93IGlmIGZmbXBlZyBjYW4gZGVjb2RlIGl0IGluIGEgZm9ybWF0IHRoZSBtanBlZ3Rvb2xz
IAo+IHVuZGVyc3RhbmQuIEJ1dCBtcGxheWVyIGNhbiAoc2hvdWxkKSBkbyBpdCwgaGVyZSBpcyBh
cmUgZXhhbXBsZQo+IGNvbW1hbmRzIAo+IGZvciB2aWRlbzoKPiDCoD5ta2ZpZm8gc3RyZWFtLnl1
dgo+IMKgPmNhdCBzdHJlYW0ueXV2IOKUgiB5dXZkZW5vaXNlIOKUgiB5dXZzY2FsZXIgLU8gU1ZD
RCDilIIgbXBlZzJlbmMgLWYgNCAtbyAKPiB2aWRlb19zdmNkLm0ydgo+IMKgPm1wbGF5ZXIgLW5v
c291bmQgLW5vZnJhbWVkcm9wIC12byB5dXY0bXBlZyBhbnlmaWxlLm1wZwo+IAo+IEZvciBBdWRp
bzoKPiDCoD5tcGxheWVyIC12byBudWxsIC1hbyBwY206ZmlsZT1hbnlmaWxlLndhdiBhbnlmaWxl
Lm1wZwo+IMKgPiBjYXQgYW55ZmlsZS53YXYg4pSCIG1wMmVuYyAtdiAyIC1WIC1vIHNvdW5kLm1w
Mgo+IAo+IFlvdSBmaW5kIGEgc2VjdGlvbiBpbiB0aGU6IG1qcGVndG9vbHMgbWFucGFnZSBjYWxs
ZWQ6IERlY29kaW5nCj4gc3RyZWFtcyAKPiB3aXRoIG1wbGF5ZXIgdGhhdCBzaG91bGQgZXhwbGFp
biBpdCBpbiBtb3JlIGRldGFpbC4gSSBob3BlIHRoZQo+IHByb2dyYW0KPiAKPiBJIGRpZCBhIHF1
aWNrIGNoZWNrIGl0IHNob3VsZCB3b3JrLiBQbGVhc2UgdGVzdCBpdCBhbmQgbGV0IHVzIGtub3cg
aWYKPiBpdCAKPiB3b3JrZWQuCj4gCj4gYXVmIGhvZmZlbnRsaWNoIGJhbGQsCj4gCj4gQmVybmkg
dGhlIENoYW9zIG9mIFdvb2RxdWFydGVyCj4gCj4gRW1haWw6IGJlcm5oYXJkQGdyaWVzYmFjaC5h
dAo+IHd3dzogaHR0cDovL3d3dy5seXNhdG9yLmxpdS5zZS9+Z3ovYmVybmhhcmQKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpNanBlZy11c2VycyBtYWls
aW5nIGxpc3QKTWpwZWctdXNlcnNAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMu
c291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL21qcGVnLXVzZXJzCg==
