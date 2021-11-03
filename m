Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D6D4447CC
	for <lists+mjpeg-users@lfdr.de>; Wed,  3 Nov 2021 18:55:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1miKU6-0004JK-Pk; Wed, 03 Nov 2021 17:55:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hverkuil@xs4all.nl>) id 1miJ9P-0005pm-F1
 for mjpeg-users@lists.sourceforge.net; Wed, 03 Nov 2021 16:30:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=q06/a6NhPPbSu2bM9BmCNRxXQvZOuI61JEGUeXJUBmk=; b=iMlQnYKwuajrnVE8ZyPYniKrNq
 DCRH43AXxjwY85hrr8H4jquffb6+DrFaFZCcVWCZmZMCAwD4tlV6Uybt/DIiAKWRxKYac9GSq+9K1
 kiJv+6y0eCp1HjH5SGh5LsJMhngskZegOfPTtldryBObcKpPVfuH3wWkvgHULOwUBXXM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=q06/a6NhPPbSu2bM9BmCNRxXQvZOuI61JEGUeXJUBmk=; b=iAHN54JnoL9fh6hF770IRdSxOw
 HsgtAsmwzRPNaVj7CvMDRMLCIoYsGc5IssX2oKLv7bgIdDLWz7KCBwu6v5DJkjjbs0UQLT9XJiNDQ
 rG1wi5GRWsaNY0MPeIwYriPM4dJxoZ0U3qpg4qIZN05AbvqMZNyudt1wEeVyXshJy3/I=;
Received: from [194.109.24.28] (helo=lb2-smtp-cloud7.xs4all.net)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1miJ9I-00H3Fl-2H
 for mjpeg-users@lists.sourceforge.net; Wed, 03 Nov 2021 16:30:08 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud7.xs4all.net with ESMTPA
 id iJ90mznJMFZvciJ91maBfP; Wed, 03 Nov 2021 17:29:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1635956987; bh=q06/a6NhPPbSu2bM9BmCNRxXQvZOuI61JEGUeXJUBmk=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=j/kIIE5G6Foqc83nOSk9Sh0Lg1YlXEsAlPBK9A0zJ1ZADDVtyGLzOLvxnYOwZL7Ny
 zq4JC8OhYKbtfvfjSOfTN/jqD3QbAUQF57ueUlwGuCPMw3ZmdTA/1PhGBDNkyVEBNS
 OThhJVaPRbeL4Q2Sbvcxdw+V6i+t5iMF6J/qoJfL84WKC5ZyAysxcjWuIwn76+Efct
 zPpVf/+rBrsUQcKir0t7KVz2Q4Pt8q9NI40foLj0uOeVjCyStIQ5PgKX1jzUVuCRl9
 4615UuzmEnSPwYeHvMI8hszR+tqI29K6/EX7BhLgTKyhLpBfxdCQesPOk3bmSXz7IY
 AsrVrzgutv06Q==
To: LABBE Corentin <clabbe@baylibre.com>
References: <20211026193416.1176797-1-clabbe@baylibre.com>
 <a85c93db-e118-274f-d86a-d127c7399926@xs4all.nl> <YYKxTrWI299pvqo7@Red>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <2bbce7ef-acf8-3c0f-2705-09d34b2d92be@xs4all.nl>
Date: Wed, 3 Nov 2021 17:29:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <YYKxTrWI299pvqo7@Red>
Content-Language: en-US
X-CMAE-Envelope: MS4xfKrptr7PwToxoeIwYq/ugkCAdgOjfHO4zoLTeUBEDSS/u2innE/hGUZ66Te3fyxbTkVjBMlRxerT3S8vy6mKT8e5hyfuOIm4ZhZb193v1+PhlqRDShU5
 3Fcd+ERqqWANpALMP3bJvxke6askZfGEdVCJMJ3pD0WhsQmOv+8Q64aT5c9T0lEfqLMS7N1/CHKi4F4cZpDgkwUqss9R+h1x0Fs+NCj62m8+Dfhb5BJHRLP4
 Lc3MtciN5t3KEQtzwIyw88PWxgHhX40mT35qSDwx27L5WyH0khNv+cRr0eQgle18szH8IUKMhPfSPowK1oIQU/dS8okPCv1kKwgLl/b63zc5/TXicx3TUV5Z
 LTAUfEqIbmwQJItBhdL5029ynzl6tOQgtBctN/CqTyMYRRpABwMNxiBG5wHf7bmCIapWuWKmUWh7PRtToTcgR7RftBSPpV4MU5C1hhazh7zhHYKFV7HylSJ6
 GRGcRDChddSg4Wqs/llAZJr6dCbxmis9FmknTZSBI7wN1Xo0m8wQO+4QnAg=
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 03/11/2021 16:57, LABBE Corentin wrote: > Le Wed, Nov 03,
    2021 at 04:21:02PM +0100, Hans Verkuil a écrit : >> Hi Corentin, >> >> On
    26/10/2021 21:34, Corentin Labbe wrote: >>> Hello >>> >>> The ma [...] 
 
 Content analysis details:   (-0.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [194.109.24.28 listed in list.dnswl.org]
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: xs4all.nl]
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [194.109.24.28 listed in wl.mailspike.net]
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
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1miJ9I-00H3Fl-2H
X-Mailman-Approved-At: Wed, 03 Nov 2021 17:55:36 +0000
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

