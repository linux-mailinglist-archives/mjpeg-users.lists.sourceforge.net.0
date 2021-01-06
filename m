Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C4472EBF59
	for <lists+mjpeg-users@lfdr.de>; Wed,  6 Jan 2021 15:20:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1kx9fN-00051W-L3; Wed, 06 Jan 2021 14:20:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <zhengyongjun3@huawei.com>) id 1kx8tY-0001zh-Ix
 for mjpeg-users@lists.sourceforge.net; Wed, 06 Jan 2021 13:30:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PkYT5cd5DH/2bmhCWzSk3YBulEXW5zeml15ew4Ou9GM=; b=fPK4d0xRHnjeRQRWV/YkClaclX
 HQy3pLYKnXIOvZZvB5ru52qTP/KziRJO78d2Lqjkq2f+H+pn7OCEgV4byplRC+YkW46p6Hq/vxZib
 79b0Ro+7+irGWhDmTtRFYaV4LRL3yWnfKZmlst2ao+tPSi9Ae8RwRXLB6ylaQS6Xpbo0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PkYT5cd5DH/2bmhCWzSk3YBulEXW5zeml15ew4Ou9GM=; b=UKzq8t8d4KVwdc4P2R1UBNAnN2
 C/TPimPGZ5VoZ+4e8uwXYu/AmQKOP7N3hRY0vQWrvMWQPM3pdoffUZA7HCKuCu5zC+MBBWeg8Vqxi
 gffflaLSDrHgcjW0pzeQQJQV/jcTj1csNTQC30y4STgBf9QOiUd030ut4QfcoDDj0Eas=;
Received: from szxga02-in.huawei.com ([45.249.212.188])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kx8tL-00FeNR-T8
 for mjpeg-users@lists.sourceforge.net; Wed, 06 Jan 2021 13:30:36 +0000
Received: from dggeme762-chm.china.huawei.com (unknown [172.30.72.56])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4D9qvl3Dq1z5F1p;
 Wed,  6 Jan 2021 21:29:07 +0800 (CST)
Received: from dggeme760-chm.china.huawei.com (10.3.19.106) by
 dggeme762-chm.china.huawei.com (10.3.19.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1913.5; Wed, 6 Jan 2021 21:30:02 +0800
Received: from dggeme760-chm.china.huawei.com ([10.6.80.70]) by
 dggeme760-chm.china.huawei.com ([10.6.80.70]) with mapi id 15.01.1913.007;
 Wed, 6 Jan 2021 21:30:02 +0800
From: zhengyongjun <zhengyongjun3@huawei.com>
To: "clabbe@baylibre.com" <clabbe@baylibre.com>, "mchehab@kernel.org"
 <mchehab@kernel.org>, "mjpeg-users@lists.sourceforge.net"
 <mjpeg-users@lists.sourceforge.net>, "linux-media@vger.kernel.org"
 <linux-media@vger.kernel.org>, "devel@driverdev.osuosl.org"
 <devel@driverdev.osuosl.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: [PATCH -next] media: zoran: use resource_size
Thread-Index: AQHW5C4k5dTBnbfL/0ecILiTVyuNR6oal3pw
Date: Wed, 6 Jan 2021 13:30:02 +0000
Message-ID: <f6368bef56b54bdf94c2fdb1fa0752d1@huawei.com>
References: <20210106131702.32507-1-zhengyongjun3@huawei.com>
In-Reply-To: <20210106131702.32507-1-zhengyongjun3@huawei.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.174.178.249]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kx8tL-00FeNR-T8
X-Mailman-Approved-At: Wed, 06 Jan 2021 14:19:59 +0000
Subject: [Mjpeg-users] =?gb2312?b?tPC4tDogW1BBVENIIC1uZXh0XSBtZWRpYTogem9y?=
 =?gb2312?b?YW46IHVzZSByZXNvdXJjZV9zaXpl?=
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
Cc: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

