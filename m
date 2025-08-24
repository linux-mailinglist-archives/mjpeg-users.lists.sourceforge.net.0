Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB61B34846
	for <lists+mjpeg-users@lfdr.de>; Mon, 25 Aug 2025 19:11:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:From:References:To:MIME-Version:Date:Message-ID:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j+r95bLNZq0w+b7YLJy6h1rG0l3YouCkOo8GwjbVgMU=; b=dzVKFsfO393gF6NdNrFlx4ocPy
	BMmoEF7tVlbPMp5U2rwZiNXlZHIkmH6AK4TMXOZX2MJz+8uii9WkC5D+yCEuTAeS8DL0v7pirctmH
	d7msYzGwsqBfgvgDDJYi8t5uG8VY7HpqTfFL+m0vPz5cSZ1WM9SCqmo5Sv6xb2MODq1w=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1uqajP-0006aV-1Z;
	Mon, 25 Aug 2025 17:11:43 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <vladimir.zapolskiy@linaro.org>) id 1uqG3v-0007jp-O9
 for mjpeg-users@lists.sourceforge.net;
 Sun, 24 Aug 2025 19:07:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kRFerQraihZIanmomm0IKhmbjfbkS3W8YtjfgYvp2fw=; b=ZV0+h9O/r+WLxRBK1UpT+FUx6v
 M0QniLttJVZy2081RP07qanI22jmH0qjrSx9MQDnG3FIb/+sbw3ckzzO9BDtplctQWiZf027uUOAW
 yYBITaAlU0eHYTfUrGEojlKxppwFptiJKsZUVMyn1Mp01zR5rP8c1Ly9/Kj3ezYhfLUA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kRFerQraihZIanmomm0IKhmbjfbkS3W8YtjfgYvp2fw=; b=ACdVquqKburS+Z2DaCvlm3rubM
 ysTUpjLgplLGcCiZEntorVRrulvW1g1FYDPDL8R5Y3HQK4rLYR3qCai5f5hniy/rMQnWIpSzyz22F
 jsqXoPU/ThTHyFtNKpfPwqlMMctnjOL9aVAFHGnUYN2yNt1qb46Y3P9mEcUR69kcJqfs=;
