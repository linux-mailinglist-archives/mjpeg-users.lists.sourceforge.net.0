Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3C083559B
	for <lists+mjpeg-users@lfdr.de>; Sun, 21 Jan 2024 13:06:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1rRWat-00010U-9Z;
	Sun, 21 Jan 2024 12:06:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <randrianasulu@gmail.com>) id 1rRWar-00010N-E4
 for Mjpeg-users@lists.sourceforge.net;
 Sun, 21 Jan 2024 12:06:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nI1h25cvYg67kij5dx/lsbrC1PZhAxqNKZWXKWQWDbA=; b=cniqoqMteYeS83Viej1KTmOhsu
 sOPORkFt/XksJvZn1fV0m+07ba5vlyVjnsxHkvA13tgo+Eako+LSBqjPCREODGkeYjmO/FW0UJGI4
 +pgBIB7bSAsyf/B1eUTm/PWeQMyFtppyPVOUYUhROg4liakRXuP4h/xBMhR9NJf6eFIE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nI1h25cvYg67kij5dx/lsbrC1PZhAxqNKZWXKWQWDbA=; b=Qv3k0qBYp9ANxOdjLEE9RP2ONU
 xgJB3aGJzBQrj1/7ZQWBHImyx1mzNyqQZPJPP+E/sX6Frsh1xpG7HDep0PpA+zJ3STyiv4SjBDiR1
 wJ/NTuNlHZxgrJLd0hsonFWhPvoRR7HoaCh0L52EEwOqzw0wRfED5dDMCNqeMtPUOVzw=;
