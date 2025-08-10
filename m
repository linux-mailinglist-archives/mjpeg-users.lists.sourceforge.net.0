Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E58EB1FF07
	for <lists+mjpeg-users@lfdr.de>; Mon, 11 Aug 2025 08:12:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:MIME-Version:Message-ID:Date:To:From:Sender:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=K248+wNjdlDd79tIF1ur0jOnTIhhopIpxMOHfcG8Lhk=; b=gAvz0mjisu2a15MbuwCOymGYFA
	ipCgw3qCAzMnHgShkQjO35ozgh6oncI/ANfD3bQL0fg41lxR5Ro0/Hn90zl/1DRDMRBix5Wijyma/
	uGMeUF/ERFEyDBwvVD4Ix6ISpfvyZVbA0uGHbQXa+lr6Xvw8uAnEEf9wxHBO8OfwNS08=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1ulLld-00042a-Kf;
	Mon, 11 Aug 2025 06:12:21 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <laurent.pinchart@ideasonboard.com>)
 id 1ukuuL-0006Ze-Td for mjpeg-users@lists.sourceforge.net;
 Sun, 10 Aug 2025 01:31:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=blRRWRfMvYYww6Y2HHxuJmdzhitB8lcWov8rawepCNo=; b=Du4fGk4OqTp6RrpElNuCKezs7G
 sdsiK7iSjU5Sxn0WV3w0SeRBtn9v9rDMdgCpOqw0RK5F16L1/u6G5+o/eiOOP7wdzbCqqwRlrPmXT
 q/3YC2aos3tpVQIaFhyf0FIwG/0oWtXt8R6D6ORkeWg7upT1g1MBcxyZ0a8YqLAOT/iY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=blRRWRfMvYYww6Y2HHxuJmdzhitB8lcWov8rawepCNo=; b=X
 ObLnclvPZlilXEU/LoPpFEPxDVPirkWK9B2A7qSiZiG38Z0gYmq3FVqfX8Jmmw98f7eSbdQtB/Mmw
 /FzOyOLnuYaokQl8hn3gty+lzIOuPoY+F9spVljjij3kdseRBCft59mAWPbstCuP43bRBtShi9BLo
 N1gIzyLDGhqBdyEw=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ukuuK-0006fb-IE for mjpeg-users@lists.sourceforge.net;
 Sun, 10 Aug 2025 01:31:33 +0000
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi
 [81.175.209.231])
 by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id B579F7E6;
 Sun, 10 Aug 2025 03:30:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1754789427;
 bh=HOmqI1p7+7lwlytISaVugdq5EyxVUWR5y7GMXOK7I2c=;
 h=From:To:Cc:Subject:Date:From;
 b=SC1/vmH5WQcYHbX8d62vL0YQHU8pof3DAENqiOChxLFgu7Yt8JXH6dYdGd8crzVaG
 vMuN3wTWqn2xANVVrC+wtj/KBorBj+n+0lwafA9W3bgB0bAHSZoqy6Q5Lrjtfl1aRZ
 zleeDvw1UhRdx6QuAFRJkFKUGLofbYwxRs/fBe0Y=
