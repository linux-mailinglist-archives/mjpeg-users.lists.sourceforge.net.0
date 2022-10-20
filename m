Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C4B76065D3
	for <lists+mjpeg-users@lfdr.de>; Thu, 20 Oct 2022 18:32:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1olYSj-0006ss-NO;
	Thu, 20 Oct 2022 16:32:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <janos@andraslinux.jgklinux.jankom.net>)
 id 1olX4s-0003FU-Cb for mjpeg-users@lists.sourceforge.net;
 Thu, 20 Oct 2022 15:03:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:In-Reply-To:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Vo88hO5X1zpDTv9k94AJHLLuMYmMj2I57dMU2QF0F3c=; b=W/SqryvkVVNAE9BpVXX5DbvSlV
 ZbTNRzxaYDbbumxgJpZRDOcUYUnjUBHDtrkqMpb8ybN6YPMLbJjXLwN9aszcG8Ex3PwcocSY808mx
 wOttpYUxh6yKt7tboQDzTBUxoNwsVt4yuHpOAzY2pGbCP4I6EHw9PC3MMF17+T3QlM9o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Vo88hO5X1zpDTv9k94AJHLLuMYmMj2I57dMU2QF0F3c=; b=d4RyToFKgc0YH/uRwgCoV4yXTM
 6KkKW2F/x1+nHqlsgY8QdyN1fQgxBJdG5NMoJLbXN54IAbp88qxNJWgoQGfKIqj+4kngdp7ETIOcb
 kXcmOu/GEArYQEi9Y/TmHsvG3UEijusuRB8Gh53iejBpLmNuDO3wDE/oFHt2L1S39+Xk=;
Received: from jgklinux.jankom.net ([198.74.55.83]
 helo=andraslinux.jgklinux.jankom.net)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1olX4r-0002To-3W for mjpeg-users@lists.sourceforge.net;
 Thu, 20 Oct 2022 15:03:22 +0000
Received: from andraslinux (jgklinux [10.8.0.1])
 by andraslinux.jgklinux.jankom.net (Postfix) with ESMTPS id 2E9A040E50;
 Thu, 20 Oct 2022 11:03:14 -0400 (EDT)
Date: Thu, 20 Oct 2022 11:03:08 -0400
From: Janos G Komaromi <janos@andraslinux.jgklinux.jankom.net>
To: "Janos G. Komaromi" <janos@jankom.net>
Message-ID: <20221020110308.2e94f862@andraslinux>
In-Reply-To: <b2717eb91f342c02257b644730c43ef436c6391b.camel@jankom.net>
References: <1f684654-8907-655c-b8c0-ed5bb8a15d82@griesbach.at>
 <9f4c6922fbd9940e07875116618012df8a133c6a.camel@jankom.net>
 <20221006092153.1d76bbd3@andraslinux>
 <74c98e9f-ac31-e318-8d53-f62c7705fdab@griesbach.at>
 <20221008095345.23b41f1a@andraslinux>
 <2a17fa6e-a342-1cb9-f75c-03106b139078@griesbach.at>
 <20221010145111.65e78e39@andraslinux>
 <20221015111424.55e183bf@andraslinux>
 <adbcae19-e903-fa75-359b-72f281f82d86@griesbach.at>
 <20221017145851.19351786@andraslinux>
 <346fe3b1-e2ef-1384-d819-e3a892a2a235@griesbach.at>
 <20221018152218.0b680513@andraslinux>
 <20221019121913.008f7f9d@andraslinux>
 <c7673683-b952-979c-d167-f02070b896b0@griesbach.at>
 <b2717eb91f342c02257b644730c43ef436c6391b.camel@jankom.net>
