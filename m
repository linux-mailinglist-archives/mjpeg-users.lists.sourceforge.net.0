Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 434E457EBAF
	for <lists+mjpeg-users@lfdr.de>; Sat, 23 Jul 2022 05:37:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1oF5xH-00084O-0J; Sat, 23 Jul 2022 03:37:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <philipp.g.hortmann@gmail.com>) id 1oExlQ-0007fu-FS
 for mjpeg-users@lists.sourceforge.net; Fri, 22 Jul 2022 18:52:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MJnFfzBEUxybZkQ3AxAi8Z56rSmpzOjF0yaefAJxp6k=; b=HxqXsZiGAKYEkDXfQ2bAW3gaOm
 PVhjYjRHu2NXaIYj9hBXEBKXgqcsyx6kxWEPAZvtRzD/efrUvZhxDcGcO5nh0VsLdylmQga+BT1jL
 gcjYMPhFByIpACEuO+vWn0O8eGBvN9o26lo9ATX0z1SXpBFp6LONQM7bpwFt99OxpG20=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MJnFfzBEUxybZkQ3AxAi8Z56rSmpzOjF0yaefAJxp6k=; b=JKTo5TDQF51NGKkpmlbsQzl0p4
 W5lTFCup5PtqNjC22oAemJBGZMaRlxEynNIMzHy5U9+Lvn9HeUyZ0E9xiF5XP8pMmeoa1C2ms62xR
 aVKpZ0FTLKDaF1rJLuhlvs40iF4qCr/Nm4Va8VHW6eK2G1k5Mz+j4z6JP8k9AtlLMMKE=;
