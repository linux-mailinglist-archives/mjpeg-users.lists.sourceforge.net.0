Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A78B18EF4
	for <lists+mjpeg-users@lfdr.de>; Sat,  2 Aug 2025 15:55:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:To:In-Reply-To:References:Message-Id:MIME-Version:Date:From:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K7lMlSd66r7OS4agpWmosFc88axxu958vzBOJh6SGpU=; b=DrurWZ5fafxSLqiYtdmaMEzE6v
	WDJM517Xd8jbaa5WwlXuMsyrMoeMe84ZKknPCrU1n0wJD1r147wlIXdCSkF9ovdxi1NwB4hmyrPHk
	C5RPWAA+QwqG6B3USmX+uCi0J/KiNWD1/0Nv/MKkbPOtGI+3DRwtwMivdi7uRljemavk=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1uiChw-0006h9-NK;
	Sat, 02 Aug 2025 13:55:32 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacopo.mondi@ideasonboard.com>) id 1ui8mP-0001AY-4c
 for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:43:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/Llv1fI0uT6DmpUWMCn5fuuhh8HoW1BKSHm4iiuLz88=; b=BjcEQF3m76xeDoVsUn/v2kq24w
 A6GsilxieNB2dxQ/5VsCvj5dTrY/fafabX7FW9qmJlh0HoFaCYrBqcpr+qGO7Qbq2d+/bc8GRlvOZ
 Mk9UjO4QAtuTG3PwC//vEb9qRQmW90R3Ye9+95Zv7WpLpCA+HN344TWy0Cfock0UUzdk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/Llv1fI0uT6DmpUWMCn5fuuhh8HoW1BKSHm4iiuLz88=; b=DzAg8Nlg/xWp9FGf4wy7fV9+bj
 0IBSSfjjZ/myNBbxaJabVvMOCe8gbhnH/osW7l3HBCJRLSoHJszu3w8ZgRR65oXXQ0LSQPHH+gxhx
 hIFsJq5ZdQoa2mJ1DSh6hron/c6xbzQxAGcJLi2XvjyC8oiYbg4loUFKLHGTnXInHrGw=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ui8mO-0005uS-Ig for mjpeg-users@lists.sourceforge.net;
 Sat, 02 Aug 2025 09:43:53 +0000
Received: from [192.168.0.172] (mob-5-90-138-121.net.vodafone.it
 [5.90.138.121])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id AFB0232DD;
 Sat,  2 Aug 2025 11:24:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1754126702;
 bh=J8TTwhJddKQQCi/2/sZ0CDO0sHlrqQEKhYX28Jwyu0w=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=tM1rKmPr+fH2WfgPtZCZkJjqcu/w7/G+w6cz92yWycqLT5VpOjmPaMdaJfqzClFxZ
 5ClT7kBVW481USto1xQwyh7d2yBzFeZ57f9JBGoGwhKuk1y/tiNNcIzdVEmbigKo+i
 EUoFs8UzINRMjvZZz5Sw6nhUJny7Gin1ywKuJ6B0=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Sat, 02 Aug 2025 11:22:36 +0200
MIME-Version: 1.0
Message-Id: <20250802-media-private-data-v1-14-eb140ddd6a9d@ideasonboard.com>
References: <20250802-media-private-data-v1-0-eb140ddd6a9d@ideasonboard.com>
In-Reply-To: <20250802-media-private-data-v1-0-eb140ddd6a9d@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3037;
 i=jacopo.mondi@ideasonboard.com; h=from:subject:message-id;
 bh=hzBP7yKh2YjUysXVlLoN8hpVPYpgEzv7aW1XCIBS1I0=;
 b=owEBbQKS/ZANAwAKAXI0Bo8WoVY8AcsmYgBojdj4AOSO5FBCFS9eBnS6KgpFdnr2VL0H2UfS/
 DqQ0HfrHvGJAjMEAAEKAB0WIQS1xD1IgJogio9YOMByNAaPFqFWPAUCaI3Y+AAKCRByNAaPFqFW
 PMm3D/oDVbxrw1/iCgPXqStUx8dfqUJ7S6vGmdOYo0/z1iksjHzSYi48UbwtNPUG7fuHA21WJ1+
 kiPRiGKCdr7IvMGFPn+j/bFV9E/BXMYyPGvHFiWXtgSOqAJotOWsw8+b5INDo9uPZMDDeMOFy0C
 zLQcJ3eXtVeuSokKmLg35b4Wrd+FPqOMgjTOLd34T47bVZpmQoDbBQIfCm7CXbW4gE3j9D64rMC
 odNDo8AGXh8fTYMNENAeaX8+x5JZ0aWkkTxhu4OZ/dlnmjhSj73sELzFd0fXHcaMhaMakMrK/iL
 zokSPIqRSpg0tDyguHqphECalSY8+YnokUIspV0vSEyhl7stnE4cLs3mlbY4+dh6QlNaSmlAf3l
 64oz6QQbIt20Gpbq8xnXVgNweOalGy4qJ4QEcrx5XDGMYZbVZ5GY44CbagDYuC5Zj/CrI0eN4O5
 MfKakB5B6wFkn+t+p20yWBTnCDW2MFBuQVeHNCCJcm0vs6G8FgrBiMrueeIYm4ejGumx2u+je3Y
 WoQxW0Cb9mtc6ZDqQfo0qZSej9IbCTT/UPvbcjJuLxbmi4zZn9yYpAZR5AVslfu8ZAXjvw4k/wh
 FznYp7H1Ps4G02wLUtxgZNLFh9Jl/HWXlDKawTwpi1Y9HJXZPnI7IbQZ3dd7nGmJEpFneZx4LR+
 Q6bzQiwDKqZ7sEA==
