Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D9426383A51
	for <lists+mjpeg-users@lfdr.de>; Mon, 17 May 2021 18:46:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1ligO3-00042B-3h; Mon, 17 May 2021 16:46:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <mchehab@kernel.org>) id 1liDrN-00022l-En
 for mjpeg-users@lists.sourceforge.net; Sun, 16 May 2021 10:18:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zeIwZpzRI8401e3VEpwOeWIdzwvaxsThOhB0p3QFnAg=; b=f+xwUw5Ta28dhIW0WaTgOD71Wm
 M1u07c5+xOcSsPEiU7WHeo6ZuukJalL+IszdOxgIUxweglLc9KGapRHRLObj1RXeL1/sU7Zr3Xdfd
 Ml8zHdizZp/h+43MKzwAI+CJi3/fOSQoU/VXtCip79aAcgSngLeSHxN5Vdfu4Yn9Bn78=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=zeIwZpzRI8401e3VEpwOeWIdzwvaxsThOhB0p3QFnAg=; b=i
 c0u86umvsQqAJWNk7dGKTh5SFnDtYVi6zNUPCDMbjoTBmmX1gWO/rp+Ye0mpfoSucfJHaD0pyg+jl
 CoP1nEakuKygp82bQmbWVnn1NXLVDhqXlHnsswJ9uPtgIpFT371k0kwmkVmC8+gs3EFEr7WUE5h+1
 9IugDOzFg9bF0kWY=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1liDrE-0000w8-Eq
 for mjpeg-users@lists.sourceforge.net; Sun, 16 May 2021 10:18:57 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 768AD611CA;
 Sun, 16 May 2021 10:18:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621160317;
 bh=uz12JEUkFl1zk0MKhwqoy7Swq0yIqwlg559U5vqLb64=;
 h=From:To:Cc:Subject:Date:From;
 b=NZoYuL4T8pZP0XVsuqpo1xaXga3djUflecwXx5LGut8qbhlW3Y9NzBmiQJpti66iQ
 XEctA9a/tkYn6eIfMFOD23iU2NVyAWENwzAu5GTKImts+lpuYv0eNqgw/CUZ2ZkWss
 fllyfJ2EOkHcmxftZ1iXvAx83SROwJwSmenZXooYhJTuiuJxIyQ+zDnL2KcckWJO3l
 HXjHP9OcKsGcnNSkEPNKSqumMlW9xOUSyWQbW7rfHCgaVLEVCKAvIaHdwvFlEJ1a7n
 T0Jc41mYwmUESpLNWcMxWdQoD+Yw7News+EAAT/i+fb8vmW0PjoNLGp13h2ptdOtyU
 rkJ7P+/53g9gg==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1liDr1-003o89-5Z; Sun, 16 May 2021 12:18:35 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>
Date: Sun, 16 May 2021 12:18:17 +0200
Message-Id: <cover.1621159997.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.31.1
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
X-Headers-End: 1liDrE-0000w8-Eq
X-Mailman-Approved-At: Mon, 17 May 2021 16:46:34 +0000
Subject: [Mjpeg-users] [PATCH v3 00/16] Replace some bad characters on
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
Cc: alsa-devel@alsa-project.org, kvm@vger.kernel.org, linux-pci@vger.kernel.org,
 Lai Jiangshan <jiangshanlai@gmail.com>,
 Thorsten Leemhuis <linux@leemhuis.info>, Jaroslav Kysela <perex@perex.cz>,
 netdev@vger.kernel.org, Andreas Dilger <adilger.kernel@dilger.ca>,
 Joel Fernandes <joel@joelfernandes.org>, Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, linux-acpi@vger.kernel.org,
 Alan Stern <stern@rowland.harvard.edu>, Corentin Labbe <clabbe@baylibre.com>,
 Jakub Kicinski <kuba@kernel.org>, linux-ext4@vger.kernel.org,
 Guenter Roeck <linux@roeck-us.net>, Mike Leach <mike.leach@linaro.org>,
 Jean Delvare <jdelvare@suse.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 coresight@lists.linaro.org, Steven Rostedt <rostedt@goodmis.org>,
 rcu@vger.kernel.org, mjpeg-users@lists.sourceforge.net,
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

