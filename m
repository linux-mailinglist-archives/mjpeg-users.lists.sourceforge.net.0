Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AE9B238173C
	for <lists+mjpeg-users@lfdr.de>; Sat, 15 May 2021 11:32:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1lhqfE-0007Ir-8Y; Sat, 15 May 2021 09:32:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mchehab+huawei@kernel.org>)
 id 1lhpZY-0003aH-JE; Sat, 15 May 2021 08:22:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ok5gS5fHgyJqZj2Rne0uz442ES4fwsXgi6K+D6X/NuE=; b=igt01ml/24zrZFt2UJzWBgc6uT
 /wBATtQ4pQ3kwWqUNcnUuZzrwEn+K0PM1umg0Y5EtYlFcKoaaPU0oZvMkAqRaYgJvClaMR1/ytFqY
 2cD2DGZV44IswNkS4CH1UgBsrnRtMsRPvIh602RISjSrxUV4/OX3JFdE3X09DjcPpZSw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ok5gS5fHgyJqZj2Rne0uz442ES4fwsXgi6K+D6X/NuE=; b=WiNRfTCqOpSrFPTrb2dfpKQP0X
 H96Zzs1pBb7Je9q8erwT6og463v8316N6aqx5hlNqc7tlCL9TfpznnEadPJSY/jDuVkHVQE/Qrw1h
 naKTrBRBKzLs78LgcMDU1PEO+2CcFFBsdv3x1GKsb4LfHAEn310n1rbvxPdmapUNXtcQ=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lhpZX-0097R4-9L; Sat, 15 May 2021 08:22:58 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2C190613B9;
 Sat, 15 May 2021 08:22:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621066968;
 bh=GZ+Kn4jT0gb7iB9pP/pJk26tOsd2+CGQf4jvs2zdqBw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=iG7hTAT03WHgFWqqoj0DV+re/0SLdMb3cUSY+SSuTzLrJYQKUGl36xxPlzpJM+obe
 aYXsMgr2FnrS3UmbhM6x/v0hyySs4FwS7nZabhVI4uZ7oSvYetpsNsa8YF+pHbxJBR
 Pvc7xud7ZTl9KAziTz3eT27vowbOqKYiG2XDc1TE977RvXZd58WPI/7xagMPnTojJ/
 GJWlmOneBx01cy6SZcbDkvz0BdOwIrrlmQD5XJjxn9s8e2uY2fdVvUP3k7z3IeULok
 mtqmqeDzUbwgUVG+WJhEq15O9UonBwspCZS/Ybte0/0w+ceHppeg8djn6HLQSfz0bi
 sBmNf+UX/Tqtg==
Date: Sat, 15 May 2021 10:22:39 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20210515102239.2ffd0451@coco.lan>
In-Reply-To: <61c286b7afd6c4acf71418feee4eecca2e6c80c8.camel@infradead.org>
References: <cover.1620823573.git.mchehab+huawei@kernel.org>
 <d2fed242fbe200706b8d23a53512f0311d900297.camel@infradead.org>
 <20210514102118.1b71bec3@coco.lan>
 <61c286b7afd6c4acf71418feee4eecca2e6c80c8.camel@infradead.org>
Followup-To: dri-devel@lists.freedesktop.org
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lhpZX-0097R4-9L
X-Mailman-Approved-At: Sat, 15 May 2021 09:32:50 +0000
Subject: Re: [Mjpeg-users] [PATCH v2 00/40] Use ASCII subset instead of
 UTF-8 alternate symbols
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
Cc: alsa-devel@alsa-project.org, kvm@vger.kernel.org,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>, linux-iio@vger.kernel.org,
 linux-pci@vger.kernel.org, keyrings@vger.kernel.org, linux-sgx@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>, linux-rdma@vger.kernel.org,
 linux-acpi@vger.kernel.org, Mali DP Maintainers <malidp@foss.arm.com>,
 linux-input@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-ext4@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-media@vger.kernel.org, linux-pm@vger.kernel.org,
 coresight@lists.linaro.org, rcu@vger.kernel.org,
 mjpeg-users@lists.sourceforge.net, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org, linux-hwmon@vger.kernel.org,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-integrity@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

