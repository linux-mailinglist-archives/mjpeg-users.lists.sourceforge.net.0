Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D25E142D6BD
	for <lists+mjpeg-users@lfdr.de>; Thu, 14 Oct 2021 12:05:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1maxcG-0003jQ-3O; Thu, 14 Oct 2021 10:05:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dan.carpenter@oracle.com>) id 1mavc0-0007qf-05
 for mjpeg-users@lists.sourceforge.net; Thu, 14 Oct 2021 07:57:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:In-Reply-To:Content-Type:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Jd3/6V+AWh48jrDGHjjSbWrUddYfdje8RxlLvl5qWMo=; b=Pb+R7ZWPT0SNLw0jiBdzMieHj0
 T6G18MBf45REr9nUP/SYsrxl5Nq6JfLbrY31k2/VOV4eb7PSiPzaWtwjN1qPkuNbzB0z2aWnJ/gW1
 6y0ATuP4cojhqpdihRlHqwnYzax8aaualc1FRsFaVsPRiNziRibmv0pOh0D/gHPr5e7c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:In-Reply-To:Content-Type:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Jd3/6V+AWh48jrDGHjjSbWrUddYfdje8RxlLvl5qWMo=; b=WA4w0DH2CMrCYaIYL0vorBbJnW
 cSsdf/m+m+6IOeDIPLRdHu3up8zBEpt2eCdk1TnqVpJDaYT0TRSmysq7zd+GcVvseKH+/GYXIn+Lk
 gLH7x1GlDSb8hHa7v+MK68KETC8fV4qwRMHCkZTFUG3VfBDMxn3XvWr6DLJen0fwhcsI=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mavbx-00AdPN-TI
 for mjpeg-users@lists.sourceforge.net; Thu, 14 Oct 2021 07:57:11 +0000
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 19E71KUm007382; 
 Thu, 14 Oct 2021 07:56:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : content-type : in-reply-to :
 mime-version; s=corp-2021-07-09;
 bh=Jd3/6V+AWh48jrDGHjjSbWrUddYfdje8RxlLvl5qWMo=;
 b=qOHjPo9nkZago01JWhoATmZq4vFKY9jMn64Y5GP/tA+zlmDRh6dDYYmDWlOYgKGKocwD
 DNnunc8WU+pZDwPL0ADEg7MZlodIDxfkAehPIW0CggF2Z78WKHfwLN4sP3wPDIHKvQSk
 YZYzg3n8ntTzP5Aalffk7s88BV+eSQ4ZJqtY02hjoobc7usQgJGTJIjS9r0vzd98uCtE
 j2DQDK4V4hCSD2auUwxSBCVApZICzECO9MrvKNJ04BRFXsVDvAyDR3JQNa98mXw17VJw
 46wXLyA7t0xAGziuSCR6nBVRQt4t2MgIhjHkabEQ+/QsdsTavX4BKmh6du8DzFgMmJnm iA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by mx0b-00069f02.pphosted.com with ESMTP id 3bpfsyg8xu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 14 Oct 2021 07:56:54 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 19E7tDX6188472;
 Thu, 14 Oct 2021 07:56:51 GMT
