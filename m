Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 737C644355A
	for <lists+mjpeg-users@lfdr.de>; Tue,  2 Nov 2021 19:15:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mhyJn-00039x-Nq; Tue, 02 Nov 2021 18:15:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dan.carpenter@oracle.com>) id 1mhxml-0001kV-3u
 for mjpeg-users@lists.sourceforge.net; Tue, 02 Nov 2021 17:41:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:In-Reply-To:Content-Transfer-Encoding:
 Content-Type:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=m28oPls5galvMYmkW4VPhjRSw3lrwUldAhC7JwkSIIE=; b=Lejxc3E5GnTQ1YaQ4WFA5T+lTr
 F2nnxWziX7NIUIP9N4K5fZ3FWq4KwoOJe0yDf9hDxXiUmZYcX6xEa5d2c0hY9owLrQEPkq2OD9Fog
 50Vqoow4D6c37HYBHBy6OH/Jk4DnfwQWi/JIsQ+gc1+k2pvW6Pp+b3wbojR8kjaV6PhI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:In-Reply-To:Content-Transfer-Encoding:Content-Type:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=m28oPls5galvMYmkW4VPhjRSw3lrwUldAhC7JwkSIIE=; b=XAvWSxA+44ZMZ7/dH+lcEjMDi2
 8VzRoAj7x/aEZJGU+87A1L3C8chNEsnGpbc8zZohrTCvAicedn/1EpeZxQLouHT8W7Khw1wMysgjM
 PRsKqtH/cothLAKWmXYJUkZfcsnyYMQCeeaql5k0Jjo73AzetEClOfnSOEHegEKjxCQc=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mhxmf-00FF8J-5L
 for mjpeg-users@lists.sourceforge.net; Tue, 02 Nov 2021 17:41:22 +0000
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1A2Gx85j015155; 
 Tue, 2 Nov 2021 17:41:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : content-type :
 content-transfer-encoding : in-reply-to : mime-version; s=corp-2021-07-09;
 bh=m28oPls5galvMYmkW4VPhjRSw3lrwUldAhC7JwkSIIE=;
 b=asSPtG44yTorN7ZCOT+RArKvT8gbhyFCuwrPPw8xfQfdB0jAt7zWVmWdRFAYxZWc3Mkm
 yp/ZVKOTJp8zM3SEnQkegK/FSQAWUi0pU6gx+FBIczTMiZtwiErD8uWgdLEB/xBkzBPW
 hN7L4tTNYC8sYrkjKQCbWaDXMvwaHek72yZMhIDOBNK+qYWvade4u9QQVl8HlalE3n3C
 LDm2UPX/YzB6PnuFvtn5c91UJ59XvkFQmx4oxnbBePMRJHJIP5XlC/qO7JWAaxbwV39s
 gQ9B9CQdRtrqQJl2Yubh6t/1+J21YSjM3OKUQkBTr63EnJYqx1FG8mxOLsDipDuoZRLx /A== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by mx0b-00069f02.pphosted.com with ESMTP id 3c290h0phc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 02 Nov 2021 17:41:01 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 1A2HVtQc090155;
 Tue, 2 Nov 2021 17:40:59 GMT
Received: from nam04-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam08lp2043.outbound.protection.outlook.com [104.47.74.43])
 by aserp3020.oracle.com with ESMTP id 3c0wv4pqh5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 02 Nov 2021 17:40:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kJedgqk3P1JeUtgGhc5/9reHIzOUD850vtj/BarxMsAk8ikvhtNPF/Nvag0DItOiKXd0rs73yVRVVxpzGw9u5uQ4gVkKeuoCk6szp4SP/wEHl6vFR2YGhrgnzDVV+NpRFvJm+baQW2wL0afBOVu1CxD9QwXW6sr1SIoy6XgAab4BCDNPftZMgowpsQB9nq3sllYQXuTWv5bq3oKQ2wrVOfEYDckbt4JELnRSSjM8hhWCHlKDVb6jRtUi23fvTp1KtjqTrHwJ+TDSAUjofxHZ3cN5TCU/sYUHktam3QtI2q90yL3nzgR1jtgZg9LEZ8d/eRGEz/a3OH3HFkzbT1vq+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q45auxJqCymJM2sVQznjdc0GoMtYm1O6Ua/wQGuW+6Q=;
 b=K/OO1iYX4OJz5Vzbv40otqmWTS58tmgeaQCJmAq4ac5QVWahPMBVGXhP9m2bV45afiiNZuZY6mE1Z6JG5cXnRPL5orKFaM5QVh5l8KTjWTLM+8YpaS9Woy8fAN8rSMaSesf/DRhv2BJ1zVpBJ+oTnS1H5p+D9JVo8Q7b2pB9GjG+B3b7jxUlJa6w3pvgmSAj/TFXaB/9VNkEL3aS2RZDlRfcTY84iTiNYbIW6T1dQEGhgdeTyevSsQT9mpAGLf3MpqPkpusU2K6TpGZtGI6rdrMVS12jLZ0rSR6TP6q5/AvkUTOF1M9tWmzMaKicP+rDGkdDa6mhlW54uJU1bc1C2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q45auxJqCymJM2sVQznjdc0GoMtYm1O6Ua/wQGuW+6Q=;
 b=tvGa9X32kCtitT6POMdG99moGooKRBPEO34LrEZSakwNnylsjP1pPimKVnbL+mzCkQFZ0ZdXtqakKxhBP9N2PL+vhApL0rBlaHd+G+pNi7XDNpVavB4t2ZjUto0qmQvhkPQlPQAPLlpcd1SFlXF7ZJ/QHc2DGtRZjgYWiL2DA7s=