Received: from mail-lf1-f52.google.com ([209.85.167.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uqG3v-0000Fw-AW for mjpeg-users@lists.sourceforge.net;
 Sun, 24 Aug 2025 19:07:31 +0000
Received: by mail-lf1-f52.google.com with SMTP id
 2adb3069b0e04-55ce5221f0bso500025e87.1
 for <mjpeg-users@lists.sourceforge.net>; Sun, 24 Aug 2025 12:07:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1756062439; x=1756667239; darn=lists.sourceforge.net;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=kRFerQraihZIanmomm0IKhmbjfbkS3W8YtjfgYvp2fw=;
 b=i8QUn76iPCD3Xpiq2IslsPWAOvQEsaQ08qqa7BVRGqisQmF/fSyWLC8k9stlOxNae9
 U8kYIKFuyhBD9vPAfMM8lDvP+b+SrW9R/6csOhbu2utkKVAzDGXqp1cubMpLJNx+yEEu
 7cYnjwUc5GSQBd+laHn//8fC8ZV+V/d+A0xKZ6u/C3sljrFv7s+KYWJp+tn0huivYr1J
 jIsQXAFJXQmpT/rsRXGIQbg4oxBEgZ3tBbGskz+XX7KaqWOT3U40lO0bgdWGBpGzpgo1
 drosiePyURtbnqZd3zYIgnqozQQIHmEnOKQ4fNgiuqgFXzP0EUUOngU7kH1qPbAnx0cd
 Vw3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1756062439; x=1756667239;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=kRFerQraihZIanmomm0IKhmbjfbkS3W8YtjfgYvp2fw=;
 b=j2WtAgVLUptp1WAmgd3SqJtSn//uv6zYGfDdAFIkrfHYXPeEJ3u3xBDi+3U0vG2rQ/
 RcRSh411v6r20TC4dMQVFCo/J6MJRK4d/mWKAZnPpecx5VkQZ4fhWSS9//bEhNIEfCTk
 zg50N6KUmKU5L0aHthdPKGOHLHFC/4i2OYidkSZ99KRG7tPkN8FuemXNoDbeyvNauDCF
 0bKXLBc3myf87/WnJeUV2zpwzyG1BZy13RBEEk4BVjxDLmtZzSMFpsTfsVqLGswx4HnA
 tnW+9Qt0E+vwhlIrwqpNtbzVLIECcNgy/PO01izkKpwzNzRIvsWWHfIszaikZFI35EAp
 KMRA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXzNm7soHJRFentOyWcX7JHLECqgFLSHH5sG4/SjzZyndbyJHBcfgBYdr68c9PUEgrRZNILaSVvTowP5w==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxpKA5KRTPQlV7z42DJHDsPBh395ofA8d6rI6+sXuaRJKs5sMuy
 yubf8/mJP2WM483/sG8ONd76ssDEJfGL5aL42r6LIw1V5AQQyqUBV2l/mE6HSu3csVE=
X-Gm-Gg: ASbGncsw9z3h8BDQZql1jdAaRtcax4vneGyNjMw4EoGi9+IJHDtwBFGlxJH9Twulfq1
 /q6kTC9DBj2q/zcyG1awe1M+hCbFRE3WEOFo4u9oCIX+t8HOi6fyU5DTjzy4F133FWXa+kze9yV
 NN7FYfK3mYSipSmjlBBNpw6rNyzyk9DsRuHBjR31PmQFufzJCJhCD58dQU/HYpFDYy/AKTw8YBY
 TY/oc1ssrFWtXqp86wIq+P4AWrUz7bf8UDbOB+tQ1ZMXIg+mzRyAkE4Et/n2sAo6X6yTtkZlvZy
 S8JopW9Xerl3rdp8Y0DIuCRXmHLGckhjUS6xTWOhHUuA74Tik7zP9jdu+JzsL21c23VyL+Rpt1i
 8C20EbNxPXzxhZKZ6QYbIW/i2FA7wFoafG7bd3z2pyebwPCNV5uFgL2wLrRehmJJ135Tz78tA7d
 d0hQsw58hAnuU=
X-Google-Smtp-Source: AGHT+IH13MoxmrDQetMznYo3yow5OENe/3UHzqm8TZjVRtSQjRA+4ERWWZasIRoFRuhqFpxTrCVdqA==
X-Received: by 2002:a05:6512:2391:b0:55f:44eb:ea92 with SMTP id
 2adb3069b0e04-55f44ebec0cmr134730e87.7.1756062439301; 
 Sun, 24 Aug 2025 12:07:19 -0700 (PDT)
Received: from [192.168.1.100] (88-112-128-43.elisa-laajakaista.fi.
 [88.112.128.43]) by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-55f35ca6713sm1206429e87.136.2025.08.24.12.07.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 24 Aug 2025 12:07:18 -0700 (PDT)
Message-ID: <b4221eca-7977-47b3-a563-f392d7dafb8b@linaro.org>
Date: Sun, 24 Aug 2025 22:07:16 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: ru-RU
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Devarsh Thakkar
 <devarsht@ti.com>, Benoit Parrot <bparrot@ti.com>,
 Hans Verkuil <hverkuil@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans de Goede <hansg@kernel.org>,
 Parthiban Veerasooran <parthiban.veerasooran@microchip.com>,
 Christian Gromm <christian.gromm@microchip.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Alex Shi
 <alexs@kernel.org>, Yanteng Si <si.yanteng@linux.dev>,
 Jonathan Corbet <corbet@lwn.net>, Tomasz Figa <tfiga@chromium.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Andy Walls <awalls@md.metrocast.net>,
 Michael Tretter <m.tretter@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Bin Liu <bin.liu@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Dmitry Osipenko <digetx@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>,
 Mirela Rabulea <mirela.rabulea@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Michal Simek <michal.simek@amd.com>, Ming Qian <ming.qian@nxp.com>,
 Zhou Peng <eagle.zhou@nxp.com>, Xavier Roumegue
 <xavier.roumegue@oss.nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Dikshita Agarwal <quic_dikshita@quicinc.com>,
 Abhinav Kumar <abhinav.kumar@linux.dev>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Sylwester Nawrocki <sylvester.nawrocki@gmail.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Samuel Holland <samuel@sholland.org>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Nas Chung <nas.chung@chipsnmedia.com>,
 Jackson Lee <jackson.lee@chipsnmedia.com>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
 Houlong Wei <houlong.wei@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Tiffany Lin <tiffany.lin@mediatek.com>,
 Yunfei Dong <yunfei.dong@mediatek.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>,
 Mikhail Ulyanov <mikhail.ulyanov@cogentembedded.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Heiko Stuebner <heiko@sntech.de>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar
 <alim.akhtar@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>,
 =?UTF-8?Q?=C5=81ukasz_Stelmach?= <l.stelmach@samsung.com>,
 Andrzej Pietrasiewicz <andrzejtp2010@gmail.com>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Fabien Dessenne <fabien.dessenne@foss.st.com>,
 Jean-Christophe Trotin <jean-christophe.trotin@foss.st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Steve Longerbeam <slongerbeam@gmail.com>, Maxime Ripard
 <mripard@kernel.org>, =?UTF-8?Q?Niklas_S=C3=B6derlund?=
 <niklas.soderlund@ragnatech.se>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Corentin Labbe <clabbe@baylibre.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Bingbu Cao <bingbu.cao@intel.com>,
 Stanislaw Gruszka <stanislaw.gruszka@linux.intel.com>
References: <20250802-media-private-data-v1-0-eb140ddd6a9d@ideasonboard.com>
 <20250802-media-private-data-v1-20-eb140ddd6a9d@ideasonboard.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20250802-media-private-data-v1-20-eb140ddd6a9d@ideasonboard.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Jacopo, thank you for the change! On 8/2/25 12:22, Jacopo
 Mondi wrote: > The 'file->private_data' pointer is reset in the
 vb2_fop_release()
 > call path. For this reason a custom handler for the .release > file
 operation is not needed [...] 
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
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.52 listed in wl.mailspike.net]
X-Headers-End: 1uqG3v-0000Fw-AW
X-Mailman-Approved-At: Mon, 25 Aug 2025 17:11:41 +0000
Subject: Re: [Mjpeg-users] [PATCH 20/65] media: camss: Remove custom
 .release fop()
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
Cc: imx@lists.linux.dev, linux-samsung-soc@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 mjpeg-users@lists.sourceforge.net, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-usb@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-tegra@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

Hi Jacopo,

thank you for the change!

On 8/2/25 12:22, Jacopo Mondi wrote:
> The 'file->private_data' pointer is reset in the vb2_fop_release()
> call path. For this reason a custom handler for the .release
> file operation is not needed and the driver can use
> vb2_fop_release() directly.
> 
> Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>

Tested-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

-- 
Best wishes,
Vladimir


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