Received: from mail-ot1-f51.google.com ([209.85.210.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rRWaq-0002hu-5N for Mjpeg-users@lists.sourceforge.net;
 Sun, 21 Jan 2024 12:06:29 +0000
Received: by mail-ot1-f51.google.com with SMTP id
 46e09a7af769-6dc36e501e1so2171193a34.1
 for <Mjpeg-users@lists.sourceforge.net>; Sun, 21 Jan 2024 04:06:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1705838778; x=1706443578; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=nI1h25cvYg67kij5dx/lsbrC1PZhAxqNKZWXKWQWDbA=;
 b=mHzbdwFt0w5n09nwdSk9HMINOaQpoEtan3i1rneqzsTV0URyT5PRuNZPWtxVsKJexb
 ygZTpw0whmaybGFN4nJAIF8AT3l++OtGNTh13X8IaPxu/yWmhPfOhxHVdWfXB6NmRh5z
 VaLB7p7AXJ6s7joedmYPRTDfAf3QJt2YbqF9T1bQ7URMN3LxHAhz7kc6rcGcriLwH74U
 WPzOWv5jdTvTSQQQesDSOKfrcW4Vf6c/eYzXZm3i7gj/IL2imAyHj7lhQn+6I2cvmlCv
 z9pCvRV9OAkKQ+BJG6npy/hWKVZj8tJ5GbDHssgTFe4B2wxDYsSuuGUnSbmO4OOQ6mWq
 XEzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1705838778; x=1706443578;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=nI1h25cvYg67kij5dx/lsbrC1PZhAxqNKZWXKWQWDbA=;
 b=upkjIllwc0ZNFy82AbPMRz43k8i+pMNkERI+IEqmOoUOC4Zi/kA0Zm0FHmNMpaiiTM
 Sl2nTdkvoGL9+nQbg0bWyVaQVOhdBhBUVnlfPrS6XPEMRDUCOOKVHWPJxNcqe1BPi+HE
 j6WIETDEeLmD41XZdvrlnB8SFNSv9OkG48KzXaIIqOhIQWSFr9ImZTeh5sPzfm5IVOUU
 AlMYoqwSQWiKURXAJUlcVryrpAoIHa5OjKemsuPFK0pZk/bTfbGmpbHSTCa6RssTatLV
 KPolq8Fd4RL6c/FZB0H+hH5jC0WkZBBWsJQKrEXS2C5J1ZelUz+MjuAnQq97cJOv1rHX
 A/BQ==
X-Gm-Message-State: AOJu0YwlEv/SnlFlkTHkx/bCSC3qxlxmNFq4dVML4Mz0gzSwKVyGQ/tD
 YUtOVYKNwSlgbipcWa/4fvduZewOyNESjui+uwIyQHzt0i54Gd6jEQF3CkvIpsy0nvmhKbTB+bf
 qHWJcf14+jsWbJAIIqv3ViUHJdGb/WOi7BrY=
X-Google-Smtp-Source: AGHT+IHPTCh0HoA2fnPIGZ7QAokVhu9Vrfb75kbTkis2Opi0vz/cbe3duTeFeREoduHGgJwQqOV0CRpCQRt5NS6GoN8=
X-Received: by 2002:a05:6359:2781:b0:176:51aa:16a6 with SMTP id
 ly1-20020a056359278100b0017651aa16a6mr282033rwb.27.1705838777932; Sun, 21 Jan
 2024 04:06:17 -0800 (PST)
MIME-Version: 1.0
References: <CA+rFky5pNGoR2NeKkWpZS4i8dJvMpW2pXa1uqCeBFwyRxKAt2g@mail.gmail.com>
 <CAPYw7P4=TQaa4o_2JCCwzCNax+okV2CxHxgr_NszLrxKGaAuiA@mail.gmail.com>
In-Reply-To: <CAPYw7P4=TQaa4o_2JCCwzCNax+okV2CxHxgr_NszLrxKGaAuiA@mail.gmail.com>
From: Andrew Randrianasulu <randrianasulu@gmail.com>
Date: Sun, 21 Jan 2024 14:48:53 +0300
Message-ID: <CA+rFky7QG7x_5LLYTtu37nQdrPLvHZ7mFyfde5Zgq4aWNwQ3hw@mail.gmail.com>
To: FFmpeg user questions <ffmpeg-user@ffmpeg.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Sun, Jan 21, 2024 at 2:47 PM Paul B Mahol wrote: > >
   /* no traces of 44100 and 32000Hz in any commercial software or player */
   well, but mpv (and vlc?) supports it .... > > On Sun, Jan 21, 2024 at 3:44 AM
    Andrew Randrianasulu < > wrote: > > > According to this source (vlc) lpcm
    dvd audio supports lower frequencies > > like 44100/32000 hz - useful for
    direct dv tr [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [randrianasulu[at]gmail.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.210.51 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.210.51 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rRWaq-0002hu-5N
Subject: Re: [Mjpeg-users] [FFmpeg-user] LPCM in DVD - 44.1/32khz sample
 rate?
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
Cc: "Cinelerra.GG" <cin@lists.cinelerra-gg.org>,
 Mjpeg-users@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

T24gU3VuLCBKYW4gMjEsIDIwMjQgYXQgMjo0N+KAr1BNIFBhdWwgQiBNYWhvbCA8b25lbWRhQGdt
YWlsLmNvbT4gd3JvdGU6Cj4KPiAvKiBubyB0cmFjZXMgb2YgNDQxMDAgYW5kIDMyMDAwSHogaW4g
YW55IGNvbW1lcmNpYWwgc29mdHdhcmUgb3IgcGxheWVyICovCgp3ZWxsLCBidXQgbXB2IChhbmQg
dmxjPykgc3VwcG9ydHMgaXQgLi4uLgoKPgo+IE9uIFN1biwgSmFuIDIxLCAyMDI0IGF0IDM6NDTi
gK9BTSBBbmRyZXcgUmFuZHJpYW5hc3VsdSA8Cj4gcmFuZHJpYW5hc3VsdUBnbWFpbC5jb20+IHdy
b3RlOgo+Cj4gPiBBY2NvcmRpbmcgdG8gdGhpcyBzb3VyY2UgKHZsYykgbHBjbSBkdmQgYXVkaW8g
c3VwcG9ydHMgbG93ZXIgZnJlcXVlbmNpZXMKPiA+IGxpa2UgNDQxMDAvMzIwMDAgaHogLSB1c2Vm
dWwgZm9yIGRpcmVjdCBkdiB0cmFuc2NvZGluZyBmb3IgZXhhbXBsZSAuLi4uCj4gPgo+ID4gaHR0
cHM6Ly9naXRodWIuY29tL3ZpZGVvbGFuL3ZsYy9ibG9iL21hc3Rlci9tb2R1bGVzL2NvZGVjL2xw
Y20uYwo+ID4KPiA+IHNlZSBsaW5lcyA1MjQsIDYwOAo+ID4KPiA+IERvZXMgdGhpcyBtZWFuIHRo
YXQgbGliYXZjb2RlYy9wY20tZHZkZW5jLmMgY2FuIGJlIHRyaXZpYWxseSBleHRlbmRlZCB0bwo+
ID4gc3VwcG9ydCB0aG9zZSA/Cj4gPgo+ID4gU2FtZSBxdWVzdGlvbiBmb3IgbXBsZXguIChpdCBv
bmx5IHN1cHBvcnRzIDQ4Lzk2IGtoeiBscGNtIGF1ZGlvKS4KPiA+Cj4gPiBJIGFsc28gZm91bmQg
dGhpcyB0YWJsZSB2aWEgbWpwZWctdXNlcnMgYXJjaGl2ZXM6Cj4gPgo+ID4gaHR0cHM6Ly9kdmQu
c291cmNlZm9yZ2UubmV0L2R2ZGluZm8vbHBjbS5odG1sCj4gPgo+ID4gaXQgbGlzdHMgZHluYW1p
YyByYW5nZS9nYWluICg/KSBzZXR0aW5nIGVxdWF0aW9ucy4KPiA+Cj4gPiBOb3QgbXBsZXggbm9y
IGZmbXBlZyBzdXBwb3J0IHNldHRpbmcgdGhpcyB0byBhbnl0aGluZyBidXQgaGFyZGNvZGVkIDB4
ODAKPiA+Cj4gPiBUaGlzIG1pZ2h0IGJlIHNvdXJjZSBvZiBteSAidG9vIGxvdWQiIGxwY20gZHZk
IGV4cGVyaW1lbnRzIGJlY2F1c2UgSSB3YXMKPiA+IG1ha2luZyBscGNtIGZpbGUgdmlhIGNpbmVs
ZXJyYS1nZydzIHJhdyBwY20gb3V0cHV0IGZvcm1hdCAodXNpbmcgbGlic25kZmlsZQo+ID4gaW50
ZXJuYWxseSkuCj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+ID4gZmZtcGVnLXVzZXIgbWFpbGluZyBsaXN0Cj4gPiBmZm1wZWctdXNlckBmZm1wZWcu
b3JnCj4gPiBodHRwczovL2ZmbXBlZy5vcmcvbWFpbG1hbi9saXN0aW5mby9mZm1wZWctdXNlcgo+
ID4KPiA+IFRvIHVuc3Vic2NyaWJlLCB2aXNpdCBsaW5rIGFib3ZlLCBvciBlbWFpbAo+ID4gZmZt
cGVnLXVzZXItcmVxdWVzdEBmZm1wZWcub3JnIHdpdGggc3ViamVjdCAidW5zdWJzY3JpYmUiLgo+
ID4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGZm
bXBlZy11c2VyIG1haWxpbmcgbGlzdAo+IGZmbXBlZy11c2VyQGZmbXBlZy5vcmcKPiBodHRwczov
L2ZmbXBlZy5vcmcvbWFpbG1hbi9saXN0aW5mby9mZm1wZWctdXNlcgo+Cj4gVG8gdW5zdWJzY3Jp
YmUsIHZpc2l0IGxpbmsgYWJvdmUsIG9yIGVtYWlsCj4gZmZtcGVnLXVzZXItcmVxdWVzdEBmZm1w
ZWcub3JnIHdpdGggc3ViamVjdCAidW5zdWJzY3JpYmUiLgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCk1qcGVnLXVzZXJzIG1haWxpbmcgbGlzdApNanBl
Zy11c2Vyc0BsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5u
ZXQvbGlzdHMvbGlzdGluZm8vbWpwZWctdXNlcnMK
