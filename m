Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 850BD2ECE7E
	for <lists+mjpeg-users@lfdr.de>; Thu,  7 Jan 2021 12:17:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1kxTIU-0007rM-O0; Thu, 07 Jan 2021 11:17:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dan.carpenter@oracle.com>) id 1kxSoM-0001dK-D3
 for mjpeg-users@lists.sourceforge.net; Thu, 07 Jan 2021 10:46:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+nXFbYO12FXZYg/zscsbBhBStV646kHBHdEB2nrr0Bc=; b=gwFjsVPGC4gJLcTiFqSJAL+OW5
 uuJs6l4hpe1mDoyMpGRHRccHA/RlDj8w+kowFjPRQJmzgv9TqwTX2nXs11mEGijvpfKIux2ENQEHi
 eSTGjN1zIdfo/4x2IEMFVHZb5R3T14hsfX15O/IzTWvHPqm3WuyHnO0Fo6bj3sNahygg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+nXFbYO12FXZYg/zscsbBhBStV646kHBHdEB2nrr0Bc=; b=j96wUDR3yB9+/Ci9yr2re/0tWQ
 akt6Z2lawJtN3ECr9O9IidfuGBOnpI/MD3iqvyZ9VQSXdCaNVnuzIizzriRNbWL8+exjAYROtc1zM
 wFrYt/XhaGBB6100znem5fI5vgbVTn+Jrp+wV97klgWPlBnVH5U21djB3lGedRVjRDy8=;
Received: from aserp2120.oracle.com ([141.146.126.78])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kxSoC-003UmX-1M
 for mjpeg-users@lists.sourceforge.net; Thu, 07 Jan 2021 10:46:34 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 107Ad2RI021237;
 Thu, 7 Jan 2021 10:46:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2020-01-29;
 bh=+nXFbYO12FXZYg/zscsbBhBStV646kHBHdEB2nrr0Bc=;
 b=k5KchOdDK0vlluEtl6ogmdaePJBG7UVjzvwqGPCGBJHYf0uw0Ll9kDy1hlDPIi9FTbJ+
 HLkFk8VJbN1NHaqJzptTYneUm4qmpqbi+i/Q8robgbH/G/Ecm0sFTjdG7XZ5CzHAC9Fj
 136uKmTA5kg/dAQLIU+vSbDS/1lUVhKmqQEhvshBgWhA6punKy+i1W8id0I407rjUcKC
 VTVprHXakDrSqORmzo79SIAUDORLM6eqWZZnH1596Oq8s01HeUU5TSkqhwT4t7adEgC1
 ueSuRyNg+QRFKqTH5/L83IOMP0xWeEpwxX/0RR1p2decuSJFCoZIPAKEZqfvBOj/yyN2 nQ== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 35wepmbuwf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 07 Jan 2021 10:46:09 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 107AeWPL190215;
 Thu, 7 Jan 2021 10:46:08 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 35v4rdv74f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 Jan 2021 10:46:08 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 107Ak5XB027722;
 Thu, 7 Jan 2021 10:46:05 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 07 Jan 2021 02:46:04 -0800
Date: Thu, 7 Jan 2021 13:45:57 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: LABBE Corentin <clabbe@baylibre.com>
Message-ID: <20210107104557.GA5083@kadam>
References: <20210106131702.32507-1-zhengyongjun3@huawei.com>
 <20210106145100.GJ2809@kadam> <X/Ybbj6gN2xrhIwP@Red>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <X/Ybbj6gN2xrhIwP@Red>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9856
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 mlxscore=0 bulkscore=0
 suspectscore=0 spamscore=0 adultscore=0 malwarescore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101070064
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9856
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 bulkscore=0 spamscore=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 suspectscore=0
 priorityscore=1501 mlxscore=0 malwarescore=0 clxscore=1015 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101070064
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [141.146.126.78 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kxSoC-003UmX-1M
X-Mailman-Approved-At: Thu, 07 Jan 2021 11:17:41 +0000
Subject: Re: [Mjpeg-users] [PATCH -next] media: zoran: use resource_size
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Zheng Yongjun <zhengyongjun3@huawei.com>,
 mjpeg-users@lists.sourceforge.net, mchehab@kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

On Wed, Jan 06, 2021 at 09:19:58PM +0100, LABBE Corentin wrote:
> Le Wed, Jan 06, 2021 at 05:51:00PM +0300, Dan Carpenter a =E9crit :
> > On Wed, Jan 06, 2021 at 09:17:02PM +0800, Zheng Yongjun wrote:
> > > Use resource_size rather than a verbose computation on
> > > the end and start fields.
> > > =

> > > Signed-off-by: Zheng Yongjun <zhengyongjun3@huawei.com>
> > > ---
> > >  drivers/staging/media/zoran/zoran_driver.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > =

> > > diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/sta=
ging/media/zoran/zoran_driver.c
> > > index 808196ea5b81..d60b4c73ea80 100644
> > > --- a/drivers/staging/media/zoran/zoran_driver.c
> > > +++ b/drivers/staging/media/zoran/zoran_driver.c
> > > @@ -1020,7 +1020,7 @@ int zoran_queue_init(struct zoran *zr, struct v=
b2_queue *vq)
> > >  	vq->buf_struct_size =3D sizeof(struct zr_buffer);
> > >  	vq->ops =3D &zr_video_qops;
> > >  	vq->mem_ops =3D &vb2_dma_contig_memops;
> > > -	vq->gfp_flags =3D GFP_DMA32,
> > > +	vq->gfp_flags =3D GFP_DMA32;
> > =

> > The commit doesn't match the patch.  Also this driver is in
> > staging because it's going to be deleted soon so there probably isn't
> > much point doing cleanups.
> > =

> =

> No, the driver just came back in staging since I fixed the videobuf2 conv=
ersion.

Ah... Thanks.

regards,
dan carpenter



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
