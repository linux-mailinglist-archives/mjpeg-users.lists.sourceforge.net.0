Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 78417837047
	for <lists+mjpeg-users@lfdr.de>; Mon, 22 Jan 2024 19:41:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1rRzEf-0006ij-7N;
	Mon, 22 Jan 2024 18:41:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <schultz1010@gmail.com>) id 1rRzEd-0006ic-VD
 for mjpeg-users@lists.sourceforge.net;
 Mon, 22 Jan 2024 18:41:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oXc7RX0zCqucZn5hwmEyPCnWYkdth4r3juwMP3Ul03s=; b=ALIl4C9uieo25bIWPC2DPKTN1P
 gr8aZCX7uNXcE0vnt2zesLpOOb39F+J3wd0mEeZkmDnw53Lviv4C1JP807AuahpqMnI4493Lhk5JQ
 y91FxEIAw57r2qSp1IuZA4CS59ikABZFa06ezCfFn8NOrziKw311jSA2iuooYLVP6tpw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oXc7RX0zCqucZn5hwmEyPCnWYkdth4r3juwMP3Ul03s=; b=mGoUQ8wzKxjRi2V/0KCjgKBoHf
 YxFp2eVIlz9Ff+yQX+rmegIfArvBG8a0OGd/L1P3znBTxMnpbth3TuSu1gu7eiebsBou4Fc6iRmx0
 nLKprBSnqGxySvRHF/JwVNSnx2kJhQswWNj1cMHdhLPxWg57zjTcEb4pYcAbvJrDkevg=;
Received: from mail-yb1-f173.google.com ([209.85.219.173])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rRzEY-0001aM-M8 for mjpeg-users@lists.sourceforge.net;
 Mon, 22 Jan 2024 18:41:28 +0000
Received: by mail-yb1-f173.google.com with SMTP id
 3f1490d57ef6-dc24ead4428so2241958276.1
 for <mjpeg-users@lists.sourceforge.net>; Mon, 22 Jan 2024 10:41:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1705948876; x=1706553676; darn=lists.sourceforge.net;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=oXc7RX0zCqucZn5hwmEyPCnWYkdth4r3juwMP3Ul03s=;
 b=DJO257ZuPQHmaQXgJjLFS2bsLL8NLAornhrt999Xtby0i7HYMoO5GLXnhFgsmjOWVG
 sTiTF1yX4f1ZyHNBooB/VKCDH/8gqZMxOW3PH5Z+dl20VVI2/+lZ6isRCTR3II0fvdTL
 7nRmX9QA7FUG/v1ibjxGN/LE6zG3u4h96FpLf6DoWujTIjfpO/D4GV/SlC+HxEy7/t8u
 aDkBWYj2o7fNVdpY2r+2JxR0ZaAiZ/Yu8299CfkAtwoXka3Jy2NQQJvdm1eWcettzVBw
 E3anSB5TY3aFq4DoIRLfzVIaKCaaGe5Ys2SRfJIliJD7EOfeb7iA78R3boldhKUAsdXS
 /JXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1705948876; x=1706553676;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=oXc7RX0zCqucZn5hwmEyPCnWYkdth4r3juwMP3Ul03s=;
 b=qMGuX5vUuiDDB2HkEKzFvEFYsGbFMbSYnuuoIERR9bVKhNn/zrtufNQm1v5amOQtr4
 b1HZr86vNv9YGLnrOGxjYDHEiMxC5PrD7GX/iHg2NYRHQ0Z/lo7znpA5SjP3rc1Go8RK
 kPDVTQxIa23Q28tCQ0L+yT0AJQB+anAweh4/JN9QEW2M3xegwEHC8KTiC5oR1RFnYShN
 d/I5vMwtRyd9XnVXUv7JGWzw2pr0v9EXjeOrI5y3p2z+1H7xSICvPqFQRfIvnCMtlDhP
 vgNER7NdgkhZyjkSVht+YV++EEo/GqFAm91tnfkMbi61OwhoAxuVZyejdtWCoRI+TO7B
 IzEA==