Authentication-Results: baylibre.com; dkim=none (message not signed)
 header.d=none;baylibre.com; dmarc=none action=none header.from=oracle.com;
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by CO6PR10MB5412.namprd10.prod.outlook.com
 (2603:10b6:303:13c::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.15; Tue, 2 Nov
 2021 17:40:57 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::d409:11b5:5eb2:6be9]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::d409:11b5:5eb2:6be9%5]) with mapi id 15.20.4649.020; Tue, 2 Nov 2021
 17:40:56 +0000
Date: Tue, 2 Nov 2021 20:40:28 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: LABBE Corentin <clabbe@baylibre.com>
Message-ID: <20211102174027.GK2794@kadam>
References: <20211013185812.590931-1-clabbe@baylibre.com>
 <20211013185812.590931-5-clabbe@baylibre.com>
 <20211014073752.GM8429@kadam> <YWyB8kwsqAvHMuhb@Red>
Content-Disposition: inline
In-Reply-To: <YWyB8kwsqAvHMuhb@Red>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: JN2P275CA0031.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:2::19)
 To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
Received: from kadam (62.8.83.22) by JN2P275CA0031.ZAFP275.PROD.OUTLOOK.COM
 (2603:1086:0:2::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.17 via Frontend
 Transport; Tue, 2 Nov 2021 17:40:49 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ad627bf6-289b-4751-59c9-08d99e27ece9
X-MS-TrafficTypeDiagnostic: CO6PR10MB5412:
X-Microsoft-Antispam-PRVS: <CO6PR10MB54126373814855CEC9363E588E8B9@CO6PR10MB5412.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8qB+x2FsV24GZfiuTGX+T8sZ9y6De6PKtx/C0vKaB+JHi2sRBAV2dFqaMcCE9s17tVXbxf2Knxxqg3Mc+o+pt+NwQwriw4zDHbmuWfME+8Lxc6FZdK60i/QKgtJ7EQYYs9zV4Xtuy3J6ez3BMLFZYAcjGRj3MiQxxgwJQ6+KY9m1rNuFDA7PNI9LX08/8XsVCQINCRmlX72vjJeylZcU2vShVIThUJpmCZfr0SLR16dQsgJClDUqGbhtN3uEf71SssxQ9guSGXhFWFfToHguCxjr3UDtI/RpaNkWxg4F+Yv3L0RWotzJCDUM9MoJ9oQYaH9/t5l0x+HojIES9e3KRoP9/G4ipy8V+YFWi51wZ8OGPG5oyRPPRHT/EJdeVERQ9fIYlVhp3za5T8ZwCFM9u3evw+cwxdGtWqLjfd+knPItpRX6AySvXyOIRcNYXORP8MmfO7xbZuPgCqYqQgOkVc8k2GkSp9q05byb+4PN1wbmiWeYleghyPjAGk28H8JKCJxsw2W7f+168cOcjO5MzHXZm5UkQnrlrPKVT0A97++9VwXVUI0bL8mnRFLX5OnvTlr0w9RmhZ7oROCr/tDdbyvgjuTq9rBiCr2uZLQHo3Bl7SeVMUHlQsILJZnYknU2s1txIVzGe8VMLJv/0qLWQ0eRApVCZAzZj+MLBUM80tHjGi7y37JcKKmAe4I8hOb+Ah9CCgPES7FxnZz6Z4QZug==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(4326008)(9576002)(86362001)(33716001)(8676002)(2906002)(38100700002)(8936002)(66476007)(5660300002)(66946007)(33656002)(66556008)(508600001)(9686003)(38350700002)(186003)(44832011)(6666004)(55016002)(956004)(66574015)(1076003)(26005)(6916009)(83380400001)(52116002)(316002)(6496006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?lq8+Mcka58hxmcSKGbJFrYD8Aa1hRGtEQJwh1bKyX/u7sncE72S+2rZK6H?=
 =?iso-8859-1?Q?/mAOlFevgsXxs4j1AZEeVewetlStZPVApVUx7fHKygIG7AsWxzo6nSpVhO?=
 =?iso-8859-1?Q?xC3euvlJN9+P00Guy4Fi6h4JpkhaawdRcAzG2U+tnAb4ygAsGpfya9ArfN?=
 =?iso-8859-1?Q?M4EkpQDCSQuH/gLP9wGBD+NjTSs9g6psijH6nN15Mm3dk48ksz6hK6jJRK?=
 =?iso-8859-1?Q?6ueIz0SR0qxVuDmblNTPuT0H+8TGXa98R9qvVeRb787nbh48C2PhAEW4cC?=
 =?iso-8859-1?Q?9BG45nPs7rTHea7DeDr8CkiDBcmgQtxqfFwmyFy2I1HfKwUADHNRgl+KIx?=
 =?iso-8859-1?Q?qMxFWCCbAwlRPIx19psrn7SqdQu35QiS1nlHY+ns9RVVuXOP4R97Z7hrFn?=
 =?iso-8859-1?Q?agao9Z3Z+XIb+sauDAtP7V9vHQFGmJii3hBZLA5aWgQGRh6Q9HPHB+UBpk?=
 =?iso-8859-1?Q?gOgs5ycRMgsCkYS9UPPGpOU/Aw6EGHeWRzLr+YRgMJ44O0uiOLhYaQKJIs?=
 =?iso-8859-1?Q?+b5Ev+OfWXzhILSMctaFMocmHlNW5k4SY563/svnrj2J+e+Vj5lb3vnR0b?=
 =?iso-8859-1?Q?NvcF7j8vE3U6P4MeGzIae0RW8avMXS0I1AYClwtju3ekzhlVKjg8yApuin?=
 =?iso-8859-1?Q?iVkUDTVQ74NT6TJXvGCfkvs+QtYmPla/SRcQTSqHxuMby/pwFncNvhtkVo?=
 =?iso-8859-1?Q?5Zvt3ump3UZJQkyu+ojLN27caHMVVqM3Git5O5RrXBHv/hdg+WE3ezyJ+N?=
 =?iso-8859-1?Q?TOAneCS/a0rX3thgRKQ5HtMHblPjMR0akq4Isivm6m9DYsY/umkzj4MuZO?=
 =?iso-8859-1?Q?gBkjvcoxtlsJAFOWD6RajjdxIgCW8dpWT1r9FqABeG0QzDwfJuE39a+F9A?=
 =?iso-8859-1?Q?bJChEa2KsLUY7Ja0EZ64bQOd3JgV9mEgVNe5o/iZhZf4bXwhJSrDTPZrir?=
 =?iso-8859-1?Q?oiRYffqS4qtaGjPTGinJprZswKvUpSqMDZxHgwtWdkXbXtXQUIjFFqHZ7j?=
 =?iso-8859-1?Q?e4qlot65VkoWl6Cd0Ae6246BSJl1gVfc8hXArRy9ZeMrJejuKdH/Xt/aeq?=
 =?iso-8859-1?Q?GwoHTevB6JmvpYTf75VV82c6OCE6sAA0BvKJwKrZd/TLiiL0LA/c+iMXQX?=
 =?iso-8859-1?Q?E41kPlbJS4gN8FsVvr/U7mra3jThE0po0bjjgkmHWmzFVCRDA3Tr1pbMeb?=
 =?iso-8859-1?Q?Rr72LbbpCjzdtqtpm8FZl1N4j0G703XidS5ZKjocVsqOwg+YFLoDOTulb1?=
 =?iso-8859-1?Q?OuXbh6vMv7hY8diSZHHHiIOLV0yV2lmv2b9EunAUF5wdEHiKsITJjQyR2B?=
 =?iso-8859-1?Q?bIdzbbwYgrAleTBMxY8P76lMd+ynV4ETk0WDi2VLwWITSgcJ4sgrqU1jA3?=
 =?iso-8859-1?Q?QNl+YNoZNvXlKLZbJ90XaellmIrssAkmnU0HbfNl9Ar8MKoh1KaIUie0xJ?=
 =?iso-8859-1?Q?W1mBPGfrcwiEVgoh5Arxs5p0F94PJXHYuBJcF/WsEPRkTTT6Bp9oArS3dh?=
 =?iso-8859-1?Q?YuHDIFwWdV/RefhZztx7WKHqUuHZxmODxGeAa4qTgeoIkf9mJYt/DE7O0p?=
 =?iso-8859-1?Q?hvv/R1KfooRNO3Pt105AB0UbFpZx/6SiZ5mmj8DvzgioclkdSB+C8JdAp1?=
 =?iso-8859-1?Q?lcXQXSr64gQVRx1ONwzaRDeMifkyA9CW6mCSFzmzeaVUINapGTCT10rQqt?=
 =?iso-8859-1?Q?AH4koVHaUFRb2v/LW2zPaFk8Lq/sCOW7c1kDOfQE8/J7KqEeYALRlirjhk?=
 =?iso-8859-1?Q?grUw=3D=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad627bf6-289b-4751-59c9-08d99e27ece9
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Nov 2021 17:40:56.8932 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: w97YDfstUubHlQLmiIsfnMvTI/+6siirS3G2hCUmD2fV+/vcaH+DCjeiHIeP+uZnhxBzFxZy9rGHn1sqhtHbqjtxGr4Lb1TmjPFCWQS0D3I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR10MB5412
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10156
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 phishscore=0 malwarescore=0
 mlxscore=0 suspectscore=0 mlxlogscore=632 adultscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2110150000
 definitions=main-2111020099
X-Proofpoint-GUID: rxut2FgLRUpquLV3c-Xr0kSOcAXH2_Nc
X-Proofpoint-ORIG-GUID: rxut2FgLRUpquLV3c-Xr0kSOcAXH2_Nc
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Sun, Oct 17, 2021 at 10:05:06PM +0200, LABBE Corentin wrote:
    > Le Thu, Oct 14, 2021 at 10:37:52AM +0300, Dan Carpenter a �crit : > > On
    Wed, Oct 13, 2021 at 06:58:06PM +0000, Corentin Labbe wrote: [...] 
 
 Content analysis details:   (-0.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [205.220.165.32 listed in list.dnswl.org]
  0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
                             [205.220.165.32 listed in wl.mailspike.net]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1mhxmf-00FF8J-5L
X-Mailman-Approved-At: Tue, 02 Nov 2021 18:15:29 +0000
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

On Sun, Oct 17, 2021 at 10:05:06PM +0200, LABBE Corentin wrote:
> Le Thu, Oct 14, 2021 at 10:37:52AM +0300, Dan Carpenter a =E9crit :
> > On Wed, Oct 13, 2021 at 06:58:06PM +0000, Corentin Labbe wrote:
> > > +config VIDEO_ZORAN_DEBUG
> > > +	bool "Enable zoran debugfs"
> > > +	depends on VIDEO_ZORAN
> > > +	depends on DEBUG_FS
> > > +	help
> > > +	  Say y to enable zoran debug file.
> > > +	  This will create /sys/kernel/debug/CARD_NAME/debug for displaying
> > > +	  stats and debug information.
> > =

> > Why bother with a CONFIG?  Just make it always on?
> > =

> =

> Hello
> =

> I love to provides choice to user (and so avoid a dep on DEBUG_FS), even =
if I think I am the only one remaining user.

Sorry, for the delay, I was on vacation.

No, there is no depends on DEBUG_FS in the method that I am describing.

How that works is when DEBUG_FS is turned on then it's on for everything,
but when it's disabled it's disabled for everything.  You do not need
the "depends on DEBUG_FS" and if you make this an option the it feels
like it should be a selects DEBUG_FS instead.

How this normally works is that when you have debugfs disabled, there
are dummy files in the debugfs .h files.  I bet the compiler can tell
most of those are empty and removes them.  So if you have DEBUG_FS then
it doesn't use that much more memory than when VIDEO_ZORAN_DEBUG is
disabled.

I don't know if I'm being clear at all #jetlag.

It should be easy to check.  Just remove the "depends on DEBUG_FS" and
enable VIDEO_ZORAN_DEBUG.  Disable DEBUG_FS.  It should still build fine
because of the dummy functions.  That's build 1.  Then disable
VIDEO_ZORAN_DEBUG and that's build 2.  See how much memory difference
there is between 1 and 2.

regards,
dan carpenter


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
