Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BE923B18F01
	for <lists+mjpeg-users@lfdr.de>; Sat,  2 Aug 2025 15:55:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:To:MIME-Version:Message-Id:Date:From:Sender:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=VyKbIR9WsD1Ls9mIxX6gghFDwXYG2kfaN0xwPwgj5fQ=; b=jjGPNsGh0QuezcJPqqd8KUIMX0
	yQ3oORvPPuOX0m2qlRZVwTlH9MxSUoV4honeTGJi649kZ+ZcXGps6fEPc65qnnpRS0JkAakC9RpGS
	wOM8f+F7W0gxJp4Qn3stljwCPINZR4ldKx0f5rqUNf6aMhHbS/CrZVmkLHS8OxTS+ETQ=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1uiCi1-0006pX-Jt;
	Sat, 02 Aug 2025 13:55:37 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacopo.mondi@ideasonboard.com>) id 1ui8qd-0001GP-Av
 for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:48:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fcMBOveeQGTVhABz4lmEQ5tvyKKN4mS1DectVmcoApk=; b=h8TrhflHthgsP/sG7HnX8kJX3A
 dxBNyF7U77ttz/3WMZVl8fFYgF0LvADrO2g6ErV5XpnEZU59sh/l7EfaLLv/Yy+xSTzeLF71ZyoUb
 fT82ezR7+pPfi6j1hLEyA6eutw6Gl6drflYE0JmwOHM9BEIF/oSAtxCP2pcgjzUi5cPU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date
 :Subject:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=fcMBOveeQGTVhABz4lmEQ5tvyKKN4mS1DectVmcoApk=; b=i
 4qU+A3MYeCotDqvzOimXC20VsTfdouIrCAdBFGZADtB0z3RL/eooW9CqbYIg0RJrFvoPJkzxNgx95
 mkPV8VpJFKCcQy0kKY0HRFtRoztlNwleumP0jrir5pF8NdlBLJloY7mfOSrEmBO64nlJxNwvldzbh
 H80mjXjQzNqFRd6o=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ui8qb-0006OF-Ht for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:48:15 +0000
Received: from [192.168.0.172] (mob-5-90-138-121.net.vodafone.it
 [5.90.138.121])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id CDE1F379;
 Sat,  2 Aug 2025 11:22:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1754126560;
 bh=/CwucPoTSB8D3As+zjvoiuc4x93zR6gcvXt9/Ab/ivI=;
 h=From:Subject:Date:To:Cc:From;
 b=LZZyMdaFWHa6y26iE7y4JE05rPB8CXeZCDhhOcwCqussrJCfnIHsciuVBPN5t9jkg
 5kYEpgw+FbMmd9rb/1xghUjwPkrZH1/sEfUxVuWv05Fy889OkWsy4rpJClsTFCDOyE
 fwvaj0WUscP/5nbJH4GLQgdU54/9lq2NtkH9Kd6Y=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Sat, 02 Aug 2025 11:22:22 +0200
Message-Id: <20250802-media-private-data-v1-0-eb140ddd6a9d@ideasonboard.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAM/YjWgC/x3MSwqAMAxF0a1IxgYasShuRRwE+9QM/NCKCOLeL
 Q7P4N6HEqIhUVc8FHFZsn3LkLKgcdFtBlvIpspV3rVOeEUw5SPapSc46Klce/GtFzSQQDk8Iia
 7/2k/vO8HBMBr1GQAAAA=
