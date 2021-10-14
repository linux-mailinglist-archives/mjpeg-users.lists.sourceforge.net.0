Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D40DA42D6BE
	for <lists+mjpeg-users@lfdr.de>; Thu, 14 Oct 2021 12:05:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1maxcF-0003jL-UZ; Thu, 14 Oct 2021 10:05:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dan.carpenter@oracle.com>) id 1mavJz-0004oe-Uv
 for mjpeg-users@lists.sourceforge.net; Thu, 14 Oct 2021 07:38:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:In-Reply-To:Content-Type:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FdFlwPGHD7BDdPACgmCzhQMEpjsPS5JCxmjR5AfhIL8=; b=YeBnaUx7wr4xOifAYkoIrXKiem
 hZ5geh59LHTqcjpfYF++ZTLT9q78WAKKQQjWXxrQVF8ztd4eTDnqib3LFsyq72lyWZ2HXi+67blE3
 p4eF5RXBWi0TVyJ3xAuWjz9oKlDXfUlzBfIxr+k5Z0/9JpKdpzhfnRnVr7/s8fydSdKM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:In-Reply-To:Content-Type:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FdFlwPGHD7BDdPACgmCzhQMEpjsPS5JCxmjR5AfhIL8=; b=KVYloyj6GXgiTRBE3xnt+cLhq9
 MOmOqRHsoI0gYw79jP4LWocU4aWbza2mTUbQtAmOb0wG4OJ7wO1IrlqjQLmNCQQDYXBdsaMqvTNjU
 Mf82ts/EdtlMg7G9gaYTMGeFHjEWBGvJS18BJpXvTsho4uYqfcnOuamr+Hca/oIDMq78=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mavJv-00AbFp-Bc
 for mjpeg-users@lists.sourceforge.net; Thu, 14 Oct 2021 07:38:35 +0000
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 19E7RikG024937; 
 Thu, 14 Oct 2021 07:38:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : content-type : in-reply-to :
 mime-version; s=corp-2021-07-09;
 bh=FdFlwPGHD7BDdPACgmCzhQMEpjsPS5JCxmjR5AfhIL8=;
 b=jn0NEYP508Z2db8CtH52qPmNfGjSnDUFTT/YE7BitUy7Sq0Votwgo6Zj7535F+vAXwK+
 wOZrpnIdRepMvQl2DTG9IhfzZ3qkOUaAT29DYqdWZVQwvCM19WyrNx++FLxH8cuLN/aD
 6mjRyoDsSumlp1DpSxIn7Vkr2oSmBPbjVncmiqjEvCLjkz0OdLZD74vxA9Ub7b72Av9a
 bNcciIQqICoQoURgRMV8A9w35vb39sjCtFDvc6ivZtnqKZkL9DrrBwanTwCwQThpYYlS
 aj+qM7ki0wK+1FlJQMjBUkNC5f8B3IJgKRnlzTHweZ5YYFBHPEx/fFqfQIvyP/HKI+Cz DQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by mx0b-00069f02.pphosted.com with ESMTP id 3bpeva8fmr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 14 Oct 2021 07:38:14 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 19E7ZFk5008378;
 Thu, 14 Oct 2021 07:38:12 GMT
