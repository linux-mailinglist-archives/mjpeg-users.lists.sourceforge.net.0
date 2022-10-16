Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BFF055FFE7C
	for <lists+mjpeg-users@lfdr.de>; Sun, 16 Oct 2022 11:47:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1ok0ET-0002Z3-AS;
	Sun, 16 Oct 2022 09:46:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <molletts@yahoo.com>) id 1ok0E0-0002Yf-FO
 for mjpeg-users@lists.sourceforge.net;
 Sun, 16 Oct 2022 09:46:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QK+6sCZ+R7wPFDsxynhB5/kad5ImpueJ8jqru9PgF8c=; b=lzdE1hbO6T87UxFHKylHXm9feH
 exlZkl9ciw04nsfoxQ0+FP5gh5uYtDnpo4vPdxmwCicTjpl9EFUHsAM+4OMfL812lda6g1aY3gzaw
 q+HTKED7XsZz49cgU5UMX8r0Ew5qsIveXmascHTSBitgQuW0wX56+vGqwJk0/Cbw6zC4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QK+6sCZ+R7wPFDsxynhB5/kad5ImpueJ8jqru9PgF8c=; b=g5lbiMgzL6oKBF+AxIyKAS7D1w
 slmzFb01jC8Ys/35KrtdmSsO8iS8Jg0wVvcVQ4ktF4JuH4fkA6HwaNd4eJIPSXHmVH4U9NefkKDqE
 qDFEE4Ip+b+7I+TJCcUqta1x4mB8Vv4BaBpLjPbY+JMtvUNeTCBA/s9MtjKGUKIV4Rq4=;
Received: from sonic301-31.consmr.mail.ne1.yahoo.com ([66.163.184.200])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ok0Dy-00016z-Nf for mjpeg-users@lists.sourceforge.net;
 Sun, 16 Oct 2022 09:46:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1665913581; bh=QK+6sCZ+R7wPFDsxynhB5/kad5ImpueJ8jqru9PgF8c=;
 h=Date:Subject:To:References:From:In-Reply-To:From:Subject:Reply-To;
 b=ioTKeBgKK4npua+Ao03lBWxl4KXQAhRP/m1+y3/rSyCKlYh8cyo41Gm5VjsyRGQ2FEDOCyoYqqmHPvlptkaifUrNB9BCj4CJ/wEAGKbnu/vf9ex0tQwx/UaFLtjzgYa3q+cbSY8DS0MJMXTpqtUi4eXieQX9IzUtFVlqJbsWUq0/A/VE6G1AqEn6YTUo4JtniYybQ2yRJGuhUdAuEhNOUR1ITwOfJDC6D5xCtg0lTuJfc1JSOqgFyLlbf6uFtUwWBkGPEyMdOv0tmwEa/3N5VYwR0W/GH2qEOCyzMo2Ogj+1sVtlHUzX9s7vbvPXkYxsGZ9gUprYIR3uXBM9nHmRZw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1665913581; bh=88d9EV/Olbh3zD7RafoTHIM85dpSvbLBIYPNiPbGar+=;
 h=X-Sonic-MF:Date:Subject:To:From:From:Subject;
 b=BW+nEdNvpo7Ehsz1T+xQxUNCUA+VkwjlFbU68pNa5pNvS0Ag+DMd7sA9w8QEQrCkUvPzJfXqj1wj8SC+Oxkvfp2yuxtTO2iy+JCw78c4td/XHeot5B1Rhkiyv9TRZGugsfH4WsYERHE9Qlt/bBpRjQzIOohY06Yx5Qj6xuMwckil7+VM50ScIbqgugJYCXmQdyaAZ3J/Ic1ZM2LHtpVFpUT65NswlPt1IdpFtxHVPIaNsJyL4vfHQl10AQkpr/mj1aBcURVkWBIoPE9DwldLRkAuxlUxpL/iD5tkfw8FWDYXROEpnY/PX9c+eDOpJguBlIwX55gSGIUq9oEGMQq/ew==