X-Developer-Key: i=jacopo.mondi@ideasonboard.com; a=openpgp;
 fpr=72392EDC88144A65C701EA9BA5826A2587AD026B
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
 The v4l2_fh initialized and added in vpu_v4l2_open() is delete and cleaned
 up when the last reference to the vpu_inst is released. This may happen later
 than at vpu_v4l2_close() time. 
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
X-Headers-End: 1ui8mO-0005uS-Ig
X-Mailman-Approved-At: Sat, 02 Aug 2025 13:55:15 +0000
Subject: [Mjpeg-users] [PATCH 14/65] media: amphion: Delete v4l2_fh
 synchronously in .release()
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

From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

The v4l2_fh initialized and added in vpu_v4l2_open() is delete and
cleaned up when the last reference to the vpu_inst is released. This may
happen later than at vpu_v4l2_close() time.

Not deleting and cleaning up the v4l2_fh when closing the file handle to
the video device is not ideal, as the v4l2_fh will still be present in
the video device's fh_list, and will store a copy of events queued to
the video device. There may also be other side effects of keeping alive
an object that represents an open file handle after the file handle is
closed.

The v4l2_fh instance is embedded in the vpu_inst structure, and is
accessed in two different ways:

- in vpu_notify_eos() and vpu_notify_source_change(), to queue V4L2
  events to the file handle ; and

- through the driver to access the v4l2_fh.m2m_ctx pointer.

The v4l2_fh.m2m_ctx pointer is not touched by v4l2_fh_del() and
v4l2_fh_exit(). It is set to NULL by the driver when closing the file
handle, in vpu_v4l2_close().

The vpu_notify_eos() and vpu_notify_source_change() functions are called
in vpu_set_last_buffer_dequeued() and vdec_handle_resolution_change()
respectively, only if the v4l2_fh.m2m_ctx pointer is not NULL. There is
therefore a guarantee that no new event will be queued to the v4l2_fh
after vpu_v4l2_close() destroys the m2m_ctx.

The vpu_notify_eos() function is also called from vpu_vb2_buf_finish(),
which is guaranteed to be called for all queued buffers when
vpu_v4l2_close() calls v4l2_m2m_ctx_release(), and will not be called
later.

It is therefore safe to assume that the driver will not touch the
v4l2_fh, except to check the m2m_ctx pointer, after vpu_v4l2_close()
destroys the m2m_ctx. We can safely delete and cleanup the v4l2_fh
synchronously in vpu_v4l2_close().

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
 drivers/media/platform/amphion/vpu_v4l2.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/amphion/vpu_v4l2.c b/drivers/media/platform/amphion/vpu_v4l2.c
index 306d94e0f8e79faaacfa35b28e5786860f7bd1ca..57ca6262bb04b356a85e217ef51cfb13cb9a0a36 100644
--- a/drivers/media/platform/amphion/vpu_v4l2.c
+++ b/drivers/media/platform/amphion/vpu_v4l2.c
@@ -724,8 +724,6 @@ static int vpu_v4l2_release(struct vpu_inst *inst)
 
 	v4l2_ctrl_handler_free(&inst->ctrl_handler);
 	mutex_destroy(&inst->lock);
-	v4l2_fh_del(&inst->fh);
-	v4l2_fh_exit(&inst->fh);
 
 	call_void_vop(inst, cleanup);
 
@@ -794,6 +792,8 @@ int vpu_v4l2_open(struct file *file, struct vpu_inst *inst)
 
 	return 0;
 error:
+	v4l2_fh_del(&inst->fh);
+	v4l2_fh_exit(&inst->fh);
 	vpu_inst_put(inst);
 	return ret;
 }
@@ -813,6 +813,9 @@ int vpu_v4l2_close(struct file *file)
 	call_void_vop(inst, release);
 	vpu_inst_unlock(inst);
 
+	v4l2_fh_del(&inst->fh);
+	v4l2_fh_exit(&inst->fh);
+
 	vpu_inst_unregister(inst);
 	vpu_inst_put(inst);
 

-- 
2.49.0



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
