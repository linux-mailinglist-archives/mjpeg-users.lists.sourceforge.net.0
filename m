Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E88E6B18F0D
	for <lists+mjpeg-users@lfdr.de>; Sat,  2 Aug 2025 15:55:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8S0Xc9PAK7q6BDFVGIUxPm4Q+WMyOVmfKAPX3zF0+SQ=; b=AQP2pl9cEIB5t6gvwX7PCbPluD
	o4JXTG/0+K0xt9MkGVqzfNRgKcjN4UQgHM4qCL4pBd0NnfrZrBzrekNdPw0BuWja8iF9lCYFQ8ioO
	IHCDaL8rylL9c+d8Ptj/ikj9hvCxf3zlbRLRUrshhuHvRuPQyt9qxXqbYh7v4m+Sg6O8=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1uiCi5-0006wM-OM;
	Sat, 02 Aug 2025 13:55:41 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <niklas.soderlund@ragnatech.se>) id 1uiCYx-0007RI-F2
 for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 13:46:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bmI1hYqjksR+DRa8JSQk6MVH64W5+sLipA6UwCtocJY=; b=kEMnDggoXuz22k+SUxtmilXQ5e
 qvZ/gz7YADhUtl6M9EZP07ERxIoa7989PB27yPjmueIrx8f85GuUK8QQlv8RfJ7bgKus3wks6Nzqk
 NAMjPLHlvTcI/mniYVvNYsK5+WlBJHwU9OPvLdrrRdXEXKpXNRhgDRcUts2PWUcpOffA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bmI1hYqjksR+DRa8JSQk6MVH64W5+sLipA6UwCtocJY=; b=KH719n/0kxpEp3W9XZAcl7sBxF
 XOjdXQbOKd7ZMf6Ip7naoNADawhpXY748NdEPSTlaZLGCGcjQPcQCRe/KNRZPQIRgtk5N7Rbqgs4D
 DlAbFmEKPkpCWCVdG2MpyXU8M1usxegkmaAQXv6OFwoxclD7DDmw4TwXdGKfTE13x2xc=;
Received: from flow-a5-smtp.messagingengine.com ([103.168.172.140])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uiCYx-0005OC-NW for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 13:46:16 +0000
Received: from phl-compute-04.internal (phl-compute-04.phl.internal
 [10.202.2.44])
 by mailflow.phl.internal (Postfix) with ESMTP id A87BC1380608;
 Sat,  2 Aug 2025 09:26:52 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-04.internal (MEProxy); Sat, 02 Aug 2025 09:26:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ragnatech.se; h=
 cc:cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm2; t=1754141212;
 x=1754148412; bh=bmI1hYqjksR+DRa8JSQk6MVH64W5+sLipA6UwCtocJY=; b=
 qqNUWLHW5NkgMWC7l9Ppuzcw0TRZVKBalVrpuNL2tWkSX16V+CaL/WD3GPRevH/3
 cOaqYuZWVehBMlqwkuJTQ3+7ee7mvoCmm57l/9y3kSLOhYi/j9UZL0baYRp5JOQM
 j4yp2XwkBPHkkHrQr9G2kPmFqob1bo+ge9yICVt/dsRrLU+xuJA6h9g8SW4qJPa0
 AHQH8Vz64gEdgI7kQ+1DTmePAvNbJQJxnWkGkDSZF/paCkDAzfIwxTUg+JfaHIca
 2uCTiijQTVgzLiuE6qwTC/es2iaY0ak3Q1yInsTplxnRcKjgCrvxpj+WvGFL/Gkm
 HIx11r/lg4cei6lIenYP+g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1754141212; x=
 1754148412; bh=bmI1hYqjksR+DRa8JSQk6MVH64W5+sLipA6UwCtocJY=; b=C
 LzPCjtSlWjEpgC9nck7IIN+a6VWM2T9KzMBiWo4CFmbf/c8EsbwRuyBR6zo43jFD
 hvyIbMP0zgOcLL+h4kub0bXZEqehHtgFY6sV9cwlFjffv+lGsEsKcJttU2+8fn3b
 kRALXojkwbX6H2IOxV2soFJHVIcKk6LuRbHAbjPhMXvWGeT7KA2Mau0LJLy4HAji
 lfgiUMmK9spCDs/oe1YGLozfqCHtXvx0XyirO7dloL77Fyd05IG6lp0ZwH1pUgeh
 FNabC3mgBC+9qZ25Drxy58dz8xR3lKKGectSGWS0hTtARs2FRFJmAX2nfNB3fKxO
 c360wFl1nKo7iNibIdOnQ==
