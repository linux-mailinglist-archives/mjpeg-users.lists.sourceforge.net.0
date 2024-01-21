Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 070EB8355E8
	for <lists+mjpeg-users@lfdr.de>; Sun, 21 Jan 2024 14:19:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1rRXjq-0001FU-6k;
	Sun, 21 Jan 2024 13:19:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <schultz1010@gmail.com>) id 1rRXjo-0001FN-0s
 for mjpeg-users@lists.sourceforge.net;
 Sun, 21 Jan 2024 13:19:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pWgSPntK8ZitWd2/ZkJv0lGxTn3vsiVKVBP5ayickGc=; b=h8cfk/w+N8ivQWjRBne8F2HnVc
 92xEHB6Qm2qVpLdIORh1MLmo0U7c2/40iqdyoX+mZwCs4ni9EhOGwB3APXJzeWVlEG2sM85ti4vj+
 x3aYbryMgbaKYApYtaE+PM7L6xCFLBytWCAcVcPhHSgKvbpZ34hCx4og2Phv6/kyNK0U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pWgSPntK8ZitWd2/ZkJv0lGxTn3vsiVKVBP5ayickGc=; b=JYsVOZCd7ns3S5r0RRAcPSBLdE
 dz8ryBtNUnVNWtuGJtu17F+Zp+IchhAp8bv07HqLEEt7A7/9tUYSNKSd771w70rBnrblSUGmb6JBE
 83jk4Y9XFEloRZl4Tz2zS7OvOqeXpIflMTafhWiHB7LOTSPrxju/EcHeKsBqjaKdwuJg=;
Received: from mail-yw1-f169.google.com ([209.85.128.169])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rRXjn-00076v-94 for mjpeg-users@lists.sourceforge.net;
 Sun, 21 Jan 2024 13:19:48 +0000
Received: by mail-yw1-f169.google.com with SMTP id
 00721157ae682-5f254d1a6daso21268307b3.2
 for <mjpeg-users@lists.sourceforge.net>; Sun, 21 Jan 2024 05:19:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1705843182; x=1706447982; darn=lists.sourceforge.net;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=pWgSPntK8ZitWd2/ZkJv0lGxTn3vsiVKVBP5ayickGc=;
 b=Mdse4FtCDCmnMsT5C9oQVD7JSSFXfumOs3Yc8SoWLx1I4rP0PmzuoYghk1wOEcR2DE
 3HtX4r6HLadKa5A4l6/lxYqYYNrCoutOrAzuQvTcQ9I2mS+9QHwebKOBESfEyeblwxKe
 ERd9bvKt8ivffWcf56ugp5FALd0LFDcXie+3N1Nuu4HifyF5SWAGmeLAX9pfpDFIaECs
 nngU49sv4Rz7aswEYA26NMB1oyrPpoIEa8QAf/QHVyR58M5tRIOCRkLQLoE20trMnA92
 olDRqm/nkmZW59ygYHgnoMNq72eZSHU+pboCE0aQvLGjVzM5DlwmPOOhtH4HOZh+XDRt
 zwSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1705843182; x=1706447982;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=pWgSPntK8ZitWd2/ZkJv0lGxTn3vsiVKVBP5ayickGc=;
 b=TJpt/s3Ppg4+MEJZ+7ikByGQzHVTxckPaWsr6MZvW3iUD2UfZDVPikDjabzJlGscQI
 EoT4kWDEyQBzU4wwJXXjeEZdpbih7fw9U6st3tk1wo20cXgLr+4VYM5UoZthJzCFvX7X
 0U8iI9aNHzQdx2oBa1X+3cLbwVrSFWbtq9E0UMwrZHJp8e33YgLxP49QM2GQ3m4z9m6e
 qZNIy51YDWEEgldGDOZEZjTZHmudkt1ZXvuXT8GEyCwUMMnWBX5INKCUTzM+foFj6s9m
 RDBs0c79Z0u9jS1YebCOsqOYmNlZD/IJazmOATJcsAoBSrRGsJKqryoO0V44WCxeTJPR
 vFnQ==
X-Gm-Message-State: AOJu0YwW2nvbrcxKAIZOLnPkk46G4W0nWgdAJOcPxZsAm/VG+uCoPP1b
 hAXx+rXbrAyiXeOWA4sWd6iC1d2n79sa61od05dWXDCLkkdxX1rONN2wpAjUK6YFwTG8urM4ayI
 5prxtHT+NH/7ahruvRocXZTkBlrAVnOLtsr8iWg==
X-Google-Smtp-Source: AGHT+IH7u1PfxFcV90I7VfXf2mHw3ZUt0iTAgKNK/prdDgt3z+wIi500Y99Z1U141fZwqRsysZBt/xXLz7whH8XE1U4=
X-Received: by 2002:a81:a013:0:b0:5ff:ae61:1c21 with SMTP id
 x19-20020a81a013000000b005ffae611c21mr1296957ywg.84.1705843181167; Sun, 21
 Jan 2024 05:19:41 -0800 (PST)
MIME-Version: 1.0
References: <CA+rFky7PBF93-UnMyD7MQyivMBeO-2kSc4kp6HoOTU-4z9B_sQ@mail.gmail.com>
In-Reply-To: <CA+rFky7PBF93-UnMyD7MQyivMBeO-2kSc4kp6HoOTU-4z9B_sQ@mail.gmail.com>
From: Steven Schultz <schultz1010@gmail.com>
Date: Sun, 21 Jan 2024 07:19:30 -0600
Message-ID: <CADpxD9MXLUgdTK=HoVQckR6Gd6YGSd6MDDdU=nESSyAgAp0iJQ@mail.gmail.com>
To: MJPEG-tools user list <mjpeg-users@lists.sourceforge.net>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Sun, Jan 21, 2024 at 6:55 AM Andrew Randrianasulu < wrote:
    > Using svn code from > > svn checkout https://svn.code.sf.net/p/mjpeg/Code/
    mjpeg-Code > > not tested apart from compilation ... a "hello world" change
    would also compile 😉 
 
 Content analysis details:   (0.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
                             in digit
                             [schultz1010[at]gmail.com]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [schultz1010[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.128.169 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rRXjn-00076v-94
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
Content-Type: multipart/mixed; boundary="===============2460164530080693727=="
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

--===============2460164530080693727==
Content-Type: multipart/alternative; boundary="000000000000db26ed060f749088"

--000000000000db26ed060f749088
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Jan 21, 2024 at 6:55=E2=80=AFAM Andrew Randrianasulu <
randrianasulu@gmail.com> wrote:

> Using svn code from
>
> svn checkout https://svn.code.sf.net/p/mjpeg/Code/ mjpeg-Code
>
> not tested apart from compilation ...


 a "hello world" change would also compile =F0=9F=98=89

could some one test it before a commit is done?

--000000000000db26ed060f749088
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
de<br>
<br>
not tested apart from compilation ...</blockquote><div><br></div><div>=C2=
=A0a &quot;hello world&quot; change would also compile =F0=9F=98=89=C2=A0 =
=C2=A0</div><div><br></div><div>could some one test it before a commit is d=
one?<br></div><div><br></div><div><br></div></div></div>

--000000000000db26ed060f749088--


--===============2460164530080693727==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============2460164530080693727==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users

--===============2460164530080693727==--

