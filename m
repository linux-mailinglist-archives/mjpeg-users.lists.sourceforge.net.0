Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D3D5640FD
	for <lists+mjpeg-users@lfdr.de>; Sat,  2 Jul 2022 17:22:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1o7exG-0004la-9C; Sat, 02 Jul 2022 15:22:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <roman.gushchin@linux.dev>)
 id 1o7RoD-0000zc-Tz; Sat, 02 Jul 2022 01:20:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UefsvJWBOCsJEHG/jcpgIGR+KBtUCRUqjXcROu7qjh4=; b=Y2ajfIPZMW4zCtPzVJYxZCbeST
 5DNsNQr+e3Kh5YpAln/nmn9IPeBKPUby/hG7rwmFEeNs4iM15XFbtktddvWvE9FWL+y8jxwBqSy36
 pdVsl7/GcZL07nXzH8gHVkzIL1yQfVgwN//AVVOifOy1Gy0nUHZC2NyVA7yf2X1UqDzs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UefsvJWBOCsJEHG/jcpgIGR+KBtUCRUqjXcROu7qjh4=; b=fWf4vCPCrHCWxdihS2922IhBJr
 qKQLG/TMBaqCa4SNIdA7YkLqrNuH4WSWcCdKw0nd3Eg7YGvZ5RgHNNn7Mdm4zPvkgdik3mRVfVrFX
 q7PXUfl3NNYSn+e099+RjcpxpPbmbzGiy9homSYN0Y9ibe37Vuu+87o/M2ivZzt6VjL4=;
Received: from out1.migadu.com ([91.121.223.63])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o7Ro3-0000Ux-ND; Sat, 02 Jul 2022 01:20:28 +0000
Date: Fri, 1 Jul 2022 18:03:10 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
 t=1656723813;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=UefsvJWBOCsJEHG/jcpgIGR+KBtUCRUqjXcROu7qjh4=;
 b=oGHlDm4tgr6UzDbC5z/sb7q2WEts5mi8mJ8aiIMXBOzW75BRr4BaIuszRL9hOCzoFfVxku
 tmO6BM7R9GzDDzZbe/MQeyeOEOAx+3VHqH/w/8ecEZ7fImffcNYGlal4Cw/gQ26E9Sym1J
 usYWeNXz8OdB9Vt23HLuxwKOwXbZ7ng=
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Roman Gushchin <roman.gushchin@linux.dev>
To: Andrew Morton <akpm@linux-foundation.org>,
 kernel test robot <lkp@intel.com>
Message-ID: <Yr+ZTnLb9lJk6fJO@castle>
References: <62be3696.+PAAAVlbtWK6G2hk%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <62be3696.+PAAAVlbtWK6G2hk%lkp@intel.com>
X-Migadu-Flow: FLOW_OUT
X-Migadu-Auth-User: linux.dev
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  esOn Fri, Jul 01, 2022 at 07:49:42AM +0800, kbuild test robot
 wrote: > tree/branch:
 https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
 master > branch HEAD: 6cc11d2a1759275b856e464265 [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux.dev]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.121.223.63 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1o7Ro3-0000Ux-ND