X-Change-ID: 20250801-media-private-data-4515851e7e1d
To: Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Devarsh Thakkar <devarsht@ti.com>, Benoit Parrot <bparrot@ti.com>, 
 Hans Verkuil <hverkuil@kernel.org>, Mike Isely <isely@pobox.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Hans de Goede <hansg@kernel.org>, 
 Parthiban Veerasooran <parthiban.veerasooran@microchip.com>, 
 Christian Gromm <christian.gromm@microchip.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Alex Shi <alexs@kernel.org>, Yanteng Si <si.yanteng@linux.dev>, 
 Dongliang Mu <dzm91@hust.edu.cn>, Jonathan Corbet <corbet@lwn.net>, 
 Tomasz Figa <tfiga@chromium.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Andy Walls <awalls@md.metrocast.net>, 
 Michael Tretter <m.tretter@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Bin Liu <bin.liu@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Dmitry Osipenko <digetx@gmail.com>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, 
 Mirela Rabulea <mirela.rabulea@nxp.com>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, 
 Michal Simek <michal.simek@amd.com>, Ming Qian <ming.qian@nxp.com>, 
 Zhou Peng <eagle.zhou@nxp.com>, 
 Xavier Roumegue <xavier.roumegue@oss.nxp.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
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
 Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Heiko Stuebner <heiko@sntech.de>, 
 Detlev Casanova <detlev.casanova@collabora.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 =?utf-8?q?=C5=81ukasz_Stelmach?= <l.stelmach@samsung.com>, 
 Andrzej Pietrasiewicz <andrzejtp2010@gmail.com>, 
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Fabien Dessenne <fabien.dessenne@foss.st.com>, 
 Hugues Fruchet <hugues.fruchet@foss.st.com>, 
 Jean-Christophe Trotin <jean-christophe.trotin@foss.st.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 Steve Longerbeam <slongerbeam@gmail.com>, 
 Maxime Ripard <mripard@kernel.org>, Paul Kocialkowski <paulk@sys-base.io>, 
 =?utf-8?q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>, 
 Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Corentin Labbe <clabbe@baylibre.com>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Bingbu Cao <bingbu.cao@intel.com>, Tianshu Qiu <tian.shu.qiu@intel.com>, 
 Stanislaw Gruszka <stanislaw.gruszka@linux.intel.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=14022;
 i=jacopo.mondi@ideasonboard.com; h=from:subject:message-id;
 bh=/CwucPoTSB8D3As+zjvoiuc4x93zR6gcvXt9/Ab/ivI=;
 b=owEBbQKS/ZANAwAKAXI0Bo8WoVY8AcsmYgBojdj3I2azCFFgaF5K6ecFezAiX2zQ8xa8jLP7u
 NmvbEkTWUuJAjMEAAEKAB0WIQS1xD1IgJogio9YOMByNAaPFqFWPAUCaI3Y9wAKCRByNAaPFqFW
 PHCVD/9zYdUbtLqCkT3NJEuFfmWvle2Q57iJBekEF2Do+o01RwzCVM2Iy8pzMjQgapnuAXhhEhb
 FLamEfL0yAUFEGZSp5h/SMxm5G7f8dttq5rLwtAkkMSw+dUp2jcfyNyZeBBHEbCokFzHyzg4Ekb
 fjGFdutDiZWm/ScUGv6aMFntJuhhB+Z37FWGlX3MjBpPo1VRW9vS92Dxz2RD+Bd5yqUWzO6i6N8
 o+CE47nbf9zpN8LlJnVOm+nFy22mJOsd6e7Nlord9dmQeqEo4QjTWHtGn+9nKJUzJI3CoR6I+Jj
 7YE6H08QKJ9PwoD+mfEQKulTOukxsbjPCs5yy6FX+PXBEGN0irJIYmckSd0XhlIjeO4b6ZBw9en
 ifZrtu1v0kemCQ+CGaHv3Dzddx1ZHVJiTEuBEDWj82rXYcReLNzeLZCk42ilo8t3rzdJne9Ss7H
 nnk8y5QZxIMuyU+HpDcgw1zIgVDZ4qzjxslIajnCfmmDxJ5QbrDg8Lq2lacqfaUTcKlNiI77FWe
 PQoxa9OQItgTzQTBWo34a3dq46YBNAkPlziZA4QMdfRQ45McDNw7+AVsGhVwmCTkFYtmTet9cRE
 Bu2277ABCKu7ZaTuF/khVf02/5utDenATBy+PiKz6L8kO0TlD7g/x4dgvzYMysYiJHWVT6uwgqA
 68mU6u+20OC9CmQ==