X-YMail-OSG: 6BClBloVM1ltIbJmTd7D7RY.84W73XKevs8FUPz2t3bU.usrhzzXlaisk3e.dFQ
 m684fFlXQh7Il2CQwiM7CxITGMeI8rX.azBpO5pVCpyxYZnPkH0.7Yhp280BjOrKjCNmg5NNzbAA
 M82MzILnNTyZ72VN1LEU.yMz.rFEXx6Csz4U5cDEYROaI57WIzT2al800ufklc0GK3tKeR0mOLVa
 NP1hGDyUkRCeYM2VIMSD.cT79XNLRpwNCRYj9nuTW5QpH1pne.Ae1pAj.LFBDyuvg85oJ8kQFJ8V
 2DRm2WINUybbbuI.ss29U5mKYvp17YsM2KCbYmUYfaXjvklV4uR8QhTTrnOQF7VTItL8rL_8mb.I
 t7IdWbuLrfCzo8qSe5nWV7CdNFfwWxJOJJ6J_9xcGvswJiyZhPMp_fuZvoGBdNPaHk8zPUucZqc2
 SLH654Kgeygx4OnIdsU.4OHHBIakPdaXRPqSYdQI_BO5JTVFodRcOTyq1mmBb3h.EUwvQ.jhmkXD
 4Q1qSX8S_x4sVrkEOw_YVuvSdfKgFZO.CiQIlNbhrDbSnTbthmeKrMlH.W7V62vGQeVDHGPcccVT
 OqKd5ER7Df61d0s8gdaMfuVsSKjse5E546AMVoUPLg6zfTJRV_n94kuHW_lnW03_92QXOCLQTqpt
 PPjL8YtX2pptmKYyEo1x9.g4SyAOwcZr..xgufhzaWhgr42UstuOeADUt7zxqedfXMvTy.tpeY62
 6HEADzrivYq2qGOvERuAtJxGgR2kLlqBUB5JkWy.qarvbk.0QgryJeoQAM10FYPp3..ecCv9eO4L
 BFSiVjxefpJc3EYXY9IpYiJ9SGEP6fE_iU6OW526S1qjNaE2yBPgmOInjH.ZwSg9SyXSS_3oHdw5
 pdzxdfAKeRhf6K3.vk0v6Bm8bXS8OUIfyP_f_FsKgBxL1KOE68YG3MGfliSmmOoZ2BUBtewwrZXw
 bAkpmyTZ35DT3QGHaxmCtc40Iwl8oj1IOvAur0l3_M9oUkdHNBUcoLyb0ZknbMIvLRaD1Skpisaa
 fpeqeVAQt2O9TFqCwJYGTn6vRFO1fZPmeJiTDIiTYqZ1I0LKFU0yvIiUtg3GLJ7o9vjwU8Xz7mj9
 nmzse0Sgw3qj5qOZxq9ZjJNLZCG.JxU8YYObJ_cvHxwJxMMkr4oUyxRff7ywaJgKJPk2Nqu7BO8.
 DiTAJuDdaAprEny9bZ9Gr2CiFyWMhs0P_t4WjVUKpEaElDt7KHYNayaB98hbZddcvEgI8UprYmLW
 uaq3x5mqbs3EsM4IkI49I0BUOi_tAjWMuz2ZqbFhHIyyp5fHbgHxiRU7tQrPdZ87R0lYkXJJN5KC
 FvGM8Gc0gIytFqSZES5EpJN2ssvpec9un8qisaRZKzzNhon5_VzSGuY1ErrdoG1PyoF.2_HhiDB8
 v.Ha8SrtfVioMUlhb1HZRAFA9tHIaFHfA9KkFGNSZms2_RdsbGAPZsTgrZhSibri29CJ.YrSG7SR
 9iS1fgH7w4LCNhVbpaP9gQlwlUm8uZblon3ZsfaSCcduOCq7u2JZd1FNURPdGi5ybbGXlj4ntTY4
 1E_4Og1dAwEN8FOP7SLQ_YMYFqBQDK8HoX2MzisGZcxjDlkyp.N70A1CoO4Z4VBFcjMtu_.NzTR0
 WPtmCBn2T7wPRwg9DYkFGhs3mBz7XVaWCyBzMx.KdJW281YHVb8Zt2Kz5XR_akW8T._71Ruejt_1
 nYw5bagbMT8XG9L7YdtIpAR6oqRJOQC1qEQ_slYb4DmhJqRALIbPFPfW.XgHoFsR5dJIRfJwFVQa
 arbm4kQewHRp9hOEEpCqeKOZic_4hfRRQrMdP1HGjyYkGygcvZVufhfRvXCv42n7JWk2fiVY.mEJ
 nyfFqT_tMdMXz5ecCFKolrUPC6ZXkqSuvv9YnKXB8SQcOm5.jZZk7xLkFJZOgiWNfy19jGwcRePq
 X_IOhRXZvGnxHRTsz5gxLsoiUm9iH_qMGMHhgIRmlpHN5xjhzFrFj6Vt1Nj6UWRWkqQ0xlO3btnP
 L8U02zBhpQbQ9Lp9.qo_LKYU85FiQP62hxLf9t.Lx5Og6zkaONM.rwDq2EcX.YantGqqGrdDpv_v
 qIou22JTKap6He81MT7yWOF.QGsEYlS6bcQUwy27ews8HRjj1cWNyHAnxwT5oO3JgCvedNig03oE
 7mc7dgIotNrat6UUDMvhzdCv.oaEnG75p5RaRbjNWs4k3FrKTUZKFTqyQ4dGBjK5F8OZUpV.i_h3
 5soCSEtwRR_qKcgU.ryV0T3F9qh607BlOuLW_u7f0jsyZvbNZwSw-