From: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
To: linux-media@vger.kernel.org
Date: Sun, 10 Aug 2025 04:29:42 +0300
Message-ID: <20250810013100.29776-1-laurent.pinchart+renesas@ideasonboard.com>
X-Mailer: git-send-email 2.49.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello, Apologies for sending v3 right after v2, I realized
 just a tad too late that I made a mistake and sent the wrong patches. This
 patch series refactors v4l2_fh support to make the API easier to use, simplify
 drivers, and overall improve consistency through the whole subsystem. 
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
X-Headers-End: 1ukuuK-0006fb-IE
X-Mailman-Approved-At: Mon, 11 Aug 2025 06:12:18 +0000
Subject: [Mjpeg-users] [PATCH v3 00/76] media: Rationalise usage of v4l2_fh
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
 Dmitry Osipenko <digetx@gmail.com>,
 Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Andrzej Pietrasiewicz <andrzejtp2010@gmail.com>,
 Michael Grzeschik <m.grzeschik@pengutronix.de>, Robert Foss <rfoss@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Samuel Holland <samuel@sholland.org>, Kevin Hilman <khilman@baylibre.com>,
 Erling Ljunggren <hljunggr@cisco.com>,
 Steve Longerbeam <slongerbeam@gmail.com>, Bingbu Cao <bingbu.cao@intel.com>,
 linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>,
 =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>,
 Al Viro <viro@zeniv.linux.org.uk>, Shuah Khan <skhan@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, Nas Chung <nas.chung@chipsnmedia.com>,
 Andy Walls <awalls@md.metrocast.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, linux-usb@vger.kernel.org,
 Michael Tretter <m.tretter@pengutronix.de>, Jai Luthra <jai.luthra@linux.dev>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hans Verkuil <hans@jjverkuil.nl>, Ming Qian <ming.qian@nxp.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>, linux-doc@vger.kernel.org,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Ariel Otilibili <ariel.otilibili-anieli@eurecom.fr>, kernel@collabora.com,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
 Ingo Molnar <mingo@kernel.org>, Matthew Majewski <mattwmajewski@gmail.com>,
 Yanteng Si <si.yanteng@linux.dev>, Magnus Damm <magnus.damm@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Dongliang Mu <dzm91@hust.edu.cn>,
 Fabien Dessenne <fabien.dessenne@foss.st.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Daniel Scally <dan.scally+renesas@ideasonboard.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Tianshu Qiu <tian.shu.qiu@intel.com>,
 Paul Kocialkowski <paulk@sys-base.io>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-arm-msm@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 linux-samsung-soc@vger.kernel.org, Houlong Wei <houlong.wei@mediatek.com>,
 Biju Das <biju.das.jz@bp.renesas.com>, linux-amlogic@lists.infradead.org,
 Michal Simek <michal.simek@amd.com>, linux-arm-kernel@lists.infradead.org,
 Eduardo Valentin <edubezval@gmail.com>, Zhou Peng <eagle.zhou@nxp.com>,
 linux-renesas-soc@vger.kernel.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Hans Verkuil <hverkuil@kernel.org>,
 Abhishek Tamboli <abhishektamboli9@gmail.com>,
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
 Yunke Cao <yunkec@google.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jacob Chen <jacob-chen@iotwrt.com>, Yunfei Dong <yunfei.dong@mediatek.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Bin Liu <bin.liu@mediatek.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Akash Kumar <quic_akakum@quicinc.com>, mjpeg-users@lists.sourceforge.net,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Sylwester Nawrocki <sylvester.nawrocki@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Dikshita Agarwal <quic_dikshita@quicinc.com>, Tomasz Figa <tfiga@chromium.org>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Ricardo Ribalda <ribalda@chromium.org>,
 Tommaso Merciai <tomm.merciai@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Hans de Goede <hansg@kernel.org>, Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Todor Tomov <todor.too@gmail.com>, Mirela Rabulea <mirela.rabulea@nxp.com>,
 Jiasheng Jiang <jiashengjiangcool@gmail.com>, Alex Shi <alexs@kernel.org>,
 Hugues Fruchet <hugues.fruchet@foss.st.com>,
 Corentin Labbe <clabbe@baylibre.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Ma Ke <make24@iscas.ac.cn>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Abhinav Kumar <abhinav.kumar@linux.dev>, Benoit Parrot <bparrot@ti.com>,
 Parthiban Veerasooran <parthiban.veerasooran@microchip.com>,
 linux-mediatek@lists.infradead.org, Yong Deng <yong.deng@magewell.com>,
 Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
 Tiffany Lin <tiffany.lin@mediatek.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 "Dr. David Alan Gilbert" <linux@treblig.org>,
 =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

Hello,

Apologies for sending v3 right after v2, I realized just a tad too late
that I made a mistake and sent the wrong patches.

This patch series refactors v4l2_fh support to make the API easier to
use, simplify drivers, and overall improve consistency through the whole
subsystem.

