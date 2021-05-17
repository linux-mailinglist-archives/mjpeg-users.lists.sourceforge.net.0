Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E6BF0383A4E
	for <lists+mjpeg-users@lfdr.de>; Mon, 17 May 2021 18:46:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1ligO3-00042m-MJ; Mon, 17 May 2021 16:46:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <mchehab+huawei@kernel.org>) id 1libN8-0007Aa-HF
 for mjpeg-users@lists.sourceforge.net; Mon, 17 May 2021 11:25:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gPscExWz7BE0VJXFFIl1X53TmiqlcPHAwH9kMecfSi4=; b=Wv3TQH5pHr/cjSPRFMPplP0e7V
 FUH6RSyFVjWbRar9qcY9C9GXH/cuLzhv48bv0Hlw3nlsMmXgQPRxWjyPSA2y6CKQMPuuz+LrLOrlo
 yqkh5Z0ejGAW4StMCRP4AfDhcjjXaiy3Fe6/5JIIrjn+KTjrpM0Ja8wbKw8zbEkDKN2M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gPscExWz7BE0VJXFFIl1X53TmiqlcPHAwH9kMecfSi4=; b=KqGYiyWhhNen3L2XojzWpht1eB
 SXjO63XDOtgQTTqpWsP1N5TvOLAV2xYqYp1+MXBztLBFPLjpsRL9S8NE5juxVSF+NHgmfeKQpPOHp
 6I3XygKEl4P6nmKt4HpMdHVi+yXWV0hahlBZRHWpd/IX30Uu1sFE43zPGwQ/ffgoNsTs=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1libMw-0006gD-US
 for mjpeg-users@lists.sourceforge.net; Mon, 17 May 2021 11:25:18 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id E8DE86100C;
 Mon, 17 May 2021 11:24:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621250697;
 bh=IqUZ0sNLzRXtoD/YFOpvkpCv7NFriIwqrV0nk+tQFjA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=SjZiucxTGgskw3bZqxU8hkRIDqvLkRPDUPXGysGlCLAY4qMHHwLFDNWf7GzwMPeSy
 k6gBtne3rZl4OWw9EJiAKpC90ICt4wmL+dOW1/wtHGSzFBwlIEB7lPhufz0SGrH9U0
 8BeoyWN0zwaq92smlvSCsJzkysY0ZKum/rQEXJAZuksdPKz9UCm2b6rTTMrYAXAHuw
 m5K5R4IDiLhuXBms1/YwUa6BMqBAHs9uv2Ndu7DwgV1+6w7DgEDLXe2pUPRnLtE+Wd
 GExQHVUHQydYOYDz+zZFmQU4ywGdNTNfxU1WppJsq+V8siRV5m9U5SOv7k7mbiC129
 mEKSngo0SzESg==
Date: Mon, 17 May 2021 13:24:46 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20210517132446.7edba98f@coco.lan>
In-Reply-To: <30cd6dd9d1049d56b629c92a5f385b84c026b445.camel@infradead.org>
References: <cover.1621159997.git.mchehab+huawei@kernel.org>
 <30cd6dd9d1049d56b629c92a5f385b84c026b445.camel@infradead.org>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1libMw-0006gD-US
X-Mailman-Approved-At: Mon, 17 May 2021 16:46:34 +0000
Subject: Re: [Mjpeg-users] [PATCH v3 00/16] Replace some bad characters on
 documents
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
 Linux Doc Mailing List <linux-doc@vger.kernel.org>, linux-pci@vger.kernel.org,
 Lai Jiangshan <jiangshanlai@gmail.com>,
 Thorsten Leemhuis <linux@leemhuis.info>, Jaroslav Kysela <perex@perex.cz>,
 netdev@vger.kernel.org, Andreas Dilger <adilger.kernel@dilger.ca>,
 Joel Fernandes <joel@joelfernandes.org>, Jonathan Corbet <corbet@lwn.net>,
 linux-acpi@vger.kernel.org, Alan Stern <stern@rowland.harvard.edu>,
 Corentin Labbe <clabbe@baylibre.com>, Jakub Kicinski <kuba@kernel.org>,
 linux-ext4@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>,
 Mike Leach <mike.leach@linaro.org>, Jean Delvare <jdelvare@suse.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, coresight@lists.linaro.org,
 Steven Rostedt <rostedt@goodmis.org>, rcu@vger.kernel.org,
 mjpeg-users@lists.sourceforge.net,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Theodore Ts'o <tytso@mit.edu>, Mathieu Poirier <mathieu.poirier@linaro.org>,
 intel-wired-lan@lists.osuosl.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Leo Yan <leo.yan@linaro.org>,
 linux-media@vger.kernel.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

