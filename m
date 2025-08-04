Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CC505B1AE73
	for <lists+mjpeg-users@lfdr.de>; Tue,  5 Aug 2025 08:37:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:MIME-Version:In-Reply-To:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qPADkEIo96tDPhMmFp+MhxVjOKZVMc5R7crLVMX7jtM=; b=LXA/+9p+Z/BDpcw9lo5YbShDHa
	PODAO/ihmuJFbXhj6p2wxi8a5/G3JOWOtzciLfuH2uUrB2i0yYmreQj9qjU9Yjw8G62GHqEICfM8E
	PkQMFjH5q6T9YdUC0B5SJ28DXwsg8riBADRyBHgJjs7Eif9mqaO9Lgdc9tDZnWw+3GTs=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1ujBIQ-00082Q-JG;
	Tue, 05 Aug 2025 06:37:14 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tommaso.merciai.xr@bp.renesas.com>)
 id 1uiuQX-00012T-Jm for mjpeg-users@lists.sourceforge.net;
 Mon, 04 Aug 2025 12:36:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:In-Reply-To:Content-Type:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LahB2slSphuLvkWzngb3sjn8vTJACjVcm2Z5KzBk35w=; b=Ayu9H78lhKiaq6O0Hq8QObMMIk
 GgEShUoWp/Xh4X7A05d4qIlM6UP6LAoSDfWzvUOIK8WdLkBm1XTA9UdU5fYmXKPGEBqUPe/2gfLBu
 GGHEHLX0kwJgBnqUt3BfmztJBIaTF6kxcDFygkZ2hJMmjxadOTErbJ8oVSGuHkBdCQu4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:In-Reply-To:Content-Type:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LahB2slSphuLvkWzngb3sjn8vTJACjVcm2Z5KzBk35w=; b=dwhHF8vVL9KirWWIp07iDZZIb8
 D2h75fGdFJDVF+ipqg8tfM2QqQrTqyWXVo9h85/VVP1WP3IYmtLl2szGa65auKSq5JtBUaSe7K3An
 sOP7JIULt+2yB82sc2V3usahM7zHkzWOqFaKVfw1wTvgGYJqVivXZvpW2sETa5kiznRU=;