Received: from nam12-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam12lp2168.outbound.protection.outlook.com [104.47.59.168])
 by userp3030.oracle.com with ESMTP id 3bkyvc8f9j-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 14 Oct 2021 07:56:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jUF547hzvLKY4iNJY30CTbEsGpO/2QfbaecERvpBZBm3NFIqk+LakupQBsUBcr65RoOfe6YQ1HhaqUuNHgxFcZt2awDs80kOhj+qm9KHxBQMpqX5RdgOXIqy8/tl21r/FNUF7fUOhwmuEmKvTwxoyzFZGNtVu5QwsIJd2vNQFWKMMtjRVNneUxWiTpg5WLOyoHdQfKJ4JEYxz/o5ubX8HdM/S9qt0GU8IMg6nU5iHMcmJmR7w0QY8fC8HjnURuzNPJIHozeVMQwe4djF53vMH1EE0He9zSa+uCwpjVaz3lMN9smohZ8aTeFdNScX+9d+Y/wuK/HH1q6wGf7MXtQIJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jd3/6V+AWh48jrDGHjjSbWrUddYfdje8RxlLvl5qWMo=;
 b=bNtsFGG2YtcMPhSdmTJNH2SWRwkAeVceqL0n5HYMmME5v+hNym9JRQzaFY51hvTjvq7cZOnBX+sPWnbyPi0rCFVc0t8ZCrZLkEhEoXzzaY8WLVfLwU5gr8MMCPRjUqa4u7TqwypbzGp8BbUa+2ornGflPVbqOW8O+mB/yVk2gPTydY1W0hbg6UyjSxRHBQomwUg6C88FysF1/2vIKtBmdyd6oy/vjIR+poIpirf99VzJfQwyLv00qiDMB20/rf43I5AIwA+sK4FcpyRKIWmJpI7b757HxBUyYmN5ct0XKZH9A7Q35nw3hx6O4OmyeJLR7oDuG7E3tJxUSQHL8lT3sA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jd3/6V+AWh48jrDGHjjSbWrUddYfdje8RxlLvl5qWMo=;
 b=gmtDOwUDdhpBj9G1VSyGQWptp0LfbmhNGLh1M5EvJU7kZVzmBBfaQrKMLILUEkUxrmyZeB82KhbsUiGNWpTbsXRg5Nh3DZ/qkpFjQwwkUcYvRGEF1IVl0sO/OkevhzJ4PQnmUfuuzHCwB6SF/AWfG+yIRsacodpmHv/OiTz9qnQ=
Authentication-Results: baylibre.com; dkim=none (message not signed)
 header.d=none;baylibre.com; dmarc=none action=none header.from=oracle.com;
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by MWHPR10MB1359.namprd10.prod.outlook.com
 (2603:10b6:300:1f::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.16; Thu, 14 Oct
 2021 07:56:47 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::d409:11b5:5eb2:6be9]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::d409:11b5:5eb2:6be9%5]) with mapi id 15.20.4608.016; Thu, 14 Oct 2021
 07:56:47 +0000
Date: Thu, 14 Oct 2021 10:56:30 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Corentin Labbe <clabbe@baylibre.com>
Message-ID: <20211014075630.GN8429@kadam>
References: <20211013185812.590931-1-clabbe@baylibre.com>
 <20211013185812.590931-7-clabbe@baylibre.com>
Content-Disposition: inline
In-Reply-To: <20211013185812.590931-7-clabbe@baylibre.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: JNAP275CA0063.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:4f::21)
 To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