X-Developer-Key: i=jacopo.mondi@ideasonboard.com; a=openpgp;
 fpr=72392EDC88144A65C701EA9BA5826A2587AD026B
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The v4l2_fh abstraction layer provides to drivers support
 to represent per-open file handle context and associate driver-specific data
 to them. Currently drivers that do not require custom per-file handle data
 can use the v4l2_fh_open() and v4l2_fh_release() helpers as handlers
 v4l2_file_operations
 open() and close() functions. The two helper [...] 
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
X-Headers-End: 1ui8qb-0006OF-Ht
X-Mailman-Approved-At: Sat, 02 Aug 2025 13:55:16 +0000
Subject: [Mjpeg-users] [PATCH 00/65] media: Rationalise usage of v4l2_fh
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
 Jacopo Mondi <jacopo.mondi@ideasonboard.com>, linux-doc@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, mjpeg-users@lists.sourceforge.net,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-renesas-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

The v4l2_fh abstraction layer provides to drivers support to represent
per-open file handle context and associate driver-specific data to them.

Currently drivers that do not require custom per-file handle data can
use the v4l2_fh_open() and v4l2_fh_release() helpers as handlers
v4l2_file_operations open() and close() functions. The two helpers
set the file->private_data pointer to the newly allocated v4l2_fh.

Drivers that instead store per-file handle data and represent them with
driver-specific types that embed an instance of struct v4l2_fh have
instead to use different helpers: v4l2_fh_init() and v4l2_fh_add() it's
their responsibility to initialize file->private_data with what they
consider more opportune.

Unfortunately this leads to inconsistencies and slightly different
implementations in drivers, which increase the maintenance burden.

The series starts with patches from Laurent to address some of
these inconsistencies. Some drivers in-facts set the file->private_data
pointer to their own driver-specific types that embed the v4l2_fh.
As the driver-specific type can be accessed with a simple container_of
we can make all drivers set file->private_data to point to the v4l2_fh
to make all the code base use the same pattern.

Once all drivers have been made consistent we can modify the framework
to automate the file->private_data initialisation by modifying
v4l2_fh_add() to set file->private_data to the v4l2_fh allocated by
drivers as part of their private structures. Once that's done we can now
remove all direct accesses to file->private_data by providing the
file_to_v4l2_fh helper.

Now that all drivers that use v4l2_fh are guaranteed to have
file->private_data initialised we can remove accesses to the 'void
*priv' filed provided by v4l2-ioctl to drivers to make sure they always
go through the file * and retrieve the driver specific type from the
v4l2_fh there embedded. This guarantees a more robust data type layout
and make usage of v4l2_fh more consistent and clear across the code
base.

Once that's done, the v4l2-ioctl layer can be modified to stop passing
file->private_data as the second argument to all ioctl handlers, as it
is not ideal to have access to the same data through two different entry
point.

As mentioned in the commit message of the last patch, there are plans to
re-use the second ioctl argument to provide drivers a
video_device_state. This patch series paves the way for that by making
sure the argument can be re-used safely.

Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
Jacopo Mondi (36):
      media: rcar-vin: Do not set file->private_data
      media: rzg2l-cru: Do not set file->private_data
      media: camss: Remove custom .release fop()
      media: v4l2-ioctl: Access v4l2_fh from private_data
      media: allegro: Access v4l2_fh from file
      media: meson-ge2d: Access v4l2_fh from file
      media: coda: Access v4l2_fh from file
      media: wave5: Access v4l2_fh from file
      media: m2m-deinterlace: Access v4l2_fh from file
      media: mtk: jpeg: Access v4l2_fh from file->private_data
      media: mtk_mdp_m2m: Access v4l2_fh from file
      media: mtk: mdp3: Access v4l2_fh from file
      media: mtk: vcodec: Access v4l2_fh from file
      media: tegra-vde: Access v4l2_fh from file
      media: imx-jpeg: Access v4l2_fh from file
      media: imx-isi: Access v4l2_fh from file
      media: nxp: mx2: Access v4l2_fh from file
      media: renesas: Access v4l2_fh from file
      media: rockhip: rga: Access v4l2_fh from file
      media: rockchip: rkvdec: Access v4l2_fh from file
      media: exynos-gsc: Access v4l2_fh from file
      media: exynos4-is: Access v4l2_fh from file
      media: s3c-camif: Set queue owner using file
      media: s5p-g2d: Access v4l2_fh from file
      media: s5p-jpeg: Access v4l2_fh from file
      media: s5p-mfc: Access v4l2_fh from file
      media: bdisp: Access v4l2_fh from file
      media: st: delta: Access v4l2_fh from file
      media: stm32: dma2d: Access v4l2_fh from file
      media: omap3isp: Access v4l2_fh from file
      media: cx18:  Access v4l2_fh from file
      media: ivtv: Access v4l2_fh from file
      media: zoran: Remove access to __fh
      media: usb: hdpvr: Access v4l2_fh from file
      media: usb: uvc: Access v4l2_fh from file
      media: staging: imx: Access v4l2_fh from file