X-ME-Sender: <xms:FhKOaIqzIVCCzZqyPT8S-Kuyp75Ghz90bD-sNWC1Ynb1xWuDhB2fgA>
 <xme:FhKOaAAM51hB_nYlCo1hgXLgPrXfAQsJTzEzSK29ONCez_BVzRWEnZ7YYfmVPVSd4
 mYWvtLYdmS8g_-J1io>
X-ME-Received: <xmr:FhKOaKNy3dovqvqjcZlMlmNulu_odOhDUh_OuI4TialffSqjpk1dXSXjcgxfsuv77hx6_icSG8wxq9Qphv3aDtPfT18v805RrQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgddutdeiieelucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
 gurhepfffhvfevuffkfhggtggugfgjsehtkeertddttdejnecuhfhrohhmpefpihhklhgr
 shcuufpnuggvrhhluhhnugcuoehnihhklhgrshdrshhouggvrhhluhhnugesrhgrghhnrg
 htvggthhdrshgvqeenucggtffrrghtthgvrhhnpeevteegtddvvdfhtdekgefhfeefheet
 heekkeegfeejudeiudeuleegtdehkeekteenucevlhhushhtvghrufhiiigvpedtnecurf
 grrhgrmhepmhgrihhlfhhrohhmpehnihhklhgrshdrshhouggvrhhluhhnugesrhgrghhn
 rghtvggthhdrshgvpdhnsggprhgtphhtthhopedutdehpdhmohguvgepshhmthhpohhuth
 dprhgtphhtthhopehjrggtohhpohdrmhhonhguihesihguvggrshhonhgsohgrrhgurdgt
 ohhmpdhrtghpthhtohepmhgthhgvhhgrsgeskhgvrhhnvghlrdhorhhgpdhrtghpthhtoh
 epuggvvhgrrhhshhhtsehtihdrtghomhdprhgtphhtthhopegsphgrrhhrohhtsehtihdr
 tghomhdprhgtphhtthhopehhvhgvrhhkuhhilheskhgvrhhnvghlrdhorhhgpdhrtghpth
 htohepihhsvghlhiesphhosghogidrtghomhdprhgtphhtthhopehlrghurhgvnhhtrdhp
 ihhntghhrghrthesihguvggrshhonhgsohgrrhgurdgtohhmpdhrtghpthhtohephhgrnh
 hsgheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepphgrrhhthhhisggrnhdrvhgvvghr
 rghsohhorhgrnhesmhhitghrohgthhhiphdrtghomh
X-ME-Proxy: <xmx:FhKOaHAoXiF7NV692VGvUlBtEKV8Ppc7HpktTEwZStXxvUIyFnrhjw>
 <xmx:FhKOaIXbJEGFB6MyMI6SEvkY_tAqtZmQdwpF1CyYAg0cU-whIhajXA>
 <xmx:FhKOaOXdPk75wbqe7BRIpcNiWjQWCtbKZe7Hw0Dw9yRuHK1wn0wJ9A>
 <xmx:FhKOaA4w1OKh4y5m73fZ4TocrIIXqTtdAsWzkrmS8EjZZidpBDEFUw>
 <xmx:HBKOaGfprgDP-C4pCZ_BqeXWMGw4oENfGJWvHSy-BbRaGSp473jMOr6M>
