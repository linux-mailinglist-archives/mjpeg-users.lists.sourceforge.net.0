Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 930A5B1F27A
	for <lists+mjpeg-users@lfdr.de>; Sat,  9 Aug 2025 08:00:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4F3Kf3ABEfeEI3Oy5P9JgxB+ubaElx/I20ClrRecsZM=; b=bt3lr9NTqCSU+EAZTm3bVy1CA9
	cAU5d84wamD+44Lsuf/LX5Rp8yXz9uhCCMADJZW+ZhBtKASsDyAdWfButXIpJjZVvhgbadWg1nb+M
	pxZbBzbnAjZLM6FA67ntORKF2lv3Ep1kCPrDrvReq2RQtY29yMJMfOf38/yxqNn0M/bM=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1ukcd3-0008Gj-KP;
	Sat, 09 Aug 2025 06:00:30 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hverkuil+cisco@kernel.org>) id 1uk0WC-00082H-Dd
 for mjpeg-users@lists.sourceforge.net;
 Thu, 07 Aug 2025 13:18:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=E+pyRL1mf4rEOP0750MMjAX/7dLLyVVoiUq13m4ewX0=; b=R67DoBC6EZcdYu+0VS6FX5feVH
 f6dPUhg/oP8n2cAFEdh+L0syEyWyI7mkJNaBI0lQBg1E9jWQL9hX8dY2VFtCxehoU0J6xaO4er3VJ
 On43mnnAuzWUV4jxCCLe+4wbPjNdS1jKcuT9XrqvzH026+XkFb6Th2G/dLnudeEQ9fvo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=E+pyRL1mf4rEOP0750MMjAX/7dLLyVVoiUq13m4ewX0=; b=h6Ut0ndM9jgS5UjNRqK3Sawnwm
 k5xt9rpWmmdfSBVElqtWAPn3PEV7/aYXfwmNhUkMj1xaCXaU8zbKJ9pvA8Dpjmmp0ViSpmgOic1TR
 kbFV1RwGmYL+TAUJLgQqr+vkX1dDO4Q7SXEYNc6BD8wGrBGMJQZPUzFlWrjxkvDQT8zk=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uk0WC-00036E-JA for mjpeg-users@lists.sourceforge.net;
 Thu, 07 Aug 2025 13:18:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id C5AF55C6748;
 Thu,  7 Aug 2025 13:18:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E7EEC4CEEB;
 Thu,  7 Aug 2025 13:18:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1754572721;
 bh=jhZGuKs+VTL1EX9JQsLLNKW9dU7Cq1mi1XfmDpxGgmo=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=JrXszesK5tUM43V2eGqUN+jLW7uAsSpNpdAmHts3xnx9QnJBpsYabAVOkIMuN0hlu
 vzSFO46kPooQ1U2SGy2fglffZP201jX0qjnxVu3is1h2rPaX0wgEZlqC1slHgg6arf
 yfim2V/46ZQzB6iWcvcGW/VFgwkYTHHWrZeMvCx5Q571Hhw5KHIT3k0pRTF/MjEovO
 ZwltMIlwKlapLaLNAQpAk4dMiYSWyUMDBcDlSWqJ56K+t555RJyDC/bTgOZ+V4Nys1
 PFvalFsiCbVAcywS7w3AHHACq/81AbcrBbBOyU/09/Ie/BhylPBBz3NbkFZV04DH0t
 fUmdplWqOQxWQ==
Message-ID: <8c24481d-dfdf-4923-9629-3f6b074c27da@kernel.org>
Date: Thu, 7 Aug 2025 15:18:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <20250802-media-private-data-v1-0-eb140ddd6a9d@ideasonboard.com>
 <20250802-media-private-data-v1-58-eb140ddd6a9d@ideasonboard.com>
 <d8875dea-aa04-41fc-b1b4-519d06ed6cba@kernel.org>
 <20250807123157.GF11583@pendragon.ideasonboard.com>
Content-Language: en-US
In-Reply-To: <20250807123157.GF11583@pendragon.ideasonboard.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 8/7/25 14:31, Laurent Pinchart wrote: > On Thu, Aug 07,
 2025 at 08:58:01AM +0200, Hans Verkuil wrote: >> On 02/08/2025 11:23, Jacopo
 Mondi wrote: >>> The __fh parameter is assigned to an unsued var [...] 
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
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uk0WC-00036E-JA
X-Mailman-Approved-At: Sat, 09 Aug 2025 06:00:14 +0000
Subject: Re: [Mjpeg-users] [PATCH 58/65] media: zoran: Remove access to __fh
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
From: Hans Verkuil via Mjpeg-users <mjpeg-users@lists.sourceforge.net>
Reply-To: MJPEG-tools user list <mjpeg-users@lists.sourceforge.net>
Cc: Hans Verkuil <hverkuil+cisco@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Devarsh Thakkar <devarsht@ti.com>,
 Stanislaw Gruszka <stanislaw.gruszka@linux.intel.com>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Christian Gromm <christian.gromm@microchip.com>,
 Dmitry Osipenko <digetx@gmail.com>, linux-stm32@st-md-mailman.stormreply.com,
 Marek Szyprowski <m.szyprowski@samsung.com>, linux-samsung-soc@vger.kernel.org,
 Robert Foss <rfoss@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Samuel Holland <samuel@sholland.org>, Kevin Hilman <khilman@baylibre.com>,
 Jacob Chen <jacob-chen@iotwrt.com>, Steve Longerbeam <slongerbeam@gmail.com>,
 Bingbu Cao <bingbu.cao@intel.com>, linux-sunxi@lists.linux.dev,
 linux-tegra@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 =?UTF-8?Q?=C5=81ukasz_Stelmach?= <l.stelmach@samsung.com>,
 Andrzej Pietrasiewicz <andrzejtp2010@gmail.com>,
 Nas Chung <nas.chung@chipsnmedia.com>, Andy Walls <awalls@md.metrocast.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, linux-usb@vger.kernel.org,
 Michael Tretter <m.tretter@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Ming Qian <ming.qian@nxp.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>, linux-doc@vger.kernel.org,
 Yunfei Dong <yunfei.dong@mediatek.com>, linux-kernel@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, Yanteng Si <si.yanteng@linux.dev>,
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
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Fabio Estevam <festevam@gmail.com>,
 Jean-Christophe Trotin <jean-christophe.trotin@foss.st.com>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Jonathan Corbet <corbet@lwn.net>, Mike Isely <isely@pobox.com>,
 Jackson Lee <jackson.lee@chipsnmedia.com>, linux-staging@lists.linux.dev,
 Krzysztof Kozlowski <krzk@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
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
 Parthiban Veerasooran <parthiban.veerasooran@microchip.com>,
 Hans Verkuil <hverkuil@kernel.org>,
 Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
 Tiffany Lin <tiffany.lin@mediatek.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