Laurent Pinchart (29):
      media: pci: saa7164: Store v4l2_fh pointer in file->private_data
      media: imagination: Store v4l2_fh pointer in file->private_data
      media: ti: vpe: Store v4l2_fh pointer in file->private_data
      media: usb: hdpvr: Store v4l2_fh pointer in file->private_data
      media: usb: pvrusb2: Store v4l2_fh pointer in file->private_data
      media: usb: uvcvideo: Store v4l2_fh pointer in file->private_data
      media: staging: most: Store v4l2_fh pointer in file->private_data
      media: Wrap file->private_data access with a helper function
      media: Replace file->private_data access with file_to_v4l2_fh()
      media: nvidia: tegra-vde: Replace file->private_data access
      media: Replace file->private_data access with custom functions
      media: pci: ivtv: Don't create fake v4l2_fh
      media: amphion: Make some vpu_v4l2 functions static
      media: amphion: Delete v4l2_fh synchronously in .release()
      media: visl: Drop visl_v4l2fh_to_ctx() function
      media: v4l2-fh: Move piece of documentation to correct function
      media: camss: Replace .open() file operation with v4l2_fh_open()
      media: chips-media: wave5: Pass file pointer to wave5_cleanup_instance()
      media: qcom: iris: Pass file pointer to iris_v4l2_fh_(de)init()
      media: qcom: iris: Set file->private_data in iris_v4l2_fh_(de)init()
      media: qcom: iris: Drop unused argument to iris_get_inst()
      media: qcom: venus: Pass file pointer to venus_close_common()
      media: Set file->private_data in v4l2_fh_add()
      media: Reset file->private_data to NULL in v4l2_fh_del()
      media: hantro: Access v4l2_fh from file->private_data
      media: v4l2-ctrls: Move v4l2_fh retrieval after V4L2_FL_USES_V4L2_FH check
      media: ipu6: isys: Don't set V4L2_FL_USES_V4L2_FH manually
      media: staging: ipu7: isys: Don't set V4L2_FL_USES_V4L2_FH manually
      media: v4l2-ioctl: Stop passing fh pointer to ioctl handlers

 Documentation/driver-api/media/v4l2-fh.rst         |  56 ++---
 .../zh_CN/video4linux/v4l2-framework.txt           |  11 +-
 drivers/media/common/videobuf2/videobuf2-v4l2.c    |   2 +-
 drivers/media/pci/cx18/cx18-driver.h               |   2 +-
 drivers/media/pci/cx18/cx18-fileops.c              |  11 +-
 drivers/media/pci/cx18/cx18-ioctl.c                |  64 +++---
 drivers/media/pci/intel/ipu6/ipu6-isys-video.c     |   1 -
 drivers/media/pci/ivtv/ivtv-alsa-pcm.c             |   2 -
 drivers/media/pci/ivtv/ivtv-driver.h               |   7 +-
 drivers/media/pci/ivtv/ivtv-fileops.c              |  40 ++--
 drivers/media/pci/ivtv/ivtv-ioctl.c                | 124 +++++------
 drivers/media/pci/ivtv/ivtv-irq.c                  |   4 +-
 drivers/media/pci/saa7164/saa7164-encoder.c        |  30 ++-
 drivers/media/pci/saa7164/saa7164-vbi.c            |  25 ++-
 drivers/media/pci/saa7164/saa7164.h                |  10 +
 drivers/media/pci/zoran/zoran.h                    |   6 -
 drivers/media/pci/zoran/zoran_driver.c             |   3 +-
 drivers/media/platform/allegro-dvt/allegro-core.c  |  32 +--
 drivers/media/platform/amlogic/meson-ge2d/ge2d.c   |  25 ++-
 drivers/media/platform/amphion/vpu.h               |   2 +-
 drivers/media/platform/amphion/vpu_v4l2.c          |  22 +-
 drivers/media/platform/amphion/vpu_v4l2.h          |   8 -
 .../media/platform/chips-media/coda/coda-common.c  |  50 +++--
 .../platform/chips-media/wave5/wave5-helper.c      |  10 +-
 .../platform/chips-media/wave5/wave5-helper.h      |   2 +-
 .../platform/chips-media/wave5/wave5-vpu-dec.c     |  23 +-
 .../platform/chips-media/wave5/wave5-vpu-enc.c     |  29 ++-
 .../media/platform/chips-media/wave5/wave5-vpu.h   |   5 +
 .../media/platform/imagination/e5010-jpeg-enc.c    |  23 +-
 .../media/platform/imagination/e5010-jpeg-enc.h    |   5 +
 drivers/media/platform/m2m-deinterlace.c           |  26 ++-
 .../media/platform/mediatek/jpeg/mtk_jpeg_core.c   |  37 ++--
 drivers/media/platform/mediatek/mdp/mtk_mdp_m2m.c  |  29 ++-
 .../media/platform/mediatek/mdp3/mtk-mdp3-m2m.c    |  25 ++-
 .../mediatek/vcodec/decoder/mtk_vcodec_dec.c       |  36 ++--
 .../mediatek/vcodec/decoder/mtk_vcodec_dec_drv.c   |   9 +-
 .../mediatek/vcodec/decoder/mtk_vcodec_dec_drv.h   |   5 +
 .../mediatek/vcodec/encoder/mtk_vcodec_enc.c       |  37 ++--
 .../mediatek/vcodec/encoder/mtk_vcodec_enc_drv.c   |   9 +-
 .../mediatek/vcodec/encoder/mtk_vcodec_enc_drv.h   |   4 +-
 drivers/media/platform/nvidia/tegra-vde/v4l2.c     |  35 ++-
 drivers/media/platform/nxp/dw100/dw100.c           |   7 +-
 drivers/media/platform/nxp/imx-jpeg/mxc-jpeg.c     |  45 ++--
 drivers/media/platform/nxp/imx-pxp.c               |   7 +-
 drivers/media/platform/nxp/imx8-isi/imx8-isi-m2m.c |  21 +-
 drivers/media/platform/nxp/mx2_emmaprp.c           |  24 ++-
 drivers/media/platform/qcom/camss/camss-video.c    |  43 +---
 drivers/media/platform/qcom/iris/iris_vidc.c       |  36 ++--
 drivers/media/platform/qcom/venus/core.c           |   4 +-
 drivers/media/platform/qcom/venus/core.h           |   4 +-
 drivers/media/platform/qcom/venus/vdec.c           |   5 +-
 drivers/media/platform/qcom/venus/venc.c           |   5 +-
 .../media/platform/renesas/rcar-vin/rcar-v4l2.c    |   2 -
 drivers/media/platform/renesas/rcar_fdp1.c         |  17 +-
 drivers/media/platform/renesas/rcar_jpu.c          |  27 ++-
 .../media/platform/renesas/rzg2l-cru/rzg2l-video.c |   1 -
 drivers/media/platform/renesas/vsp1/vsp1_histo.c   |   6 +-
 drivers/media/platform/renesas/vsp1/vsp1_video.c   |  18 +-
 drivers/media/platform/rockchip/rga/rga.c          |  16 +-
 drivers/media/platform/rockchip/rga/rga.h          |   5 +
 drivers/media/platform/rockchip/rkvdec/rkvdec.c    |  21 +-
 drivers/media/platform/rockchip/rkvdec/rkvdec.h    |   4 +-
 .../media/platform/samsung/exynos-gsc/gsc-core.h   |   6 +-
 .../media/platform/samsung/exynos-gsc/gsc-m2m.c    |  37 ++--
 .../media/platform/samsung/exynos4-is/fimc-core.h  |   5 +-
 .../media/platform/samsung/exynos4-is/fimc-m2m.c   |  19 +-
 .../platform/samsung/s3c-camif/camif-capture.c     |  26 +--
 drivers/media/platform/samsung/s5p-g2d/g2d.c       |  22 +-
 .../media/platform/samsung/s5p-jpeg/jpeg-core.c    |  33 ++-
 drivers/media/platform/samsung/s5p-mfc/s5p_mfc.c   |  13 +-
 .../platform/samsung/s5p-mfc/s5p_mfc_common.h      |   6 +
 .../media/platform/samsung/s5p-mfc/s5p_mfc_dec.c   |  22 +-
 .../media/platform/samsung/s5p-mfc/s5p_mfc_enc.c   |  24 +--
 drivers/media/platform/st/sti/bdisp/bdisp-v4l2.c   |  30 +--
 drivers/media/platform/st/sti/delta/delta-v4l2.c   |  41 ++--
 drivers/media/platform/st/sti/hva/hva-v4l2.c       |  38 ++--
 drivers/media/platform/st/sti/hva/hva.h            |   2 -
 drivers/media/platform/st/stm32/dma2d/dma2d.c      |  18 +-
 drivers/media/platform/sunxi/sun8i-di/sun8i-di.c   |  10 +-
 .../platform/sunxi/sun8i-rotate/sun8i_rotate.c     |  10 +-
 drivers/media/platform/ti/omap3isp/ispvideo.c      |  36 ++--
 drivers/media/platform/ti/omap3isp/ispvideo.h      |   6 +-
 drivers/media/platform/ti/vpe/vpe.c                |  21 +-
 drivers/media/platform/verisilicon/hantro.h        |   4 +-
 drivers/media/platform/verisilicon/hantro_drv.c    |  10 +-
 drivers/media/platform/verisilicon/hantro_v4l2.c   |  22 +-
 drivers/media/platform/xilinx/xilinx-dma.c         |  10 +-
 drivers/media/test-drivers/vicodec/vicodec-core.c  |   7 +-
 drivers/media/test-drivers/vim2m.c                 |   7 +-
 drivers/media/test-drivers/visl/visl-core.c        |   5 +-
 drivers/media/test-drivers/visl/visl.h             |   7 +-
 drivers/media/test-drivers/vivid/vivid-core.c      |   4 +-
 drivers/media/test-drivers/vivid/vivid-radio-rx.c  |   4 +-
 drivers/media/test-drivers/vivid/vivid-radio-tx.c  |   4 +-
 drivers/media/usb/hdpvr/hdpvr-video.c              |  39 ++--
 drivers/media/usb/pvrusb2/pvrusb2-v4l2.c           |  69 +++---
 drivers/media/usb/uvc/uvc_metadata.c               |  10 +-
 drivers/media/usb/uvc/uvc_v4l2.c                   |  47 ++--
 drivers/media/usb/uvc/uvcvideo.h                   |   5 +
 drivers/media/v4l2-core/v4l2-compat-ioctl32.c      |   2 +-
 drivers/media/v4l2-core/v4l2-ctrls-api.c           |   9 +-
 drivers/media/v4l2-core/v4l2-fh.c                  |  16 +-
 drivers/media/v4l2-core/v4l2-ioctl.c               |  53 ++---
 drivers/media/v4l2-core/v4l2-mem2mem.c             |  34 +--
 drivers/media/v4l2-core/v4l2-subdev.c              |  16 +-
 drivers/staging/media/imx/imx-media-csc-scaler.c   |  26 +--
 drivers/staging/media/ipu7/ipu7-isys-video.c       |   1 -
 drivers/staging/media/meson/vdec/vdec.c            |  29 +--
 drivers/staging/media/meson/vdec/vdec.h            |   5 +
 drivers/staging/media/sunxi/cedrus/cedrus.c        |   8 +-
 drivers/staging/media/sunxi/cedrus/cedrus.h        |   5 +
 drivers/staging/media/sunxi/cedrus/cedrus_video.c  |   5 -
 drivers/staging/most/video/video.c                 |  19 +-
 drivers/usb/gadget/function/uvc.h                  |   5 +
 drivers/usb/gadget/function/uvc_v4l2.c             |   8 +-
 include/media/v4l2-fh.h                            |  28 ++-
 include/media/v4l2-ioctl.h                         | 236 ++++++++++-----------
 117 files changed, 1203 insertions(+), 1185 deletions(-)
---
base-commit: d968e50b5c26642754492dea23cbd3592bde62d8
change-id: 20250801-media-private-data-4515851e7e1d

Best regards,
-- 
Jacopo Mondi <jacopo.mondi@ideasonboard.com>



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
