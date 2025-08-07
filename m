Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ED59CB1F278
	for <lists+mjpeg-users@lfdr.de>; Sat,  9 Aug 2025 08:00:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AveOWiK1xd8KCmhOtkZeBQgeqVksN0PNVHJyU6Kmuxc=; b=iU/vwcbEnPCPngF5ik8dYNdj8j
	r9QYON0BbxbRtMg6eHQcBhYTL8ISNGkwOwOU+nDLFnviGq7H4kLWag2UOgwSZ4c2Y9bPqDPCONrRk
	CSflCxXu+FX+U5f3HduNqK9Ia7kXGEoxXGEEmGBXNXK9iaN9SNEEj7rNkLy4piYl4ZbQ=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1ukcd3-0008G2-15;
	Sat, 09 Aug 2025 06:00:29 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sakari.ailus@linux.intel.com>) id 1ujwqK-0005Ys-G5
 for mjpeg-users@lists.sourceforge.net;
 Thu, 07 Aug 2025 09:23:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kf1JKMJsNXbdUWjNS+OUuu2u4YFoG0YGe/t5xpFciFo=; b=btrzv9AH4te5n/IUFPfoM+22S0
 XDdKh4B5QagTueRO68hNHaWZRPA1YMZbg0LRY6SrIepw5aGVGGtDXY6UjZc6IdmUVkqhEOg19ixYR
 r/KpPLdWwo/DxYHfHXxM4KSaVbjEnslw2IpVzHbOs410yCjKyZVAn+dzp3WdKApKkiMo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kf1JKMJsNXbdUWjNS+OUuu2u4YFoG0YGe/t5xpFciFo=; b=cs7Uu/eo/uUyfRBfIWQqRJiFxk
 RhvANC3/S0z8BHw2TMPsWi7fMhQCu0ybtisA/UolU8O6S7RR5bOJgX1AZeubT5dTz2kjUuq+lltg2
 StAu6jRi5pEFMOn+G22myrVc2/GGEWo+0pLBu+ihWcoPAoD0OHeg7ABWCmdyn9cb3FXo=;
Received: from mgamail.intel.com ([198.175.65.12])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ujwqI-00028t-7C for mjpeg-users@lists.sourceforge.net;
 Thu, 07 Aug 2025 09:23:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754558602; x=1786094602;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=LdyIokBuO7Un8obo21ibvQiKDOlr/VJXcK2c42DetEE=;
 b=h8r5AtVA8+4PnROV78iMa6H1+Gd+iqVNOSHX5/4UrZKCRsasAIC23sYD
 cnGqalTRKajzPyBT4iOpQIcmLCvuyluVnrGE7olnF63riab3//ILKZrus
 AgiQpx2SkyJkwAskKJrApdXzZOpLuXnPLFaJWrWV6Jb3acs/WCOdHj+24
 1ITy46IGj87Q0jth66MhrkW47sER6BC9WrMEuiqRoDhK/B/kVCo9Ynw1d
 QxUWhsQindxnTmzTzU41/5ooWkrk3gS7+4e6MxMOdV9/CkYIrCVqYLKMa
 v5Eeh/z051VHXJc+8mOJHGNQ1NWbJzrG4iShgCK7DH3yCe3GVryxb4HpQ g==;
X-CSE-ConnectionGUID: LtEqiy52ReKoF2vpgh9utA==
X-CSE-MsgGUID: Z7hT3XEaQjSlI4XkABU9Ig==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="68340109"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="68340109"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 02:07:27 -0700
X-CSE-ConnectionGUID: HkVbQkL0THy+UJOo9yzC6A==
X-CSE-MsgGUID: KJ6iZxlSSOyomEAi+j3fxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="169473134"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO kekkonen.fi.intel.com)
 ([10.245.244.255])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 02:07:16 -0700
Received: from kekkonen.localdomain (localhost [127.0.0.1])
 by kekkonen.fi.intel.com (Postfix) with SMTP id 79BBB11FC45;
 Thu,  7 Aug 2025 12:07:13 +0300 (EEST)
Date: Thu, 7 Aug 2025 09:07:13 +0000
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs, Bertel Jungin Aukio 5, 02600 Espoo
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Message-ID: <aJRswZIVKCuzqCpr@kekkonen.localdomain>
References: <20250802-media-private-data-v1-0-eb140ddd6a9d@ideasonboard.com>
 <20250802-media-private-data-v1-64-eb140ddd6a9d@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250802-media-private-data-v1-64-eb140ddd6a9d@ideasonboard.com>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Aug 02, 2025 at 11:23:26AM +0200, Jacopo Mondi wrote:
 > From: Laurent Pinchart <laurent.pinchart@ideasonboard.com> > > The
 V4L2_FL_USES_V4L2_FH
 flag is set by v4l2_fh_init(). It is not meant > [...] 
 Content analysis details:   (-0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ujwqI-00028t-7C
X-Mailman-Approved-At: Sat, 09 Aug 2025 06:00:14 +0000
Subject: Re: [Mjpeg-users] [PATCH 64/65] media: staging: ipu7: isys: Don't
 set V4L2_FL_USES_V4L2_FH manually
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
 Shawn Guo <shawnguo@kernel.org>, Hans de Goede <hansg@kernel.org>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Todor Tomov <todor.too@gmail.com>, Mirela Rabulea <mirela.rabulea@nxp.com>,
 Alex Shi <alexs@kernel.org>, Hugues Fruchet <hugues.fruchet@foss.st.com>,
 Corentin Labbe <clabbe@baylibre.com>,
 Mikhail Ulyanov <mikhail.ulyanov@cogentembedded.com>,
 Abhinav Kumar <abhinav.kumar@linux.dev>, Benoit Parrot <bparrot@ti.com>,
 Parthiban Veerasooran <parthiban.veerasooran@microchip.com>,
 Hans Verkuil <hverkuil@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Tiffany Lin <tiffany.lin@mediatek.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@ragnatech.se>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

On Sat, Aug 02, 2025 at 11:23:26AM +0200, Jacopo Mondi wrote:
> From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> 
> The V4L2_FL_USES_V4L2_FH flag is set by v4l2_fh_init(). It is not meant
> to be set manually by drivers. Drop it from the ipu7-isys driver.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>

Thanks, Jacopo!

Reviewed-by: Sakari Ailus <sakari.ailus@linux.intel.com>

-- 
Sakari Ailus


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