X-Sonic-MF: <molletts@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic301.consmr.mail.ne1.yahoo.com with HTTP; Sun, 16 Oct 2022 09:46:21 +0000
Received: by hermes--production-ir2-6c65697d7-5d96b (Yahoo Inc. Hermes SMTP
 Server) with ESMTPA ID 983f1b890feb599bf02b7aba0854765e; 
 Sun, 16 Oct 2022 09:46:15 +0000 (UTC)
Message-ID: <bd339e0e-7d58-78ed-e66d-3bd6921fad81@yahoo.com>
Date: Sun, 16 Oct 2022 10:46:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: mjpeg-users@lists.sourceforge.net, janos@jankom.net
References: <1f684654-8907-655c-b8c0-ed5bb8a15d82@griesbach.at>
 <9f4c6922fbd9940e07875116618012df8a133c6a.camel@jankom.net>
 <20221006092153.1d76bbd3@andraslinux>
 <74c98e9f-ac31-e318-8d53-f62c7705fdab@griesbach.at>
 <20221008095345.23b41f1a@andraslinux>
 <2a17fa6e-a342-1cb9-f75c-03106b139078@griesbach.at>
 <20221010145111.65e78e39@andraslinux> <20221015111424.55e183bf@andraslinux>
Content-Language: en-GB
In-Reply-To: <20221015111424.55e183bf@andraslinux>
X-Mailer: WebService/1.1.20740
 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Janos, I know I'm coming into this discussion a bit late
 but what kind of editing do you need to do on the files? If it's just "topping
 and tailing" - extracting specific timed sections out of the capture fi [...]
 Content analysis details:   (-2.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [66.163.184.200 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [molletts[at]yahoo.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1ok0Dy-00016z-Nf
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
From: Stephen Mollett via Mjpeg-users <mjpeg-users@lists.sourceforge.net>
Reply-To: MJPEG-tools user list <mjpeg-users@lists.sourceforge.net>
Cc: Stephen Mollett <molletts@yahoo.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

Hi Janos,

I know I'm coming into this discussion a bit late but what kind of 
editing do you need to do on the files? If it's just "topping and 
tailing" - extracting specific timed sections out of the capture files 
and encoding them to another file - then the way I do it is with ffmpeg 
using something like:

$ ffmpeg -accurate_seek -ss $START_TIME_SECS -t $DURATION_SECS \
-i $SOURCE_FILE -c:v $VIDEO_CODEC $VIDEO_CODEC_OPTIONS -vtag $FOURCC \
-c:a $AUDIO_CODEC $AUDIO_CODEC_OPTIONS $OUTPUT_FILE

Hopefully, the shell variables are self-explanatory. I can get the times 
by simply playing the video with vlc or similar and using the fine 
adjustment controls and/or reduced play speed. You can add in filters as 
necessary to sharpen/denoise/crop.

I used to do this quite regularly and had a script to automate it, which 
I dumped onto github a few years ago at:
https://github.com/molletts/handy-scripts/tree/master/cut-video
in case someone somewhere found it useful. It's some years since I last 
used it so I don't know whether it still works. Both components (the 
main script and the helper which it calls) need to be in $PATH.

I've never tried Kdenlive or Pitivi so I don't know what they're like 
but I've seen them both mentioned as good-enough video editors for basic 
work. They've both got ebuilds in the main Gentoo repo so it may be 
worth giving one or both a try. (Kdenlive is likely to pull in a ton of 
KDE dependencies, of course.)

Hope this helps,
Stephen

On 15/10/2022 16:14, Janos G Komaromi wrote:
> Progress report after reading the FM.
> 
> Executed the followig commands:
> mplayer -ao pcm:fast:file=audio.wav -v null ezcap0001.avi
> cat audio.wav | mp2enc -o audio.mp2
> mplex audio.mp2 video_svcd.m2v -o test.mpg
> mplex -V -r 1740 audio.mp2 video_svcd.m2v -o test.mpg
> mplayer test.mpg
> glav test.mpg
> 
> Results:
> (1) mplex in either forms complains about too many frames dropped and
> then quits.
> (2) mplayer plays the file, but it is a long video, so I stopped B4
> completion.
> (3) glav has the same error as in my initial post.
> 
> So I'm still asking for help. There is no video editor available for
> Gentoo. I like glav and would like to use it for my video files
> transferred from old video recorder tapes.
> 
> Thx - Janos
> 
> 
> On Mon, 10 Oct 2022 14:51:11 -0400
> Janos G Komaromi <janos@andraslinux.jgklinux.jankom.net> wrote:
> 
>> Hi,
>>
>> Thanks, Bernie. One step closer.
>> I recompiled mplayer, and now the command works. I now have a
>> "video_svcd.m2v" file. It plays with mplayer but there is no sound.
>> So the next step: how do I make a complete file, video and sound, that
>> glav will be able to process for editing?
>>
>> Regards,
>>
>> Janos
>>
>> On Sat, 8 Oct 2022 19:15:04 +0200
>> Bernhard Praschinger <bernhard@griesbach.at> wrote:
>>
>>> Hallo
>>>
>>> Janos G Komaromi wrote:
>>>> Yes Bernie, that's it. My distro is Gentoo, which means it i
>>>> compiled from a Gentoo source. I believe I can recompile it with
>>>> the yuv4mpeg use flag. I'll post another message once I succeed
>>>> with the original command set just to close this thread. Thank you
>>>> for your help - Janos
>>> One thing comes into my mind, it might be that the configure script
>>> checks if the mjpegtools libraries are available and only activates
>>> it automatic if it finds them the Option that force yuv4mpeg is:
>>> --enable-yuv4mpeg.
> 
> 
> 


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
