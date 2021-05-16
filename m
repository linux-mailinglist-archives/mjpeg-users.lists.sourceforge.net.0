Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2389A383A4C
	for <lists+mjpeg-users@lfdr.de>; Mon, 17 May 2021 18:46:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1ligO3-000422-1G; Mon, 17 May 2021 16:46:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mchehab@kernel.org>) id 1liDrK-0004Fr-IE
 for mjpeg-users@lists.sourceforge.net; Sun, 16 May 2021 10:18:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=O4CkYWRgoF9LGrYpDu+25jkB4CB9/o0LVBd1yx17PyA=; b=hlXweVz4CZiU4DQzt4vuC+5iiW
 2jJSgrDxrA9tojOqL5uiSNyeIuehLPLGFJcoHogLu81bSv4McJ6oC4oQKPDBmLXZYFHaZj+dzn6Lo
 SOxoq4LKM1VH/s7CjEXE04BUS9wD94dS5CWtxtIYwrUK3yLdw2ecdzR4Yx5rz6x+1XdA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=O4CkYWRgoF9LGrYpDu+25jkB4CB9/o0LVBd1yx17PyA=; b=EoVdnuVScon/LwQcmipB2CHBdn
 sbftFjuSBWrGgDMPGKVOpej/uUW6OFI+mraZoQBnz8IPwdI9Nrfux/2BwMrE0aOwwFjxXURGRMXJJ
 g7VJQ6wY7bwzUdlykQKzxybNZDp6hoIFGDB6EZGKs5vDKJFYzVowu7izS0L3utbwR4zA=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1liDrE-00AIfo-37
 for mjpeg-users@lists.sourceforge.net; Sun, 16 May 2021 10:18:55 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6A1DE611B0;
 Sun, 16 May 2021 10:18:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621160317;
 bh=vAsWsVaNiWeXZMG2ChkHaeM/crfIX9zFJo3VbTPS//Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=LIuU7emlEXMnoqjnou+bjfWHr71DvZqbduFKpVc0sf7jx0ObYsx2JFkAFTHOTsBzK
 x4ElE9qZx8OF5RHSwUlvKYYr28ZBSy0TcDhkuQ3UEq29/1z7lcBwuP6SC2QL4Hxv0g
 G2TYAZbywyJlTdu7Xb+FuT0upJA8mwkZf1d+JER2XLg+eJHeSwDOSIbV/HPVCFBunM
 4JIHWGHo0Z9k+M1GCvBmac4U9VGEPfGpNhp526N3h9fwvwOKso3aZDK49exX+Ebo2w
 zbWN3oIorw24kI+dspBBp0fDqbX+Nry/JZ4LeiizTo1D6SsBKcP2Zpff9bA+Gfs4Ui
 Q4LdI1J8x3J4A==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1liDr1-003o8S-CA; Sun, 16 May 2021 12:18:35 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>
Date: Sun, 16 May 2021 12:18:22 +0200
Message-Id: <fb2e971bc2fa4ed1e6f0d5aae6260191ff64c883.1621159997.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1621159997.git.mchehab+huawei@kernel.org>
References: <cover.1621159997.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1liDrE-00AIfo-37
X-Mailman-Approved-At: Mon, 17 May 2021 16:46:34 +0000
Subject: [Mjpeg-users] [PATCH v3 05/16] docs: driver-api: media: drivers:
 zoran.rst: replace some characters
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
Cc: Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 linux-kernel@vger.kernel.org, mjpeg-users@lists.sourceforge.net,
 Corentin Labbe <clabbe@baylibre.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

VGhlIGNvbnZlcnNpb24gdG9vbHMgdXNlZCBkdXJpbmcgRG9jQm9vay9MYVRlWC9odG1sL01hcmtk
b3duLT5SZVNUCmNvbnZlcnNpb24gYW5kIHNvbWUgY3V0LWFuZC1wYXN0ZWQgdGV4dCBjb250YWlu
IHNvbWUgY2hhcmFjdGVycyB0aGF0CmFyZW4ndCBlYXNpbHkgcmVhY2hhYmxlIG9uIHN0YW5kYXJk
IGtleWJvYXJkcyBhbmQvb3IgY291bGQgY2F1c2UKdHJvdWJsZXMgd2hlbiBwYXJzZWQgYnkgdGhl
IGRvY3VtZW50YXRpb24gYnVpbGQgc3lzdGVtLgoKUmVwbGFjZSB0aGUgb2NjdXJlbmNlcyBvZiB0
aGUgZm9sbG93aW5nIGNoYXJhY3RlcnM6CgoJLSBVKzAwYWQgKCfCrScpOiBTT0ZUIEhZUEhFTgoJ
ICBhcyBBU0NJSSBIWVBIRU4gaXMgcHJlZmVycmVkIG92ZXIgU09GVCBIWVBIRU4KClNpZ25lZC1v
ZmYtYnk6IE1hdXJvIENhcnZhbGhvIENoZWhhYiA8bWNoZWhhYitodWF3ZWlAa2VybmVsLm9yZz4K
LS0tCiBEb2N1bWVudGF0aW9uL2RyaXZlci1hcGkvbWVkaWEvZHJpdmVycy96b3Jhbi5yc3QgfCAy
ICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYg
LS1naXQgYS9Eb2N1bWVudGF0aW9uL2RyaXZlci1hcGkvbWVkaWEvZHJpdmVycy96b3Jhbi5yc3Qg
Yi9Eb2N1bWVudGF0aW9uL2RyaXZlci1hcGkvbWVkaWEvZHJpdmVycy96b3Jhbi5yc3QKaW5kZXgg
ODNjYmFlOWNlZGVmLi5iMjA1ZTEwYzMxNTQgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZHJp
dmVyLWFwaS9tZWRpYS9kcml2ZXJzL3pvcmFuLnJzdAorKysgYi9Eb2N1bWVudGF0aW9uL2RyaXZl
ci1hcGkvbWVkaWEvZHJpdmVycy96b3Jhbi5yc3QKQEAgLTMxOSw3ICszMTksNyBAQCBDb25leGFu
dCBidDg2NiBUViBlbmNvZGVyCiB+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+CiAKIC0gaXMgdXNl
ZCBpbiBBVlM2RVlFUywgYW5kCi0tIGNhbiBnZW5lcmF0ZTogTlRTQy9QQUwsIFBBTMKtTSwgUEFM
wq1OCistIGNhbiBnZW5lcmF0ZTogTlRTQy9QQUwsIFBBTC1NLCBQQUwtTgogCiBUaGUgYWR2NzE3
eCwgc2hvdWxkIGJlIGFibGUgdG8gcHJvZHVjZSBQQUwgTi4gQnV0IHlvdSBmaW5kIG5vdGhpbmcg
UEFMIE4KIHNwZWNpZmljIGluIHRoZSByZWdpc3RlcnMuIFNlZW0gdGhhdCB5b3UgaGF2ZSB0byBy
ZXVzZSBhIG90aGVyIHN0YW5kYXJkCi0tIAoyLjMxLjEKCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTWpwZWctdXNlcnMgbWFpbGluZyBsaXN0Ck1qcGVn
LXVzZXJzQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5l
dC9saXN0cy9saXN0aW5mby9tanBlZy11c2Vycwo=