X-Mailman-Approved-At: Sat, 02 Jul 2022 15:22:38 +0000
Subject: Re: [Mjpeg-users] [linux-next:master] BUILD REGRESSION
 6cc11d2a1759275b856e464265823d94aabd5eaf
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
Cc: nvdimm@lists.linux.dev, legousb-devel@lists.sourceforge.net,
 dri-devel@lists.freedesktop.org, linux-sctp@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-samsung-soc@vger.kernel.org,
 ceph-devel@vger.kernel.org, linux-pm@vger.kernel.org,
 usbb2k-api-dev@nongnu.org, linux-omap@vger.kernel.org,
 megaraidlinux.pdl@broadcom.com, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-perf-users@vger.kernel.org,
 netfilter-devel@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-wpan@vger.kernel.org,
 linux-fbdev@vger.kernel.org, linux-parport@lists.infradead.org,
 samba-technical@lists.samba.org, linux-cxl@vger.kernel.org,
 virtualization@lists.linux-foundation.org, dm-devel@redhat.com,
 target-devel@vger.kernel.org, dev@openvswitch.org, linux-cifs@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
 iommu@lists.linux.dev, coreteam@netfilter.org, linux-media@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-block@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-integrity@vger.kernel.org,
 linux-efi@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-fpga@vger.kernel.org,
 alsa-devel@alsa-project.org, linux-mtd@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-phy@lists.infradead.org,
 sound-open-firmware@alsa-project.org, linux-rdma@vger.kernel.org,
 linux-staging@lists.linux.dev, amd-gfx@lists.freedesktop.org,
 isdn4linux@listserv.isdn4linux.de, linux-input@vger.kernel.org,
 linux-ext4@vger.kernel.org, mjpeg-users@lists.sourceforge.net,
 openipmi-developer@lists.sourceforge.net, linux-hwmon@vger.kernel.org,
 linux-parisc@vger.kernel.org, linux-ide@vger.kernel.org,
 linux-mmc@vger.kernel.org, iommu@lists.linux-foundation.org,
 keyrings@vger.kernel.org, netdev@vger.kernel.org, kvm@vger.kernel.org,
 damon@lists.linux.dev, linux-mm@kvack.org,
 accessrunner-general@lists.sourceforge.net,
 linux1394-devel@lists.sourceforge.net, linux-leds@vger.kernel.org,
 rds-devel@oss.oracle.com, linux-x25@vger.kernel.org, dccp@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-serial@vger.kernel.org,
 devicetree@vger.kernel.org, linux-nfc@lists.01.org,
 osmocom-net-gprs@lists.osmocom.org, apparmor@lists.ubuntu.com,
 linux-raid@vger.kernel.org, linux-bcache@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org,
 linux-scsi@vger.kernel.org, patches@opensource.cirrus.com,
 linux-unionfs@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 ntb@lists.linux.dev, tipc-discussion@lists.sourceforge.net,
 linuxppc-dev@lists.ozlabs.org, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

esOn Fri, Jul 01, 2022 at 07:49:42AM +0800, kbuild test robot wrote:
> tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> branch HEAD: 6cc11d2a1759275b856e464265823d94aabd5eaf  Add linux-next specific files for 20220630
> 
> Error/Warning reports:
> 
> https://lore.kernel.org/linux-mm/202206301859.UodBCrva-lkp@intel.com
> 
> Error/Warning: (recently discovered and may have been fixed)
> 
> arch/powerpc/kernel/interrupt.c:542:55: error: suggest braces around empty body in an 'if' statement [-Werror=empty-body]
> arch/powerpc/kernel/interrupt.c:542:55: warning: suggest braces around empty body in an 'if' statement [-Wempty-body]
> drivers/pci/endpoint/functions/pci-epf-vntb.c:975:5: warning: no previous prototype for 'pci_read' [-Wmissing-prototypes]
> drivers/pci/endpoint/functions/pci-epf-vntb.c:984:5: warning: no previous prototype for 'pci_write' [-Wmissing-prototypes]
> mm/shrinker_debug.c:143:9: warning: function 'shrinker_debugfs_rename' might be a candidate for 'gnu_printf' format attribute [-Wsuggest-attribute=format]
> mm/shrinker_debug.c:217:9: warning: function 'shrinker_debugfs_rename' might be a candidate for 'gnu_printf' format attribute [-Wsuggest-attribute=format]
> mm/vmscan.c:637:9: warning: function 'prealloc_shrinker' might be a candidate for 'gnu_printf' format attribute [-Wsuggest-attribute=format]
> mm/vmscan.c:642:9: warning: function 'prealloc_shrinker' might be a candidate for 'gnu_printf' format attribute [-Wsuggest-attribute=format]
> mm/vmscan.c:697:9: warning: function 'register_shrinker' might be a candidate for 'gnu_printf' format attribute [-Wsuggest-attribute=format]
> mm/vmscan.c:702:9: warning: function 'register_shrinker' might be a candidate for 'gnu_printf' format attribute [-Wsuggest-attribute=format]

