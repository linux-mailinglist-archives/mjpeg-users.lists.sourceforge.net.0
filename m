Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F08DB401DEB
	for <lists+mjpeg-users@lfdr.de>; Mon,  6 Sep 2021 18:00:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mNH31-0007iM-1I; Mon, 06 Sep 2021 16:00:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hverkuil@xs4all.nl>) id 1mNFLU-0005G8-IY
 for mjpeg-users@lists.sourceforge.net; Mon, 06 Sep 2021 14:11:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JOLzZ7VqRiUX50FvIiVUIPyGghClF0+xkw331cYUrqo=; b=m7dWdkssxmoD7wPYyUW1JDPE2V
 XDu9XXA82qQZ3X/5VLq7BJx1KF/yCsaaqu+E4sBWbZ9gEThCQ0oe3a3ReAi6hM65utJHdf8uKh4Zy
 YNjFRptiO3Jxfxt1mWC0x3K96LDjf5/BVycJzpG1IxZ27jlQQvyoZWCUzdz15PBdy4Xo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JOLzZ7VqRiUX50FvIiVUIPyGghClF0+xkw331cYUrqo=; b=Mg0/JgnnCTtLyrBOd8ZzFwe1Ll
 7r19x3rns/zcLwcxwKKavoqTMC82Z4k+tOcT4JLeW/mZpm5oEP6+qLY5TchXD5dzfjfY62lnpOQ6o
 DFGReFEj8uUaDoozPooPFO2PC0eb6iDZhZrx2g0oyb/QZKv07IIOzwFQhojunvycafDM=;
Received: from lb1-smtp-cloud7.xs4all.net ([194.109.24.24])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mNFLK-00HRqI-Om
 for mjpeg-users@lists.sourceforge.net; Mon, 06 Sep 2021 14:11:35 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud7.xs4all.net with ESMTPA
 id NFLAmv8PJ0e6wNFLBmjYlP; Mon, 06 Sep 2021 16:11:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1630937477; bh=JOLzZ7VqRiUX50FvIiVUIPyGghClF0+xkw331cYUrqo=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=Y1aeMPJ5mxvYANUEvGy1NKDZRyMin52EK9fTg046OigPHj1YeEPHSMKOeR7D4HT2F
 ye0Pa8Dktao1ZtaPs8KngC2IP3GVcEDohyNzdYRqtXCJElcvQsdjjGhF22QaPJ33oP
 UAS74jcllU7ZlC0hRn5gWqP7rCoQCcjrUKfS9gOoOxs6cmyGSyK9hDAxX9kF1QZweN
 OPRTveCdYVs4u1ZB5mQTqDaKFFkiZnMCglk0kggU8OE8vJPFpntKQh4AhGLysi1M7q
 qwOATwCMTmTj0tj/e4skD7C5V/7WApkUvSwiiPtjY+3bJVVGxQYvNiybQQ1UpR6dkB
 +cmWa0DCZ5NSA==
To: LABBE Corentin <clabbe@baylibre.com>
References: <20210903191540.3052775-1-clabbe@baylibre.com>
 <efe035cc-1839-210f-c0d4-4d58801aa65c@xs4all.nl> <YTYcf3We4dcvBx1h@Red>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <940d5bdf-89b8-b5a4-f485-aa5b1c51286b@xs4all.nl>
