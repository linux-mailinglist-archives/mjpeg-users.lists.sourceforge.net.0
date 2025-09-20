Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A793BB8D799
	for <lists+mjpeg-users@lfdr.de>; Sun, 21 Sep 2025 10:37:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FaJj+NBhTtYONdgHQhbOjzXZpctTqmWjQgGWtgcg/ZA=; b=YGOhL+RBWsOiZB5O6CWbLdZ0KX
	l9FlIFfJFjRYKS6jkv8lAN9MoOIkCFv5sZsAjZR7QJIKr4m3Q7m7UT5xTxIhbQpvI3sqUoFu3gDU+
	Ipo3KJdKeiMFUw8VPEq9KUIkbzQ/GlTPojIEQYb/cSEEKCKqxQGHZhAm1v+dYCduqHdE=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1v0FYz-0004MP-Fu;
	Sun, 21 Sep 2025 08:36:53 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andy.shevchenko@gmail.com>) id 1uzv9x-0002vE-IM
 for mjpeg-users@lists.sourceforge.net;
 Sat, 20 Sep 2025 10:49:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QJc0EGzS/+BK6QuDuFmI2nY7ewfLLXuJxl0wU299He8=; b=RaqvebF0i53DEUALi+cYUOfBtI
 eheHsw/9m+4VxEwWT6K2zI4uDO/vkdLhKRhQvc+tScxyJcF9ajjwUFdS8tT1hvyQQ1HkL4TytfDr3
 US3tiM/PJUf9b6xDykfLsydb5CN/IH6jgbjP3X9HcevTkkxOkpxmxNvTaAx1ZB8br/vA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QJc0EGzS/+BK6QuDuFmI2nY7ewfLLXuJxl0wU299He8=; b=F61dJ7v8fGxMRviHEelgxY0oxe
 PgTb+ISJq431hVYDJAuOebb0e855hj9IH1tQvmF9Basz6vZBU106c0NtNV6o+xx3ca1BctjM3v16T
 25fhfjlNopcAPgHiiO0NAMx9uUzRB8NTHnTibwrscLC4srnZQ/Z/zWK3x+R67ISoJVe0=;