On 8/7/25 14:31, Laurent Pinchart wrote:
> On Thu, Aug 07, 2025 at 08:58:01AM +0200, Hans Verkuil wrote:
>> On 02/08/2025 11:23, Jacopo Mondi wrote:
>>> The __fh parameter is assigned to an unsued variable. Remove it
>>> and remove the unused struct zoran_fh type.
>>>
>>> Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
>>> ---
>>>  drivers/media/pci/zoran/zoran.h        | 6 ------
>>>  drivers/media/pci/zoran/zoran_driver.c | 3 +--
>>>  2 files changed, 1 insertion(+), 8 deletions(-)
>>>
>>> diff --git a/drivers/media/pci/zoran/zoran.h b/drivers/media/pci/zoran/zoran.h
>>> index 1cd990468d3de9db8b14b72483972041c57bfee2..d05e222b392156bf1b3b4c83c6591db642c3c377 100644
>>> --- a/drivers/media/pci/zoran/zoran.h
>>> +++ b/drivers/media/pci/zoran/zoran.h
>>> @@ -154,12 +154,6 @@ struct zoran_jpg_settings {
>>>  
>>>  struct zoran;
>>>  
>>> -/* zoran_fh contains per-open() settings */
>>> -struct zoran_fh {
>>> -	struct v4l2_fh fh;
>>> -	struct zoran *zr;
>>> -};
>>> -
>>>  struct card_info {
>>>  	enum card_type type;
>>>  	char name[32];
>>> diff --git a/drivers/media/pci/zoran/zoran_driver.c b/drivers/media/pci/zoran/zoran_driver.c
>>> index f42f596d3e6295e31e3b33cd83c5f7243911bd30..ec7fc1da4cc02f5a344cb49bb9a783c41c758195 100644
>>> --- a/drivers/media/pci/zoran/zoran_driver.c
>>> +++ b/drivers/media/pci/zoran/zoran_driver.c
>>> @@ -511,12 +511,11 @@ static int zoran_s_fmt_vid_cap(struct file *file, void *__fh,
>>
>> This driver uses __fh as the name for the second argument of the ioctl
>> callbacks. Can you take this opportunity to rename it to either 'fh' or 'priv'?
> 
> It's a bit of yak shaving, but not too difficult so it will be addressed
> in the next version (Jacopo already wrote the patches, thanks).
> 
>> Generally it's not a good idea to prefix variables with __ for no good reason.
>>
>> Grepping for __fh also shows two other drivers:
>>
>> drivers/media/platform/chips-media/coda/coda-common.c:#define fh_to_ctx(__fh)   container_of(__fh, struct coda_ctx, fh)
>> drivers/media/platform/samsung/s5p-mfc/s5p_mfc_common.h:#define fh_to_ctx(__fh) container_of(__fh, struct s5p_mfc_ctx, fh)
>>
>> I think it is a good idea to rename __fh to fh there as well.
> 
> That can't be done, otherwise things like
> 
> #define fh_to_ctx(fh)	container_of(fh, struct coda_ctx, fh)
> 
> static inline struct coda_ctx *file_to_ctx(struct file *filp)
> {
> 	return fh_to_ctx(file_to_v4l2_fh(filp));
> }
> 
> will expand in the file_to_ctx() function to
> 
> 	return container_of(file_to_v4l2_fh(filp), struct coda_ctx, file_to_v4l2_fh(filp))

If the fh_to_ctx #define is changed to a static inline, then there is no problem.

That said, it is overkill.

Regards,

	Hans

> 
> We could rename the __fh argument to vfh or v4l2fh, but I think __fh is
> equally good there. It's just the macro argument name.
> 
>>>  			       struct v4l2_format *fmt)
>>>  {
>>>  	struct zoran *zr = video_drvdata(file);
>>> -	struct zoran_fh *fh = __fh;
>>>  	int i;
>>>  	int res = 0;
>>>  
>>>  	if (fmt->fmt.pix.pixelformat == V4L2_PIX_FMT_MJPEG)
>>> -		return zoran_s_fmt_vid_out(file, fh, fmt);
>>> +		return zoran_s_fmt_vid_out(file, __fh, fmt);
>>>  
>>>  	for (i = 0; i < NUM_FORMATS; i++)
>>>  		if (fmt->fmt.pix.pixelformat == zoran_formats[i].fourcc)
> 



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
