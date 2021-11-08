Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AB373449B9F
	for <lists+mjpeg-users@lfdr.de>; Mon,  8 Nov 2021 19:25:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mk9KI-0005O6-HF; Mon, 08 Nov 2021 18:25:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hverkuil@xs4all.nl>) id 1mjzuT-0005ok-5i
 for mjpeg-users@lists.sourceforge.net; Mon, 08 Nov 2021 08:21:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RFoi1u36o6iwyIcIT7Vfr6GvFlphxvGIuYKIC0G16z8=; b=bNBaGGpF77vEQI7ZNhU75WITKo
 yTbuh1adh+zwDZu4UMNy+O2X+qz/QhYCE5JxlkPHo0R1z/CpCdNwTNFEZSdOG/TDHOvtZj/vbONXl
 BPYJNtGPGWYtZKl+H58CirZyvPMPwTRUgYm1vubGlPpRGytsY11+k/GSub+An+bM/I1E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RFoi1u36o6iwyIcIT7Vfr6GvFlphxvGIuYKIC0G16z8=; b=lwa1Z+wKwsnbk0xunrQoeRYgwI
 4Azx78Z5oPozJa5KGwSEMRstVNQXE6gYqY9NizdMsTPgLrtBrJgsNmCIAGjHkYI+TESG+SOxgtaJk
 t6k4DtPZS79xPHSg5b1rbOAUsB+sHKn8iMVNMoPlLUSwfp1SOeWbrlGtHahZFIwXjJ04=;
Received: from lb1-smtp-cloud7.xs4all.net ([194.109.24.24])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mjzuK-005ozA-N2
 for mjpeg-users@lists.sourceforge.net; Mon, 08 Nov 2021 08:21:43 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud7.xs4all.net with ESMTPA
 id jzu6meHPuFZvcjzuAmu9fn; Mon, 08 Nov 2021 09:21:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1636359686; bh=RFoi1u36o6iwyIcIT7Vfr6GvFlphxvGIuYKIC0G16z8=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=FmWXh+KlD4fw8k9Mlz5sCVoP0jXPQBTB8oCx95xYkaJvXSO5FmPjGFtJbHclZ8PD4
 WUYd9L/ElX/yy2gVTTosgeZ2WkLIoFWacijEcjqs0KOlwTdEM/HNrD/lOEQtgZWX4x
 vLXT5e4Fl7GwR2Qa1uaYcoAhSY0eugicZj0mFaaC0bl0NMmXx6pbiQRfy5rELTxWM5
 OZEs5I+GOYYxAwO8xLwgnTDg9qj40dtDhkuj1HNiFV8WGGceb1fHKa4BwCpMqDeWvb
 mQNJXxr2lF5PEbBZgFbUfX7x5z3cE/jQHZyIX6tnVG2QNqjvQkCbbHxtYq/FysBsyr
 XWGXfWR5cbImQ==
To: LABBE Corentin <clabbe@baylibre.com>
References: <20211026193416.1176797-1-clabbe@baylibre.com>
 <a85c93db-e118-274f-d86a-d127c7399926@xs4all.nl> <YYKxTrWI299pvqo7@Red>
 <2bbce7ef-acf8-3c0f-2705-09d34b2d92be@xs4all.nl> <YYgAb76mrMb1ERMW@Red>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <87357802-1723-0471-d963-252ec54ececd@xs4all.nl>