Received: from kadam (62.8.83.99) by JNAP275CA0063.ZAFP275.PROD.OUTLOOK.COM
 (2603:1086:0:4f::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.15 via Frontend
 Transport; Thu, 14 Oct 2021 07:56:43 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4728316d-82fa-425b-2071-08d98ee82c08
X-MS-TrafficTypeDiagnostic: MWHPR10MB1359:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR10MB13594B789C5744E640285F558EB89@MWHPR10MB1359.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2276;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qE72FBkbsPlnJbCyN8UVXF3P63/UI1mqfFTJgF/TtRrUkZY705QbR7gZyyCwAJVxyyi1hPhBMv6UYDOx1IzKIoQ6M3jTJBLPQJ1mq3boENHLeMSuzumNtDOo33cJByXhA4VppZ5UsLwa7jiZW0zY3BAKa2oUZhgIbPRjZVcHXzMqNWSSXr0DUgmkrQXxWFCM9kmwChejnZc5vVJ1/AbnOPDPaalrDwHiihIWrRXZxvqR0BZC8rE2oAjM6lbX/ru/9qvKAdhe8avpcmylIO163F1/cWZDA/XzUIWFKDIBXLqfOYr/I/NyVJUgeqCfWSGUIX2/a9l696q8m09VQxEQcTZA9cNkkKmG9DRe5KpOpBkrNunNOjip8DG0XkS+WVdWW3cTDPpZnJhm0iRZiBfiay7NF5uJJsIHT2Wxodg3W7V/m/QBRae/t63O37Glpt/+asB54/KqJ91UBBZBapINGDuUgVQErhjSq2bzNJLIVHFTV63cd2+lvKx2nbfUDKeonOibr8nBFD2D9mvysS9WKRbi0zat5B1Rv8zS5V7iNq+mgeRiD+PSb+MF0L4nifHwaT0cEOK/BvjyBH2obzsQw9wcNL0PjhpR9qkaE6h9bjYaNgT5BdBaVMjRYdAM4O+SsgSFf0f9hKs9FLMbLVULE5HXmlHSKFHzAaJSOev56EEGNJpXcUV8s9Z23vrR60CGbdQwWotmhcSXh8BGWn50+Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(8676002)(86362001)(9686003)(38100700002)(6916009)(66946007)(6496006)(52116002)(38350700002)(33716001)(83380400001)(508600001)(66476007)(66556008)(956004)(8936002)(55016002)(44832011)(2906002)(6666004)(9576002)(5660300002)(186003)(316002)(4326008)(1076003)(33656002)(26005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?LUrSDA2z6MqKQ+/87IiwYu/t3w0Td8yceGpikLL/xgde66QlZO6bVBlWYpdG?=
 =?us-ascii?Q?dtIToDT1ObKJQAXNul/2hfAy9yL6rIhWBntbMTwH0kRMAElE2RXYAxDFPhMA?=
 =?us-ascii?Q?Vse0zHEP6iHlzB3RAYQGsvq4Ou6tvTw7eZiUtHtvK9l7eZEQ+ivWKAdZJN59?=
 =?us-ascii?Q?cVETYt0cRhYBbAWMwbR+BwS/sZ3iBeATyn7ukNF9TQEi/BJbTYo+tjvIfTsZ?=
 =?us-ascii?Q?lu6G4KgFBgg3BQzZkc/2Uss9TsO/v4qCGNopbvr9NMORghNvEWIawCyqp7sw?=
 =?us-ascii?Q?KAqBbe2S1n/07TVBALtPh81PSgsuxqeHeBu5ihfvYtyI3DzBR9r1HHB6xQ/z?=
 =?us-ascii?Q?xIlbp3xl2IalBqfyN1T+M5+Wlr9mvA5EUu6CPkCA5ic9b2mm49wa9ktE/hr7?=
 =?us-ascii?Q?n2fZ/hLShk3evp1RGfIyDc9aJfRjF8zC9haLywODIOh8YQfx+lAZQQ0L7Whc?=
 =?us-ascii?Q?hLDnV7uuFUitkg82er8FKf2SoiQpmHknlJ0BMHbLm3ShxAWReT7KhoZzFQTD?=
 =?us-ascii?Q?0cePTjkfTFM1KCrdMAL0YeVYSg7i5MQ5gSO8U/XUz0LJ8N4FMrpFxasnthIA?=
 =?us-ascii?Q?JlfPVLskOuGfTO4w6VvIllPOL6nhwJ6oOqoVH4wWZj1bJJXX33EolmNbwsa+?=
 =?us-ascii?Q?nhrRtJd37JpAqgFYeWfb12hQqyRZNHllvBHJsrfqA0A6NfmR9iYrVkLd3gyc?=
 =?us-ascii?Q?KtDeLsqi0U+647+//ONt8AD+EnweURrURoHn0HDySZ46ChUSURS83NyKG9NZ?=
 =?us-ascii?Q?9LeYQCRR7MKEwL1nfqxx3qfuUjUlsB6Ti45B2S/T00lG2O96DAJvaB0ECiVX?=
 =?us-ascii?Q?nrLF94b6X+bEHCfke9htqCJPKfDWeFfUA9Eqk2mF08hD0F3Ikk7m4rMsVJlB?=
 =?us-ascii?Q?O7fYGqaXUVCI6jGVLEqXtbjcLl187BFwqUgbtz5PZ4PT6CyDzqB/9vc7g4mD?=
 =?us-ascii?Q?mQB9kYAZlD8QPQAodM04agSF3O8S84qRdjkM3VpvtNBdNZ0bwTPBNN+aXCOW?=
 =?us-ascii?Q?k2nq08TGjgW22YKsEbkbmh5mHlp+vm2hmXtfeMGiZL62bsJRQ4nGHHl62FXq?=
 =?us-ascii?Q?/VIjdfGYZYdObGBbHvoweXR0GJ0uF5x4xkTZ5EFyilbzm86SU5bADpV5ld0r?=
 =?us-ascii?Q?rwDmVXfPjtTlHlr8dOYLElzbMA601CeOHPYJFMIlww3npI2x0uX637SMN0bh?=
 =?us-ascii?Q?eaaUIfkCraF5K06LCjDgAs5YXcE+pOUrhejvrhg1SQIBef6meGoKFL/td7Af?=
 =?us-ascii?Q?NQrf14EW3YhahfMrSJAX74LuYZj8eFk+hmqCQp0XeWaeGxXODvsRL+/yljUA?=
 =?us-ascii?Q?8Q+xHbmqPDIZ97LB3GXn2S9S?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4728316d-82fa-425b-2071-08d98ee82c08
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2021 07:56:47.6390 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: czY6t0NHCOlvOE8f+Fn9mzz43d7s5ExdBEmgOMNX73EXPLu0FXgC9NdEa4PYmLZ+uudcYYMtHux3s1yV/7wOMcEEQh/ZXPhCjxfYMqv9G8g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR10MB1359
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10136
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 phishscore=0 bulkscore=0
 malwarescore=0 adultscore=0 mlxscore=0 spamscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2109230001
 definitions=main-2110140048
X-Proofpoint-ORIG-GUID: YkckKRMifYb8Nw9YSD55YFm3_mKXDwah
X-Proofpoint-GUID: YkckKRMifYb8Nw9YSD55YFm3_mKXDwah
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Oct 13, 2021 at 06:58:08PM +0000,
 Corentin Labbe wrote: > +static int load_codec(struct zoran *zr,
 u16 codecid) > +{ > + switch (codecid)
 { > + case CODEC_TYPE_ZR36060: > +#ifdef CONFIG_VIDEO_ [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
 [205.220.177.32 listed in bl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.177.32 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
X-Headers-End: 1mavbx-00AdPN-TI
X-Mailman-Approved-At: Thu, 14 Oct 2021 10:05:34 +0000
Subject: Re: [Mjpeg-users] [PATCH v2 06/10] staging: media: zoran: fusion
 all modules
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
Cc: gregkh@linuxfoundation.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, hverkuil@xs4all.nl,
 mjpeg-users@lists.sourceforge.net, mchehab@kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

On Wed, Oct 13, 2021 at 06:58:08PM +0000, Corentin Labbe wrote:
> +static int load_codec(struct zoran *zr, u16 codecid)
> +{
> +	switch (codecid) {
> +	case CODEC_TYPE_ZR36060:
> +#ifdef CONFIG_VIDEO_ZORAN_ZR36060
> +		return zr36060_init_module();
> +#else
> +		pci_err(zr->pci_dev, "ZR36060 support is not enabled\n");
> +		return -EINVAL;
> +#endif
> +		break;
> +	case CODEC_TYPE_ZR36050:
> +#ifdef CONFIG_VIDEO_ZORAN_DC30
> +		return zr36050_init_module();
> +#else
> +		pci_err(zr->pci_dev, "ZR36050 support is not enabled\n");
> +		return -EINVAL;
> +#endif
> +		break;
> +	case CODEC_TYPE_ZR36016:
> +#ifdef CONFIG_VIDEO_ZORAN_DC30
> +		return zr36016_init_module();
> +#else
> +		pci_err(zr->pci_dev, "ZR36016 support is not enabled\n");
> +		return -EINVAL;
> +#endif

The caller already prints an error message.  Can you look through the
dmesg and make sure were not printing a bunch of duplicate stuff?  Also
if load_codec() fails, the probe function still does
zoran_setup_videocodec() on the failed codec.

These would be better in a .h file.

#ifdef CONFIG_VIDEO_ZORAN_ZR36060
int zr36060_init_module(void);
#else
int zr36060_init_module(void) { return -EINVAL; }
#endif

regards,
dan carpenter



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