RW0gTW9uLCAxNyBNYXkgMjAyMSAxMTo0ODowNCArMDEwMApEYXZpZCBXb29kaG91c2UgPGR3bXcy
QGluZnJhZGVhZC5vcmc+IGVzY3JldmV1OgoKPiBPbiBTdW4sIDIwMjEtMDUtMTYgYXQgMTI6MTgg
KzAyMDAsIE1hdXJvIENhcnZhbGhvIENoZWhhYiB3cm90ZToKPiA+IFRoZSBjb252ZXJzaW9uIHRv
b2xzIHVzZWQgZHVyaW5nIERvY0Jvb2svTGFUZVgvaHRtbC9NYXJrZG93bi0+UmVTVCAKPiA+IGNv
bnZlcnNpb24gYW5kIHNvbWUgY3V0LWFuZC1wYXN0ZWQgdGV4dCBjb250YWluIHNvbWUgY2hhcmFj
dGVycyB0aGF0Cj4gPiBhcmVuJ3QgZWFzaWx5IHJlYWNoYWJsZSBvbiBzdGFuZGFyZCBrZXlib2Fy
ZHMgYW5kL29yIGNvdWxkIGNhdXNlIAo+ID4gdHJvdWJsZXMgd2hlbiBwYXJzZWQgYnkgdGhlIGRv
Y3VtZW50YXRpb24gYnVpbGQgc3lzdGVtLiAgCj4gCj4gQmV0dGVyLgo+IAo+IEJ1dCB5b3Ugc3Rp
bGwgZG9uJ3Qgc2F5ICp3aHkqIGl0IG1hdHRlcnMgd2hldGhlciBnaXZlbiBjaGFyYWN0ZXJzIGFy
ZQo+IHRyaXZpYWwgdG8gcmVhY2ggd2l0aCBzdGFuZGFyZCBrZXlib2FyZCBsYXlvdXRzLCBvciBz
cGVjaWZ5ICp3aGF0Kgo+ICd0cm91YmxlcycgdGhlIG9mZmVuZGluZyBjaGFyYWN0ZXJzIGNhdXNl
LgoKU2VlIHRoZSBwYXRjaGVzIGluIHRoZSBzZXJpZXMuIFRoZSByZWFzb24gZm9yIGVhY2ggcGFy
dGljdWxhciBjYXNlCmlzIHRoZXJlIG9uIGVhY2ggcGF0Y2gsIGxpa2Ugb24gdGhpcyBvbmU6CgoJ
W1BBVENIIHYzIDEzLzE2XSBkb2NzOiBzb3VuZDoga2VybmVsLWFwaTogd3JpdGluZy1hbi1hbHNh
LWRyaXZlci5yc3Q6IHJlcGxhY2Ugc29tZSBjaGFyYWN0ZXJzCgoJVGhlIGNvbnZlcnNpb24gdG9v
bHMgdXNlZCBkdXJpbmcgRG9jQm9vay9MYVRlWC9odG1sL01hcmtkb3duLT5SZVNUCgljb252ZXJz
aW9uIGFuZCBzb21lIGN1dC1hbmQtcGFzdGVkIHRleHQgY29udGFpbiBzb21lIGNoYXJhY3RlcnMg
dGhhdAoJYXJlbid0IGVhc2lseSByZWFjaGFibGUgb24gc3RhbmRhcmQga2V5Ym9hcmRzIGFuZC9v
ciBjb3VsZCBjYXVzZQoJdHJvdWJsZXMgd2hlbiBwYXJzZWQgYnkgdGhlIGRvY3VtZW50YXRpb24g
YnVpbGQgc3lzdGVtLgoJIAoJUmVwbGFjZSB0aGUgb2NjdXJlbmNlcyBvZiB0aGUgZm9sbG93aW5n
IGNoYXJhY3RlcnM6CgkKCQktIFUrMDBhMCAoJ8KgJyk6IE5PLUJSRUFLIFNQQUNFCgkJICBhcyBp
dCBjYW4gY2F1c2UgbGluZXMgYmVpbmcgdHJ1bmNhdGVkIG9uIFBERiBvdXRwdXQKCglTaWduZWQt
b2ZmLWJ5OiBNYXVybyBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWIraHVhd2VpQGtlcm5lbC5vcmc+
CgoKVGhhbmtzLApNYXVybwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCk1qcGVnLXVzZXJzIG1haWxpbmcgbGlzdApNanBlZy11c2Vyc0BsaXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8v
bWpwZWctdXNlcnMK