Received: from nam12-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam12lp2171.outbound.protection.outlook.com [104.47.59.171])
 by userp3020.oracle.com with ESMTP id 3bkyvdg93h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 14 Oct 2021 07:38:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oLtRay/aU4RklNvi6pf+hrP8v9dnO3BGfC5j6nUWEFpeJzNVlxzrt6q6srXMtfAk6CKzeeks1/+KIit/30DFPz2FHsQhCs/AhwHkeKTqyc9W2mnFd2y8xHyAjA4iQlcMjnGAK+T4nGA3SeDjIDgrsXG/7ixNmgbMvo4pIemJZ7vVvmYXLb5SyZaJ8frvx1VnezyOXrb6peVDEhW+D7tdU0/yVBFS+GJ2XjYr1lc4OmBlc8abvD+BG2ulqv0hAnKK39iJ5+RGNSnABAGLzXRctjwIDlLXmrgUAp3wHG42gpq7gzAUyHa+vax1Repu6ggt7+l799Sae9SgDJKB/cEHFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FdFlwPGHD7BDdPACgmCzhQMEpjsPS5JCxmjR5AfhIL8=;
 b=QDlFkmc8tIG9Mc/Fbicnjcz+Rawh+NpajJTQZhcdTXU581DJe/wfc/jt+WT2R6VKp2zGFhEsP0+aaG5ONNag6ya8OwVMtRRbffh1cHF5Qq/lg60oDH/BwY/UOEHUJvYXvL86bf/FPgx0cQ2PwEZU7tWQGDatKpoJ1JcXvYqGg88T4BhGk/lssT3K7KFUn1jY7uL2uRfL3h9CpdZDF4b7Wz+fDffIAErXaj4FoynWVIml+0GlbYycshfDDqIyMZ1L9U6Eo9t9kgm/80XgZx5PkKwRJ1cvSs7pinja0a0yV2Y+vuXtvJDX8d8a/YdgxESroJHxPbuRm62xyEQW3qzrzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FdFlwPGHD7BDdPACgmCzhQMEpjsPS5JCxmjR5AfhIL8=;
 b=qlrnuMZhnk3pF0m3aNT8AER1QYzUKkc2828EN+dcBpfAk8f0UrV++a5urwcj11lcGjyoLt5fBVi8yCFVN9Lb+uCTjaLn7PhZwi/zRCaMP7MXQo5d39ZXfg19cSmEyZgx9cSpsClvz5sgOe4PeCsz3lJTg+jteD1LgtCDneTG9yc=
Authentication-Results: baylibre.com; dkim=none (message not signed)
 header.d=none;baylibre.com; dmarc=none action=none header.from=oracle.com;
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by CO6PR10MB5460.namprd10.prod.outlook.com
 (2603:10b6:5:35e::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.19; Thu, 14 Oct
 2021 07:38:10 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::d409:11b5:5eb2:6be9]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::d409:11b5:5eb2:6be9%5]) with mapi id 15.20.4608.016; Thu, 14 Oct 2021
 07:38:10 +0000
Date: Thu, 14 Oct 2021 10:37:52 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Corentin Labbe <clabbe@baylibre.com>
Message-ID: <20211014073752.GM8429@kadam>
References: <20211013185812.590931-1-clabbe@baylibre.com>
 <20211013185812.590931-5-clabbe@baylibre.com>
Content-Disposition: inline
In-Reply-To: <20211013185812.590931-5-clabbe@baylibre.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: JN2P275CA0023.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:3::35)
 To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