Date: Mon, 6 Sep 2021 16:11:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <YTYcf3We4dcvBx1h@Red>
Content-Language: en-US
X-CMAE-Envelope: MS4xfKevPp5h25g9kbcNoNwuDq7cIO1nAHg8u8+yuBLhSFy1pHef+MYEqWsmLSEATIWmPqDAcotBwtjqt7GhoH1kUi5KX+D/gc2epyPZVByAOvn6ubpQXsI4
 LVeiFvMAq0l3EhAXrx1B80b8FlrZmIl99e86iQmc+q5ZSMmh9G90XCd3L0lK7/s42itoNPEBKPvu6p4J+JIYqIP6o9bqD+T9dFydbqHNm/y1Wy7vAtTOr8ry
 1YOcMJzGWxelPmY8XWwiSLVTGY/bDutz4yIghdWwo3LarhzxzKnN6borwSyvmA1cYBmsPwGT5jridissXk4KJ1bDYGhFSqrvLqiriVvyl51F7VIPLiYQiExL
 BbMTwSdCG4Rn3N7VS5BSXYyMuQ95FIwJM+GvW2D1qvm2zVgowogeEGhkYT6Ke2ASJFbUizhM4qvXciG4WY3hYorF6KuVBRAuNLvrXfzsZ0Vtr04aWV1CSGc7
 eqDUhAW0dkUq1B64r9DpCBIMAfO/sGDm+Qj7fF+0PqiravuYY8DoucAg7XE=
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 06/09/2021 15:49, LABBE Corentin wrote: > Le Mon, Sep 06,
    2021 at 01:03:56PM +0200, Hans Verkuil a écrit : >> Hi Corentin, >> >> I
    finally had the opportunity to test the staging zoran driver. >> [...] 
 
 Content analysis details:   (-2.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [194.109.24.24 listed in list.dnswl.org]
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [194.109.24.24 listed in wl.mailspike.net]
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
X-Headers-End: 1mNFLK-00HRqI-Om
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

T24gMDYvMDkvMjAyMSAxNTo0OSwgTEFCQkUgQ29yZW50aW4gd3JvdGU6Cj4gTGUgTW9uLCBTZXAg
MDYsIDIwMjEgYXQgMDE6MDM6NTZQTSArMDIwMCwgSGFucyBWZXJrdWlsIGEgw6ljcml0IDoKPj4g
SGkgQ29yZW50aW4sCj4+Cj4+IEkgZmluYWxseSBoYWQgdGhlIG9wcG9ydHVuaXR5IHRvIHRlc3Qg
dGhlIHN0YWdpbmcgem9yYW4gZHJpdmVyLgo+Pgo+PiBJIGZvdW5kIHNldmVyYWwgaXNzdWVzIHdo
ZW4gcnVubmluZyB2NGwyLWNvbXBsaWFuY2UgLXMgKEkgcG9zdGVkIGEgcGF0Y2gKPj4gZm9yIHRo
YXQpLCBidXQgbW9yZSBzZXJpb3VzbHkgaXMgdGhlIGZhY3QgdGhhdCB0cnlpbmcgdG8gY2FwdHVy
ZSBNSlBHCj4+IGF0IHJlc29sdXRpb25zIDM4NHgyODggb3IgbGVzcyBqdXN0IGhhbmdzIG15IFBD
LiBJdCB3b3JrcyBPSyB3aXRoIDc2OHg1NzYuCj4+Cj4+IEkgZGlzY292ZXJlZCB0aGlzIHdoZW4g
cnVubmluZyAndjRsMi1jb21wbGlhbmNlIC1zIC1hIC1mJy4KPj4KPj4gQlRXLCB3aHkgaXNuJ3Qg
dGhlIGluaXRpYWwgZm9ybWF0IGVxdWFsIHRvIE1KUEcgNzY4eDU3Nj8KPj4gSSB3b3VsZCBleHBl
Y3QgdGhhdCBmb3IgdGhlc2UgYm9hcmRzIHRoYXQgc2hvdWxkIGJlIHRoZSBkZWZhdWx0IGZvcm1h
dC4KPj4KPj4gQW5vdGhlciBpc3N1ZSBpcyB0aGF0IHRoZSBUT0RPIHNob3VsZCBtZW50aW9uIHRo
YXQgZm9yIHZpZGVvIG91dHB1dCB0aGVyZQo+PiBzaG91bGQgYmUgYSBzZWNvbmQgdmlkZW8gZGV2
aWNlIG5vZGUuIEFuZCB0aGF0J3MgcmVhbGx5IHNvbWV0aGluZyB0aGF0Cj4+IGhhcyB0byBiZSBk
b25lIGJlZm9yZSB0aGUgem9yYW4gZHJpdmVyIGNhbiBiZSBtb3ZlZCBvdXQgb2Ygc3RhZ2luZy4K
Pj4KPj4gSXQgc2hvdWxkbid0IGJlIHRoYXQgaGFyZCB0byBpbXBsZW1lbnQsIEkgdGhpbmsuCj4+
Cj4+IFJpZ2h0IG5vdyBpdCBpcyBpbXBvc3NpYmxlIHRvIHJ1biB0aGUgY29tcGxpYW5jZSB0ZXN0
IGZvciB0aGUgb3V0cHV0LCBzaW5jZQo+PiBpdCBkb2Vzbid0IGV2ZW4gc2VlIGl0IGFzIGFuIG91
dHB1dC4KPj4KPj4gUmVnYXJkcywKPj4KPj4gCUhhbnMKPiAKPiBJIHdvcmsgb24gaGF2aW5nIGEg
c2Vjb25kIGRldmljZSBmb3Igb3V0cHV0LCAoaXQgaXMgdGhlIHJlYXNvbiBvZiAic3RhZ2luZzog
bWVkaWE6IHpvcmFuOiBtb3ZlIHZpZGVvZGV2IGFsbG9jIiB3aGljaCB3aWxsIGhlbHApLgo+IAo+
IEJ1dCBJIHN0aWxsIGhhdmUgdGhlIHByb2JsZW0gb2Ygbm9uIHdvcmtpbmcgb3V0cHV0Lgo+IAo+
IERvZXMgb3V0cHV0IGlzIHJlYWxseSBuZWVkZWQgZm9yIGdvaW5nIG91dCBvZiBzdGFnaW5nID8K
PiBQcm9iYWJseSBub2JvZHkgaGF2ZSBpdCB3b3JraW5nIGZvciBhZ2VzLiBUaGUgb25seSB3YXkg
dG8gaGFkIGl0IHdhcyB0byB1c2UgYW4gb2xkIG1wbGF5ZXIgb3V0cHV0IHdoaWNoIGlzIGJyb2tl
biBzaW5jZSBzbyBtYW55IHRpbWUuCj4gTm90ZSB0aGF0IHRoaXMgcGx1Z2luIHdpbGwgbmV2ZXIg
d29yayBhZ2Fpbi4KPiAKPiBUaGUgb25seSB3YXkgdG8gd29yayBvbiBvdXRwdXQgaXMgdG8gdXNl
IGZmbXBlZyB3aGljaCBqdXN0IHJlY2VudGx5IGhhdmUgc3Vwb3J0IGZvciB3cml0aW5nIG5vbi1y
YXcgdmlkZW8gdG8gVjRMLgoKVGhlbiBqdXN0IHJlbW92ZSBpdC4gVGhlIGNvZGUgZm9yIG91dHB1
dCByZW1haW5zIGluIHRoZSBnaXQgaGlzdG9yeSBzbyBpZiBzb21lb25lIHdhbnRzIHRvCnJlc3Vy
cmVjdCB0aGF0LCB0aGVuIHRoYXQncyBhbHdheXMgcG9zc2libGUuCgpUaGUgcG9pbnQgaXMgdGhh
dCBJIGRvbid0IHdhbnQgdG8gaGF2ZSBoYWxmLWJha2VkIG91dHB1dCBzdXBwb3J0IGluIG1haW5s
aW5lLgoKQnV0IHdoYXQgZXhhY3RseSBpcyB0aGUgcHJvYmxlbSB3aXRoIGdldHRpbmcgb3V0cHV0
IHRvIHdvcms/IERvZXNuJ3QgaXQganVzdCBkZWNvZGUKTUpQRUcgZnJhbWVzPyAoU29ycnkgaWYg
eW91IGV4cGxhaW5lZCBpdCBiZWZvcmUsIGl0J3Mgc28gbG9uZyBhZ28gdGhhdCBJIGxvb2tlZCBh
dCB0aGlzCnRoYXQgSSBmb3Jnb3QgdGhlIGRldGFpbHMpCgpJbiBhbnkgY2FzZSwgYmVmb3JlIHRo
ZSBkcml2ZXIgY2FuIGJlIG1vdmVkIG91dCBvZiBzdGFnaW5nIHZpZGVvIG91dHB1dCBzaG91bGQg
ZWl0aGVyCmJlIHdvcmtpbmcgb3IgcmVtb3ZlZC4gRWl0aGVyIGlzIGZpbmUsIGJ1dCBub3QgdGhl
IGhhbGZ3YXkgc3RhdGUgaXQgaXMgaW4gdG9kYXkuCgpSZWdhcmRzLAoKCUhhbnMKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpNanBlZy11c2VycyBtYWls
aW5nIGxpc3QKTWpwZWctdXNlcnNAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMu
c291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL21qcGVnLXVzZXJzCg==
