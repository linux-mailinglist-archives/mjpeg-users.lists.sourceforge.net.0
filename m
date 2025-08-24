Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D52BB34845
	for <lists+mjpeg-users@lfdr.de>; Mon, 25 Aug 2025 19:11:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:From:References:To:MIME-Version:Date:Message-ID:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=p2zF9O6RWahQAkbq7vSAtV7uDWrJcnozUtLlod2dytc=; b=dDu7sU23mV57+SIX9QIkWh3+QB
	bw6qS0UI1pPzlB1wIQrMOn3+8aD2CK/m7w6Tu5B67jfUC53SLVxX6zr9iF7zG7WPFo1jjAA1p0VLw
	YFsBFGvR2Dy9hY0n/vDzNyryGG+ezfDCGjtNKnLXwb+epa8OoauIjjo2w0dEMsHgM58o=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1uqajO-0006aQ-Nf;
	Mon, 25 Aug 2025 17:11:43 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <vladimir.zapolskiy@linaro.org>) id 1uqG1O-0006Th-Up
 for mjpeg-users@lists.sourceforge.net;
 Sun, 24 Aug 2025 19:04:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6yqEEUlIDSc/+3KFB8fDmfBaOKciQCNwulQzIyyj/3k=; b=HD/Vll/MGp4mtuZJSY8bi6K6l4
 2Y54wWBQwEgj59+QKjOPvxuPvK9k9YH4tOqYJiZJOH2gSA/YsoAJ6RoOHmbTAopyB2Eo/SE1VoEn1
 NlA2Yh6r6JHzVDV5KwB6PRDtZwWf4eUtoacsnOvV4ar853slPySqRhXXVVvoTc5B3610=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6yqEEUlIDSc/+3KFB8fDmfBaOKciQCNwulQzIyyj/3k=; b=VHkXkKfclsUebWj6wqrGd9r97Z
 NTG1uLfbyoa04uORGkBzPkoq/D7lpsk3eRv016ug55uaFqBWH1LPqI6FaCN++CydvZUZaEPtJm9rm
 d/JwVIZ2Yui0DkzsaMMXHIZDQ64lTnNOQ/YTC3H3I+C/u7XVEhY0joKnA1UtBMiVQeys=;
Received: from mail-lf1-f50.google.com ([209.85.167.50])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uqG1P-000080-A6 for mjpeg-users@lists.sourceforge.net;
 Sun, 24 Aug 2025 19:04:55 +0000
Received: by mail-lf1-f50.google.com with SMTP id
 2adb3069b0e04-55ce52718abso291748e87.3
 for <mjpeg-users@lists.sourceforge.net>; Sun, 24 Aug 2025 12:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1756062289; x=1756667089; darn=lists.sourceforge.net;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=6yqEEUlIDSc/+3KFB8fDmfBaOKciQCNwulQzIyyj/3k=;
 b=atJdcLso4F/nefVMcMFxEqq8hm0bHjz/bMjf6ebyD+3SX+JK1QfZNMHQieGlE3wn77
 veduRU5Yx2gHkXwfAjADzjA0lHDDfdMqXrSTci1wDY2NXycFFJiYSDzkhYEX/rSMaDVE
 EYEByYY7+lO/n0bYmS6DYyN9FcA93LRaRhIDUePCSBvV5l+e0uQ3uOv6gqY2s9/f3cok
 B7DhPn+oXE//KXOao0eXjPVUj08Bcl9Ce+yMjoBR9qEYgrvr0Xqic6tMLHVO6ZX+lW1H
 Tiq0Rl1H1XUlOd7OET7bnEyX50F7uPS4gDBpjt9oZ4KQRPfz893B3Oeg7a4q8wihd0Cu
 3cog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1756062289; x=1756667089;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
 :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=6yqEEUlIDSc/+3KFB8fDmfBaOKciQCNwulQzIyyj/3k=;
 b=Sx2XYJkeAP5U68V1Od6leifJ7FvOlKaBJ0jYebpIz5xCxxY7ZMO0Is/KItl5vCqMjc
 xY7MtVjNQdviXFbqC49BawGkW/tUIIJhzJkDYoDAJKIGgBtxZ4Yu1vgn9mgrBE2ZHchX
 K+uOB+i4CNLzeMxiTSmlqz8wk/of6oLEsWE0eqGkCUjm6iIx+mAv9SRIiVVj6uZyr6Pf
 EKGDq6BPUJOZywmz1CbZeiz4fFUxNbYLaewU5pQflkNE4tMq5KEx+mOqfq3NMLfPOrim
 BlErombUJ2fjjotM0l1YsQo9wFBMqaWXr8AaMuXM8FMTPl6WMm8iSf+MUsV//mwLyKxX
 IIkg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWydJJLqL2IdLnby95yY0PFn+BfZS3dF1RW3Om7LTL32wA47mWYnJwROqYM9MQeQb9LpZy1T4fy0H4N7A==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yw8wi5ZVnfZMo4iiNqW0SZDGmm/OeSnneGSk+dlyNztAcA9IAbn
 r+5gaZVLjlH/uiwgCNSy64Zl9iqmytRH76QYwFOZcFxHtkyeGH42n76mCQZDBuDnHNw=