Organization: fitlet_andraslinux_home
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="MP_/DR=qYd5iYbE7OT/X_ThyW4i"
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Sorry to bother this community again with a follow up
 question:
 Now that glav works I have visually noticed a difference between the original
 (compressed) file and the glav-compatible (huge) file. In order to confirm
 my suspicion I issued the command: ffprobe -v e [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
X-Headers-End: 1olX4r-0002To-3W
X-Mailman-Approved-At: Thu, 20 Oct 2022 16:32:04 +0000
Subject: Re: [Mjpeg-users] glav error opening .avi file
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
Cc: mjpeg-users@lists.sourceforge.net
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

--MP_/DR=qYd5iYbE7OT/X_ThyW4i
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Sorry to bother this community again with a follow up question:

Now that glav works I have visually noticed a difference between the
original (compressed) file and the glav-compatible (huge) file. In
order to confirm my suspicion I issued the command:
ffprobe -v error -show_format -show_streams <both versions>
and compared the outputs - see attached diff.txt file.

It is obvious that
(a) width and height ratio is changed (lines 12-13 vs 19-20);
(b) yuv420p vs yuvj422p (lines 26 vs 33) - maybe not relevant for visual
appearance;
(c) time base (lines 42 vs 44) - this explains the bloated size, do we
need this, and if not, how to leave it as original?

Obviously, only item (a) is important, the rest is mainly for my
curiosity and better understanding of the digital video concepts.

Janos


On Wed, 19 Oct 2022 14:36:58 -0400
"Janos G. Komaromi" <janos@jankom.net> wrote:

> Thanks. Yes, glav works with -a 0.
> 
> As far as /dev/dsp is concerned I may have to recompile kernel to
> include oss drivers. I'll keep on working the sound part, but for my
> most immediate editing tasks sound output is not that important.
> 
> Thanks again for all you support and also for Stephen's idea of ffmpeg
> method of simmply cutting out a section of the original (compressed)
> .avi file.
> 
> Best to all,
> 
> Janos
> PS - please add my other email address
> janos@andraslinux.jgklinux.jankom.net
> to members of your mailing list.
> 

--MP_/DR=qYd5iYbE7OT/X_ThyW4i
Content-Type: text/plain
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename=diff.txt

3,5c3,5
< codec_name=mpeg4
< codec_long_name=MPEG-4 part 2
< profile=Advanced Simple Profile
---
> codec_name=mjpeg
> codec_long_name=Motion JPEG
> profile=Baseline
7,12c7,12
< codec_tag_string=XVID
< codec_tag=0x44495658
< width=800
< height=592
< coded_width=800
< coded_height=592
---
> codec_tag_string=jpeg
> codec_tag=0x6765706a
> width=480
> height=480
> coded_width=480
> coded_height=480
15,20c15,20
< sample_aspect_ratio=1:1
< display_aspect_ratio=50:37
< pix_fmt=yuv420p
< level=5
< color_range=unknown
< color_space=unknown
---
> sample_aspect_ratio=N/A
> display_aspect_ratio=N/A
> pix_fmt=yuvj422p
> level=-99
> color_range=pc
> color_space=bt470bg
23c23
< chroma_location=left
---
> chroma_location=center
29c29
< time_base=1/30
---
> time_base=1/600
32c32
< duration_ts=195950
---
> duration_ts=3919000
34c34
< bit_rate=896524
---
> bit_rate=7494070
36c36
< bits_per_raw_sample=N/A
---
> bits_per_raw_sample=8
40c40
< DISPOSITION:default=0
---
> DISPOSITION:default=1
51a52,56
> TAG:creation_time=2022-10-18T19:11:27.000000Z
> TAG:language=eng
> TAG:handler_name=Libquicktime Video Media Handler
> TAG:vendor_id=lqt 
> TAG:encoder=libquicktime-1.2.4
55,56c60,61
< codec_name=mp3
< codec_long_name=MP3 (MPEG audio layer 3)
---
> codec_name=pcm_s16be
> codec_long_name=PCM signed 16-bit big-endian
59,61c64,66
< codec_tag_string=U[0][0][0]
< codec_tag=0x0055
< sample_fmt=fltp
---
> codec_tag_string=twos
> codec_tag=0x736f7774
> sample_fmt=s16
64,65c69,70
< channel_layout=stereo
< bits_per_sample=0
---
> channel_layout=unknown
> bits_per_sample=16
69c74
< time_base=1/7962
---
> time_base=1/44100
72,74c77,79
< duration_ts=N/A
< duration=N/A
< bit_rate=64000
---
> duration_ts=288042605
> duration=6531.578345
> bit_rate=1411200
77c82
< nb_frames=52007784
---
> nb_frames=288042624
80c85
< DISPOSITION:default=0
---
> DISPOSITION:default=1
91a97,100
> TAG:creation_time=2022-10-18T19:11:27.000000Z
> TAG:language=eng
> TAG:handler_name=Libquicktime Sound Media Handler
> TAG:vendor_id=lqt 
94c103
< filename=ezcap0001.avi
---
> filename=output.avi
97,98c106,107
< format_name=avi
< format_long_name=AVI (Audio Video Interleaved)
---
> format_name=mov,mp4,m4a,3gp,3g2,mj2
> format_long_name=QuickTime / MOV
101,102c110,111
< size=790039820
< bit_rate=967642
---
> size=7274687058
> bit_rate=8910053
103a113
> TAG:creation_time=2022-10-18T19:11:27.000000Z

--MP_/DR=qYd5iYbE7OT/X_ThyW4i
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--MP_/DR=qYd5iYbE7OT/X_ThyW4i
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users

--MP_/DR=qYd5iYbE7OT/X_ThyW4i--