T24gMDMvMTEvMjAyMSAxNjo1NywgTEFCQkUgQ29yZW50aW4gd3JvdGU6Cj4gTGUgV2VkLCBOb3Yg
MDMsIDIwMjEgYXQgMDQ6MjE6MDJQTSArMDEwMCwgSGFucyBWZXJrdWlsIGEgw6ljcml0IDoKPj4g
SGkgQ29yZW50aW4sCj4+Cj4+IE9uIDI2LzEwLzIwMjEgMjE6MzQsIENvcmVudGluIExhYmJlIHdy
b3RlOgo+Pj4gSGVsbG8KPj4+Cj4+PiBUaGUgbWFpbiBjaGFuZ2Ugb2YgdGhpcyBzZXJpZSBpcyB0
byBmdXNpb24gYWxsIHpvcmFuIHJlbGF0ZWQgbW9kdWxlcyBpbgo+Pj4gb25lLgo+Pj4gVGhpcyBm
aXhlcyB0aGUgbG9hZCBvcmRlciBwcm9ibGVtIHdoZW4gZXZlcnl0aGluZyBpcyBidWlsdC1pbi4K
Pj4KPj4gSSd2ZSBiZWVuIHRlc3RpbmcgdGhpcyBzZXJpZXMsIGFuZCB3aGlsZSB0aGUgbW9kdWxl
IGxvYWQvdW5sb2FkIGlzIG5vdyB3b3JraW5nLAo+PiBJJ20gcnVubmluZyBpbnRvIGEgbG90IG9m
IG90aGVyIHY0bDIgY29tcGxpYW5jZSBpc3N1ZXMuCj4+Cj4+IEkndmUgZml4ZWQgdmFyaW91cyBp
c3N1ZXMgaW4gc29tZSBmb2xsb3ctdXAgcGF0Y2hlcyBhdmFpbGFibGUgaW4gbXkgdHJlZToKPj4K
Pj4gaHR0cHM6Ly9naXQubGludXh0di5vcmcvaHZlcmt1aWwvbWVkaWFfdHJlZS5naXQvbG9nLz9o
PXpvcmFuCj4+Cj4+IEF0IGxlYXN0IHNvbWUgb2YgdGhlIHdvcnN0IG9mZmVuZGVycyBhcmUgbm93
IHJlc29sdmVkLiBOb3RlIHRoYXQgdGhlIHBhdGNoCj4+IGRyb3BwaW5nIHJlYWQvd3JpdGUgc3Vw
cG9ydCByZWxpZXMgb24gdGhpcyBwYXRjaDoKPj4KPj4gaHR0cHM6Ly9wYXRjaHdvcmsubGludXh0
di5vcmcvcHJvamVjdC9saW51eC1tZWRpYS9wYXRjaC80Zjg5YjEzOS0xM2I3LWVlZTYtOTY2Mi05
OTY2MjZiNzc4YjBAeHM0YWxsLm5sLwo+IAo+IEhlbGxvCj4gCj4gTXkgdGVzdCBicmFuY2ggYWxy
ZWFkeSBpbmNsdWRlZCB5b3VyICJ6b3JhbjogZml4IHZhcmlvdXMgVjRMMiBjb21wbGlhbmNlIGVy
cm9ycyIKPiBJIGhhdmUgcXVpY2tseSBjaGVja2VkIG90aGVyIHBhdGNoIGFuZCBJIGFtIG9rIHdp
dGggdGhlbS4KPiBJIHdpbGwgYWRkIGFuZCB0ZXN0IHdpdGggdGhlbS4KPiAKPj4KPj4gQnV0IHRo
ZXJlIGlzIG9uZSByZWFsbHkgbWFqb3IgYnVnIHRoYXQgbWFrZXMgbWUgaGVzaXRhbnQgdG8gbWVy
Z2UgdGhpczoKPj4KPj4gVGhpcyB3b3JrczoKPj4KPj4gdjRsMi1jdGwgLXYgcGl4ZWxmb3JtYXQ9
TUpQRyx3aWR0aD03NjgsaGVpZ2h0PTU3Ngo+PiB2NGwyLWN0bCAtLXN0cmVhbS1tbWFwCj4+Cj4+
IFRoaXMgZmFpbHM6Cj4+Cj4+IHY0bDItY3RsIC12IHBpeGVsZm9ybWF0PU1KUEcsd2lkdGg9NzY4
LGhlaWdodD0yODgKPj4gdjRsMi1jdGwgLS1zdHJlYW0tbW1hcAo+Pgo+PiBJdCdzIGFuIGltbWVk
aWF0ZSBsb2NrIHVwIHdpdGggbm90aGluZyB0byBpbmRpY2F0ZSB3aGF0IGlzIHdyb25nLgo+PiBB
cyBzb29uIGFzIHRoZSBoZWlnaHQgaXMgMjg4IG9yIGxlc3MsIHRoaXMgaGFwcGVucy4KPj4KPj4g
Qm90aCB3aXRoIG15IERDMzAgYW5kIERDMzBELgo+IAo+IEp1c3QgZm9yIGN1cmlvc2l0eSwgd2hh
dCBpcyB0aGUgZGlmZmVyZW5jZSBiZXR3ZWVuIHRob3NlcyB0d28gPwoKSXQncyB0aGUgREMzMCB2
YXJpYW50IHdpdGhvdXQgYW4gYWR2NzE3NS4KCj4gCj4+Cj4+IERvIHlvdSBzZWUgdGhlIHNhbWU/
IEFueSBpZGVhIHdoYXQgaXMgZ29pbmcgb24/IEkgd291bGQgZmVlbCBtdWNoIGhhcHBpZXIKPj4g
aWYgdGhpcyBpcyBmaXhlZC4KPj4KPj4gTm90ZSB0aGF0IHRoZSBzYW1lIHByb2JsZW0gaXMgcHJl
c2VudCB3aXRob3V0IHRoaXMgcGF0Y2ggc2VyaWVzLCBzbyBpdCdzCj4+IGJlZW4gdGhlcmUgZm9y
IHNvbWUgdGltZS4KPj4KPiAKPiBJIHdpbGwgc3RhcnQgb24gZGlnZ2luZyB0aGlzIHByb2JsZW0g
YW5kIGFkZCB0aG9zZXMgY29tbWFuZHMgdG8gbXkgQ0kuCj4gQW5kIEkga25vdyB0aGVyZSBhcmUg
YSBodWdlIHF1YW50aXR5IG9mIHByb2JsZW0gc2luY2Ugb3JpZ2lucy4KPiBBIHNpbXBsZSBleGFt
cGxlIGlzIHRoYXQganVzdCBzZXR0aW5nIE1KUEVHIGFzIGRlZmF1bHQgaW5wdXQgZm9ybWF0IGRv
ZXMgbm90IHdvcmsuCj4gCj4gQnV0IHNpbmNlIGl0IGlzIG5vdCByZWxhdGVkIHRvIG15IHNlcmll
LCBjYW4geW91IHBsZWFzZSBtZXJnZSBpdC4KCkJlZm9yZSBJIGRvIHRoYXQsIEkgd291bGQgcmVh
bGx5IGxpa2UgdG8ga25vdyBhIGJpdCBtb3JlIGFib3V0IHRoaXMgaXNzdWU6CmNhbiB5b3UgcmVw
cm9kdWNlIGl0PyBJcyBpdCBEQzMwIHNwZWNpZmljIG9yIGEgZ2VuZXJhbCBwcm9ibGVtIHdpdGgg
em9yYW4/CgpUaGUgcHJvYmxlbSB3aXRoIHRoaXMgaGFyZCBoYW5nIGlzIHRoYXQgaXQgaXMgaGFy
ZCB0byBkbyByZWdyZXNzaW9uIHRlc3RpbmcKd2l0aCB2NGwyLWNvbXBsaWFuY2UsIHNpbmNlIGl0
IHdpbGwgaGFuZyBhcyBzb29uIGFzIE1KUEcgcGl4ZWxmb3JtYXQgaXMKdGVzdGVkLgoKSSB3b3Vs
ZCBmZWVsIG11Y2ggaGFwcGllciBpZiB0aGUgaGFuZyBjYW4gYmUgYXZvaWRlZCwgZXZlbiBpZiBp
dCBpcyBqdXN0CndpdGggYSB0ZW1wb3JhcnkgaGFjay4gSXQgd2lsbCBtYWtlIGl0IG11Y2ggZWFz
aWVyIGdvaW5nIGZvcndhcmQuCgpSZWdhcmRzLAoKCUhhbnMKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpNanBlZy11c2VycyBtYWlsaW5nIGxpc3QKTWpw
ZWctdXNlcnNAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2Uu
bmV0L2xpc3RzL2xpc3RpbmZvL21qcGVnLXVzZXJzCg==