X-Gm-Gg: ASbGncuoPs49JNiErcyFsCLb5XPU6iBdpHPJ4Jd5fjvd5CI4/s1Xkl9r+LJfkQSmDcH
 r6O+I57u0jU4Jm9w/gnZdz8c9zqYLd9/ibn3tyzrWuVWYr1rUwrBd/0FwDi91fhYz8cCA6//fTm
 GeNHrt28LxXCDn94J8ipMYyVDqwUhzgQUx3foar65C+y4H1SDzDOWHE1YT1mdTTlauKrj02SQD0
 +PmIc97LVpwF/UlOIxIs+c4wWmMD78OSEqFZX5cNws411ZTGfRjhDSt3jkc62jrZCcjE0jTGfXz
 bl14rR0JH1p6J19fExNnHG0/fNQyL3O+4pyNh4ENokA+j1SsgMcBFjQ700RuImKPM5ktza0neg3
 cRdketnnMQlygxTeCZYvln8TnxJUxjOetAeddb9G2bOoWzqbkgtnpFnNJbSshAB/Z6D/BSrnTTa
 UU
X-Google-Smtp-Source: AGHT+IFyrm2w79r4qu/FnmHu4qBJdoxQ8tpCUb7HA7mtPlKxjeyzi9xJQ9J7AuBmZ4uek0zzq2ON9Q==
X-Received: by 2002:a05:6512:a85:b0:553:24b4:6492 with SMTP id
 2adb3069b0e04-55f0cd6ef0bmr1246189e87.5.1756062288277; 
 Sun, 24 Aug 2025 12:04:48 -0700 (PDT)
Received: from [192.168.1.100] (88-112-128-43.elisa-laajakaista.fi.
 [88.112.128.43]) by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-55f35c8bb4esm1204996e87.75.2025.08.24.12.04.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 24 Aug 2025 12:04:47 -0700 (PDT)
Message-ID: <fb733991-857c-4a5b-ba20-d8bd557a4339@linaro.org>
Date: Sun, 24 Aug 2025 22:04:45 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
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
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
 Houlong Wei <houlong.wei@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Tiffany Lin <tiffany.lin@mediatek.com>,
 Yunfei Dong <yunfei.dong@mediatek.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>,
 Mikhail Ulyanov <mikhail.ulyanov@cogentembedded.com>,
 Jacob Chen <jacob-chen@iotwrt.com>, Heiko Stuebner <heiko@sntech.de>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
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
 <mripard@kernel.org>, Paul Kocialkowski <paulk@sys-base.io>,
 =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Corentin Labbe <clabbe@baylibre.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Stanislaw Gruszka <stanislaw.gruszka@linux.intel.com>
References: <20250802-media-private-data-v1-0-eb140ddd6a9d@ideasonboard.com>
 <20250802-media-private-data-v1-19-eb140ddd6a9d@ideasonboard.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20250802-media-private-data-v1-19-eb140ddd6a9d@ideasonboard.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Jacopo, Laurent,
 thank you for the nice clean-up. On 8/2/25 12:22,
 Jacopo Mondi wrote: > From: Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>
 > > The custom video_open() function in the camss driver open-codes the >
 v4l2_fh_open() helper, with [...] 
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
 [209.85.167.50 listed in wl.mailspike.net]
X-Headers-End: 1uqG1P-000080-A6
X-Mailman-Approved-At: Mon, 25 Aug 2025 17:11:40 +0000
Subject: Re: [Mjpeg-users] [PATCH 19/65] media: camss: Replace .open() file
 operation with v4l2_fh_open()
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

Hi Jacopo, Laurent,

thank you for the nice clean-up.

On 8/2/25 12:22, Jacopo Mondi wrote:
> From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> 
> The custom video_open() function in the camss driver open-codes the
> v4l2_fh_open() helper, with an additional mutex that protects the whole
> function. Given that the function does not modify any data guarded by
> the lock, there's no need for using the mutex and the function can be
> replaced by v4l2_fh_open().
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
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