X-Gm-Message-State: AOJu0YxLq7bO0abz8RRWgcC1cuzzb8n56NZyYcJeRZiNSWVm4z09Gw9N
 b9rfVOfyWNDJcBViGe8Dj0SedF/xfPFtiLg9dQeVpsHT01R95JrF119rMDySWh3kUSS8yXpTJOz
 Q2IbE1eSYY4PiE2b7LeIe8EiWNeh+uZOAqwQ=
X-Google-Smtp-Source: AGHT+IFMS2n8LzK6S9meVkMThcb+oJgoiUSQgDgGaOjy5AUwA2nLhztk6VPAj8q4BkSCs6pf1/sAsoskbhDYUrZclFI=
X-Received: by 2002:a05:6902:240b:b0:dbd:7426:41f1 with SMTP id
 dr11-20020a056902240b00b00dbd742641f1mr2301261ybb.128.1705948875917; Mon, 22
 Jan 2024 10:41:15 -0800 (PST)
MIME-Version: 1.0
References: <CA+rFky7PBF93-UnMyD7MQyivMBeO-2kSc4kp6HoOTU-4z9B_sQ@mail.gmail.com>
In-Reply-To: <CA+rFky7PBF93-UnMyD7MQyivMBeO-2kSc4kp6HoOTU-4z9B_sQ@mail.gmail.com>
From: Steven Schultz <schultz1010@gmail.com>
Date: Mon, 22 Jan 2024 12:41:05 -0600
Message-ID: <CADpxD9NoebaqEWmY3iJvrMq9hB+UEdRTqAFeAj52Fj5-Rb73qQ@mail.gmail.com>
To: MJPEG-tools user list <mjpeg-users@lists.sourceforge.net>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Sun, Jan 21, 2024 at 6:55 AM Andrew Randrianasulu < wrote:
    > Using svn code from > > svn checkout https://svn.code.sf.net/p/mjpeg/Code/
    mjpeg-Code > looked good to me and didn't appear to break anything. the patch
    has been committed 
 
 Content analysis details:   (0.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.219.173 listed in list.dnswl.org]
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
                             in digit
                             [schultz1010[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [schultz1010[at]gmail.com]
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.219.173 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rRzEY-0001aM-M8
Subject: Re: [Mjpeg-users] mplex patch adding support for 32/44.1khz lpcm
 streams?
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
Content-Type: multipart/mixed; boundary="===============2704127640104065351=="
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

--===============2704127640104065351==
Content-Type: multipart/alternative; boundary="000000000000c10d44060f8d2c44"

--000000000000c10d44060f8d2c44
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Jan 21, 2024 at 6:55=E2=80=AFAM Andrew Randrianasulu <
randrianasulu@gmail.com> wrote:

> Using svn code from
>
> svn checkout https://svn.code.sf.net/p/mjpeg/Code/ mjpeg-Code
>

looked good to me and didn't appear to break anything.   the patch has been
committed

--000000000000c10d44060f8d2c44
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Sun, Jan 21, 2024 at 6:55=E2=80=AF=
AM Andrew Randrianasulu &lt;<a href=3D"mailto:randrianasulu@gmail.com">rand=
rianasulu@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-styl=
e:solid;border-left-color:rgb(204,204,204);padding-left:1ex">Using svn code=
 from<br>
<br>
svn checkout <a href=3D"https://svn.code.sf.net/p/mjpeg/Code/" rel=3D"noref=
errer" target=3D"_blank">https://svn.code.sf.net/p/mjpeg/Code/</a> mjpeg-Co=
de<br></blockquote><div><br></div><div>looked good to me and didn&#39;t app=
ear to break anything. =C2=A0 the patch has been committed</div><div>=C2=A0=
</div></div></div>

--000000000000c10d44060f8d2c44--


--===============2704127640104065351==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============2704127640104065351==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users

--===============2704127640104065351==--