Feedback-ID: i80c9496c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 2 Aug 2025 09:26:45 -0400 (EDT)
Date: Sat, 2 Aug 2025 15:26:43 +0200
From: Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Message-ID: <20250802132643.GA1848717@ragnatech.se>
References: <20250802-media-private-data-v1-0-eb140ddd6a9d@ideasonboard.com>
 <20250802-media-private-data-v1-17-eb140ddd6a9d@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250802-media-private-data-v1-17-eb140ddd6a9d@ideasonboard.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Jacopo,
 Thanks for your effort tidying things up! On 2025-08-02
 11:22:39 +0200,
 Jacopo Mondi wrote: > The R-Car VIN driver sets file->private_data
 to the driver-specific > structure, but the following call to v4l2_fh_open()
 overwrites it > with a poi [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1uiCYx-0005OC-NW
X-Mailman-Approved-At: Sat, 02 Aug 2025 13:55:15 +0000
Subject: Re: [Mjpeg-users] [PATCH 17/65] media: rcar-vin: Do not set
 file->private_data
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
Cc: Heiko Stuebner <heiko@sntech.de>, Devarsh Thakkar <devarsht@ti.com>,
 Stanislaw Gruszka <stanislaw.gruszka@linux.intel.com>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Christian Gromm <christian.gromm@microchip.com>,
 Dmitry Osipenko <digetx@gmail.com>, linux-stm32@st-md-mailman.stormreply.com,
 Marek Szyprowski <m.szyprowski@samsung.com>, linux-samsung-soc@vger.kernel.org,
 Robert Foss <rfoss@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Samuel Holland <samuel@sholland.org>, Kevin Hilman <khilman@baylibre.com>,
 Jacob Chen <jacob-chen@iotwrt.com>, Steve Longerbeam <slongerbeam@gmail.com>,
 Bingbu Cao <bingbu.cao@intel.com>, linux-sunxi@lists.linux.dev,
 Sascha Hauer <s.hauer@pengutronix.de>,
 =?utf-8?Q?=C5=81ukasz?= Stelmach <l.stelmach@samsung.com>,
 Andrzej Pietrasiewicz <andrzejtp2010@gmail.com>,
 Nas Chung <nas.chung@chipsnmedia.com>, Andy Walls <awalls@md.metrocast.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, linux-usb@vger.kernel.org,
 Michael Tretter <m.tretter@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Ming Qian <ming.qian@nxp.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>, linux-doc@vger.kernel.org,
 Yunfei Dong <yunfei.dong@mediatek.com>, linux-kernel@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Yanteng Si <si.yanteng@linux.dev>,
 Magnus Damm <magnus.damm@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Dongliang Mu <dzm91@hust.edu.cn>,
 Fabien Dessenne <fabien.dessenne@foss.st.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Jerome Brunet <jbrunet@baylibre.com>, Tianshu Qiu <tian.shu.qiu@intel.com>,
 linux-media@vger.kernel.org, Paul Kocialkowski <paulk@sys-base.io>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-arm-msm@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Houlong Wei <houlong.wei@mediatek.com>, linux-amlogic@lists.infradead.org,
 Michal Simek <michal.simek@amd.com>, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <neil.armstrong@linaro.org>, Zhou Peng <eagle.zhou@nxp.com>,
 linux-renesas-soc@vger.kernel.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-mediatek@lists.infradead.org,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, imx@lists.linux.dev,
 Xavier Roumegue <xavier.roumegue@oss.nxp.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>, linux-tegra@vger.kernel.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Fabio Estevam <festevam@gmail.com>,
 Jean-Christophe Trotin <jean-christophe.trotin@foss.st.com>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Jonathan Corbet <corbet@lwn.net>, Mike Isely <isely@pobox.com>,
 Jackson Lee <jackson.lee@chipsnmedia.com>, linux-staging@lists.linux.dev,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Bin Liu <bin.liu@mediatek.com>,
 mjpeg-users@lists.sourceforge.net,
 Sylwester Nawrocki <sylvester.nawrocki@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Dikshita Agarwal <quic_dikshita@quicinc.com>, Tomasz Figa <tfiga@chromium.org>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Shawn Guo <shawnguo@kernel.org>,
 Hans de Goede <hansg@kernel.org>, Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Todor Tomov <todor.too@gmail.com>, Mirela Rabulea <mirela.rabulea@nxp.com>,
 Alex Shi <alexs@kernel.org>, Hugues Fruchet <hugues.fruchet@foss.st.com>,
 Corentin Labbe <clabbe@baylibre.com>,
 Mikhail Ulyanov <mikhail.ulyanov@cogentembedded.com>,
 Abhinav Kumar <abhinav.kumar@linux.dev>, Benoit Parrot <bparrot@ti.com>,
 Hans Verkuil <hverkuil@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Tiffany Lin <tiffany.lin@mediatek.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Parthiban Veerasooran <parthiban.veerasooran@microchip.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

SGkgSmFjb3BvLAoKVGhhbmtzIGZvciB5b3VyIGVmZm9ydCB0aWR5aW5nIHRoaW5ncyB1cCEKCk9u
IDIwMjUtMDgtMDIgMTE6MjI6MzkgKzAyMDAsIEphY29wbyBNb25kaSB3cm90ZToKPiBUaGUgUi1D
YXIgVklOIGRyaXZlciBzZXRzIGZpbGUtPnByaXZhdGVfZGF0YSB0byB0aGUgZHJpdmVyLXNwZWNp
ZmljCj4gc3RydWN0dXJlLCBidXQgdGhlIGZvbGxvd2luZyBjYWxsIHRvIHY0bDJfZmhfb3Blbigp
IG92ZXJ3cml0ZXMgaXQKPiB3aXRoIGEgcG9pbnRlciB0byB0aGUganVzdCBhbGxvY2F0ZWQgdjRs
Ml9maC4KPiAKPiBSZW1vdmUgdGhlIG1pcy1sZWFkaW5nIGFzc2lnbm1lbnQgaW4gdGhlIGRyaXZl
ci4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBKYWNvcG8gTW9uZGkgPGphY29wby5tb25kaUBpZGVhc29u
Ym9hcmQuY29tPgoKUmV2aWV3ZWQtYnk6IE5pa2xhcyBTw7ZkZXJsdW5kIDxuaWtsYXMuc29kZXJs
dW5kK3JlbmVzYXNAcmFnbmF0ZWNoLnNlPgoKPiAtLS0KPiAgZHJpdmVycy9tZWRpYS9wbGF0Zm9y
bS9yZW5lc2FzL3JjYXItdmluL3JjYXItdjRsMi5jIHwgMiAtLQo+ICAxIGZpbGUgY2hhbmdlZCwg
MiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9y
ZW5lc2FzL3JjYXItdmluL3JjYXItdjRsMi5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yZW5l
c2FzL3JjYXItdmluL3JjYXItdjRsMi5jCj4gaW5kZXggNjJlZGRmM2EzNWZjOTE0MzRjYjJlNTg0
YTAxODE5MzgwYTdhNmRkOC4uMDc5ZGJhZjAxNmMyNTEzOWUyYWM4MmJlNjNkOGZjZTBkMTFmZDIw
OCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JlbmVzYXMvcmNhci12aW4v
cmNhci12NGwyLmMKPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JlbmVzYXMvcmNhci12
aW4vcmNhci12NGwyLmMKPiBAQCAtNTg4LDggKzU4OCw2IEBAIHN0YXRpYyBpbnQgcnZpbl9vcGVu
KHN0cnVjdCBmaWxlICpmaWxlKQo+ICAJaWYgKHJldCkKPiAgCQlnb3RvIGVycl9wbTsKPiAgCj4g
LQlmaWxlLT5wcml2YXRlX2RhdGEgPSB2aW47Cj4gLQo+ICAJcmV0ID0gdjRsMl9maF9vcGVuKGZp
bGUpOwo+ICAJaWYgKHJldCkKPiAgCQlnb3RvIGVycl91bmxvY2s7Cj4gCj4gLS0gCj4gMi40OS4w
Cj4gCgotLSAKS2luZCBSZWdhcmRzLApOaWtsYXMgU8O2ZGVybHVuZAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk1qcGVnLXVzZXJzIG1haWxpbmcgbGlz
dApNanBlZy11c2Vyc0BsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vm
b3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vbWpwZWctdXNlcnMK