Date: Mon, 8 Nov 2021 09:21:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <YYgAb76mrMb1ERMW@Red>
Content-Language: en-US
X-CMAE-Envelope: MS4xfP5ngz4eur2Syuo88BiDaT7tMabv/5gsQciFAKhEtNKRlsnKewfCSyIo2j0Hy2m4b3rLR1r+pHYti5VaKPUjrSJyajsNGIID2kaCprZ+6u6X/XKB0wrP
 y8l/xqa0S5O7vH2VUYXdgqaqxJgXaecwh6FydjolW02dGuztf8tN6ycHeH7APdnipuj11+qrGH6M4k4CCTt6XqPaSYW93bRnmoCOggcbNjyVwKNih0eGI3Yj
 yy86dTtudyxW8yNp0SuIkD10RFBzIg/7/4Jhim/VUSDm/TsaQL4uYUSdam6RAJRRr8W7JN1Y4NU8Nffj+6FabtaIS9NhYJu+dPN9aLslU7cJpiithmwKXdt3
 P1g4yWaiXsORa2l6mrGDsL3bGry4dzISfsXlUk3GJnbJgxoVUgqao9Xw363uI/HZ+hpwKB018xAnnlZbrTDNI8StNs711Q==
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 07/11/2021 17:35, LABBE Corentin wrote: > Le Wed, Nov 03,
    2021 at 05:29:46PM +0100, Hans Verkuil a écrit : >> On 03/11/2021 16:57,
    LABBE Corentin wrote: >>> Le Wed, Nov 03, 2021 at 04:21:02PM +010 [...] 
 
 Content analysis details:   (-2.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [194.109.24.24 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [194.109.24.24 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mjzuK-005ozA-N2
X-Mailman-Approved-At: Mon, 08 Nov 2021 18:25:01 +0000
Subject: Re: [Mjpeg-users] [PATCH v3 00/14] staging: media: zoran: fusion in
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

T24gMDcvMTEvMjAyMSAxNzozNSwgTEFCQkUgQ29yZW50aW4gd3JvdGU6Cj4gTGUgV2VkLCBOb3Yg
MDMsIDIwMjEgYXQgMDU6Mjk6NDZQTSArMDEwMCwgSGFucyBWZXJrdWlsIGEgw6ljcml0IDoKPj4g
T24gMDMvMTEvMjAyMSAxNjo1NywgTEFCQkUgQ29yZW50aW4gd3JvdGU6Cj4+PiBMZSBXZWQsIE5v
diAwMywgMjAyMSBhdCAwNDoyMTowMlBNICswMTAwLCBIYW5zIFZlcmt1aWwgYSDDqWNyaXQgOgo+
Pj4+IEhpIENvcmVudGluLAo+Pj4+Cj4+Pj4gT24gMjYvMTAvMjAyMSAyMTozNCwgQ29yZW50aW4g
TGFiYmUgd3JvdGU6Cj4+Pj4+IEhlbGxvCj4+Pj4+Cj4+Pj4+IFRoZSBtYWluIGNoYW5nZSBvZiB0
aGlzIHNlcmllIGlzIHRvIGZ1c2lvbiBhbGwgem9yYW4gcmVsYXRlZCBtb2R1bGVzIGluCj4+Pj4+
IG9uZS4KPj4+Pj4gVGhpcyBmaXhlcyB0aGUgbG9hZCBvcmRlciBwcm9ibGVtIHdoZW4gZXZlcnl0
aGluZyBpcyBidWlsdC1pbi4KPj4+Pgo+Pj4+IEkndmUgYmVlbiB0ZXN0aW5nIHRoaXMgc2VyaWVz
LCBhbmQgd2hpbGUgdGhlIG1vZHVsZSBsb2FkL3VubG9hZCBpcyBub3cgd29ya2luZywKPj4+PiBJ
J20gcnVubmluZyBpbnRvIGEgbG90IG9mIG90aGVyIHY0bDIgY29tcGxpYW5jZSBpc3N1ZXMuCj4+
Pj4KPj4+PiBJJ3ZlIGZpeGVkIHZhcmlvdXMgaXNzdWVzIGluIHNvbWUgZm9sbG93LXVwIHBhdGNo
ZXMgYXZhaWxhYmxlIGluIG15IHRyZWU6Cj4+Pj4KPj4+PiBodHRwczovL2dpdC5saW51eHR2Lm9y
Zy9odmVya3VpbC9tZWRpYV90cmVlLmdpdC9sb2cvP2g9em9yYW4KPj4+Pgo+Pj4+IEF0IGxlYXN0
IHNvbWUgb2YgdGhlIHdvcnN0IG9mZmVuZGVycyBhcmUgbm93IHJlc29sdmVkLiBOb3RlIHRoYXQg
dGhlIHBhdGNoCj4+Pj4gZHJvcHBpbmcgcmVhZC93cml0ZSBzdXBwb3J0IHJlbGllcyBvbiB0aGlz
IHBhdGNoOgo+Pj4+Cj4+Pj4gaHR0cHM6Ly9wYXRjaHdvcmsubGludXh0di5vcmcvcHJvamVjdC9s
aW51eC1tZWRpYS9wYXRjaC80Zjg5YjEzOS0xM2I3LWVlZTYtOTY2Mi05OTY2MjZiNzc4YjBAeHM0
YWxsLm5sLwo+Pj4KPj4+IEhlbGxvCj4+Pgo+Pj4gTXkgdGVzdCBicmFuY2ggYWxyZWFkeSBpbmNs
dWRlZCB5b3VyICJ6b3JhbjogZml4IHZhcmlvdXMgVjRMMiBjb21wbGlhbmNlIGVycm9ycyIKPj4+
IEkgaGF2ZSBxdWlja2x5IGNoZWNrZWQgb3RoZXIgcGF0Y2ggYW5kIEkgYW0gb2sgd2l0aCB0aGVt
Lgo+Pj4gSSB3aWxsIGFkZCBhbmQgdGVzdCB3aXRoIHRoZW0uCj4+Pgo+Pj4+Cj4+Pj4gQnV0IHRo
ZXJlIGlzIG9uZSByZWFsbHkgbWFqb3IgYnVnIHRoYXQgbWFrZXMgbWUgaGVzaXRhbnQgdG8gbWVy
Z2UgdGhpczoKPj4+Pgo+Pj4+IFRoaXMgd29ya3M6Cj4+Pj4KPj4+PiB2NGwyLWN0bCAtdiBwaXhl
bGZvcm1hdD1NSlBHLHdpZHRoPTc2OCxoZWlnaHQ9NTc2Cj4+Pj4gdjRsMi1jdGwgLS1zdHJlYW0t
bW1hcAo+Pj4+Cj4+Pj4gVGhpcyBmYWlsczoKPj4+Pgo+Pj4+IHY0bDItY3RsIC12IHBpeGVsZm9y
bWF0PU1KUEcsd2lkdGg9NzY4LGhlaWdodD0yODgKPj4+PiB2NGwyLWN0bCAtLXN0cmVhbS1tbWFw
Cj4+Pj4KPj4+PiBJdCdzIGFuIGltbWVkaWF0ZSBsb2NrIHVwIHdpdGggbm90aGluZyB0byBpbmRp
Y2F0ZSB3aGF0IGlzIHdyb25nLgo+Pj4+IEFzIHNvb24gYXMgdGhlIGhlaWdodCBpcyAyODggb3Ig
bGVzcywgdGhpcyBoYXBwZW5zLgo+Pj4+Cj4+Pj4gQm90aCB3aXRoIG15IERDMzAgYW5kIERDMzBE
Lgo+Pj4KPj4+IEp1c3QgZm9yIGN1cmlvc2l0eSwgd2hhdCBpcyB0aGUgZGlmZmVyZW5jZSBiZXR3
ZWVuIHRob3NlcyB0d28gPwo+Pgo+PiBJdCdzIHRoZSBEQzMwIHZhcmlhbnQgd2l0aG91dCBhbiBh
ZHY3MTc1Lgo+Pgo+Pj4KPj4+Pgo+Pj4+IERvIHlvdSBzZWUgdGhlIHNhbWU/IEFueSBpZGVhIHdo
YXQgaXMgZ29pbmcgb24/IEkgd291bGQgZmVlbCBtdWNoIGhhcHBpZXIKPj4+PiBpZiB0aGlzIGlz
IGZpeGVkLgo+Pj4+Cj4+Pj4gTm90ZSB0aGF0IHRoZSBzYW1lIHByb2JsZW0gaXMgcHJlc2VudCB3
aXRob3V0IHRoaXMgcGF0Y2ggc2VyaWVzLCBzbyBpdCdzCj4+Pj4gYmVlbiB0aGVyZSBmb3Igc29t
ZSB0aW1lLgo+Pj4+Cj4+Pgo+Pj4gSSB3aWxsIHN0YXJ0IG9uIGRpZ2dpbmcgdGhpcyBwcm9ibGVt
IGFuZCBhZGQgdGhvc2VzIGNvbW1hbmRzIHRvIG15IENJLgo+Pj4gQW5kIEkga25vdyB0aGVyZSBh
cmUgYSBodWdlIHF1YW50aXR5IG9mIHByb2JsZW0gc2luY2Ugb3JpZ2lucy4KPj4+IEEgc2ltcGxl
IGV4YW1wbGUgaXMgdGhhdCBqdXN0IHNldHRpbmcgTUpQRUcgYXMgZGVmYXVsdCBpbnB1dCBmb3Jt
YXQgZG9lcyBub3Qgd29yay4KPj4+Cj4+PiBCdXQgc2luY2UgaXQgaXMgbm90IHJlbGF0ZWQgdG8g
bXkgc2VyaWUsIGNhbiB5b3UgcGxlYXNlIG1lcmdlIGl0Lgo+Pgo+PiBCZWZvcmUgSSBkbyB0aGF0
LCBJIHdvdWxkIHJlYWxseSBsaWtlIHRvIGtub3cgYSBiaXQgbW9yZSBhYm91dCB0aGlzIGlzc3Vl
Ogo+PiBjYW4geW91IHJlcHJvZHVjZSBpdD8gSXMgaXQgREMzMCBzcGVjaWZpYyBvciBhIGdlbmVy
YWwgcHJvYmxlbSB3aXRoIHpvcmFuPwo+Pgo+PiBUaGUgcHJvYmxlbSB3aXRoIHRoaXMgaGFyZCBo
YW5nIGlzIHRoYXQgaXQgaXMgaGFyZCB0byBkbyByZWdyZXNzaW9uIHRlc3RpbmcKPj4gd2l0aCB2
NGwyLWNvbXBsaWFuY2UsIHNpbmNlIGl0IHdpbGwgaGFuZyBhcyBzb29uIGFzIE1KUEcgcGl4ZWxm
b3JtYXQgaXMKPj4gdGVzdGVkLgo+Pgo+PiBJIHdvdWxkIGZlZWwgbXVjaCBoYXBwaWVyIGlmIHRo
ZSBoYW5nIGNhbiBiZSBhdm9pZGVkLCBldmVuIGlmIGl0IGlzIGp1c3QKPj4gd2l0aCBhIHRlbXBv
cmFyeSBoYWNrLiBJdCB3aWxsIG1ha2UgaXQgbXVjaCBlYXNpZXIgZ29pbmcgZm9yd2FyZC4KPj4K
PiAKPiBJIGZvdW5kIHRoZSBidWcKPiAKPiBUaGUgbnVsbCBwb2ludGVyIGRlcmVmIHdhcyBpbiB6
b3Jhbl9yZWFwX3N0YXRfY29tKCkgZHVlIHRvIAo+IGJ1ZiA9IHpyLT5pbnVzZVtpXTsKPiAuLi4K
PiBidWYtPnZidWYudmIyX2J1Zi50aW1lc3RhbXAgPSBrdGltZV9nZXRfbnMoKTsKPiB3aXRoIGJ1
ZiA9IE5VTEw7Cj4gCj4gSXQgaXMgZHVlIHRvIG1pc2NhbGN1bGF0aW9uIG9mICJpIi4KPiAKPiBJ
IHdpbGwgcmVzZW5kIG15IHNlcmllIHdpdGggdGhlIGZpeCBmb3IgdGhhdC4KCkV4Y2VsbGVudCBu
ZXdzISBUaGFuayB5b3UgZm9yIHRyYWNraW5nIHRoaXMgb25lIGRvd24uCgpXaGVuIHlvdSBwb3N0
IHlvdXIgc2VyaWVzLCBjYW4geW91IGluY2x1ZGUgbXkgcGF0Y2hlcyBmcm9tCmh0dHBzOi8vZ2l0
LmxpbnV4dHYub3JnL2h2ZXJrdWlsL21lZGlhX3RyZWUuZ2l0L2xvZy8/aD16b3JhbiBhcyB3ZWxs
PwoKUmVnYXJkcywKCglIYW5zCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTWpwZWctdXNlcnMgbWFpbGluZyBsaXN0Ck1qcGVnLXVzZXJzQGxpc3RzLnNv
dXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5m
by9tanBlZy11c2Vycwo=