In V4L2, drivers that need to store per file handle data allocate their
per file handle data structure in the .open() handler and set the struct
file private_data field to point to it. The private_data field is
entirely managed by drivers, and is generally opaque to the V4L2
framework.

The V4L2 framework also needs to store per file handle data to support
features such as V4L2 events or per file handle controls. To make use of
those features, driver need to use the v4l2_fh structure to store per
file handle data, either as-is, or embedded in a driver-specific
structure. In either case, drivers must initialize the v4l2_fh structure
with v4l2_fh_init(), and set the file private_data field to point to the
v4l2_fh structure. The initialization operation sets the
V4L2_FL_USES_V4L2_FH flag in the video_device.flags field, which
indicates to the V4L2 core that private_data points to a valid v4l2_fh.

In practice, while v4l2_fh usage is optional, all V4L2 drivers make use
of it. As all new drivers are required to use v4l2_fh, this situation
will not change, and opens the door to lots of simplifications in the
V4L2 core and in drivers.

The series starts with patches 01/76 to 07/76 that align the behaviour
of all drivers, ensuring they all store a v4l2_fh pointer in the file
private_data. Seven drivers store a pointer to driver-specific
structures that embed v4l2_fh. This causes no issue in practice as the
v4l2_fh field is always the first one in all those structures, but the
code lacks coherency.

After that, the series eliminates direct access to the file
private_data. Patch 08/76 introduces a helper to retrieve the v4l2_fh
from the file, and patches 09/76 to 11/76 use the helper in drivers.

Patches 12/76 to 25/76 are assorted refactoring and cleanup that prepare
drivers to remove the last manual accesses to private_data. Patches
26/76 and 27/27 drop those, by setting private_data in the v4l2_fh_add()
helper, and resetting it to NULL in v4l2_fh_del(). Prior refactoring
makes it possible for those last two patches to be generated by
coccinelle with only small manual additions.

Patches 28/76 to 32/76 then move to simplify the V4L2 core. As all
drivers are guaranteed to use v4l2_fh, all the V4L2_FL_USES_V4L2_FH
checks can be dropped. Patch 32/76 does so. It however stops short of
dropping V4L2_FL_USES_V4L2_FH completely, and instead adds a temporary
check in the open file operation to verify that the driver uses v4l2_fh.
That check could be dropped after a few kernel releases.

The second part of the series, address a second source of inconsistent
behaviours in drivers. The V4L2 core passes to most ioctl handlers both
the file pointer and the file private_data pointer, with the latter
being passed as a void pointer. Not only is the void pointer redundant,
as driver can (and do in many cases) access the per file data from the
file private_data field, but passing a v4l2_fh through a void pointer is
error-prone as incorrect casts wouldn't be noticed by the compiler.

To fix this, patches 33/76 to 68/76 replace all usage of the void
pointer, retrieving instead the v4l2_fh from the file structure. Patches
69/76 and 70/76 then pass a NULL value through the ioctl void pointer
argument, to ensure no new driver will try to access the v4l2_fh from
there. They also rename the 'void *fh' argument to the ioctl handler
definitions to 'void *priv'.

Finally, patches 71/76 to 76/76 also rename the same arguments in
several locations:

- in the test drivers, the uvcvideo driver and the v4l2-pci-skeleton
  driver due to their role as sample and reference code (71/76 to
  73/76) ;

- in the V4L2 core (74/76) ; and

- in all drivers that use names other than the most common 'void *priv'
  and 'void *fh', in order to standardize on those two names only (75/76
  and 76/76).

Renaming all remaining 'void *fh' to 'void *priv' would be lots of
additional churn, and this series is big enough. Furthermore, we have
plans to introduce a new video_device_state argument to ioctl handlers.
We will likely remove the 'void *' argument at that time, to avoid
modifying all ioctl handlers in all drivers twice in a short amount of
time.