Shrinker-related warnings should be fixed by the following patch.

Thanks!

--

From c399aff65c7745a209397a531c5b28fd404d83c2 Mon Sep 17 00:00:00 2001
From: Roman Gushchin <roman.gushchin@linux.dev>
Date: Fri, 1 Jul 2022 17:38:31 -0700
Subject: [PATCH] mm:shrinkers: fix build warnings

Add __printf(a, b) attributes to shrinker functions taking shrinker
name as an argument to avoid compiler warnings like:

mm/shrinker_debug.c:143:9: warning: function 'shrinker_debugfs_rename'
  might be a candidate for 'gnu_printf' format attribute [-Wsuggest-attribute=format]
mm/shrinker_debug.c:217:9: warning: function 'shrinker_debugfs_rename'
  might be a candidate for 'gnu_printf' format attribute [-Wsuggest-attribute=format]
mm/vmscan.c:637:9: warning: function 'prealloc_shrinker' might be a
  candidate for 'gnu_printf' format attribute [-Wsuggest-attribute=format]
mm/vmscan.c:642:9: warning: function 'prealloc_shrinker' might be a
  candidate for 'gnu_printf' format attribute [-Wsuggest-attribute=format]
mm/vmscan.c:697:9: warning: function 'register_shrinker' might be a
  candidate for 'gnu_printf' format attribute [-Wsuggest-attribute=format]
mm/vmscan.c:702:9: warning: function 'register_shrinker' might be a
  candidate for 'gnu_printf' format attribute [-Wsuggest-attribute=format]

Signed-off-by: Roman Gushchin <roman.gushchin@linux.dev>
---
 include/linux/shrinker.h | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/include/linux/shrinker.h b/include/linux/shrinker.h
index 64416f3e0a1f..08e6054e061f 100644
--- a/include/linux/shrinker.h
+++ b/include/linux/shrinker.h
@@ -93,9 +93,11 @@ struct shrinker {
  */
 #define SHRINKER_NONSLAB	(1 << 3)
 
-extern int prealloc_shrinker(struct shrinker *shrinker, const char *fmt, ...);
+extern int __printf(2, 3) prealloc_shrinker(struct shrinker *shrinker,
+					    const char *fmt, ...);
 extern void register_shrinker_prepared(struct shrinker *shrinker);
-extern int register_shrinker(struct shrinker *shrinker, const char *fmt, ...);
+extern int __printf(2, 3) register_shrinker(struct shrinker *shrinker,
+					    const char *fmt, ...);
 extern void unregister_shrinker(struct shrinker *shrinker);
 extern void free_prealloced_shrinker(struct shrinker *shrinker);
 extern void synchronize_shrinkers(void);
@@ -103,8 +105,8 @@ extern void synchronize_shrinkers(void);
 #ifdef CONFIG_SHRINKER_DEBUG
 extern int shrinker_debugfs_add(struct shrinker *shrinker);
 extern void shrinker_debugfs_remove(struct shrinker *shrinker);
-extern int shrinker_debugfs_rename(struct shrinker *shrinker,
-				   const char *fmt, ...);
+extern int __printf(2, 3) shrinker_debugfs_rename(struct shrinker *shrinker,
+						  const char *fmt, ...);
 #else /* CONFIG_SHRINKER_DEBUG */
 static inline int shrinker_debugfs_add(struct shrinker *shrinker)
 {
@@ -113,8 +115,8 @@ static inline int shrinker_debugfs_add(struct shrinker *shrinker)
 static inline void shrinker_debugfs_remove(struct shrinker *shrinker)
 {
 }
-static inline int shrinker_debugfs_rename(struct shrinker *shrinker,
-					  const char *fmt, ...)
+static inline __printf(2, 3)
+int shrinker_debugfs_rename(struct shrinker *shrinker, const char *fmt, ...)
 {
 	return 0;
 }
-- 
2.36.1



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