Received: from kadam (62.8.83.99) by JN2P275CA0023.ZAFP275.PROD.OUTLOOK.COM
 (2603:1086:0:3::35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.16 via Frontend
 Transport; Thu, 14 Oct 2021 07:38:05 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 91397aa6-4424-443a-339f-08d98ee591e2
X-MS-TrafficTypeDiagnostic: CO6PR10MB5460:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CO6PR10MB54608FEFCF1FDA6F538553198EB89@CO6PR10MB5460.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1llT3I5kw3k8ggpLKenqjEMK7SupoOm1c8QVW7y8alhGO6bXGrU2PEU3236mtTNMO09+tqE9NGGgbbUuorppK49Expb1FXjwFLyFGWpGEgc+IUKpCSIwS8uhY6TsUQp80UMoa7nuidkz5Rx03PmJaiuH3h1ckldzs/+lIqJmS87xT+eCQ53yQqRJCr8RFHXAAC46sHuj+7pyE3iTb9vg3kKrNPA9TNGshPHvU/oc4KqOZps979uvHn8LjAJRHxn8iacNXULs5kz50WfjBIHb7hMh2AtmS9IP47mLX+FEARNGQsRKWh88P9a8/n26m9e1Jzh4IR1UNyIbZS4vO/0H4gQVvtDvm2XYff4sfQwnX7a52dIaFG/XV/vdTB2Y8kPIabrrQm2/86z8snFtz89D4ezDK8sIlLvGzCUtB/uWYKvhcG24bKfuRy64Ppdfphya7wmcW+toWgoMULu6GPUGxPFGzxdsdL0bZpUXnUKW38bM5cLJYSC9k8IFBhXNTMNYHi6BQYN60JXG1B1mFTe7YTvy1rE9wzJHcfcsrp9iX8fGI8dupFf3atOqp/etUgk2SDmCldLSblcppyt/NWy1lQ9IeXD5tkA9yQgXqjk8HDffNmghfYx6jtnhrWRWbEG7iAy+uvgaDBpHvPStiUgPHpMPFtr+f/jRARqsrcAIFm6584ST0neoia0DNsRU29G21QYdA3MijKUJdUdLZX8ITw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(508600001)(6666004)(4744005)(66946007)(86362001)(5660300002)(6496006)(44832011)(66476007)(9576002)(4326008)(1076003)(8936002)(8676002)(956004)(316002)(26005)(33656002)(33716001)(186003)(52116002)(38350700002)(2906002)(55016002)(9686003)(66556008)(38100700002)(6916009);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rh+0clB+uiZMVc8yIGixX/A6tR/JWHXYvi9hxWoWKHyofkZ85lbLVKpgQa+X?=
 =?us-ascii?Q?bulGmH1GEDUsMjoMFnkqkKNZFFdJlcvfzee4rsYzUXB3A4+CIBhVquyjNm8g?=
 =?us-ascii?Q?0y94110MSEUrGVhmIdSmrzx/TVbF3LjUS+yv+X4w/A33tao/16LGCiyUrpKb?=
 =?us-ascii?Q?2JbTuj4dt50vtTWBJueLAIBl10CfmABdTQU80u/ZfA4Rhv5AvU+LeDfGqnzB?=
 =?us-ascii?Q?5mwXDI0mdd03HOWWrfVM1JpAKeAW2LSQNGFlRHIBGlkHTcH/glalv6+9vNbc?=
 =?us-ascii?Q?qN8JL1D1wTAy6dFs/lnig6HLjnkzJLRDljHwxfbr7vdiwC2dvzaAGDN1JU6i?=
 =?us-ascii?Q?/qy0j7IRCEtC2Tvwu0Hc1xL20+4QaDA8OesfPsELJsm2FJPC7VLGogDWq9oC?=
 =?us-ascii?Q?bNNp0hQgrKr7trpBJtPgaKSR3F4BLZd3tQPhoh1tvMc/Pg1fLMY5ONN9x9jw?=
 =?us-ascii?Q?ICt7xBSon/25YrOZkUVuiRgT9i/tUqgnU36xMCJWPjpNAdgpUehXUTKPs7Nb?=
 =?us-ascii?Q?XXXltsCIYZc/UGZ4Tl4rCJXI+kAJvZnxcm6N5E2LO3HcmqAPFZu8NDuunLxp?=
 =?us-ascii?Q?TT0py/frW5SvY575uNLvMBKP/evu2EqYKzS5ksDF9VV2UW/qo1kTX0U+wu9R?=
 =?us-ascii?Q?WslDlG92O+mW6Uc5XuRw+IIuMYz3OXsK5qn8Wezf4T61k/+JwoKCTr57tMok?=
 =?us-ascii?Q?bun2EfX7Az+4cJFgQR66auiqi9ZPik7DJKvwu35OYo7dCvv2zhafgGKY4xp9?=
 =?us-ascii?Q?ELci/OH/BzLfwIFCC5TIHvU6D4/pyAd0thcEI6+NhsXTCGirXrbBF0Intqx8?=
 =?us-ascii?Q?4pK9ISWuKvXG4oxLeiphiyEc9t0fRhkKbwsExzErAYaM8n8mqTPwyVeNR8p3?=
 =?us-ascii?Q?btrbfOO2AJw/ccTJ/sP8Kn5npt/CYmCcXJttN1sjsM5OR4Xc1X47fB3A89FT?=
 =?us-ascii?Q?7/i3OFMxkp4kIrzmCSBLdDbAdAc9L6K4nRCUcG493FmvyGu4wPPx3lG1OYO4?=
 =?us-ascii?Q?v8gypvJYYleShNU1RilTtJfdEGcDqY8/3fLa8TMYwt+5ZlIYlz8x2aC/s02/?=
 =?us-ascii?Q?XXezGjrSjpj5DY2QOs+RjU8ZSJc6Sl9BqNKkEcmEwc0kqdbLK5yqVR+ca+Vd?=
 =?us-ascii?Q?MxhIH2M/PrWovMhd6f43L82wDis4c33B8rVhFiLqdpElYGJK28aq3uOpd7gW?=
 =?us-ascii?Q?vmTBt1SWWcYvU7UH0zV9QR9fju/heYOwlVQbFxPbVVJGPwq8e+g95XdLHZqt?=
 =?us-ascii?Q?5ow7RD+4mQXiUoL92Jpm8C8vjryM7vEa8sthTXqzZjzxaOJnyxdEK4VX8hcf?=
 =?us-ascii?Q?pZjwDup5+KJeVFA7izsa61Gy?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 91397aa6-4424-443a-339f-08d98ee591e2
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2021 07:38:10.0918 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G+gK7zrNjdZNAbk3TqFofWCLrEYSaxUwuvY/GTW8EKO1SUvSdTtCDP3XzcPawY+5Oq30DUWTRMAHIlYp0MnlCLeR5srujIoqp33JGL2yUQg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR10MB5460
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10136
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 adultscore=0 bulkscore=0 mlxscore=0 spamscore=0 mlxlogscore=862
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109230001 definitions=main-2110140046
X-Proofpoint-GUID: PgDdyjwVaulFJ-nAs9r6yfFEcO52tCYK
X-Proofpoint-ORIG-GUID: PgDdyjwVaulFJ-nAs9r6yfFEcO52tCYK
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Oct 13, 2021 at 06:58:06PM +0000,
 Corentin Labbe wrote:
 > +config VIDEO_ZORAN_DEBUG > + bool "Enable zoran debugfs" > + depends on
 VIDEO_ZORAN > + depends on DEBUG_FS > + help > + Say y to ena [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.165.32 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1mavJv-00AbFp-Bc
X-Mailman-Approved-At: Thu, 14 Oct 2021 10:05:34 +0000
Subject: Re: [Mjpeg-users] [PATCH v2 04/10] staging: media: zoran: add
 debugfs
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

On Wed, Oct 13, 2021 at 06:58:06PM +0000, Corentin Labbe wrote:
> +config VIDEO_ZORAN_DEBUG
> +	bool "Enable zoran debugfs"
> +	depends on VIDEO_ZORAN
> +	depends on DEBUG_FS
> +	help
> +	  Say y to enable zoran debug file.
> +	  This will create /sys/kernel/debug/CARD_NAME/debug for displaying
> +	  stats and debug information.

Why bother with a CONFIG?  Just make it always on?

> @@ -1286,6 +1321,12 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  
>  	zr->map_mode = ZORAN_MAP_MODE_RAW;
>  
> +#ifdef CONFIG_VIDEO_ZORAN_DEBUG
> +	zr->dbgfs_dir = debugfs_create_dir(ZR_DEVNAME(zr), NULL);
> +	debugfs_create_file("debug", 0444,
> +					      zr->dbgfs_dir, zr,
> +					      &zoran_debugfs_fops);

This whitespace is weird.

regards,
dan carpenter



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