This series is based on the latest linux-media next branch. It has a
soft dependency on the "[PATCH 0/4] Remove the wl1273 FM Radio" series
([1]) in the sense that the wl1273 driver is the very last V4L2 driver
that does not use v4l2_fh. Merging this series first would break the
wl1273 driver (at runtime), but given that the driver is scheduled for
removal due to having no user, this shouldn't be an issue.

Compared to v1, all review comments have been addressed. The most
notable changes are

- the removal of the V4L2_FL_USES_V4L2_FH checks
- the push of the NULL private pointer to the ioctl wrappers
- the reintroduction of the 'void *' parameter name in the ioctl handler
  definitions (now named 'priv'),
- the rename of the 'void *' arguments in drivers and in the V4L2 core

Link to v1: https://lore.kernel.org/r/20250802-media-private-data-v1-0-eb140ddd6a9d@ideasonboard.com

[1] https://lore.kernel.org/linux-media/20250625133258.78133-1-linux@treblig.org/

Jacopo Mondi (37):
  media: rcar-vin: Do not set file->private_data
  media: rzg2l-cru: Do not set file->private_data
  media: camss: Remove custom .release fop()
  media: zoran: Remove zoran_fh structure
  media: zoran: Rename __fh to fh
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
  media: s3c-camif: Access v4l2_fh from file
  media: s5p-g2d: Access v4l2_fh from file
  media: s5p-jpeg: Access v4l2_fh from file
  media: s5p-mfc: Access v4l2_fh from file
  media: bdisp: Access v4l2_fh from file
  media: st: delta: Access v4l2_fh from file
  media: stm32: dma2d: Access v4l2_fh from file
  media: omap3isp: Access v4l2_fh from file
  media: cx18: Access v4l2_fh from file
  media: ivtv: Access v4l2_fh from file
  media: usb: hdpvr: Access v4l2_fh from file
  media: usb: uvc: Access v4l2_fh from file
  media: staging: imx: Access v4l2_fh from file

