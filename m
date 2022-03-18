Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2BA4DE601
	for <lists+mjpeg-users@lfdr.de>; Sat, 19 Mar 2022 05:46:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1nVQzA-0007Id-9X; Sat, 19 Mar 2022 04:46:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <skhan@linuxfoundation.org>) id 1nVKTs-00007V-B3
 for mjpeg-users@lists.sourceforge.net; Fri, 18 Mar 2022 21:58:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oNAPpR+5qx5bHO8wJ1SIgWig3LUKuwuqLo641jvFAak=; b=kF8+hOcqh+PshFFtQ6GKrYnVJZ
 RL64dWGAKPyE1k2NynmQA3aTCm+rllBr/+Jy+SnxzCTELMuqyn2VSIPLK3naIqkTwKBw2OeahKWuv
 RAKaj+fwEma9XDlyidYUH8O7ZheaMs3v4w2oD9XrK44oQiJhv3eBaJmEBHn2MorQIm+A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oNAPpR+5qx5bHO8wJ1SIgWig3LUKuwuqLo641jvFAak=; b=YuAw1mnvk4ASSxmdngxYMjXVlf
 AF1enazNwtogpZS6A5L8fOHMALQC00NWm6UTfpvCzUvLTKX8eSSn2+yiAw4eaNQX47Eq18fwX2SxB
 2Rbl324qH7YSD14LcqcUjeRubj5wcO0hOlOEzwB28J4IBY1DIcgG3CJW5ddeI1Z3dr1U=;