VGhlIGNvbnZlcnNpb24gdG9vbHMgdXNlZCBkdXJpbmcgRG9jQm9vay9MYVRlWC9odG1sL01hcmtk
b3duLT5SZVNUIApjb252ZXJzaW9uIGFuZCBzb21lIGN1dC1hbmQtcGFzdGVkIHRleHQgY29udGFp
biBzb21lIGNoYXJhY3RlcnMgdGhhdAphcmVuJ3QgZWFzaWx5IHJlYWNoYWJsZSBvbiBzdGFuZGFy
ZCBrZXlib2FyZHMgYW5kL29yIGNvdWxkIGNhdXNlIAp0cm91YmxlcyB3aGVuIHBhcnNlZCBieSB0
aGUgZG9jdW1lbnRhdGlvbiBidWlsZCBzeXN0ZW0uCgpSZXBsYWNlIHRoZSBvY2N1cmVuY2VzIG9m
IHRoZSBmb2xsb3dpbmcgY2hhcmFjdGVyczoKCiAgICAgICAgICAgIC0gVSswMGEwICgnwqAnKTog
Tk8tQlJFQUsgU1BBQ0UKICAgICAgICAgICAgLSBVKzAwYWQgKCfCrScpOiBTT0ZUIEhZUEhFTgog
ICAgICAgICAgICAtIFUrMjAxMCAoJ+KAkCcpOiBIWVBIRU4KICAgICAgICAgICAgLSBVKzIyMTcg
KCfiiJcnKTogQVNURVJJU0sgT1BFUkFUT1IKICAgICAgICAgICAgLSBVK2ZlZmYgKCfvu78nKTog
Qk9NCgpJJ2xsIHN1Ym1pdCBpbiBzZXBhcmF0ZSBhbm90aGVyIHNlcmllcyB0byBhZGRyZXNzIG90
aGVyIGNoYXJhY3RlciBvY2N1cnJlbmNlcy4KCnYzOgogIC0gcmVtb3ZlZCBjdXJseSBjb21tYXMg
YW5kIGNoYW5nZWQgdGhlIHBhdGNoIGRlc2NyaXB0aW9ucy4KdjI6CiAgLSByZW1vdmVkIEVNL0VO
IGRhc2hlcyBhbmQgY2hhbmdlZCB0aGUgcGF0Y2ggZGVzY3JpcHRpb25zLgoKCk1hdXJvIENhcnZh
bGhvIENoZWhhYiAoMTYpOgogIGRvY3M6IGh3bW9uOiBpcjM2MDIxLnJzdDogcmVwbGFjZSBzb21l
IGNoYXJhY3RlcnMKICBkb2NzOiBhZG1pbi1ndWlkZTogcmVwb3J0aW5nLWlzc3Vlcy5yc3Q6IHJl
cGxhY2Ugc29tZSBjaGFyYWN0ZXJzCiAgZG9jczogdHJhY2U6IGNvcmVzaWdodDogY29yZXNpZ2h0
LWV0bTR4LXJlZmVyZW5jZS5yc3Q6IHJlcGxhY2Ugc29tZQogICAgY2hhcmFjdGVycwogIGRvY3M6
IGRyaXZlci1hcGk6IGlvY3RsLnJzdDogcmVwbGFjZSBzb21lIGNoYXJhY3RlcnMKICBkb2NzOiBk
cml2ZXItYXBpOiBtZWRpYTogZHJpdmVyczogem9yYW4ucnN0OiByZXBsYWNlIHNvbWUgY2hhcmFj
dGVycwogIGRvY3M6IHVzYjogcmVwbGFjZSBzb21lIGNoYXJhY3RlcnMKICBkb2NzOiB1c2Vyc3Bh
Y2UtYXBpOiBtZWRpYTogdjRsOiBkZXYtZGVjb2Rlci5yc3Q6IHJlcGxhY2Ugc29tZQogICAgY2hh
cmFjdGVycwogIGRvY3M6IHVzZXJzcGFjZS1hcGk6IG1lZGlhOiBkdmI6IGludHJvLnJzdDogcmVw
bGFjZSBzb21lIGNoYXJhY3RlcnMKICBkb2NzOiB2bTogenN3YXAucnN0OiByZXBsYWNlIHNvbWUg
Y2hhcmFjdGVycwogIGRvY3M6IGZpbGVzeXN0ZW1zOiBleHQ0OiBibG9ja2dyb3VwLnJzdDogcmVw
bGFjZSBzb21lIGNoYXJhY3RlcnMKICBkb2NzOiBuZXR3b3JraW5nOiBkZXZpY2VfZHJpdmVyczog
cmVwbGFjZSBzb21lIGNoYXJhY3RlcnMKICBkb2NzOiBQQ0k6IGFjcGktaW5mby5yc3Q6IHJlcGxh
Y2Ugc29tZSBjaGFyYWN0ZXJzCiAgZG9jczogc291bmQ6IGtlcm5lbC1hcGk6IHdyaXRpbmctYW4t
YWxzYS1kcml2ZXIucnN0OiByZXBsYWNlIHNvbWUKICAgIGNoYXJhY3RlcnMKICBkb2NzOiBmaXJt
d2FyZS1ndWlkZTogYWNwaTogZHNkOiBncmFwaC5yc3Q6IHJlcGxhY2Ugc29tZSBjaGFyYWN0ZXJz
CiAgZG9jczogdmlydDoga3ZtOiBhcGkucnN0OiByZXBsYWNlIHNvbWUgY2hhcmFjdGVycwogIGRv
Y3M6IFJDVTogcmVwbGFjZSBzb21lIGNoYXJhY3RlcnMKCiBEb2N1bWVudGF0aW9uL1BDSS9hY3Bp
LWluZm8ucnN0ICAgICAgICAgICAgICAgfCAxOCArKy0tLQogLi4uL0RhdGEtU3RydWN0dXJlcy9E
YXRhLVN0cnVjdHVyZXMucnN0ICAgICAgIHwgNDYgKysrKysrLS0tLS0tCiAuLi4vRXhwZWRpdGVk
LUdyYWNlLVBlcmlvZHMucnN0ICAgICAgICAgICAgICAgfCAzNiArKysrKy0tLS0tCiAuLi4vVHJl
ZS1SQ1UtTWVtb3J5LU9yZGVyaW5nLnJzdCAgICAgICAgICAgICAgfCAgMiArLQogLi4uL1JDVS9E
ZXNpZ24vUmVxdWlyZW1lbnRzL1JlcXVpcmVtZW50cy5yc3QgIHwgNzAgKysrKysrKysrLS0tLS0t
LS0tLQogLi4uL2FkbWluLWd1aWRlL3JlcG9ydGluZy1pc3N1ZXMucnN0ICAgICAgICAgIHwgIDIg
Ky0KIERvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9pb2N0bC5yc3QgICAgICAgICAgICB8ICA4ICst
LQogLi4uL2RyaXZlci1hcGkvbWVkaWEvZHJpdmVycy96b3Jhbi5yc3QgICAgICAgIHwgIDIgKy0K
IERvY3VtZW50YXRpb24vZmlsZXN5c3RlbXMvZXh0NC9ibG9ja2dyb3VwLnJzdCB8ICAyICstCiAu
Li4vZmlybXdhcmUtZ3VpZGUvYWNwaS9kc2QvZ3JhcGgucnN0ICAgICAgICAgfCAgMiArLQogRG9j
dW1lbnRhdGlvbi9od21vbi9pcjM2MDIxLnJzdCAgICAgICAgICAgICAgIHwgIDIgKy0KIC4uLi9k
ZXZpY2VfZHJpdmVycy9ldGhlcm5ldC9pbnRlbC9pNDBlLnJzdCAgICB8ICA2ICstCiAuLi4vZGV2
aWNlX2RyaXZlcnMvZXRoZXJuZXQvaW50ZWwvaWF2Zi5yc3QgICAgfCAgMiArLQogLi4uL2tlcm5l
bC1hcGkvd3JpdGluZy1hbi1hbHNhLWRyaXZlci5yc3QgICAgIHwgIDIgKy0KIC4uLi9jb3Jlc2ln
aHQvY29yZXNpZ2h0LWV0bTR4LXJlZmVyZW5jZS5yc3QgICB8ICAyICstCiBEb2N1bWVudGF0aW9u
L3VzYi9laGNpLnJzdCAgICAgICAgICAgICAgICAgICAgfCAgMiArLQogRG9jdW1lbnRhdGlvbi91
c2IvZ2FkZ2V0X3ByaW50ZXIucnN0ICAgICAgICAgIHwgIDIgKy0KIC4uLi91c2Vyc3BhY2UtYXBp
L21lZGlhL2R2Yi9pbnRyby5yc3QgICAgICAgICB8ICA0ICstCiAuLi4vdXNlcnNwYWNlLWFwaS9t
ZWRpYS92NGwvZGV2LWRlY29kZXIucnN0ICAgfCAgMiArLQogRG9jdW1lbnRhdGlvbi92aXJ0L2t2
bS9hcGkucnN0ICAgICAgICAgICAgICAgIHwgMjggKysrKy0tLS0KIERvY3VtZW50YXRpb24vdm0v
enN3YXAucnN0ICAgICAgICAgICAgICAgICAgICB8ICA0ICstCiAyMSBmaWxlcyBjaGFuZ2VkLCAx
MjIgaW5zZXJ0aW9ucygrKSwgMTIyIGRlbGV0aW9ucygtKQoKLS0gCjIuMzEuMQoKCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTWpwZWctdXNlcnMgbWFp
bGluZyBsaXN0Ck1qcGVnLXVzZXJzQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3Rz
LnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9tanBlZy11c2Vycwo=
