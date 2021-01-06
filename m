Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B728B2EC9B2
	for <lists+mjpeg-users@lfdr.de>; Thu,  7 Jan 2021 05:55:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1kxNKC-0006cZ-R0; Thu, 07 Jan 2021 04:55:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dan.carpenter@oracle.com>) id 1kxAAK-00036h-39
 for mjpeg-users@lists.sourceforge.net; Wed, 06 Jan 2021 14:52:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tIA8GlTWf3yVssgYetYQok6eZau6hlzofE7mX8MNTEQ=; b=cAIdYujJeH43pO6DK3H54xVHVz
 2n8vVqF0rZPh0fTYGRVc1pQQdGtgD8SxNIi4aqx+lLbEvd11fFIdI9+eRlXpva9ZzUv9xgqzTkGah
 o8JJlIHjPLRXZNgTig/mdi3K7T71MAs90rcTRd5GFXtdKc38MWuaTa+m5MQkUj/rrHeI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tIA8GlTWf3yVssgYetYQok6eZau6hlzofE7mX8MNTEQ=; b=Mizao3ufiaS+CA09fk3rg05DVU
 WCZNZhNFr/jSXy0hNP+k52EnoQ4zvJxeqynAfbPW5cE/1VZb1rRtalcWWx8DPmmCxVX2KpM9oTqRI
 FuuKz6BH2T1wVi0ufb9wwsx8Dkrr9FElDI15H9gd+gHXUGLTo2w1f61KpBkOnvQHYykU=;
Received: from aserp2120.oracle.com ([141.146.126.78])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kxAA4-00FvBn-PG
 for mjpeg-users@lists.sourceforge.net; Wed, 06 Jan 2021 14:52:00 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 106Ena0t075317;
 Wed, 6 Jan 2021 14:51:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=tIA8GlTWf3yVssgYetYQok6eZau6hlzofE7mX8MNTEQ=;
 b=KioYAGiejyEuyCo0AjAS3xp3TP9zuynp6zh6M2UScSTILVHPrJT7ZKZcC0mLm6C5cS5o
 zvdjNZRLVOE9MRJXpfeT7/+qmEsTZhyrtoeK9HSHBW9jpfoOIlxNN0fx6msHaCXGMqQi
 vcVW8gyijz3d+hUAksNndW0TkWSbBPYmzHQBQNRjNxkb89O5ZXyrXbQR47eC4LivtOaV
 g1N9sFXCe6vhtkvoFvdRqq8qizyBGiBGxBONuQdLwRa0Yge9QbzHybYD9/XXbbSTSs/m
 AMs9v4meU/bFqHyO0SbTxlUPuMyibfyEAVLzoGvGUNzT+Cx++XcMRTWQI2isjpfXxxSz Mw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 35wepm85xj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 06 Jan 2021 14:51:14 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 106EoSs8166955;
 Wed, 6 Jan 2021 14:51:14 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 35v4rcrryg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 06 Jan 2021 14:51:14 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 106EpB1w011216;
 Wed, 6 Jan 2021 14:51:12 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 06 Jan 2021 06:51:08 -0800
Date: Wed, 6 Jan 2021 17:51:00 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Zheng Yongjun <zhengyongjun3@huawei.com>
Message-ID: <20210106145100.GJ2809@kadam>
References: <20210106131702.32507-1-zhengyongjun3@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210106131702.32507-1-zhengyongjun3@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9855
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 mlxscore=0 bulkscore=0
 suspectscore=0 spamscore=0 adultscore=0 malwarescore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101060093
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9855
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 bulkscore=0 spamscore=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 suspectscore=0
 priorityscore=1501 mlxscore=0 malwarescore=0 clxscore=1011 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101060093
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
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kxAA4-00FvBn-PG
X-Mailman-Approved-At: Thu, 07 Jan 2021 04:55:03 +0000
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
 linux-kernel@vger.kernel.org, mjpeg-users@lists.sourceforge.net,
 clabbe@baylibre.com, mchehab@kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

On Wed, Jan 06, 2021 at 09:17:02PM +0800, Zheng Yongjun wrote:
> Use resource_size rather than a verbose computation on
> the end and start fields.
> 
> Signed-off-by: Zheng Yongjun <zhengyongjun3@huawei.com>
> ---
>  drivers/staging/media/zoran/zoran_driver.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
> index 808196ea5b81..d60b4c73ea80 100644
> --- a/drivers/staging/media/zoran/zoran_driver.c
> +++ b/drivers/staging/media/zoran/zoran_driver.c
> @@ -1020,7 +1020,7 @@ int zoran_queue_init(struct zoran *zr, struct vb2_queue *vq)
>  	vq->buf_struct_size = sizeof(struct zr_buffer);
>  	vq->ops = &zr_video_qops;
>  	vq->mem_ops = &vb2_dma_contig_memops;
> -	vq->gfp_flags = GFP_DMA32,
> +	vq->gfp_flags = GFP_DMA32;

The commit doesn't match the patch.  Also this driver is in
staging because it's going to be deleted soon so there probably isn't
much point doing cleanups.

If you're looking at the Smatch resource_size() message, then that's a
tricky thing because of the + 1 on part of the "end - start + 1"...
It's sometimes hard to know if we should add the + 1 which resource_size()
does or not.  (That check is ancient and not up to modern standards).

regards,
dan carpenter



_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