Received: from mail-ej1-f48.google.com ([209.85.218.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uzv9w-0005Kv-SP for mjpeg-users@lists.sourceforge.net;
 Sat, 20 Sep 2025 10:49:41 +0000
Received: by mail-ej1-f48.google.com with SMTP id
 a640c23a62f3a-b2381c58941so345842166b.1
 for <mjpeg-users@lists.sourceforge.net>; Sat, 20 Sep 2025 03:49:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1758365374; x=1758970174; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=QJc0EGzS/+BK6QuDuFmI2nY7ewfLLXuJxl0wU299He8=;
 b=feEU6FNTo9vQVKJYq93XWh8607ntLMrdh9NpE92bwDvekYKd9+wzWPJ/jO0nzMdT5W
 P46ydqQ281rn6Mv0avM3LsUF3YnZaICQ0zGXGxlwuB5VaTKVmw+o1CC8mJc5sHtdmX8a
 9J1xbb9f5sLvWwUig8DIeOsG/igIQE5dmuYXU+FaoKE2hO33TbL9Pwd+JBpeRY7Qt/MO
 774VEyNPi0of3hYHwX3T9Y19ZAGs/R963tWk/F35UewTpxDNvqHdaTNZwgQeZvWtpEbN
 htlxdV5KlBrT0+taAcI1KqH3Jfrny5W54bOv22vxVU5Sj90Lz0yh7xV4INKtprpIOPeD
 lL0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758365374; x=1758970174;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=QJc0EGzS/+BK6QuDuFmI2nY7ewfLLXuJxl0wU299He8=;
 b=TfD6aKgzFK44XsnERXc49UHGlwKkO1KGhoNoS1OmCpT6NQ/At9k0BWJPqcKh81wugz
 da0iMwSKOPvnkkBFwsw0z9xEDEfleJ85I2xAntzc7/50aDbxDFEZD+TRKUc2FlmiwkI6
 VBtyvd30Z7rnsB+lag5ffPtohnj2iR+dV3W+hWVuQqWZScZdk1iLbTUZwwf0uL/XPUZX
 JJdHZA2zEbhdzACFvP6tpnHOVwdgLWSWP5JBaImCrXyBZebJGyK4BEX3ScLs5pWQRm7/
 imuJxBVFtWsljrbjbTIK7MdQvqcC6A7qSJQHZw5yuCPF/SFHURlfsc9Xj7nhRQP/d8SJ
 GmYQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXIxS1Z8gnE/RrxSzn81DteXMCK6z/u0ZghFGB8RtZpdgSlFzzlyK+zry8cayTKtrA5lH+Gnd13FseNqw==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwPVptTDw/8/zNmmc/jvUiGKxn+Gt3XjccS+xHtSBxacCwknTWu
 KyWH2BgaP39cErxMijtNqVbQU5jVBLlBY/m76sl6YfW0K3Hyui7lYd+uPy2X3txRpRwnD/8WQ9h
 4gbSBZu1m9az0MLb62CAFxe/Wvpdg/LI=
X-Gm-Gg: ASbGnctzxMi6/X67k89La5+239YzQx5dGFiJ1AqTvRe/rDQ7xr8PcRYtcv4ye8syEWB
 flhlh0i5eMLzTNYoNMQsc+CZYGmyQZ2ntWsFQttGjT4YVtY/q7jhvUPIjiXvlvyYHjTAbqKPRyJ
 vVeUIftm6rmclBsWBYfUr3eTQOVdl3uHZ8FSuLDUGUOp96HCwi7iA0YdeUXeMikuey1atc7Zyuw
 JdquBo=
X-Google-Smtp-Source: AGHT+IHHbhBTYGUaEQMbVjyA0lAj2luPxy2XsbzoJZ2rvsPEEjKDVfN8Ekg2zTb0h70UHa/ky/mxQ7DHX1RPk/WuHD8=
X-Received: by 2002:a17:907:2d86:b0:afe:f418:2294 with SMTP id
 a640c23a62f3a-b24f4cd1612mr662812666b.49.1758365373591; Sat, 20 Sep 2025
 03:49:33 -0700 (PDT)
MIME-Version: 1.0
References: <20250919-vdev-state-v2-0-b2c42426965c@ideasonboard.com>
In-Reply-To: <20250919-vdev-state-v2-0-b2c42426965c@ideasonboard.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sat, 20 Sep 2025 13:48:57 +0300
X-Gm-Features: AS18NWAsgghzm2kBTHVAUWgTvM4Rjv6fz5BEJyNeWi6WNSHflPsd2h04LFjYcyQ
Message-ID: <CAHp75Vfx9kyP-rVtfvyyMK4VH+oiRVjP1fZOtbVH14iLh98Jxw@mail.gmail.com>
To: Jai Luthra <jai.luthra@ideasonboard.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Sep 19, 2025 at 12:57 PM Jai Luthra wrote: > > Hi,
 > > This patch series introduces state management for video devices. > >
 Currently, V4L2 subdevices have a well-established state managemen [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [andy.shevchenko(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.218.48 listed in wl.mailspike.net]
X-Headers-End: 1uzv9w-0005Kv-SP
X-Mailman-Approved-At: Sun, 21 Sep 2025 08:36:52 +0000
Subject: Re: [Mjpeg-users] [PATCH v2 00/10] media: Introduce video device
 state management
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
Cc: Maxime Ripard <mripard@kernel.org>, Plamen Atanasov <tigerment@mail.bg>,
 Heiko Stuebner <heiko@sntech.de>, Devarsh Thakkar <devarsht@ti.com>,
 Eddie James <eajames@linux.ibm.com>, Alim Akhtar <alim.akhtar@samsung.com>,
 Christian Gromm <christian.gromm@microchip.com>,
 Dmitry Osipenko <digetx@gmail.com>,
 Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Nikita Yushchenko <nikita.yoush@cogentembedded.com>,
 Michael Grzeschik <m.grzeschik@pengutronix.de>, Robert Foss <rfoss@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
 Jacob Chen <jacob-chen@iotwrt.com>,
 Yemike Abhilash Chandra <y-abhilashchandra@ti.com>,
 Bingbu Cao <bingbu.cao@intel.com>,
 Andrew Jeffery <andrew@codeconstruct.com.au>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>, linux-sunxi@lists.linux.dev,
 linux-tegra@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 =?UTF-8?Q?=C5=81ukasz_Stelmach?= <l.stelmach@samsung.com>,
 Al Viro <viro@zeniv.linux.org.uk>, Shuah Khan <skhan@linuxfoundation.org>,
 Andrzej Pietrasiewicz <andrzejtp2010@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Nas Chung <nas.chung@chipsnmedia.com>,
 Andy Shevchenko <andy@kernel.org>, Andy Walls <awalls@md.metrocast.net>,
 Scott Branden <sbranden@broadcom.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, linux-usb@vger.kernel.org,
 Michael Tretter <m.tretter@pengutronix.de>,
 Jack Zhu <jack.zhu@starfivetech.com>,
 Sowjanya Komatineni <skomatineni@nvidia.com>,
 Jai Luthra <jai.luthra@linux.dev>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Changhuang Liang <changhuang.liang@starfivetech.com>,
 Ming Qian <ming.qian@nxp.com>, Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>, linux-aspeed@lists.ozlabs.org,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, linux-kernel@vger.kernel.org,
 Matt Ranostay <matt@ranostay.sg>, "Lad,
 Prabhakar" <prabhakar.csengg@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Ariel Otilibili <ariel.otilibili-anieli@eurecom.fr>, kernel@collabora.com,
 Ingo Molnar <mingo@kernel.org>, Matthew Majewski <mattwmajewski@gmail.com>,
 Magnus Damm <magnus.damm@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org,
 Fabien Dessenne <fabien.dessenne@foss.st.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Alain Volmat <alain.volmat@foss.st.com>,
 Daniel Scally <dan.scally+renesas@ideasonboard.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Tianshu Qiu <tian.shu.qiu@intel.com>,
 linux-media@vger.kernel.org, Joseph Liu <kwliu@nuvoton.com>,
 Parthiban Veerasooran <parthiban.veerasooran@microchip.com>,
 Paul Kocialkowski <paulk@sys-base.io>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-arm-msm@vger.kernel.org, Houlong Wei <houlong.wei@mediatek.com>,
 linux-input@vger.kernel.org, Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
 Biju Das <biju.das.jz@bp.renesas.com>, linux-amlogic@lists.infradead.org,
 Michal Simek <michal.simek@amd.com>, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <neil.armstrong@linaro.org>,
 linux-rpi-kernel@lists.infradead.org, Zhou Peng <eagle.zhou@nxp.com>,
 Chen Ni <nichen@iscas.ac.cn>, Samuel Holland <samuel@sholland.org>,
 linux-renesas-soc@vger.kernel.org,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stefan Wahren <wahrenst@gmx.net>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Marvin Lin <kflin@nuvoton.com>, Jacek Anaszewski <jacek.anaszewski@gmail.com>,
 imx@lists.linux.dev, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Dafna Hirschfeld <dafna@fastmail.com>,
 "Everest K.C." <everestkc@everestkc.com.np>,
 Xavier Roumegue <xavier.roumegue@oss.nxp.com>,
 Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
 Bluecherry Maintainers <maintainers@bluecherrydvr.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Fabio Estevam <festevam@gmail.com>,
 Jean-Christophe Trotin <jean-christophe.trotin@foss.st.com>,
 Andrey Utkin <andrey_utkin@fastmail.com>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Mike Isely <isely@pobox.com>, Jackson Lee <jackson.lee@chipsnmedia.com>,
 linux-staging@lists.linux.dev, Krzysztof Kozlowski <krzk@kernel.org>,
 linux-samsung-soc@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
 Joel Stanley <joel@jms.id.au>, Yunfei Dong <yunfei.dong@mediatek.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Bin Liu <bin.liu@mediatek.com>,
 Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
 Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
 Ray Jui <rjui@broadcom.com>, Steve Longerbeam <slongerbeam@gmail.com>,
 Akash Kumar <quic_akakum@quicinc.com>, Mark Brown <broonie@kernel.org>,
 Eugen Hristev <eugen.hristev@linaro.org>,
 Martin Kepplinger <martink@posteo.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Yunseong Kim <ysk@kzalloc.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, Tomasz Figa <tfiga@chromium.org>,
 Dan Scally <djrscally@gmail.com>, Sean Young <sean@mess.org>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Ricardo Ribalda <ribalda@chromium.org>,
 Martin Tuma <martin.tuma@digiteqautomotive.com>,
 Shawn Guo <shawnguo@kernel.org>, Hans de Goede <hansg@kernel.org>,
 Ludwig Disterhof <ludwig@disterhof.eu>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>, Nick Dyer <nick@shmanahar.org>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Todor Tomov <todor.too@gmail.com>, Mirela Rabulea <mirela.rabulea@nxp.com>,
 Jiasheng Jiang <jiashengjiangcool@gmail.com>,
 Fabio Luongo <f.langufo.l@gmail.com>, Alexey Klimov <alexey.klimov@linaro.org>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Hugues Fruchet <hugues.fruchet@foss.st.com>, openbmc@lists.ozlabs.org,
 linux-mediatek@lists.infradead.org, Yang Yingliang <yangyingliang@huawei.com>,
 Michael Krufky <mkrufky@linuxtv.org>, Corentin Labbe <clabbe@baylibre.com>,
 Ismael Luceno <ismael@iodev.co.uk>, Yong Zhi <yong.zhi@intel.com>,
 "Dr. David Alan Gilbert" <linux@treblig.org>, Ma Ke <make24@iscas.ac.cn>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Abhinav Kumar <abhinav.kumar@linux.dev>,
 Eduardo Valentin <edubezval@gmail.com>, Rui Miguel Silva <rmfrfs@gmail.com>,
 Hans Verkuil <hverkuil@kernel.org>, Yong Deng <yong.deng@magewell.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Tiffany Lin <tiffany.lin@mediatek.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Purism Kernel Team <kernel@puri.sm>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, mjpeg-users@lists.sourceforge.net,
 Philipp Zabel <p.zabel@pengutronix.de>,
 =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 Keke Li <keke.li@amlogic.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

T24gRnJpLCBTZXAgMTksIDIwMjUgYXQgMTI6NTfigK9QTSBKYWkgTHV0aHJhIDxqYWkubHV0aHJh
QGlkZWFzb25ib2FyZC5jb20+IHdyb3RlOgo+Cj4gSGksCj4KPiBUaGlzIHBhdGNoIHNlcmllcyBp
bnRyb2R1Y2VzIHN0YXRlIG1hbmFnZW1lbnQgZm9yIHZpZGVvIGRldmljZXMuCj4KPiBDdXJyZW50
bHksIFY0TDIgc3ViZGV2aWNlcyBoYXZlIGEgd2VsbC1lc3RhYmxpc2hlZCBzdGF0ZSBtYW5hZ2Vt
ZW50Cj4gc3lzdGVtIFsxXSB0aGF0IGFsbG93cyB0aGUgZnJhbWV3b3JrIHRvIHN0b3JlIHRoZSBz
dWJkZXZpY2Ugc3RhdGUKPiBhdCBhIGNlbnRyYWwgbG9jYXRpb24uCj4KPiBWaWRlbyBkZXZpY2Vz
IGhvd2V2ZXIgbGFjayB0aGlzLCBsZWFkaW5nIHRvIGluY29uc2lzdGVudCBzdGF0ZSBoYW5kbGlu
Zwo+IGFjcm9zcyBkcml2ZXJzIGFuZCBtYWtpbmcgaXQgZGlmZmljdWx0IHRvIGltcGxlbWVudCBm
ZWF0dXJlcyBsaWtlCj4gaGFyZHdhcmUgbXVsdGlwbGV4aW5nIGluIGNvbXBsZXggbWVkaWEgcGlw
ZWxpbmVzIFsyXS4KPgo+IFRoZSBzZXJpZXMgaXMgY29tcG9zZWQgb2YgdGhyZWUgcGFydHM6Cj4K
PiAtIENvcmUgSW5mcmFzdHJ1Y3R1cmUgKFBBVENIIDEtNCkKPiAgICAgICAgIEludHJvZHVjZXMg
dGhlIGJhc2ljIHN0YXRlIHN0cnVjdHVyZSwgdHJ5IHN0YXRlIHN1cHBvcnQsCj4gICAgICAgICBp
bml0aWFsaXphdGlvbiBjYWxsYmFja3MsIGFuZCBkcml2ZXIgaGVscGVycwo+IC0gRnJhbWV3b3Jr
IEludGVncmF0aW9uIChQQVRDSCA1LTcpCj4gICAgICAgICBJbnRlZ3JhdGVzIHN0YXRlIHBhc3Np
bmcgdGhyb3VnaCB0aGUgaW9jdGwgd3JhcHBlcnMgYW5kIGRyaXZlcgo+ICAgICAgICAgaW1wbGVt
ZW50YXRpb25zCj4gLSBEcml2ZXIgRXhhbXBsZXMgKFBBVENIIDgtMTApCj4gICAgICAgICBVc2Ug
dGhlIHN0YXRlIHRvIHN0b3JlIGZvcm1hdHMgaW4gVEkgSjcyMUUgQ1NJMlJYIGFuZCBSb2NrY2hp
cAo+ICAgICAgICAgUktJU1AxIGRyaXZlcnMKPgo+IFRoaXMgc2hvdWxkIGFsc28gcHJvdmlkZSBh
IGZvdW5kYXRpb24gZm9yIGRyaXZlcnMgdG8gZXh0ZW5kIG9yIHN1YmNsYXNzCj4gdGhlIHN0YXRl
IHN0cnVjdHVyZSB3aXRoIGRldmljZS1zcGVjaWZpYyB2YXJpYWJsZXMgaW4gZnV0dXJlLgo+Cj4g
SSBoYXZlIHRlc3RlZCBjYXB0dXJlIGFuZCBmb3JtYXQgbmVnb3RpYXRpb24gd2l0aCB0aGUgY29u
dmVydGVkIGRyaXZlcnMKPiBvbiBTSyBBTTYyQSAoajcyMWUtY3NpMnJ4KSBhbmQgRGViaXggTW9k
ZWwgQSAocmtpc3AxKS4KPgo+IFsxXTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtbWVk
aWEvMjAyMTA2MTAxNDU2MDYuMzQ2ODIzNS0xLXRvbWkudmFsa2VpbmVuQGlkZWFzb25ib2FyZC5j
b20vCj4gWzJdOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1tZWRpYS8yMDI1MDcyNC1t
dWx0aWNvbnRleHQtbWFpbmxpbmUtMjAyNS12Mi0wLWM5YjMxNjc3MzQ4NkBpZGVhc29uYm9hcmQu
Y29tLwoKV2hlbiB5b3UgYWRkIGEgQ2MgbGlzdC4sIGRvIGl0IGFmdGVyIHRoZSAnLS0tJyAodGhy
ZWUgbWludXMgc2lnbnMpCmxpbmUsIG90aGVyd2lzZSB0aGF0IGh1Z2UgdW5uZWVkZWQgbm9pc2Ug
d2lsbCBiZWNvbWUgcGFydCBvZiB0aGUKY29tbWl0IG1lc3NhZ2UuCgoKLS0gCldpdGggQmVzdCBS
ZWdhcmRzLApBbmR5IFNoZXZjaGVua28KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpNanBlZy11c2VycyBtYWlsaW5nIGxpc3QKTWpwZWctdXNlcnNAbGlz
dHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xp
c3RpbmZvL21qcGVnLXVzZXJzCg==