Received: from mail-ej1-f51.google.com ([209.85.218.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oExlN-0006lj-HA
 for mjpeg-users@lists.sourceforge.net; Fri, 22 Jul 2022 18:52:40 +0000
Received: by mail-ej1-f51.google.com with SMTP id fy29so9963181ejc.12
 for <mjpeg-users@lists.sourceforge.net>; Fri, 22 Jul 2022 11:52:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=MJnFfzBEUxybZkQ3AxAi8Z56rSmpzOjF0yaefAJxp6k=;
 b=hPZxmL/vWnVURDpuU5aHymrsvWxtm6phB5uYYfvhQzgWt53DdeAhC6HMCunHo6e2Kq
 mbe0VDHybExAiLyV6Roj+1sl82xouib0F8XZ336XCe3Dlptvzu8ARXvTEcYLBsMlUTmt
 wksvhQkz5iuRoFscO0Byg6DO93bByOXCv1VMc0lSDYF9TbCMfdDDdkGKIbThaa94u/OL
 TezSX55mmtFRSebsJFkQRp82X3HxmwQh0+gbyfZCpPbiC2RKvkS5dl+qebIv3t4TqQFh
 twI452qKF3guV7yiAZGx7olOk32zh/oIFlYzmMwLuEFRmIAoXdO+1bVipVyLRgtx5RWF
 QkMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=MJnFfzBEUxybZkQ3AxAi8Z56rSmpzOjF0yaefAJxp6k=;
 b=dy3/gWrLAhkxRHycbHx/mqjhDTHmb/pzLiVB1/p5uZ89CZncUrTDnvHoESfOzfo8Pv
 xzjSAldtils46vxeQ1jsoul8CbqAfayB5/WtylZqRmdR/vhM7ubMKIeqWct+zMW4UQHf
 m+2kbXsF13/wR0JLjPRhF6MCPVvwz2AOP09hjk+UqL1Gm4Hj8emiriWm8dntks8X9dlS
 FCMhpBof9JMSVgVvg8T+ldMsK/Cgj5vWBv1F9Ow//e0g7aLWElOeCcMaUM8VAIGb/XF8
 eQHmzjC/RTIeuV/cWzKrYcS7ilFMZaCw984xOpjGI6T+7uF0dXyU8bwVPfDxuz+oEjlB
 YK6w==
X-Gm-Message-State: AJIora84TY2mAqWTH1cBAkFUgXEjXRHNtlznTOQ8E+xfv7tVYmyhiPWr
 j4nKKpnsbs2MkbsDovnVtn4=
X-Google-Smtp-Source: AGRyM1ujFj4t7DYHcsrPBzRq+6SUk8TcoRlKKxifPrZPe4IvIdWUJ9ZH6r9gh7ZyWEv6S28pODeNMw==
X-Received: by 2002:a17:907:2d26:b0:72f:d05:f530 with SMTP id
 gs38-20020a1709072d2600b0072f0d05f530mr952752ejc.284.1658515951114; 
 Fri, 22 Jul 2022 11:52:31 -0700 (PDT)
Received: from ?IPV6:2003:c7:8f2e:6976:6ec9:79b2:9979:d758?
 (p200300c78f2e69766ec979b29979d758.dip0.t-ipconnect.de.
 [2003:c7:8f2e:6976:6ec9:79b2:9979:d758])
 by smtp.gmail.com with ESMTPSA id
 d11-20020a05640208cb00b0043a7c24a669sm2920297edz.91.2022.07.22.11.52.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 22 Jul 2022 11:52:30 -0700 (PDT)
Message-ID: <614ce7e3-ff4e-5d76-e940-2aa222535743@gmail.com>
Date: Fri, 22 Jul 2022 20:52:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Abhijeet Srivastava <abhijeet.srivastava2308@gmail.com>
References: <20220722182622.23719-1-abhijeet.srivastava2308@gmail.com>
From: Philipp Hortmann <philipp.g.hortmann@gmail.com>
In-Reply-To: <20220722182622.23719-1-abhijeet.srivastava2308@gmail.com>
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 7/22/22 20:26, Abhijeet Srivastava wrote: > Deleted part
 of code in block comment > > Signed-off-by: Abhijeet Srivastava > --- >
 drivers/staging/media/zoran/zoran_driver.c
 | 9 --------- > 1 file [...] 
 Content analysis details:   (-2.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.218.51 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [philipp.g.hortmann[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.51 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1oExlN-0006lj-HA
X-Mailman-Approved-At: Sat, 23 Jul 2022 03:37:24 +0000
Subject: Re: [Mjpeg-users] [PATCH] media: staging: media: zoran: Deleted
 dead code
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 mjpeg-users@lists.sourceforge.net, Corentin Labbe <clabbe@baylibre.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

On 7/22/22 20:26, Abhijeet Srivastava wrote:
> Deleted part of code in block comment
> 
> Signed-off-by: Abhijeet Srivastava <abhijeet.srivastava2308@gmail.com>
> ---
>   drivers/staging/media/zoran/zoran_driver.c | 9 ---------
>   1 file changed, 9 deletions(-)
> 
> diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
> index b408c1d4e0a7..836edf623571 100644
> --- a/drivers/staging/media/zoran/zoran_driver.c
> +++ b/drivers/staging/media/zoran/zoran_driver.c
> @@ -746,11 +746,6 @@ static const struct v4l2_ioctl_ops zoran_ioctl_ops = {
>   	.vidioc_enum_input		    = zoran_enum_input,
>   	.vidioc_g_input			    = zoran_g_input,
>   	.vidioc_s_input			    = zoran_s_input,
> -
> -/*	.vidioc_enum_output		    = zoran_enum_output,
> - *	.vidioc_g_output		    = zoran_g_output,
> - *	.vidioc_s_output		    = zoran_s_output,
> - */
>   	.vidioc_g_std			    = zoran_g_std,
>   	.vidioc_s_std			    = zoran_s_std,
>   	.vidioc_create_bufs		    = vb2_ioctl_create_bufs,
> @@ -762,13 +757,9 @@ static const struct v4l2_ioctl_ops zoran_ioctl_ops = {
>   	.vidioc_streamon		    = vb2_ioctl_streamon,
>   	.vidioc_streamoff		    = vb2_ioctl_streamoff,
>   	.vidioc_enum_fmt_vid_cap	    = zoran_enum_fmt_vid_cap,
> -/*	.vidioc_enum_fmt_vid_out	    = zoran_enum_fmt_vid_out,*/
>   	.vidioc_g_fmt_vid_cap		    = zoran_g_fmt_vid_cap,
> -/*	.vidioc_g_fmt_vid_out               = zoran_g_fmt_vid_out,*/
>   	.vidioc_s_fmt_vid_cap		    = zoran_s_fmt_vid_cap,
> -/*	.vidioc_s_fmt_vid_out               = zoran_s_fmt_vid_out,*/
>   	.vidioc_try_fmt_vid_cap		    = zoran_try_fmt_vid_cap,
> -/*	.vidioc_try_fmt_vid_out		    = zoran_try_fmt_vid_out,*/
>   	.vidioc_subscribe_event             = v4l2_ctrl_subscribe_event,
>   	.vidioc_unsubscribe_event           = v4l2_event_unsubscribe,
>   };

Why does the subject line start with "media:" The subsystem is 
"staging:" so the subject should start with "staging: media: ..."

I have no clue if this is accepted.

Regards,

Philipp


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