Received: from mail-pf1-f182.google.com ([209.85.210.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nVKbg-0008Q9-Gt
 for mjpeg-users@lists.sourceforge.net; Fri, 18 Mar 2022 21:58:07 +0000
Received: by mail-pf1-f182.google.com with SMTP id p5so4481159pfo.5
 for <mjpeg-users@lists.sourceforge.net>; Fri, 18 Mar 2022 14:58:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=oNAPpR+5qx5bHO8wJ1SIgWig3LUKuwuqLo641jvFAak=;
 b=R3B03hXdzmRL4FMHavxss76+tb9Q0Hy78NbdGoHIgmWRsuIfciGr2JWywHMf/Kpkhf
 QniqntLtfhiE8E3Wo0oxTFcS1KWerJtG5tNgnrk3j2xUiX43wMMg+/mjp1wKd5A4aRIu
 ErIGjgvdava6sQlmLmDCO8Qr2P9RfzXvczFjE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=oNAPpR+5qx5bHO8wJ1SIgWig3LUKuwuqLo641jvFAak=;
 b=RTqJHDDuV1iOHjJoqAaIPpO26iS+MpFezdWO5LWGTXDltd4wD4hE5YedJhNybGtyyp
 Zl2uQMxIFE6Ze+FSQhUmMNZiH0zAVh/3RYTP07wVlSEHFHmTHDhOdschTIjJIZBWwkoX
 3w3RQot+nFEthjmbb016YuvMZs6BHlgJwu+UP/m1Ts+WTDCJS/4N0LgZOlgS2g/QM0l/
 IjRVUGVYqBwCyon5IpVp8j5trhe4JTFxsJLHwI/x5X5FYBKwIN0kgkfiaGKlh6USEBgr
 ehyETp6LA0YConYrHQPKYQRJ/ge+9+rpDwQ0QYgYAFW71Mm9Wo2ymGq7XkIr7UvIjPNt
 hBbQ==
X-Gm-Message-State: AOAM531Yaav8jVWFIUeXVaxC/7m8+KZb/jkk9uPMbsZfblg7BU2N9hX7
 DkPP6lhaqtOZaErPKecIlNDJdiQukNezhVds
X-Google-Smtp-Source: ABdhPJw+g6qtXnLujFKVRv55AGvVhZcbGPndogV4eznqetPdpLwXYueCN6beIFsP8OoV/l235xaSaw==
X-Received: by 2002:a5d:9542:0:b0:648:f92b:7bc6 with SMTP id
 a2-20020a5d9542000000b00648f92b7bc6mr5223132ios.73.1647637149068; 
 Fri, 18 Mar 2022 13:59:09 -0700 (PDT)
Received: from [192.168.1.128] ([71.205.29.0])
 by smtp.gmail.com with ESMTPSA id
 d14-20020a056602328e00b006494aa126c2sm3528385ioz.11.2022.03.18.13.59.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 18 Mar 2022 13:59:08 -0700 (PDT)
To: Mauro Carvalho Chehab <mchehab@kernel.org>
References: <cover.1647242578.git.mchehab@kernel.org>
 <decd26e90adc5c16470e4f738810f22fe6478b27.1647242579.git.mchehab@kernel.org>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <9e02d88a-3344-8d91-c652-72cb989506de@linuxfoundation.org>
Date: Fri, 18 Mar 2022 14:59:05 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <decd26e90adc5c16470e4f738810f22fe6478b27.1647242579.git.mchehab@kernel.org>
Content-Language: en-US
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 3/14/22 1:55 AM,
 Mauro Carvalho Chehab wrote: > media Kconfig
 has two entries associated to V4L API: > VIDEO_DEV and VIDEO_V4L2. > > On
 Kernel 2.6.x, there were two V4L APIs, each one with its own [...] 
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.182 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.182 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nVKbg-0008Q9-Gt
X-Mailman-Approved-At: Sat, 19 Mar 2022 04:46:38 +0000
Subject: Re: [Mjpeg-users] [PATCH 64/64] media: Kconfig: cleanup VIDEO_DEV
 dependencies
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Jaroslav Kysela <perex@perex.cz>,
 Hans Verkuil <hverkuil@xs4all.nl>, Pavel Machek <pavel@ucw.cz>,
 linux-stm32@st-md-mailman.stormreply.com, Jerome Brunet <jbrunet@baylibre.com>,
 Michael Grzeschik <m.grzeschik@pengutronix.de>, Joe Hung <joe_hung@ilitek.com>,
 Michal Simek <michal.simek@xilinx.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Jacob Chen <jacob-chen@iotwrt.com>, NXP Linux Team <linux-imx@nxp.com>,
 Steve Longerbeam <slongerbeam@gmail.com>, Jeff LaBundy <jeff@labundy.com>,
 linux-sunxi@lists.linux.dev, Nicolas Saenz Julienne <nsaenz@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Shuah Khan <skhan@linuxfoundation.org>,
 Hyun Kwon <hyun.kwon@xilinx.com>, Scott Branden <sbranden@broadcom.com>,
 Heungjun Kim <riverful.kim@samsung.com>, Randy Dunlap <rdunlap@infradead.org>,
 Michael Tretter <m.tretter@pengutronix.de>,
 Sowjanya Komatineni <skomatineni@nvidia.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Giulio Benetti <giulio.benetti@benettiengineering.com>,
 Ming Qian <ming.qian@nxp.com>, alsa-devel@alsa-project.org,
 linux-usb@vger.kernel.org, Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Tianshu Qiu <tian.shu.qiu@intel.com>, linux-media@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-arm-msm@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 linux-samsung-soc@vger.kernel.org, Houlong Wei <houlong.wei@mediatek.com>,
 linux-amlogic@lists.infradead.org, Mike Isely <isely@pobox.com>,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 Zhou Peng <eagle.zhou@nxp.com>, linux-renesas-soc@vger.kernel.org,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, Sean Young <sean@mess.org>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Stanimir Varbanov <stanimir.varbanov@linaro.org>, linux-tegra@vger.kernel.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Fabio Estevam <festevam@gmail.com>,
 Jean-Christophe Trotin <jean-christophe.trotin@foss.st.com>,
 Florian Fainelli <f.fainelli@gmail.com>, linux-staging@lists.linux.dev,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Shijie Qin <shijie.qin@nxp.com>,
 bcm-kernel-feedback-list@broadcom.com, Joel Stanley <joel@jms.id.au>,
 linux-input@vger.kernel.org, Ray Jui <rjui@broadcom.com>,
 mjpeg-users@lists.sourceforge.net, Vincent Knecht <vincent.knecht@mailoo.org>,
 Felipe Balbi <balbi@kernel.org>,
 Martina Krasteva <martinax.krasteva@intel.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Shawn Guo <shawnguo@kernel.org>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>, Todor Tomov <todor.too@gmail.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Mirela Rabulea <mirela.rabulea@nxp.com>, Olivier Lorin <o.lorin@laposte.net>,
 Marek Vasut <marex@denx.de>, Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Rick Chang <rick.chang@mediatek.com>,
 Hugues Fruchet <hugues.fruchet@foss.st.com>, openbmc@lists.ozlabs.org,
 Yong Zhi <yong.zhi@intel.com>, Shawn Tu <shawnx.tu@intel.com>,
 linux-mediatek@lists.infradead.org, Yong Deng <yong.deng@magewell.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Tiffany Lin <tiffany.lin@mediatek.com>, Takashi Iwai <tiwai@suse.com>,
 Robert Foss <robert.foss@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

On 3/14/22 1:55 AM, Mauro Carvalho Chehab wrote:
> media Kconfig has two entries associated to V4L API:
> VIDEO_DEV and VIDEO_V4L2.
> 
> On Kernel 2.6.x, there were two V4L APIs, each one with its own flag.
> VIDEO_DEV were meant to:
> 	1) enable Video4Linux and make its Kconfig options to appear;
> 	2) it makes the Kernel build the V4L core.
> 
> while VIDEO_V4L2 where used to distinguish between drivers that
> implement the newer API and drivers that implemented the former one.
> 
> With time, such meaning changed, specially after the removal of
> all V4L version 1 drivers.
> 
> At the current implementation, VIDEO_DEV only does (1): it enables
> the media options related to V4L, that now has:
> 
> 	menu "Video4Linux options"
> 		visible if VIDEO_DEV
> 
> 	source "drivers/media/v4l2-core/Kconfig"
> 	endmenu
> 
> but it doesn't affect anymore the V4L core drivers.
> 
> The rationale is that the V4L2 core has a "soft" dependency
> at the I2C bus, and now requires to select a number of other
> Kconfig options:
> 
> 	config VIDEO_V4L2
> 		tristate
> 		depends on (I2C || I2C=n) && VIDEO_DEV
> 		select RATIONAL
> 		select VIDEOBUF2_V4L2 if VIDEOBUF2_CORE
> 		default (I2C || I2C=n) && VIDEO_DEV
> 
> In the past, merging them would be tricky, but it seems that it is now
> possible to merge those symbols, in order to simplify V4L dependencies.
> 
> Let's keep VIDEO_DEV, as this one is used on some make *defconfig
> configurations.
> 
> Suggested-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
> ---
> 

>   drivers/media/test-drivers/vicodec/Kconfig    |   2 +-
>   drivers/media/test-drivers/vimc/Kconfig       |   2 +-
>   drivers/media/test-drivers/vivid/Kconfig      |   2 +-
>

For vimc change: (trimmed the recipient list to send response)

Acked-by: Shuah Khan <skhan@linuxfoundation.org>

thanks,
-- Shuah





_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