Received: from mail-japaneastazon11011011.outbound.protection.outlook.com
 ([52.101.125.11] helo=TYVP286CU001.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uiuQW-0003nz-VI for mjpeg-users@lists.sourceforge.net;
 Mon, 04 Aug 2025 12:36:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pv3vIsGWq8Cds6UA9NxxrO2u4MS5eneXoYWQ7mpHKC599ToKQI6mMAwLWKx1WNRSqHviLN3BUwt4UcILkIrBvsKpOnma/VbFYTQG0vHw7IY7NHvThMKPk3gw6aK3XErSabs+x2ZzvSm18dNvGnQyCkGefWGSyEBmk9dM0dyoWkDJgIy1+BDIKsG/5oWk3h6ErD7RWHQiCmNUn2fXNevRO98O4b5u8bxx2aqRcl9VcRRGT3dQCLfra5XepLrSJ2N5i8p6ixaVcUwo4R0XmwbZoqw9tsO09L4ReiqB2bYT6b9fYcSbuKAygyNno0jNPUN3+D+BHzTQBPe5GIU8BlshRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LahB2slSphuLvkWzngb3sjn8vTJACjVcm2Z5KzBk35w=;
 b=WqSzWt4PB1Z1c8EuXxg/+7QM9s+LdptSVdP87mLLzeeRQpFPmyYoeGKKnhGXYzSeTRdchNwhq77NT6PNEMIasyKAHcDJCWsLG5hsiVfSg2XO7F9+/uYqA6UfOcs76C4Mrt7b3UIUoN16d55QGVB20T5roajlVYRbXkC25yyDqoKhP9GvBRSR3j1Ryv6nqfsctjudzDFGe9ORlifZHOrXBqwnLlHXl8/JxNnjiskOVaF5UFfwpsbGwIpH8twmdIzx1UMUjBeYV7IB+mB9ztGpgUuGAOyf8uu7yjYt8onvxYO1B+wbDyJFzm41wHNdB6/gm8h/HTxem0Q/Uwiht3RU+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LahB2slSphuLvkWzngb3sjn8vTJACjVcm2Z5KzBk35w=;
 b=KVe4Ltf6kbSs60KbSfjSMnIXdw43+XNmTn+FOJA0CPtplOB60KtvthdJWCBVoxsieGxxDDM+n+urJ4yrjwty93+I15SF64TM8vaCd+6/P/LIDFzEdi+lRHDtyjfBilExY71QNS+M1qA7bbANF8geTwoD4Jb/4D7OLe9pjh0Z77o=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
Received: from OS3PR01MB6657.jpnprd01.prod.outlook.com (2603:1096:604:10b::10)
 by TYYPR01MB10592.jpnprd01.prod.outlook.com (2603:1096:400:30e::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.20; Mon, 4 Aug
 2025 10:02:35 +0000
Received: from OS3PR01MB6657.jpnprd01.prod.outlook.com
 ([fe80::8575:e22a:3c44:76f0]) by OS3PR01MB6657.jpnprd01.prod.outlook.com
 ([fe80::8575:e22a:3c44:76f0%5]) with mapi id 15.20.8989.017; Mon, 4 Aug 2025
 10:02:30 +0000
Date: Mon, 4 Aug 2025 12:01:47 +0200
From: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Message-ID: <aJCFC-_F6l7Z40A2@tom-desktop>
References: <20250802-media-private-data-v1-0-eb140ddd6a9d@ideasonboard.com>
 <20250802-media-private-data-v1-18-eb140ddd6a9d@ideasonboard.com>
Content-Disposition: inline
In-Reply-To: <20250802-media-private-data-v1-18-eb140ddd6a9d@ideasonboard.com>
X-ClientProxiedBy: FR0P281CA0211.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ac::6) To OS3PR01MB6657.jpnprd01.prod.outlook.com
 (2603:1096:604:10b::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OS3PR01MB6657:EE_|TYYPR01MB10592:EE_
X-MS-Office365-Filtering-Correlation-Id: 307728cb-3ea2-46b9-e7e6-08ddd33e058c
X-LD-Processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|52116014|376014|7416014|7053199007|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?4Dx7cqXSiPRwV//Bkm4NvhTALZy+WVjuKm+Pm8V7LAVPPNryn2VtFRizi56C?=
 =?us-ascii?Q?fKUDZnARKg8UBkemz+AzfGjyRf0HYRsL6iepBv++wz6d7eMLQU3k/3JAwLOO?=
 =?us-ascii?Q?7NE8W8iiwLXczmM8yTkuIoVtBLAULOvsnT6CNNKlsr8f0+L4JH+gwJSSubrT?=
 =?us-ascii?Q?tVj4KkD4ZXbMDHhTgwoI44yxWcAg1FxscqBsNs7Rr7yvkv6/OM0xluPkzwNU?=
 =?us-ascii?Q?zF4zF9Je2MEJgI8susgGqa31ugP8cKseg8Uy1bnj3ILqww6frv423Gb3ldKK?=
 =?us-ascii?Q?0tWV/5/8qzD6sbfo+P7pGf+Rer0n/Aeva+Nl93YorqpKlS+nToE2o64l6qnF?=
 =?us-ascii?Q?2Rp8bYlMwrNIQA1J02PjBW/9OkmaiOCtJeTt4q7oH4D4bJcTyfWAEjjLzLX3?=
 =?us-ascii?Q?BLL5U4zwC3iTwFz8yWb3DUcpOp7RbGIw8HFFzcw1BGxRhXQat/SUJb/+oNKt?=
 =?us-ascii?Q?tCvo5dqg9u4UorRuOHBGnvBfIp0kyRYgXKq7Try8WxuY9mJCDlzxb745acVk?=
 =?us-ascii?Q?i1zLkeGlfhU5wtbmRFqMTH08ZIh7fEdZrqe6rfgDkByx4I79dKslqrQN1iNV?=
 =?us-ascii?Q?3FPDwuPvrDOF/H0xIyhw9h7OfAAMZPtRm4dALm2lY9hBr98Rkymm+Sj+Dw2V?=
 =?us-ascii?Q?51WjlXslO8eLzcQNECkY3gLTFpzlYQjIgBRvzwWqqdmkdp24xPz2O4USAOSU?=
 =?us-ascii?Q?fDN0YYnrn6Jc9DsPl4qeHKTJrHSuYruGIrfhf0LmDtuPQaXrUrPpejPhwTyv?=
 =?us-ascii?Q?atahvHYztWdBQ/beoPI1aeM6NcyGgI/JpH5gCGnUDQlmIYLTeGinDzJRAAVH?=
 =?us-ascii?Q?6aObM2X+BKkUwPXj99/QjSjF2K3+MDQbJsfgYdXnuwfzP7YwOgmYrWyqT+44?=
 =?us-ascii?Q?of2faiJcqTNOELt8uvLg80btrnavoCKYDyIevSKL3/jkcuY0sbTFdAP4CEAl?=
 =?us-ascii?Q?QZKJ6K7+h620ssWcY1b56p8tLdDGyGp49J4vQspTJRIpN/zNLLV6vUhVBmaT?=
 =?us-ascii?Q?emOqL1qaXQ0jcxEC4xNAcBcZZTPoEQni/Q05JyUjgKaXIZ04AZ/4OUU7Pl92?=
 =?us-ascii?Q?yRLA9DwSZ+Ng2/LpkSV0PtBKkS6PmUFHUldGxafBdlcOL5yZoD/Z49UyGcxX?=
 =?us-ascii?Q?A1K+nXOrFPLu1eqpKqfictpv1224UtnBUC0O7bgGJZPhy2ekVoqtNrhSFmTY?=
 =?us-ascii?Q?DTCaYb+PTyEZ22v3/xVXX3JhXSpuaeyOBx59lnq56dK8Y3pFfw7owUxsEq+m?=
 =?us-ascii?Q?BkBYoWgKFVbtc60gb1BLei5M15tPo6ZdmQSzVxclUYOjoT1jRXygviniyhSV?=
 =?us-ascii?Q?8JiEOwrO0lmotPtseztgHCY1ZseTzzrcMn156rjcZf1AEnm5ofQ0apOd2Q2o?=
 =?us-ascii?Q?ToXhaf2x4zEpS5SrUte34nGFrw1aW7mDc7bosO5H4cxzSiggyYUTu3HyiLyA?=
 =?us-ascii?Q?+6QuLX8j5bjvl434bzJnhSpRgrLYVMSu9IC+cUGOo8rzUcFag6fzfA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:OS3PR01MB6657.jpnprd01.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(52116014)(376014)(7416014)(7053199007)(38350700014);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zA8P+PgdMNbUjR1PxzpoQ6auR+oZd8Bjlg1yrwVN/IVj4Jgl15N46MS2iwXr?=
 =?us-ascii?Q?TqzH+FZHcmwmkiVLhQC4xdhwbw/Unlj7A+A7PcUT2t/EmVkFRJjyy0//GpvZ?=
 =?us-ascii?Q?koY/WyvT189BXwRp5pik/o1kGJPxboL2FkQHCYTZeJWTqYLBfAkZ+RFQWhCu?=
 =?us-ascii?Q?SsyYD5ilxkGVX4Vej4P4P+TbEJ2Zlb5EraO1ErtDqtBCjR/al3X1AgPV3mSk?=
 =?us-ascii?Q?OVnwRuDsamRr4o++x3s57Aglky7L5xAmp3Vu305Q7y52i1NlWL7L5Jm/w1Rs?=
 =?us-ascii?Q?qdmGju62JPqo4mgMPN2vNdF9jaqt+PUlcJD0X6i/kpP/BDxbBMSJJY3AEwba?=
 =?us-ascii?Q?vXYxy+4OtvokyPKJtFZ3gnQTP1b67ghjwAYMNzyGl4DeeFnhLgnJlq2yQRnO?=
 =?us-ascii?Q?nFYx7SplQe6lIWOWsNYB/TUKF/A37I8bkN2dorEH6xv1gpFKyyhlepz+c0/J?=
 =?us-ascii?Q?dfYTPoOeXXrtPSM2GcNO4Av7HizTSUCsC4Sft09JvoiL8/A4+tKy33lcouii?=
 =?us-ascii?Q?fOjIelK5W4UgMb4mnblR/5pYIhq/ePgiitPPF1USCA0BqayW5PUCngBxAH1U?=
 =?us-ascii?Q?/LMIjZaTnUsBuv1edppIirCxayLjXFCyUDlfM3KRjJUVKLo8hNsCY0nSjgQ9?=
 =?us-ascii?Q?DpNEyJlpVf+YBYKLcpekWZOS19QjnAuiV6BlLxAtJhy/OYk6t5vvYUlYnHTg?=
 =?us-ascii?Q?cyAN3K0tdgf+cPuYzBDSoq8GpiiSlUgDnyAc1e5v0sEAVkDFUdQ4vWIpV1j/?=
 =?us-ascii?Q?Xw1k/52fbEDMAY8gIjds7wwNf7pRfsuJiPDdj4mBBETeXLNfPIoxFDo0x8wO?=
 =?us-ascii?Q?r+1HNpno/4BwAYqfxTcfmVHc3Br5VDHjRDj6LQdVbV2lI5O9qukNxiwdEgnF?=
 =?us-ascii?Q?gl6a3CZtXF3JdXIRGBkVlDCciLEqj836AtVwRtl6UVB9vL8436rvoLDXW7yF?=
 =?us-ascii?Q?c5Cq+pfQWJ5QxAgPSi4SPkIUOlYwynNyuMKfs6ItsxpllHKcxzAxbxw0Ki5m?=
 =?us-ascii?Q?6wiN7YNEpP3KXl+A1alepUJbevqozjVB9jikPeX808l4ENPEBi9tsd3RlyU9?=
 =?us-ascii?Q?ADBNqeQVPV4vEPxOKze2FiNErpvaE6kJtmh4ixBZCvcl9XuX7Utear62Z5dC?=
 =?us-ascii?Q?fXEQFGlc3o4beZBJVfSMtcUCXGK5Wgrcl6REC6SUIjnQCo8c/wZgymbwoQ4W?=
 =?us-ascii?Q?FD8I0LOXj+gFMr4ss2acB+4NNNYGiClSGuF4OimWVTfzddqpyeIeypIy/Ic1?=
 =?us-ascii?Q?Lx3uT2Z6u3wKAIdfCH7LiHDT/pIz+Ltc7o2RYohvWRPaedKd//A5j/pOOHpN?=
 =?us-ascii?Q?trhJq7E0CMFa9iGU/FUDzx1Vci59XRb5RqwZGrQlSE0D+0I7SU/korkAl2UJ?=
 =?us-ascii?Q?hn2WTjXjNQaciOx/BsiWJADeZ31++Mf+dWAlMrOj7dohoX+BkYiMTRWprbcV?=
 =?us-ascii?Q?weXYJCbPT+Rv7WxeihliK9/XdnlPl2UmyyUAFIaWF9l7L18wpOgDRrO3tMfb?=
 =?us-ascii?Q?IF+jTYK+Lf28lh2bzl4KIn1XiCBkbhlx7ZW5EN+9JbQWj6JKywYQ1+tnG2wh?=
 =?us-ascii?Q?pfxb/vgcGxb/3KLaoRfqL9MgL2CW+QdevK6uIBg1zxISthw2T2VKwrSTxkLs?=
 =?us-ascii?Q?iAH/rgv0Xv4LSd0MslrrAX4=3D?=
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 307728cb-3ea2-46b9-e7e6-08ddd33e058c
X-MS-Exchange-CrossTenant-AuthSource: OS3PR01MB6657.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2025 10:02:29.8933 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3pSRknQ0n8XPfQ4gqt0vPrscjvGNKuxE8mB/ymud16XA4kfBKrXtSpN/6U6jIYPOL8jwNWXGziPjIOtPI9pbTzbOE9KPk3W/a6rHqSTf2Q/NavODphSN7cpOtpdJelvW
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYYPR01MB10592
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Jacopo, Thank you for the patch! On Sat, Aug 02, 2025 at
 11:22:40AM +0200,
 Jacopo Mondi wrote: > The RZ G2/L CRU driver sets file->private_data
 to the driver-specific The RZ/G2L 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [52.101.125.11 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain 0.0 ARC_SIGNED             Message has a ARC signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 ARC_VALID              Message has a valid ARC signature
X-Headers-End: 1uiuQW-0003nz-VI
X-Mailman-Approved-At: Tue, 05 Aug 2025 06:36:45 +0000
Subject: Re: [Mjpeg-users] [PATCH 18/65] media: rzg2l-cru: Do not set
 file->private_data
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
 Hans Verkuil <hverkuil@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Tiffany Lin <tiffany.lin@mediatek.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@ragnatech.se>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

Hi Jacopo,
Thank you for the patch!

On Sat, Aug 02, 2025 at 11:22:40AM +0200, Jacopo Mondi wrote:
> The RZ G2/L CRU driver sets file->private_data to the driver-specific

The RZ/G2L

> structure, but the following call to v4l2_fh_open() overwrites it
> with a pointer to the just allocated v4l2_fh.
> 
> Remove the mis-leading assignment in the driver.
> 
> Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>

Apart from that:

Tested-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Reviewed-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>

> ---
>  drivers/media/platform/renesas/rzg2l-cru/rzg2l-video.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/media/platform/renesas/rzg2l-cru/rzg2l-video.c b/drivers/media/platform/renesas/rzg2l-cru/rzg2l-video.c
> index a8817a7066b22f8a8dd1fdab50efabc486e4dfdb..941badc90ff55c5225644f88de1d70239eb3a247 100644
> --- a/drivers/media/platform/renesas/rzg2l-cru/rzg2l-video.c
> +++ b/drivers/media/platform/renesas/rzg2l-cru/rzg2l-video.c
> @@ -1078,7 +1078,6 @@ static int rzg2l_cru_open(struct file *file)
>  	if (ret)
>  		return ret;
>  
> -	file->private_data = cru;
>  	ret = v4l2_fh_open(file);
>  	if (ret)
>  		goto err_unlock;
> 
> -- 
> 2.49.0
> 

Thanks & Regards,
Tommaso



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