Laurent Pinchart (39):
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
  media: chips-media: wave5: Pass file pointer to
    wave5_cleanup_instance()
  media: qcom: iris: Pass file pointer to iris_v4l2_fh_(de)init()
  media: qcom: iris: Set file->private_data in iris_v4l2_fh_(de)init()
  media: qcom: iris: Drop unused argument to iris_get_inst()
  media: qcom: venus: Pass file pointer to venus_close_common()
  media: Set file->private_data in v4l2_fh_add()
  media: Reset file->private_data to NULL in v4l2_fh_del()
  media: ipu6: isys: Don't set V4L2_FL_USES_V4L2_FH manually
  media: staging: ipu7: isys: Don't set V4L2_FL_USES_V4L2_FH manually
  media: v4l2-ctrls: Move v4l2_fh retrieval after V4L2_FL_USES_V4L2_FH
    check
  media: v4l2-dev: Make open and release file operations mandatory
  media: Drop V4L2_FL_USES_V4L2_FH checks
  media: s5p-mfc: Store s5p_mfc_ctx in vb2_queue.drv_priv
  media: hantro: Access v4l2_fh from file->private_data
  media: v4l2-ioctl: Stop passing fh pointer to ioctl handlers
  media: v4l2-ioctl: Push NULL fh argument down to ioctl wrappers
  media: test-drivers: Rename second ioctl handlers argument to 'void
    *priv'
  media: uvcvideo: Rename second ioctl handlers argument to 'void *priv'
  media: v4l2-pci-skeleton: Rename second ioctl handlers argument to
    'void *priv'
  media: v4l2-core: Rename second ioctl handlers argument to 'void
    *priv'
  media: v4l2: Rename second ioctl handlers argument to 'void *priv'
  media: staging: Rename second ioctl handlers argument to 'void *priv'

 Documentation/driver-api/media/v4l2-fh.rst    |  59 ++-
 .../zh_CN/video4linux/v4l2-framework.txt      |  16 +-
 .../extron-da-hd-4k-plus.c                    |   4 +-
 .../media/common/videobuf2/videobuf2-v4l2.c   |  12 +-
 drivers/media/pci/bt8xx/bttv-driver.c         |  14 +-
 drivers/media/pci/bt8xx/bttv-vbi.c            |   6 +-
 drivers/media/pci/cobalt/cobalt-v4l2.c        |  60 +--
 drivers/media/pci/cx18/cx18-driver.h          |   2 +-
 drivers/media/pci/cx18/cx18-fileops.c         |  11 +-
 drivers/media/pci/cx18/cx18-ioctl.c           |  64 +--
 .../media/pci/intel/ipu6/ipu6-isys-video.c    |   1 -
 drivers/media/pci/ivtv/ivtv-alsa-pcm.c        |   2 -
 drivers/media/pci/ivtv/ivtv-driver.h          |   7 +-
 drivers/media/pci/ivtv/ivtv-fileops.c         |  40 +-
 drivers/media/pci/ivtv/ivtv-ioctl.c           | 124 ++---
 drivers/media/pci/ivtv/ivtv-irq.c             |   4 +-
 drivers/media/pci/saa7134/saa7134-video.c     |   4 +-
 drivers/media/pci/saa7164/saa7164-encoder.c   |  30 +-
 drivers/media/pci/saa7164/saa7164-vbi.c       |  25 +-
 drivers/media/pci/saa7164/saa7164.h           |  10 +
 drivers/media/pci/zoran/zoran.h               |   6 -
 drivers/media/pci/zoran/zoran_driver.c        |  35 +-
 .../media/platform/allegro-dvt/allegro-core.c |  33 +-
 .../media/platform/amlogic/meson-ge2d/ge2d.c  |  25 +-
 drivers/media/platform/amphion/vpu.h          |   2 +-
 drivers/media/platform/amphion/vpu_v4l2.c     |  22 +-
 drivers/media/platform/amphion/vpu_v4l2.h     |   8 -
 .../platform/chips-media/coda/coda-common.c   |  50 +-
 .../platform/chips-media/wave5/wave5-helper.c |  10 +-
 .../platform/chips-media/wave5/wave5-helper.h |   2 +-
 .../chips-media/wave5/wave5-vpu-dec.c         |  23 +-
 .../chips-media/wave5/wave5-vpu-enc.c         |  29 +-
 .../platform/chips-media/wave5/wave5-vpu.h    |   5 +
 .../platform/imagination/e5010-jpeg-enc.c     |  23 +-
 .../platform/imagination/e5010-jpeg-enc.h     |   5 +
 drivers/media/platform/m2m-deinterlace.c      |  26 +-
 .../platform/mediatek/jpeg/mtk_jpeg_core.c    |  37 +-
 .../media/platform/mediatek/mdp/mtk_mdp_m2m.c |  29 +-
 .../platform/mediatek/mdp3/mtk-mdp3-m2m.c     |  25 +-
 .../mediatek/vcodec/decoder/mtk_vcodec_dec.c  |  36 +-
 .../vcodec/decoder/mtk_vcodec_dec_drv.c       |   9 +-
 .../vcodec/decoder/mtk_vcodec_dec_drv.h       |   5 +
 .../mediatek/vcodec/encoder/mtk_vcodec_enc.c  |  37 +-
 .../vcodec/encoder/mtk_vcodec_enc_drv.c       |   9 +-
 .../vcodec/encoder/mtk_vcodec_enc_drv.h       |   4 +-
 .../media/platform/nvidia/tegra-vde/v4l2.c    |  35 +-
 drivers/media/platform/nxp/dw100/dw100.c      |   7 +-
 .../media/platform/nxp/imx-jpeg/mxc-jpeg.c    |  45 +-
 drivers/media/platform/nxp/imx-pxp.c          |   7 +-
 .../platform/nxp/imx8-isi/imx8-isi-m2m.c      |  21 +-
 drivers/media/platform/nxp/mx2_emmaprp.c      |  24 +-
 .../media/platform/qcom/camss/camss-video.c   |  43 +-
 drivers/media/platform/qcom/iris/iris_vidc.c  |  36 +-
 drivers/media/platform/qcom/venus/core.c      |   4 +-
 drivers/media/platform/qcom/venus/core.h      |   4 +-
 drivers/media/platform/qcom/venus/vdec.c      |   5 +-
 drivers/media/platform/qcom/venus/venc.c      |   5 +-
 .../platform/renesas/rcar-vin/rcar-v4l2.c     |   2 -
 drivers/media/platform/renesas/rcar_fdp1.c    |  17 +-
 drivers/media/platform/renesas/rcar_jpu.c     |  27 +-
 .../platform/renesas/rzg2l-cru/rzg2l-video.c  |   1 -
 .../media/platform/renesas/vsp1/vsp1_histo.c  |   6 +-
 .../media/platform/renesas/vsp1/vsp1_video.c  |  18 +-
 drivers/media/platform/rockchip/rga/rga.c     |  30 +-
 drivers/media/platform/rockchip/rga/rga.h     |   5 +
 .../media/platform/rockchip/rkvdec/rkvdec.c   |  21 +-
 .../media/platform/rockchip/rkvdec/rkvdec.h   |   4 +-
 .../platform/samsung/exynos-gsc/gsc-core.h    |   6 +-
 .../platform/samsung/exynos-gsc/gsc-m2m.c     |  37 +-
 .../platform/samsung/exynos4-is/fimc-core.h   |   5 +-
 .../platform/samsung/exynos4-is/fimc-m2m.c    |  19 +-
 .../samsung/s3c-camif/camif-capture.c         |  26 +-
 drivers/media/platform/samsung/s5p-g2d/g2d.c  |  40 +-
 .../platform/samsung/s5p-jpeg/jpeg-core.c     |  33 +-
 .../media/platform/samsung/s5p-mfc/s5p_mfc.c  |  17 +-
 .../platform/samsung/s5p-mfc/s5p_mfc_common.h |   6 +-
 .../platform/samsung/s5p-mfc/s5p_mfc_dec.c    |  34 +-
 .../platform/samsung/s5p-mfc/s5p_mfc_enc.c    |  38 +-
 .../media/platform/st/sti/bdisp/bdisp-v4l2.c  |  30 +-
 .../media/platform/st/sti/delta/delta-v4l2.c  |  41 +-
 drivers/media/platform/st/sti/hva/hva-v4l2.c  |  38 +-
 drivers/media/platform/st/sti/hva/hva.h       |   2 -
 drivers/media/platform/st/stm32/dma2d/dma2d.c |  28 +-
 .../sunxi/sun6i-csi/sun6i_csi_capture.c       |  16 +-
 .../media/platform/sunxi/sun8i-di/sun8i-di.c  |  10 +-
 .../sunxi/sun8i-rotate/sun8i_rotate.c         |  10 +-
 .../platform/synopsys/hdmirx/snps_hdmirx.c    |   8 +-
 .../platform/ti/j721e-csi2rx/j721e-csi2rx.c   |   2 +-
 drivers/media/platform/ti/omap/omap_vout.c    |   6 +-
 drivers/media/platform/ti/omap3isp/ispvideo.c |  36 +-
 drivers/media/platform/ti/omap3isp/ispvideo.h |   6 +-
 drivers/media/platform/ti/vpe/vpe.c           |  21 +-
 drivers/media/platform/verisilicon/hantro.h   |   4 +-
 .../media/platform/verisilicon/hantro_drv.c   |  10 +-
 .../media/platform/verisilicon/hantro_v4l2.c  |  22 +-
 drivers/media/platform/xilinx/xilinx-dma.c    |  10 +-
 .../radio/si4713/radio-platform-si4713.c      |  10 +-
 .../media/test-drivers/vicodec/vicodec-core.c |  21 +-
 drivers/media/test-drivers/vim2m.c            |   7 +-
 .../media/test-drivers/vimc/vimc-capture.c    |   2 +-
 drivers/media/test-drivers/visl/visl-core.c   |   5 +-
 drivers/media/test-drivers/visl/visl.h        |   7 +-
 drivers/media/test-drivers/vivid/vivid-core.c | 100 ++--
 .../media/test-drivers/vivid/vivid-radio-rx.c |  12 +-
 .../media/test-drivers/vivid/vivid-radio-rx.h |   8 +-
 .../media/test-drivers/vivid/vivid-radio-tx.c |   8 +-
 .../media/test-drivers/vivid/vivid-radio-tx.h |   4 +-
 .../media/test-drivers/vivid/vivid-sdr-cap.c  |  18 +-
 .../media/test-drivers/vivid/vivid-sdr-cap.h  |  18 +-
 .../media/test-drivers/vivid/vivid-vbi-cap.c  |  10 +-
 .../media/test-drivers/vivid/vivid-vbi-cap.h  |   8 +-
 .../media/test-drivers/vivid/vivid-vbi-out.c  |   8 +-
 .../media/test-drivers/vivid/vivid-vbi-out.h  |   6 +-
 .../media/test-drivers/vivid/vivid-vid-cap.c  |  24 +-
 .../media/test-drivers/vivid/vivid-vid-cap.h  |  24 +-
 .../test-drivers/vivid/vivid-vid-common.c     |   8 +-
 .../test-drivers/vivid/vivid-vid-common.h     |   8 +-
 .../media/test-drivers/vivid/vivid-vid-out.c  |  16 +-
 .../media/test-drivers/vivid/vivid-vid-out.h  |  16 +-
 drivers/media/usb/cx231xx/cx231xx-417.c       |   2 +-
 drivers/media/usb/gspca/gspca.c               |  18 +-
 drivers/media/usb/hdpvr/hdpvr-video.c         |  69 +--
 drivers/media/usb/pvrusb2/pvrusb2-v4l2.c      |  69 +--
 drivers/media/usb/uvc/uvc_metadata.c          |  22 +-
 drivers/media/usb/uvc/uvc_v4l2.c              |  85 ++--
 drivers/media/usb/uvc/uvcvideo.h              |   5 +
 drivers/media/v4l2-core/v4l2-compat-ioctl32.c |   9 +-
 drivers/media/v4l2-core/v4l2-ctrls-api.c      |  11 +-
 drivers/media/v4l2-core/v4l2-dev.c            |  45 +-
 drivers/media/v4l2-core/v4l2-fh.c             |  16 +-
 drivers/media/v4l2-core/v4l2-ioctl.c          | 456 +++++++++---------
 drivers/media/v4l2-core/v4l2-mem2mem.c        |  50 +-
 drivers/media/v4l2-core/v4l2-subdev.c         |  16 +-
 .../staging/media/imx/imx-media-csc-scaler.c  |  26 +-
 drivers/staging/media/ipu7/ipu7-isys-video.c  |   1 -
 drivers/staging/media/meson/vdec/vdec.c       |  29 +-
 drivers/staging/media/meson/vdec/vdec.h       |   5 +
 drivers/staging/media/sunxi/cedrus/cedrus.c   |   8 +-
 drivers/staging/media/sunxi/cedrus/cedrus.h   |   5 +
 .../staging/media/sunxi/cedrus/cedrus_video.c |   5 -
 .../media/sunxi/sun6i-isp/sun6i_isp_capture.c |  16 +-
 .../media/sunxi/sun6i-isp/sun6i_isp_params.c  |   6 +-
 drivers/staging/most/video/video.c            |  19 +-
 drivers/usb/gadget/function/uvc.h             |   5 +
 drivers/usb/gadget/function/uvc_v4l2.c        |   8 +-
 include/media/v4l2-ctrls.h                    |   4 +-
 include/media/v4l2-dev.h                      |   2 +-
 include/media/v4l2-fh.h                       |  30 +-
 include/media/v4l2-ioctl.h                    | 238 ++++-----
 include/media/v4l2-mem2mem.h                  |  42 +-
 samples/v4l/v4l2-pci-skeleton.c               |  10 +-
 151 files changed, 1792 insertions(+), 1806 deletions(-)


base-commit: d968e50b5c26642754492dea23cbd3592bde62d8
-- 
Regards,

Laurent Pinchart



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
