Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4BC439B75
	for <lists+mjpeg-users@lfdr.de>; Mon, 25 Oct 2021 18:23:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mf2lQ-0006Wk-1B; Mon, 25 Oct 2021 16:23:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hverkuil@xs4all.nl>) id 1mf1f5-0002ec-DP
 for mjpeg-users@lists.sourceforge.net; Mon, 25 Oct 2021 15:13:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fIY1GIaSVdj5U3XrMAxDyWv4KHAUORx2wUkdkjhqXC8=; b=YKWYh8Y6ocQRpoI22nuc1Bqb1V
 oT9jKXFYjCalcJRcR7+C4O2fx3aXdTNxtJz4c+Q54uWgB50A17SCn4Z1xqof8EIZA0oUyOvsnVeFm
 t7xadOEccol7oscLvBXFfpGCsCfMUFImlVUQZIgUcgCZPc8BZKaocSO/8yvbpiaeC4is=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fIY1GIaSVdj5U3XrMAxDyWv4KHAUORx2wUkdkjhqXC8=; b=PFSSqGjs/cY8laBW1SA+g+AcmT
 Xkr/SEdz4VQX1Npmwp6APJ+50qatFAZt+odvG1qpM4ICDBwN7Vn8zPcutMYCLIbNpUiVOquECqtsN
 4Z5AulBrnQXtQ2kk5L4huBC0THQX3CoOCX260clHvNtTkWvh7WD4Gzs3Ob+NyJBp/D5w=;
Received: from lb1-smtp-cloud8.xs4all.net ([194.109.24.21])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mf1f1-00FoIa-5x
 for mjpeg-users@lists.sourceforge.net; Mon, 25 Oct 2021 15:13:19 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud8.xs4all.net with ESMTPA
 id f1eqmGoUiFfMif1ermUucr; Mon, 25 Oct 2021 17:13:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1635174785; bh=fIY1GIaSVdj5U3XrMAxDyWv4KHAUORx2wUkdkjhqXC8=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=aQWf8mKI/N+PtAuoDrZ04aYbmjcG+AVRujs+lv+EPoaW0Jd4kZ7nxAWRIehWqjPym
 IjRZZKVeZ6jNUY/gnKntbtfxPxzwz5IrEaAzcbba35fQ6SVLdPElqYITmJKxahxgHF
 1mFqwIhxTVvpr0LQHa+s+CHQzaCUZAiyiewyG5b5aY/P1bDBhZp6aqlW/utymYoYQY
 /BbWK5u8sE9Ub5UCs8V9x/niNdwSWr1RWHayQpz9BO/Y8plwQoNboM44E2uxelpEWW
 cUrZW0T3y9+x/6PUT74qw9s7fk3YMwOz2waNgvvnryid60AV2EuhYNDLd+n6oMaL3k
 iOWMOKf//suMQ==
To: LABBE Corentin <clabbe@baylibre.com>
References: <20211013185812.590931-1-clabbe@baylibre.com>
 <da925d73-fdf0-3962-3841-a1dd53b5c5dd@xs4all.nl> <YXa9WGs7ewyaHmI9@Red>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <71b72175-538e-87e4-d662-e59fd4131a43@xs4all.nl>
