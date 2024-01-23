Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AC24D839D1E
	for <lists+mjpeg-users@lfdr.de>; Wed, 24 Jan 2024 00:16:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1rSPzk-000468-IS;
	Tue, 23 Jan 2024 23:15:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <randrianasulu@gmail.com>) id 1rSPzj-000462-OU
 for Mjpeg-users@lists.sourceforge.net;
 Tue, 23 Jan 2024 23:15:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ASaSp1mRkU+Cf9F+pofI4zp+VuiF4d1uPsJ+uyzJNag=; b=BfVFdwVYrBr6RTJuSkE2lVLFMc
 XqFhOcavZfJXYKV8SCLQ3JFmxK+OjFMjrG+O8klJkR9Jq4/AmBqIMW9KFiwCyrRoPXtM2MNoBK5Hj
 /vlzGyLDWb0qf1Dh/y1KMfYqSTc14fV+yh5rbh7oozgzFEhbQag04/UDMRnpZQZXdVJk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ASaSp1mRkU+Cf9F+pofI4zp+VuiF4d1uPsJ+uyzJNag=; b=d
 OQh/vE/UYlB8j2u1yaoJYX1TsHBsJXGY9mDRhjsSySl5C7o9yZkcQn96K7yfacYuJyEYS/C6T/Kis
 8Kaz9i4UmU5ouaXtcUNwBE04X8BH1G0W4Ztg8BknnPaPjEKubOmu+Pxm3lEPdSq6tuxHUe6FxLUAQ
 mGnGQlN6z5TRBSo0=;
Received: from mail-pl1-f174.google.com ([209.85.214.174])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rSPze-0002q5-L7 for Mjpeg-users@lists.sourceforge.net;
 Tue, 23 Jan 2024 23:15:51 +0000
Received: by mail-pl1-f174.google.com with SMTP id
 d9443c01a7336-1d746ce7d13so22645945ad.0
 for <Mjpeg-users@lists.sourceforge.net>; Tue, 23 Jan 2024 15:15:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706051741; x=1706656541; darn=lists.sourceforge.net;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=ASaSp1mRkU+Cf9F+pofI4zp+VuiF4d1uPsJ+uyzJNag=;
 b=ivAFwZU1Upj3AiPLWOV67PsR0xJPuHSXx7DJbM+a5pOfAHsvwVpEgnxZ4k3qa3kIZv
 53U6H1PzIWjBL8GJuZMoqhUpUv0sEMpL1q21UzRQ1FmBg9TxfhukXVixv8/2P8fAc4yx
 mvlob6GjY4uLpdvfqKzLEaEEwahGbfYNqd0xafUJ/ZHPh/S0dqKSzea9ENYnASXs1MO4
 hflEOIvbmhlhNCO82WIiR6d9Sde160fkYuDt/UsK49CU+mR5FCeYSlDKTaGRNPFn8TYY
 RfrSGzPwU/4Tx4KA0QCVMb1U6JT29MQQ+Dnoas7bdJuOBFtqsd7F33R4CYhnjPdC+GAE
 nuWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706051741; x=1706656541;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=ASaSp1mRkU+Cf9F+pofI4zp+VuiF4d1uPsJ+uyzJNag=;
 b=umyM8MZu7m8aPrcTNNCSCrz2ZBnRZT4tTOkkKcXRpzc1IgStEZEk1m+UUJR+6j6eWa
 BankHiEobyuezqUHMv9DYEGtScvc6B8p+5PxoiI1JvGBvXI5ldjXZkXgMuyfNcPSaFhv
 Krchiw/pIDzNus43c6jI5KMKldOQNnERTqrIbGl+XP6KsJlF09DGTpj0zajCmI6o+pkk
 x1IGlG70hFt6bzodeNKkYamKQoJCDt4X7zSy0DX/SFN1ns4RaKWGGpSgB7l4lvAcA03q
 k+gwqYTijDzajC9A79qIlaIKRkFbd6A/iyrM3sRhbVOcAI8sPv65kui6B1IbOFfxWmwj
 uMAQ==
X-Gm-Message-State: AOJu0YyOo2I/qSh/CS0kfgMaf/lH17QLciD7JwDeji4gAPT9oj6czS0C
 2LZYn47nZ7rqLieYIcmkPedo4b1u24ldRdsLdtnRWH94TVtm1DI1U7fO3WtvegVMObk4a/Ui66b
 tab24zYv65s/V7UpA6XsRoATjAM4IBLOhhW87rQ==
X-Google-Smtp-Source: AGHT+IHnptkIaTeDHnSHZm1me1EIGcEnkWA6WBb6EvnQHpj6L4ysFFPKH3ZiBUpJ48wvzsewq2MzA6WzX8b+33c9hK4=
X-Received: by 2002:a17:902:9303:b0:1d7:2947:4980 with SMTP id
 bc3-20020a170902930300b001d729474980mr5959409plb.122.1706051741441; Tue, 23
 Jan 2024 15:15:41 -0800 (PST)
MIME-Version: 1.0
From: Andrew Randrianasulu <randrianasulu@gmail.com>
Date: Wed, 24 Jan 2024 01:58:32 +0300
Message-ID: <CA+rFky4pJ-9oyEyNAunsk8W1PzznBXrwbvDEOHbzEyGUv_qG5w@mail.gmail.com>
To: MJPEG-tools user list <Mjpeg-users@lists.sourceforge.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  So, I was having a blast hacking old en/decoder. My own hacks
 do not work on 64-bit yet (they run, just sounds wrongs :) ) but this one
 was tested on aarch64 Termux install,
 so should be better https://github.com/Randrianasulu/iso-dist10
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [randrianasulu[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.174 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.174 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rSPze-0002q5-L7
Subject: [Mjpeg-users] multichannel mpeg audio
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

So, I was having a blast hacking old en/decoder.

My own hacks do not work on 64-bit yet (they run, just sounds wrongs
:) ) but this one  was tested on aarch64 Termux install, so should be
better

https://github.com/Randrianasulu/iso-dist10

note: pcm2aiff too was not working for me, but mc (multichannel) and
lsf (low sampling frequency) mpeg de/encoders were good ..

I wonder if mplex already can mux those streams? In man I see

BUGS
       The multiplexer should handle MPEG(5.1) audio.

but date on man page from 2001 ...


_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users