RW0gRnJpLCAxNCBNYXkgMjAyMSAxMDowNjowMSArMDEwMApEYXZpZCBXb29kaG91c2UgPGR3bXcy
QGluZnJhZGVhZC5vcmc+IGVzY3JldmV1OgoKPiBPbiBGcmksIDIwMjEtMDUtMTQgYXQgMTA6MjEg
KzAyMDAsIE1hdXJvIENhcnZhbGhvIENoZWhhYiB3cm90ZToKPiA+IEVtIFdlZCwgMTIgTWF5IDIw
MjEgMTg6MDc6MDQgKzAxMDAKPiA+IERhdmlkIFdvb2Rob3VzZSA8ZHdtdzJAaW5mcmFkZWFkLm9y
Zz4gZXNjcmV2ZXU6Cj4gPiAgIAo+ID4gPiBPbiBXZWQsIDIwMjEtMDUtMTIgYXQgMTQ6NTAgKzAy
MDAsIE1hdXJvIENhcnZhbGhvIENoZWhhYiB3cm90ZTogIAo+ID4gPiA+IFN1Y2ggY29udmVyc2lv
biB0b29scyAtIHBsdXMgc29tZSB0ZXh0IGVkaXRvciBsaWtlIExpYnJlT2ZmaWNlICBvciBzaW1p
bGFyICAtIGhhdmUKPiA+ID4gPiBhIHNldCBvZiBydWxlcyB0aGF0IHR1cm5zIHNvbWUgdHlwZWQg
QVNDSUkgY2hhcmFjdGVycyBpbnRvIFVURi04IGFsdGVybmF0aXZlcywKPiA+ID4gPiBmb3IgaW5z
dGFuY2UgY29udmVydGluZyBjb21tYXMgaW50byBjdXJseSBjb21tYXMgYW5kIGFkZGluZyBub24t
YnJlYWthYmxlCj4gPiA+ID4gc3BhY2VzLiBBbGwgb2YgdGhvc2UgYXJlIG1lYW50IHRvIHByb2R1
Y2UgYmV0dGVyIHJlc3VsdHMgd2hlbiB0aGUgdGV4dCBpcwo+ID4gPiA+IGRpc3BsYXllZCBpbiBI
VE1MIG9yIFBERiBmb3JtYXRzLiAgICAKPiA+ID4gCj4gPiA+IEFuZCBkb24ndCB3ZSByZW5kZXIg
b3VyIGRvY3VtZW50YXRpb24gaW50byBIVE1MIG9yIFBERiBmb3JtYXRzPyAgIAo+ID4gCj4gPiBZ
ZXMuCj4gPiAgIAo+ID4gPiBBcmUKPiA+ID4gc29tZSBvZiB0aG9zZSBub24tYnJlYWtpbmcgc3Bh
Y2VzIG5vdCBhY3R1YWxseSAqdXNlZnVsKiBmb3IgdGhlaXIKPiA+ID4gaW50ZW5kZWQgcHVycG9z
ZT8gIAo+ID4gCj4gPiBOby4KPiA+IAo+ID4gVGhlIHRoaW5nIGlzOiBub24tYnJlYWtpbmcgc3Bh
Y2UgY2FuIGNhdXNlIGEgbG90IG9mIHByb2JsZW1zLgo+ID4gCj4gPiBXZSBldmVuIGhhZCB0byBk
aXNhYmxlIFNwaGlueCB1c2FnZSBvZiBub24tYnJlYWtpbmcgc3BhY2UgZm9yCj4gPiBQREYgb3V0
cHV0cywgYXMgdGhpcyB3YXMgY2F1c2luZyBiYWQgTGFUZVgvUERGIG91dHB1dHMuCj4gPiAKPiA+
IFNlZSwgY29tbWl0OiAzYjRjOTYzMjQzYjEgKCJkb2NzOiBjb25mLnB5OiBhZGp1c3QgdGhlIExh
VGVYIGRvY3VtZW50IG91dHB1dCIpCj4gPiAKPiA+IFRoZSBhZm9yZSBtZW50aW9uZWQgcGF0Y2gg
ZGlzYWJsZXMgU3BoaW54IGRlZmF1bHQgYmVoYXZpb3Igb2YKPiA+IHVzaW5nIE5PTi1CUkVBS0FC
TEUgU1BBQ0Ugb24gbGl0ZXJhbCBibG9ja3MgYW5kIHN0cmluZ3MsIHVzaW5nIHRoaXMKPiA+IHNw
ZWNpYWwgc2V0dGluZzogInBhcnNlZGxpdGVyYWx3cmFwcz10cnVlIi4KPiA+IAo+ID4gV2hlbiBO
T04tQlJFQUtBQkxFIFNQQUNFIHdlcmUgdXNlZCBvbiBQREYgb3V0cHV0cywgc2V2ZXJhbCBwYXJ0
cyBvZiAKPiA+IHRoZSBtZWRpYSB1QVBJIGRvY3Mgd2VyZSB2aW9sYXRpbmcgdGhlIGRvY3VtZW50
IG1hcmdpbnMgYnkgZmFyLAo+ID4gY2F1c2luZyB0ZXh0cyB0byBiZSB0cnVuY2F0ZWQuCj4gPiAK
PiA+IFNvLCBwbGVhc2UgKipkb24ndCBhZGQgTk9OLUJSRUFLQUJMRSBTUEFDRSoqLCB1bmxlc3Mg
eW91IHRlc3QKPiA+IChhbmQga2VlcCB0ZXN0aW5nIGl0IGZyb20gdGltZSB0byB0aW1lKSBpZiBv
dXRwdXRzIG9uIGFsbAo+ID4gZm9ybWF0cyBhcmUgcHJvcGVybHkgc3VwcG9ydGluZyBpdCBvbiBk
aWZmZXJlbnQgU3BoaW54IHZlcnNpb25zLiAgCj4gCj4gQW5kIHRoZXJlIHlvdSBoYXZlIGEgc3Bl
Y2lmaWMgY2hhbmdlIHdpdGggYSBzcGVjaWZpYyBmaXguIE5vdGhpbmcgdG8gZG8KPiB3aXRoIHdo
ZXRoZXIgTk9OLUJSRUFLQUJMRSBTUEFDRSBpcyDiiIkgQVNDSUksIGFuZCAqY2VydGFpbmx5KiBu
b3RoaW5nIHRvCj4gZG8gd2l0aCB0aGUgZmFjdCB0aGF0LCBsaWtlICpldmVyeSogY2hhcmFjdGVy
IGluIGV2ZXJ5IGtlcm5lbCBmaWxlCj4gZXhjZXB0IHRoZSAqYmluYXJ5KiBmaWxlcywgaXQncyBy
ZXByZXNlbnRhYmxlIGluIFVURi04Lgo+IAo+IEJ5IGFsbCBtZWFucyBmaXggdGhlIHNwZWNpZmlj
IGNoYXJhY3RlcnMgd2hpY2ggYXJlIHR5cG9ncmFwaGljYWxseQo+IHdyb25nIG9yIHdoaWNoLCBs
aWtlIE5PTi1CUkVBS0FCTEUgU1BBQ0UsIGNhdXNlIHByb2JsZW1zIGZvciByZW5kZXJpbmcKPiB0
aGUgZG9jdW1lbnRhdGlvbi4KPiAKPiAKPiA+IEFsc28sIG1vc3Qgb2YgdGhvc2UgY2FtZSBmcm9t
IGNvbnZlcnNpb24gdG9vbHMsIHRvZ2V0aGVyIHdpdGggb3RoZXIKPiA+IGVjY2VudHJpY2l0aWVz
LCBsaWtlIHRoZSB1c2FnZSBvZiBVK0ZFRkYgKEJPTSkgY2hhcmFjdGVyIGF0IHRoZQo+ID4gc3Rh
cnQgb2Ygc29tZSBkb2N1bWVudHMuIFRoZSByZW1haW5pbmcgb25lcyBzZWVtIHRvIGNhbWUgZnJv
bSAKPiA+IGN1dC1hbmQtcGFzdGUuICAKPiAKPiAuLi4gb3Igd2hpY2ggYXJlIGp1c3QgZW50aXJl
bHkgcmVkdW5kYW50IGFuZCBncmF0dWl0b3VzLCBsaWtlIGEgQk9NIGluCj4gYW4gZW52aXJvbm1l
bnQgd2hlcmUgYWxsIGZpbGVzIGFyZSBVVEYtOCBhbmQgbmV2ZXIgMTYtYml0IGVuY29kaW5ncwo+
IGFueXdheS4KCkFncmVlZC4KCj4gCj4gPiA+ID4gV2hpbGUgaXQgaXMgcGVyZmVjdGx5IGZpbmUg
dG8gdXNlIFVURi04IGNoYXJhY3RlcnMgaW4gTGludXgsIGFuZCBzcGVjaWFsbHkgYXQKPiA+ID4g
PiB0aGUgZG9jdW1lbnRhdGlvbiwgIGl0IGlzIGJldHRlciB0byAgc3RpY2sgdG8gdGhlIEFTQ0lJ
IHN1YnNldCAgb24gc3VjaAo+ID4gPiA+IHBhcnRpY3VsYXIgY2FzZSwgIGR1ZSB0byBhIGNvdXBs
ZSBvZiByZWFzb25zOgo+ID4gPiA+IAo+ID4gPiA+IDEuIGl0IG1ha2VzIGxpZmUgZWFzaWVyIGZv
ciB0b29scyBsaWtlIGdyZXA7ICAgIAo+ID4gPiAKPiA+ID4gQmFyZWx5LCBhcyBub3RlZCwgYmVj
YXVzZSBvZiB0aGluZ3MgbGlrZSBsaW5lIGZlZWRzLiAgCj4gPiAKPiA+IFlvdSBjYW4gdXNlIGdy
ZXAgd2l0aCAiLXoiIHRvIHNlZWsgZm9yIG11bHRpLWxpbmUgc3RyaW5ncygqKSwgTGlrZToKPiA+
IAo+ID4gCSQgZ3JlcCAtUHpsICdncmFjZSBwZXJpb2Qgc3RhcnRlZCxccyp0aGVuJyAkKGZpbmQg
RG9jdW1lbnRhdGlvbi8gLXR5cGUgZikKPiA+IAlEb2N1bWVudGF0aW9uL1JDVS9EZXNpZ24vRGF0
YS1TdHJ1Y3R1cmVzL0RhdGEtU3RydWN0dXJlcy5yc3QgIAo+IAo+IFllYWgsIHJpZ2h0LiBUaGF0
IHdvcmtzIGlmIHlvdSBkb24ndCBqdXN0IHVzZSB0aGUgdGV4dCB0aGF0IHlvdSdsbCBoYXZlCj4g
c2VlbiBpbiB0aGUgSFRNTC9QREYgImdyYWNlIHBlcmlvZCBzdGFydGVkLCB0aGVuIiwgYW5kIGlm
IHlvdSBpbnN0ZWFkCj4gY3JhZnQgYSAqcmVnZXgqIGZvciBpdCwgcmVwbGFjaW5nIHRoZSBzcGFj
ZXMgd2l0aCAnXHMqJy4gT3IgaXMgdGhhdAo+IFtbOnNwYWNlOl1dKiBpZiB5b3UgZG9uJ3Qgd2Fu
dCB0byB1c2UgdGhlIGV4cGVyaW1lbnRhbCBQZXJsIHJlZ2V4Cj4gZmVhdHVyZT8KPiAKPiAgJCBn
cmVwIC16bHIgJ2dyYWNlW1s6c3BhY2U6XV1cK3BlcmlvZFtbOnNwYWNlOl1dXCtzdGFydGVkLFtb
OnNwYWNlOl1dXCt0aGVuJyBEb2N1bWVudGF0aW9uL1JDVQo+IERvY3VtZW50YXRpb24vUkNVL0Rl
c2lnbi9EYXRhLVN0cnVjdHVyZXMvRGF0YS1TdHJ1Y3R1cmVzLnJzdAo+IAo+IEFuZCB3aXRob3V0
ICctbCcgaXQnbGwgb2J2aW91c2x5IGp1c3QgZ2l2ZSB5b3UgdGhlIHdob2xlIGZpbGUuIE5vICct
QTUKPiAtQjUnIHRvIHNlZSB0aGUgc3Vycm91bmRpbmdzLi4uIGl0J3MgaGFyZGx5IGEgdXNlZnVs
IHRoaW5nLCBpcyBpdD8KPiAKPiA+ICgqKSBVbmZvcnR1bmF0ZWx5LCB3aGlsZSAiZ2l0IGdyZXAi
IGFsc28gaGFzIGEgIi16IiBmbGFnLCBpdAo+ID4gICAgIHNlZW1zIHRoYXQgdGhpcyBpcyAoY3Vy
cmVudGx5PykgYnJva2VuIHdpdGggcmVnYXJkcyBvZiBoYW5kbGluZyBtdWx0aWxpbmVzOgo+ID4g
Cj4gPiAJJCBnaXQgZ3JlcCAtUHpsICdncmFjZSBwZXJpb2Qgc3RhcnRlZCxccyp0aGVuJwo+ID4g
CSQgIAo+IAo+IEV2ZW4gYmV0dGVyLiBTbyBubywgbXVsdGlsaW5lIGdyZXAgaXNuJ3QgcmVhbGx5
IGEgY29tbW9ubHkgdXNhYmxlCj4gZmVhdHVyZSBhdCBhbGwuCj4gCj4gVGhpcyBpcyB3aHkgd2Ug
cHJlZmVyIHRvIHB1dCB1c2VyLXZpc2libGUgc3RyaW5ncyBvbiBvbmUgbGluZSBpbiBDCj4gc291
cmNlIGNvZGUsIGV2ZW4gaWYgaXQgdGFrZXMgdGhlIGxpbmVzIG92ZXIgODAgY2hhcmFjdGVycyDi
gJQgdG8gYWxsb3cKPiBmb3IgZ3JlcCB0byBmaW5kIHRoZW0uCgpNYWtlcyBzZW5zZSwgYnV0IGlu
IGNhc2Ugb2YgZG9jdW1lbnRhdGlvbiwgdGhpcyBpcyBhIGxpdHRsZSBtb3JlCmNvbXBsZXggdGhh
biB0aGF0LiAKCkJ0dywgdGhlIHRoZW1lIHVzZWQgd2hlbiBidWlsZGluZyBodG1sIGJ5IGRlZmF1
bHRbMV0gaGFzIGEgc2VhcmNoCmJveCAod3JpdHRlbiBpbiBKYXZhc2NyaXB0KSB0aGF0IGNvdWxk
IGJlIGFibGUgdG8gZmluZCBtdWx0aS1saW5lCnBhdHRlcm5zLCB3b3JraW5nIHNvbWV3aGF0IHNp
bWlsYXIgdG8gImdpdCBncmVwIGZvbyAtYSBiYXIiLgoKWzFdIGh0dHBzOi8vZ2l0aHViLmNvbS9y
ZWFkdGhlZG9jcy9zcGhpbnhfcnRkX3RoZW1lCgo+ID4gWzFdIElmIEkgaGF2ZSBhIHRhYmxlIHdp
dGggVVRGLTggY29kZXMgaGFuZHksIEkgY291bGQgdHlwZSB0aGUgVVRGLTggCj4gPiAgICAgbnVt
YmVyIG1hbnVhbGx5Li4uIEhvd2V2ZXIsIGl0IHNlZW1zIHRoYXQgdGhpcyBpcyBjdXJyZW50bHkg
YnJva2VuIAo+ID4gICAgIGF0IGxlYXN0IG9uIEZlZG9yYSAzMyAod2l0aCBNYXRlIERlc2t0b3Ag
YW5kIFVTIGludGwga2V5Ym9hcmQgd2l0aCAKPiA+ICAgICBkZWFkIGtleXMpLgo+ID4gCj4gPiAg
ICAgSGVyZSwgPENUUkw+PFNISUZUPlUgaXMgbm90IHdvcmtpbmcuIE5vIGlkZWEgd2h5LiBJIGhh
dmVuJ3QgCj4gPiAgICAgdGVzdCBpdCBmb3IgKnllYXJzKiwgYXMgSSBkaW4ndCBzZWUgYW55IHJl
YXNvbiB3aHkgSSB3b3VsZAo+ID4gICAgIG5lZWQgdG8gdHlwZSBVVEYtOCBjaGFyYWN0ZXJzIGJ5
IG51bWJlcnMgdW50aWwgd2Ugc3RhcnRlZAo+ID4gICAgIHRoaXMgdGhyZWFkLiAgCj4gCj4gUGxl
YXNlIHByb3ZpZGUgdGhlIGJ1ZyBudW1iZXIgZm9yIHRoaXM7IEknZCBsaWtlIHRvIHRyYWNrIGl0
LgoKSnVzdCBvcGVuZWQgYSBCWiBhbmQgYWRkZWQgeW91IGFzIGMvYy4KCj4gPiBOb3csIEknbSBu
b3QgYXJndWluZyB0aGF0IHlvdSBjYW4ndCB1c2Ugd2hhdGV2ZXIgVVRGLTggc3ltYm9sIHlvdQo+
ID4gd2FudCBvbiB5b3VyIGRvY3MuIEknbSBqdXN0IHNheWluZyB0aGF0LCBub3cgdGhhdCB0aGUg
Y29udmVyc2lvbiAKPiA+IGlzIG92ZXIgYW5kIGEgbG90IG9mIGRvY3VtZW50cyBlbmRlZCBnZXR0
aW5nIHNvbWUgVVRGLTggY2hhcmFjdGVycwo+ID4gYnkgYWNjaWRlbnQsIGl0IGlzIHRpbWUgZm9y
IGEgY2xlYW51cC4gIAo+IAo+IEFsbCB0ZXh0IGRvY3VtZW50cyBhcmUgKmZ1bGwqIG9mIFVURi04
IGNoYXJhY3RlcnMuIElmIHRoZXJlIGlzIGEgZmlsZQo+IGluIHRoZSBzb3VyY2UgY29kZSB3aGlj
aCBoYXMgKmFueSogbm9uLVVURjgsIHdlIGNhbGwgdGhhdCBhICdiaW5hcnkKPiBmaWxlJy4KPiAK
PiBBZ2FpbiwgaWYgeW91IHdhbnQgdG8gbWFrZSBzcGVjaWZpYyBmaXhlcyBsaWtlIHJlbW92aW5n
IG5vbi1icmVha2luZwo+IHNwYWNlcyBhbmQgYnl0ZSBvcmRlciBtYXJrcywgd2l0aCBzcGVjaWZp
YyByZWFzb25zLCB0aGVuIHRob3NlIG1ha2UKPiBzZW5zZS4gQnV0IGl0J3MgZ290IHZlcnkgbGl0
dGxlIHRvIGRvIHdpdGggVVRGLTggYW5kIGhvdyBlYXN5IGl0IGlzIHRvCj4gdHlwZSB0aGVtLiBB
bmQgdGhlIGV4Y3VzZSB5b3UndmUgcHV0IGluIHRoZSBjb21taXQgY29tbWVudCBmb3IgeW91cgo+
IHBhdGNoZXMgaXMgdXR0ZXJseSBib2d1cy4KCkxldCdzIHRha2Ugb25lIHN0ZXAgYmFjaywgaW4g
b3JkZXIgdG8gcmV0dXJuIHRvIHRoZSBpbnRlbnRzIG9mIHRoaXMKVVRGLTgsIGFzIHRoZSBkaXNj
dXNzaW9ucyBoZXJlIGFyZSBub3QgY2VudGVyZWQgaW50byB0aGUgcGF0Y2hlcywgYnV0Cmluc3Rl
YWQsIG9uIHdoYXQgdG8gZG8gYW5kIHdoeS4KCi0KClRoaXMgZGlzY3Vzc2lvbiBzdGFydGVkIG9y
aWdpbmFsbHkgYXQgbGludXgtZG9jIE1MLgoKV2hpbGUgZGlzY3Vzc2luZyBhYm91dCBhbiBpc3N1
ZSB3aGVuIG1hY2hpbmUncyBsb2NhbGUgd2FzIG5vdCBzZXQKdG8gVVRGLTggb24gYSBidWlsZCBW
TSwgd2UgZGlzY292ZXJlZCB0aGF0IHNvbWUgY29udmVydGVkIGRvY3MgZW5kZWQKd2l0aCBCT00g
Y2hhcmFjdGVycy4gVGhvc2Ugc3BlY2lmaWMgY2hhbmdlcyB3ZXJlIGludHJvZHVjZWQgYnkgc29t
ZQpvZiBteSBjb252ZXJ0IHBhdGNoZXMsIHByb2JhYmx5IGNvbnZlcnRlZCB2aWEgcGFuZG9jLgoK
U28sIEkgd2VudCBhaGVhZCBpbiBvcmRlciB0byBjaGVjayB3aGF0IG90aGVyIHBvc3NpYmxlIHdl
aXJkIHRoaW5ncwp3ZXJlIGludHJvZHVjZWQgYnkgdGhlIGNvbnZlcnNpb24sIHdoZXJlIHNldmVy
YWwgc2NyaXB0cyBhbmQgdG9vbHMKd2VyZSB1c2VkIG9uIGZpbGVzIHRoYXQgaGFkIGFscmVhZHkg
YSBkaWZmZXJlbnQgbWFya3VwLgoKSSBhY3R1YWxseSBjaGVja2VkIHRoZSBjdXJyZW50IFVURi04
IGlzc3VlcywgYW5kIGFza2VkIHBlb3BsZSBhdApsaW51eC1kb2MgdG8gY29tbWVudCB3aGF0IG9m
IHRob3NlIGFyZSB2YWxpZCB1c2VjYXNlcywgYW5kIHdoYXQKc2hvdWxkIGJlIHJlcGxhY2VkIGJ5
IHBsYWluIEFTQ0lJLgoKQmFzaWNhbGx5LCB0aGlzIGlzIHRoZSBjdXJyZW50IHNpdHVhdGlvbiAo
YXQgZG9jcy9kb2NzLW5leHQpLCBmb3IgdGhlClJlU1QgZmlsZXMgdW5kZXIgRG9jdW1lbnRhdGlv
bi8sIGV4Y2x1ZGluZyB0cmFuc2xhdGlvbnMgaXM6CgoxLiBTcGFjZXMgYW5kIEJPTQoKCS0gVSsw
MGEwICgnwqAnKTogTk8tQlJFQUsgU1BBQ0UKCS0gVStmZWZmICgn77u/Jyk6IFpFUk8gV0lEVEgg
Tk8tQlJFQUsgU1BBQ0UgKEJPTSkKCkJhc2VkIG9uIHRoZSBkaXNjdXNzaW9ucyB0aGVyZSBhbmQg
b24gdGhpcyB0aHJlYWQsIHRob3NlIHNob3VsZCBiZQpkcm9wcGVkLCBhcyBCT00gaXMgdXNlbGVz
cyBhbmQgTk8tQlJFQUsgU1BBQ0UgY2FuIGNhdXNlIHByb2JsZW1zCmF0IHRoZSBodG1sL3BkZiBv
dXRwdXQ7CgoyLiBTeW1ib2xzCgoJLSBVKzAwYTkgKCfCqScpOiBDT1BZUklHSFQgU0lHTgoJLSBV
KzAwYWMgKCfCrCcpOiBOT1QgU0lHTgoJLSBVKzAwYWUgKCfCricpOiBSRUdJU1RFUkVEIFNJR04K
CS0gVSswMGIwICgnwrAnKTogREVHUkVFIFNJR04KCS0gVSswMGIxICgnwrEnKTogUExVUy1NSU5V
UyBTSUdOCgktIFUrMDBiMiAoJ8KyJyk6IFNVUEVSU0NSSVBUIFRXTwoJLSBVKzAwYjUgKCfCtScp
OiBNSUNSTyBTSUdOCgktIFUrMDNiYyAoJ868Jyk6IEdSRUVLIFNNQUxMIExFVFRFUiBNVQoJLSBV
KzAwYjcgKCfCtycpOiBNSURETEUgRE9UCgktIFUrMDBiZCAoJ8K9Jyk6IFZVTEdBUiBGUkFDVElP
TiBPTkUgSEFMRgoJLSBVKzIxMjIgKCfihKInKTogVFJBREUgTUFSSyBTSUdOCgktIFUrMjI2NCAo
J+KJpCcpOiBMRVNTLVRIQU4gT1IgRVFVQUwgVE8KCS0gVSsyMjY1ICgn4omlJyk6IEdSRUFURVIt
VEhBTiBPUiBFUVVBTCBUTwoJLSBVKzJiMGQgKCfirI0nKTogVVAgRE9XTiBCTEFDSyBBUlJPVwoK
VGhvc2Ugc2VlbSBPSyBvbiBteSBleWVzLgoKT24gYSBzaWRlIG5vdGUsIGJvdGggTUlDUk8gU0lH
TiBhbmQgR1JFRUsgU01BTEwgTEVUVEVSIE1VIGFyZQp1c2VkIHNldmVyYWwgZG9jcyB0byByZXBy
ZXNlbnQgbWljcm9zZWNvbmRzLCBtaWNyby12b2x0cyBhbmQKbWljcm8tYW1ww6hyZXMuIElmIHdl
IHdyaXRlIGFuIG9yaWVudGF0aW9uIGRvY3VtZW50LCBpdCBwcm9iYWJseQptYWtlcyBzZW5zZSB0
byByZWNvbW1lbmQgdXNpbmcgTUlDUk8gU0lHTiBvbiBzdWNoIGNhc2VzLgoKMy4gTGF0aW4KCgkt
IFUrMDBjNyAoJ8OHJyk6IExBVElOIENBUElUQUwgTEVUVEVSIEMgV0lUSCBDRURJTExBCgktIFUr
MDBkZiAoJ8OfJyk6IExBVElOIFNNQUxMIExFVFRFUiBTSEFSUCBTCgktIFUrMDBlMSAoJ8OhJyk6
IExBVElOIFNNQUxMIExFVFRFUiBBIFdJVEggQUNVVEUKCS0gVSswMGU0ICgnw6QnKTogTEFUSU4g
U01BTEwgTEVUVEVSIEEgV0lUSCBESUFFUkVTSVMKCS0gVSswMGU2ICgnw6YnKTogTEFUSU4gU01B
TEwgTEVUVEVSIEFFCgktIFUrMDBlNyAoJ8OnJyk6IExBVElOIFNNQUxMIExFVFRFUiBDIFdJVEgg
Q0VESUxMQQoJLSBVKzAwZTkgKCfDqScpOiBMQVRJTiBTTUFMTCBMRVRURVIgRSBXSVRIIEFDVVRF
CgktIFUrMDBlYSAoJ8OqJyk6IExBVElOIFNNQUxMIExFVFRFUiBFIFdJVEggQ0lSQ1VNRkxFWAoJ
LSBVKzAwZWIgKCfDqycpOiBMQVRJTiBTTUFMTCBMRVRURVIgRSBXSVRIIERJQUVSRVNJUwoJLSBV
KzAwZjMgKCfDsycpOiBMQVRJTiBTTUFMTCBMRVRURVIgTyBXSVRIIEFDVVRFCgktIFUrMDBmNCAo
J8O0Jyk6IExBVElOIFNNQUxMIExFVFRFUiBPIFdJVEggQ0lSQ1VNRkxFWAoJLSBVKzAwZjYgKCfD
ticpOiBMQVRJTiBTTUFMTCBMRVRURVIgTyBXSVRIIERJQUVSRVNJUwoJLSBVKzAwZjggKCfDuCcp
OiBMQVRJTiBTTUFMTCBMRVRURVIgTyBXSVRIIFNUUk9LRQoJLSBVKzAwZmEgKCfDuicpOiBMQVRJ
TiBTTUFMTCBMRVRURVIgVSBXSVRIIEFDVVRFCgktIFUrMDBmYyAoJ8O8Jyk6IExBVElOIFNNQUxM
IExFVFRFUiBVIFdJVEggRElBRVJFU0lTCgktIFUrMDBmZCAoJ8O9Jyk6IExBVElOIFNNQUxMIExF
VFRFUiBZIFdJVEggQUNVVEUKCS0gVSswMTFmICgnxJ8nKTogTEFUSU4gU01BTEwgTEVUVEVSIEcg
V0lUSCBCUkVWRQoJLSBVKzAxNDIgKCfFgicpOiBMQVRJTiBTTUFMTCBMRVRURVIgTCBXSVRIIFNU
Uk9LRQoKVGhvc2Ugc2hvdWxkIGJlIGtlcHQgYXMgd2VsbCwgYXMgdGhleSdyZSB1c2VkIGZvciBu
b24tRW5nbGlzaCBuYW1lcy4KCjQuIGFycm93cyBhbmQgYm94IGRyYXdpbmcgc3ltYm9sczoKCS0g
VSsyMTkxICgn4oaRJyk6IFVQV0FSRFMgQVJST1cKCS0gVSsyMTkyICgn4oaSJyk6IFJJR0hUV0FS
RFMgQVJST1cKCS0gVSsyMTkzICgn4oaTJyk6IERPV05XQVJEUyBBUlJPVwoKCS0gVSsyNTAwICgn
4pSAJyk6IEJPWCBEUkFXSU5HUyBMSUdIVCBIT1JJWk9OVEFMCgktIFUrMjUwMiAoJ+KUgicpOiBC
T1ggRFJBV0lOR1MgTElHSFQgVkVSVElDQUwKCS0gVSsyNTE0ICgn4pSUJyk6IEJPWCBEUkFXSU5H
UyBMSUdIVCBVUCBBTkQgUklHSFQKCS0gVSsyNTFjICgn4pScJyk6IEJPWCBEUkFXSU5HUyBMSUdI
VCBWRVJUSUNBTCBBTkQgUklHSFQKCkFsc28gc2hvdWxkIGJlIGtlcHQuCgpJbiBzdW1tYXJ5LCBi
YXNlZCBvbiB0aGUgZGlzY3Vzc2lvbnMgd2UgaGF2ZSBzbyBmYXIsIEkgc3VzcGVjdCB0aGF0CnRo
ZXJlJ3Mgbm90IG11Y2ggdG8gYmUgZGlzY3Vzc2VkIGZvciB0aGUgYWJvdmUgY2FzZXMuCgpTbywg
SSdsbCBwb3N0IGEgdjMgb2YgdGhpcyBzZXJpZXMsIGNoYW5naW5nIG9ubHk6CgoJLSBVKzAwYTAg
KCfCoCcpOiBOTy1CUkVBSyBTUEFDRQoJLSBVK2ZlZmYgKCfvu78nKTogWkVSTyBXSURUSCBOTy1C
UkVBSyBTUEFDRSAoQk9NKQoKLS0tCgpOb3csIHRoaXMgc3BlY2lmaWMgcGF0Y2ggc2VyaWVzIGFk
ZHJlc3MgYWxzbyB0aGlzIGV4dHJhIGNhc2U6Cgo1LiBjdXJseSBjb21tYXM6CgoJLSBVKzIwMTgg
KCfigJgnKTogTEVGVCBTSU5HTEUgUVVPVEFUSU9OIE1BUksKCS0gVSsyMDE5ICgn4oCZJyk6IFJJ
R0hUIFNJTkdMRSBRVU9UQVRJT04gTUFSSwoJLSBVKzIwMWMgKCfigJwnKTogTEVGVCBET1VCTEUg
UVVPVEFUSU9OIE1BUksKCS0gVSsyMDFkICgn4oCdJyk6IFJJR0hUIERPVUJMRSBRVU9UQVRJT04g
TUFSSwoKSU1PLCB0aG9zZSBzaG91bGQgYmUgcmVwbGFjZWQgYnkgQVNDSUkgY29tbWFzOiAnIGFu
ZCAiLgoKVGhlIHJhdGlvbmFsZSBpcyBzaW1wbGU6IAoKLSBtb3N0IHdlcmUgaW50cm9kdWNlZCBk
dXJpbmcgdGhlIGNvbnZlcnNpb24gZnJvbSBEb2Nib29rLAogIG1hcmtkb3duIGFuZCBMYVRleDsK
LSB0aGV5IGRvbid0IGFkZCBhbnkgZXh0cmEgdmFsdWUsIGFzIHVzaW5nICJmb28iIG9mIOKAnGZv
b+KAnSBtZWFucwogIHRoZSBzYW1lIHRoaW5nOwotIFNwaGlueCBhbHJlYWR5IHVzZSAiZmFuY3ki
IGNvbW1hcyBhdCB0aGUgb3V0cHV0LiAKCkkgZ3Vlc3MgSSB3aWxsIHB1dCB0aGlzIG9uIGEgc2Vw
YXJhdGUgc2VyaWVzLCBhcyB0aGlzIGlzIG5vdCBhIGJ1ZwpmaXgsIGJ1dCBqdXN0IGEgY2xlYW51
cCBmcm9tIHRoZSBjb252ZXJzaW9uIHdvcmsuCgpJJ2xsIHJlLXBvc3QgdGhvc2UgY2xlYW51cHMg
b24gYSBzZXBhcmF0ZSBzZXJpZXMsIGZvciBwYXRjaCBwZXIgcGF0Y2gKcmV2aWV3LgoKLS0tCgpU
aGUgcmVtYWluaW5nIGNhc2VzIGFyZSBmdXR1cmUgd29yaywgb3V0c2lkZSB0aGUgc2NvcGUgb2Yg
dGhpcyB2MjoKCjYuIEh5cGhlbi9EYXNoZXMgYW5kIGVsbGlwc2lzCgoJLSBVKzIyMTIgKCfiiJIn
KTogTUlOVVMgU0lHTgoJLSBVKzAwYWQgKCfCrScpOiBTT0ZUIEhZUEhFTgoJLSBVKzIwMTAgKCfi
gJAnKTogSFlQSEVOCgoJICAgIFRob3NlIHRocmVlIGFyZSB1c2VkIG9uIHBsYWNlcyB3aGVyZSBh
IG5vcm1hbCBBU0NJSSBoeXBoZW4vbWludXMKCSAgICBzaG91bGQgYmUgdXNlZCBpbnN0ZWFkLiBU
aGVyZSBhcmUgZXZlbiBhIGNvdXBsZSBvZiBDIGZpbGVzIHdoaWNoCgkgICAgdXNlIHRoZW0gaW5z
dGVhZCBvZiAnLScgb24gY29tbWVudHMuCgoJICAgIElNTyBhcmUgZml4ZXMvY2xlYW51cHMgZnJv
bSBjb252ZXJzaW9ucyBhbmQgYmFkIGN1dC1hbmQtcGFzdGUuCgoJLSBVKzIwMTMgKCfigJMnKTog
RU4gREFTSAoJLSBVKzIwMTQgKCfigJQnKTogRU0gREFTSAoJLSBVKzIwMjYgKCfigKYnKTogSE9S
SVpPTlRBTCBFTExJUFNJUwoKCSAgICBUaG9zZSBhcmUgYXV0by1yZXBsYWNlZCBieSBTcGhpbngg
ZnJvbSAiLS0iLCAiLS0tIiBhbmQgIi4uLiIsCgkgICAgcmVzcGVjdGl2ZWx5LgoKCSAgICBJIGd1
ZXNzIHRob3NlIGFyZSBhIG1hdHRlciBvZiBwZXJzb25hbCBwcmVmZXJlbmNlIGFib3V0CgkgICAg
d2VhdGhlciB1c2luZyBBU0NJSSBvciBVVEYtOC4KCiAgICAgICAgICAgIE15IHBlcnNvbmFsIHBy
ZWZlcmVuY2UgKGFuZCBUZWQgc2VlbXMgdG8gaGF2ZSBhIHNpbWlsYXIKCSAgICBvcGluaW9uKSBp
cyB0byBsZXQgU3BoaW54IGRvIHRoZSBjb252ZXJzaW9uLgoKCSAgICBGb3IgdGhvc2UsIEkgaW50
ZW5kIHRvIHBvc3QgYSBzZXBhcmF0ZSBzZXJpZXMsIHRvIGJlCgkgICAgcmV2aWV3ZWQgcGF0Y2gg
cGVyIHBhdGNoLCBhcyB0aGlzIGlzIHJlYWxseSBhIG1hdHRlcgoJICAgIG9mIHBlcnNvbmFsIHRh
c3RlLiBIYXJkbHkgd2UnbGwgcmVhY2ggYSBjb25zZW5zdXMgaGVyZS4KCjcuIG1hdGggc3ltYm9s
czoKCgktIFUrMDBkNyAoJ8OXJyk6IE1VTFRJUExJQ0FUSU9OIFNJR04KCgkgICBUaGlzIG9uZSBp
cyB1c2VkIG1vc3RseSBkbyBkZXNjcmliZSB2aWRlbyByZXNvbHV0aW9ucywgYnV0IHRoaXMgaXMK
CSAgIG9uIGEgc21hbGxlciBjaGFuZ2VzZXQgdGhhbiB0aGUgb25lcyB0aGF0IHVzZSAieCIgbGV0
dGVyLgoKCS0gVSsyMjE3ICgn4oiXJyk6IEFTVEVSSVNLIE9QRVJBVE9SCgoJICAgVGhpcyBpcyB1
c2VkIG9ubHkgaGVyZToKCQlEb2N1bWVudGF0aW9uL2ZpbGVzeXN0ZW1zL2V4dDQvYmxvY2tncm91
cC5yc3Q6ZmlsZXN5c3RlbSBzaXplIHRvIDJeMjEg4oiXIDJeMjcgPSAyXjQ4Ynl0ZXMgb3IgMjU2
VGlCLgoKCSAgIFByb2JhYmx5IGFkZGVkIGJ5IHNvbWUgY29udmVyc2lvbiB0b29sLiBJTU8sIHRo
aXMgb25lIHNob3VsZAoJICAgYWxzbyBiZSByZXBsYWNlZCBieSBhbiBBU0NJSSBhc3Rlcmlzay4K
CkkgZ3Vlc3MgSSdsbCBwb3N0IGEgcGF0Y2ggZm9yIHRoZSBBU1RFUklTSyBPUEVSQVRPUi4KVGhh
bmtzLApNYXVybwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCk1qcGVnLXVzZXJzIG1haWxpbmcgbGlzdApNanBlZy11c2Vyc0BsaXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vbWpwZWct
dXNlcnMK