Date: Mon, 25 Oct 2021 17:13:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <YXa9WGs7ewyaHmI9@Red>
Content-Language: en-US
X-CMAE-Envelope: MS4xfKXsBZKZjWokjLzBUxVr/rlum1dMNHkXzuENEFfg6JbvVbzYGvw51c/XiE9qdH7QayonRkvslocJlN2TO65u3IEbETfbPC5AAscqAB7vmwlKUZOCQkrj
 NVyvRNnzcgzX6ZidqYF2R7xlTzbOL/I7c1uon5WmiiCiJ1uDJ3UEYTqWrE7AMkhycfqBECWYc9xWHiUOdEF0TWvXOe62sDWn1kpczQDyWyh8RpJ9OGSjS7qj
 zBz80kwslj7Z4Mh8z9Kjq7AMfyp2GJ+2tt709rTB2m1XVvTFGVB1agtjRLB6ZFZLDeTShk0nTxrHCvL5NUCpJTe0mi4ANgCVA1W5QMfDglEq0eRQZcDBb2Qk
 bdJE+sLv9HQfIy/4lL+Tgv6nqQcgUtpIQevsf0QPV6Q/imzqDUUiB4tMvX52/qd9MTJWhnGopfvZl28d1WSArALQtA0Nn4Cz5Xx2MbehNFPSdP7pcE8d9rGc
 jsbZ0Pyu1CFnbL1X4R2lrhUvD26XC1Yxb/EnzJrfwXJkpNXq7mf5WW1+M4E=
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 25/10/2021 16:21, LABBE Corentin wrote: > Le Mon, Oct 25,
    2021 at 02:45:02PM +0200, Hans Verkuil a écrit : >> Hi Corentin, >> >> On
    13/10/2021 20:58, Corentin Labbe wrote: >>> Hello >>> >>> The ma [...] 
 
 Content analysis details:   (-2.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [194.109.24.21 listed in list.dnswl.org]
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [194.109.24.21 listed in wl.mailspike.net]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mf1f1-00FoIa-5x
X-Mailman-Approved-At: Mon, 25 Oct 2021 16:23:54 +0000
Subject: Re: [Mjpeg-users] [PATCH v2 00/10] staging: media: zoran: fusion in
 one module
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

T24gMjUvMTAvMjAyMSAxNjoyMSwgTEFCQkUgQ29yZW50aW4gd3JvdGU6Cj4gTGUgTW9uLCBPY3Qg
MjUsIDIwMjEgYXQgMDI6NDU6MDJQTSArMDIwMCwgSGFucyBWZXJrdWlsIGEgw6ljcml0IDoKPj4g
SGkgQ29yZW50aW4sCj4+Cj4+IE9uIDEzLzEwLzIwMjEgMjA6NTgsIENvcmVudGluIExhYmJlIHdy
b3RlOgo+Pj4gSGVsbG8KPj4+Cj4+PiBUaGUgbWFpbiBjaGFuZ2Ugb2YgdGhpcyBzZXJpZSBpcyB0
byBmdXNpb24gYWxsIHpvcmFuIHJlbGF0ZWQgbW9kdWxlcyBpbgo+Pj4gb25lLgo+Pj4gVGhpcyBm
aXhlcyB0aGUgbG9hZCBvcmRlciBwcm9ibGVtIHdoZW4gZXZlcnl0aGluZyBpcyBidWlsdC1pbi4K
Pj4+Cj4+PiBSZWdhcmRzCj4+Pgo+Pj4gQ2hhbmdlcyBzaW5jZSB2MToKPj4+IC0gYWRkIG1pc3Np
bmcgZGVidWdmcyBjbGVhbmluZwo+Pj4gLSBjbGVhbiBzb21lIHJlbWFpbmluZyBtb2R1bGVfZ2V0
L3B1dCBmdW5jdGlvbnMgd2hpY2ggbWFkZSBpbXBvc3NpYmxlIHRvCj4+PiAgIHJlbW92ZSB0aGUg
em9yYW4gbW9kdWxlCj4+PiAtIGFkZGVkIHRoZSB0d28gbGF0ZXN0IHBhdGNocwo+Pgo+PiBTb21l
dGhpbmcgd2VpcmQgaXMgd3Jvbmcgd2l0aCB0aGlzIHNlcmllcy4gSSBoYXZlIGEgREMzMCwgYnV0
IGxvYWRpbmcgdGhpcyB3aXRoOgo+Pgo+PiBtb2Rwcm9iZSB6cjM2MDY3IGNhcmQ9Mwo+Pgo+PiBy
ZXN1bHRzIGluIHRoaXMgZXJyb3IgbWVzc2FnZSBpbiB0aGUga2VybmVsIGxvZzoKPj4KPj4gWyAg
IDU4LjY0NTU1N10genIzNjA2NzogbW9kdWxlIGlzIGZyb20gdGhlIHN0YWdpbmcgZGlyZWN0b3J5
LCB0aGUgcXVhbGl0eSBpcyB1bmtub3duLCB5b3UgaGF2ZSBiZWVuIHdhcm5lZC4KPj4gWyAgIDU4
LjY0NjY1OF0genIzNjA2NyAwMDAwOjAzOjAwLjA6IFpvcmFuIE1KUEVHIGJvYXJkIGRyaXZlciB2
ZXJzaW9uIDAuMTAuMQo+PiBbICAgNTguNjQ2NzkzXSB6cjM2MDY3IDAwMDA6MDM6MDAuMDogWm9y
YW4gWlIzNjA1NyAocmV2IDEpLCBpcnE6IDE4LCBtZW1vcnk6IDB4ZjQwMDAwMDAKPj4gWyAgIDU4
LjY0ODgyMV0genIzNjA2NyAwMDAwOjAzOjAwLjA6IEluaXRpYWxpemluZyBpMmMgYnVzLi4uCj4+
IFsgICA1OC42NjI0MjBdIHZweDMyMjAgMjItMDA0NzogdnB4MzIxNmIgZm91bmQgQCAweDhlIChE
QzMwWzBdKQo+PiBbICAgNTguNzM3NDQ1XSB6cjM2MDY3IDAwMDA6MDM6MDAuMDogRmFpbCB0byBn
ZXQgZW5jb2Rlcgo+Pgo+PiBUaGlzIHdvcmtzIGJlZm9yZSwgc28gd2h5IHRoaXMgaXMgbm93IGZh
aWxpbmcgaXMgbm90IGNsZWFyIHRvIG1lLgo+Pgo+PiBJdCBkb2VzIHdvcmsgd2l0aCAnY2FyZD0w
JywgYnV0IEkgcmVhbGx5IGhhdmUgYSBEQzMwLgo+Pgo+PiBJZiBJIHRlc3Qgd2l0aCAnY2FyZD0w
JyB0aGVuIHRoZSBybW1vZCBpc3N1ZSBpcyBub3cgc29sdmVkLgo+IAo+IEV2ZXJ5dGhpbmcgbm9y
bWFsLCBzaW5jZSBjYXJkIDAgZG9lcyBub3QgaGF2ZSBlbmNvZGVyLgo+IENvdWxkIHlvdSBjaGVj
ayB0aGF0IGFkdjcxNzUgaXMgY29tcGlsZWQgPwoKWWVzLCBhbmQgaXQgbG9hZGVkIGFzIHdlbGwg
KEkgc2VlIGl0IHdpdGggbHNtb2QpLgoKSG93ZXZlciwgdGhlcmUgaXMgbm8gYWR2NzE3NSBvbiBt
eSBib2FyZCwgaW5zdGVhZCBpdCBhcHBlYXJzIHRvIGhhdmUgYW4gSVRUIE1TRTMwMDAuClRoZXJl
IGlzIG5vIGRyaXZlciBmb3IgdGhpcyBvbmUgKGFuZCBJIGRvbid0IGV2ZW4gdGhpbmsgaXQgaXMg
YW4gaTJjIGRldmljZSksIHNvCkkgc3VzcGVjdCB0aGF0IGJlZm9yZSB0aGUgZHJpdmVyIGp1c3Qg
Y29udGludWVkIHdpdGhvdXQgZW5jb2RlciBzdXBwb3J0LCB3aGVyZWFzIG5vdwppdCBmYWlscyB3
aGVuIGl0IGNhbid0IGxvYWQgdGhlIGVuY29kZXIuCgpDb3VsZCB0aGF0IGJlIHRoZSByZWFzb24/
IEluIHRoZSBhYnNlbmNlIG9mIGFuIGVuY29kZXIsIEkgdGhpbmsgaXQgc2hvdWxkIGp1c3QKY29u
dGludWUsIGVzcC4gc2luY2UgdGhlIGRyaXZlciBkb2Vzbid0IHVzZSB0aGUgZW5jb2RlciBhbnl3
YXkuCgpSZWdhcmRzLAoKCUhhbnMKCj4gCj4gSSBnb3QgdGhlIHNhbWUgcHJvYmxlbSB3aXRoIG15
IERDMTArIHdoZXJlIHNhYTcxMTAgd2FzIG5vdCBjb21waWxlZC4KPiBUaGlzIGlzc3VlIHdhcyBy
ZXByb2R1Y2VkIHJhbmRvbWx5IGFuZCBJIGhhdmUgbm8gZXhwbGFuYXRpb24uIChrY29uZmlnIHBy
b2JsZW0gPykKPiAKPiBSZWdhcmRzCj4gCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCk1qcGVnLXVzZXJzIG1haWxpbmcgbGlzdApNanBlZy11c2Vyc0Bs
aXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMv
bGlzdGluZm8vbWpwZWctdXNlcnMK