U29ycnksIHRoaXMgaXMgbXkgZmF1bHQsIGFsbCB0aGlzIG1lZGlhIHJlbGF0ZWQgcGF0Y2ggY29t
bWl0IG1zZyBpcyB3cm9uZywgSSB3aWxsIHNlbmQgcGF0Y2ggdjIsIHBsZWFzZSBpZ25vcmUgaXQu
DQoNCi0tLS0t08q8/tStvP4tLS0tLQ0Kt6K8/sjLOiB6aGVuZ3lvbmdqdW4gDQq3osvNyrG85Dog
MjAyMcTqMdTCNsjVIDIxOjE3DQrK1bz+yMs6IGNsYWJiZUBiYXlsaWJyZS5jb207IG1jaGVoYWJA
a2VybmVsLm9yZzsgbWpwZWctdXNlcnNAbGlzdHMuc291cmNlZm9yZ2UubmV0OyBsaW51eC1tZWRp
YUB2Z2VyLmtlcm5lbC5vcmc7IGRldmVsQGRyaXZlcmRldi5vc3Vvc2wub3JnOyBsaW51eC1rZXJu
ZWxAdmdlci5rZXJuZWwub3JnDQqzrcvNOiBncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZzsgemhl
bmd5b25nanVuIDx6aGVuZ3lvbmdqdW4zQGh1YXdlaS5jb20+DQrW98ziOiBbUEFUQ0ggLW5leHRd
IG1lZGlhOiB6b3JhbjogdXNlIHJlc291cmNlX3NpemUNCg0KVXNlIHJlc291cmNlX3NpemUgcmF0
aGVyIHRoYW4gYSB2ZXJib3NlIGNvbXB1dGF0aW9uIG9uIHRoZSBlbmQgYW5kIHN0YXJ0IGZpZWxk
cy4NCg0KU2lnbmVkLW9mZi1ieTogWmhlbmcgWW9uZ2p1biA8emhlbmd5b25nanVuM0BodWF3ZWku
Y29tPg0KLS0tDQogZHJpdmVycy9zdGFnaW5nL21lZGlhL3pvcmFuL3pvcmFuX2RyaXZlci5jIHwg
MiArLQ0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KDQpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3pvcmFuL3pvcmFuX2RyaXZlci5jIGIv
ZHJpdmVycy9zdGFnaW5nL21lZGlhL3pvcmFuL3pvcmFuX2RyaXZlci5jDQppbmRleCA4MDgxOTZl
YTViODEuLmQ2MGI0YzczZWE4MCAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS96
b3Jhbi96b3Jhbl9kcml2ZXIuYw0KKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3pvcmFuL3pv
cmFuX2RyaXZlci5jDQpAQCAtMTAyMCw3ICsxMDIwLDcgQEAgaW50IHpvcmFuX3F1ZXVlX2luaXQo
c3RydWN0IHpvcmFuICp6ciwgc3RydWN0IHZiMl9xdWV1ZSAqdnEpDQogCXZxLT5idWZfc3RydWN0
X3NpemUgPSBzaXplb2Yoc3RydWN0IHpyX2J1ZmZlcik7DQogCXZxLT5vcHMgPSAmenJfdmlkZW9f
cW9wczsNCiAJdnEtPm1lbV9vcHMgPSAmdmIyX2RtYV9jb250aWdfbWVtb3BzOw0KLQl2cS0+Z2Zw
X2ZsYWdzID0gR0ZQX0RNQTMyLA0KKwl2cS0+Z2ZwX2ZsYWdzID0gR0ZQX0RNQTMyOw0KIAl2cS0+
dGltZXN0YW1wX2ZsYWdzID0gVjRMMl9CVUZfRkxBR19USU1FU1RBTVBfTU9OT1RPTklDOw0KIAl2
cS0+bWluX2J1ZmZlcnNfbmVlZGVkID0gOTsNCiAJdnEtPmxvY2sgPSAmenItPmxvY2s7DQotLQ0K
Mi4yMi4wDQoNCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpNanBlZy11c2VycyBtYWlsaW5nIGxpc3QKTWpwZWctdXNlcnNAbGlzdHMuc291cmNlZm9yZ2Uu
bmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL21qcGVnLXVz
ZXJzCg==
