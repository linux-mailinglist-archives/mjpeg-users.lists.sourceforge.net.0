Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 096B28355EB
	for <lists+mjpeg-users@lfdr.de>; Sun, 21 Jan 2024 14:27:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1rRXql-00068U-Ak;
	Sun, 21 Jan 2024 13:26:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <randrianasulu@gmail.com>) id 1rRXqk-00068H-1A
 for mjpeg-users@lists.sourceforge.net;
 Sun, 21 Jan 2024 13:26:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:To:Subject:
 Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/V2T7QUBrVWJOFzkWi5foJNZvjGtENl4S0SVFrJB5Sc=; b=CEgd/tM+xy7r4lbZ4fqZR9oyZM
 6QcR7r9EpyV/eITmQAXpKYjWmlDC44ggEyaSi4XH3eLU1H1L5P6EeYBdXow2QIbYyM+yWhGE5fBBa
 8h+KxoOqC1geZKdSO/oFeX8K2OxgOvGZJVuQSiGwIr5gWuKep9fpH9l1fvOGx0m/jpb4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/V2T7QUBrVWJOFzkWi5foJNZvjGtENl4S0SVFrJB5Sc=; b=Ygk5M6YP4HDYT+X4KePw01zxoY
 PDI1LiwiKxsPRvWVOiYubD7h4mx++Xh0TC2Gy8ppck62qRGqeuy/d28n8KSg7TcwQkQYfWQE0bIvU
 xofHy44eYkcCsNRqXTE6QGFl9GdSuXr6DoqT2bC6tXh9SgOq7BoDIvPifAx69KqqbD/A=;
Received: from mail-pl1-f173.google.com ([209.85.214.173])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rRXqf-0007Zw-DZ for mjpeg-users@lists.sourceforge.net;
 Sun, 21 Jan 2024 13:26:58 +0000
Received: by mail-pl1-f173.google.com with SMTP id
 d9443c01a7336-1d7393de183so140785ad.3
 for <mjpeg-users@lists.sourceforge.net>; Sun, 21 Jan 2024 05:26:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1705843603; x=1706448403; darn=lists.sourceforge.net;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/V2T7QUBrVWJOFzkWi5foJNZvjGtENl4S0SVFrJB5Sc=;
 b=TXfw0c6bAOVw9aU1qmqYTa5nYpLKTPMN1K/usI5FXH6DJ0LodYIsPQz3ySdzu+F7U3
 CS9yovHTYgeLP0QQQEEf3SZ3O/Z4t8R5QDj5/TDgaWH45+nEjUPnmtwSQGPwSEJDPnBH
 Unh2idjFL0anQAEahUfNHWeY6nAXIRBD9hrLS70q+LGNKRk2Ueb1VqZRN1kuhtYy9NL/
 raEAmA7PDKTmhkKEBBdxFSHCVGrlNbY4f1nhGYnOg2DKRXOFH2sBdrx22PSZSMDJlD2c
 YLUtjesPUl0GuCsXIEU/bghd8dNAz89+orTnePMXlag7e8r+mSgR3VubtUwttUO5jOfx
 Xguw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1705843603; x=1706448403;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=/V2T7QUBrVWJOFzkWi5foJNZvjGtENl4S0SVFrJB5Sc=;
 b=upprjyKWq9X5eS2T1i+vXQbllZly/seJJbUupMWHeTMjUJtYe42L7p837W7Et0TFGZ
 depeYIc3z23Y0geOhU3nlLMDf0riNoadUw9x9Lqc7Vf36KE3bHANf/UGDjumJ5jfz1fA
 gF5uTWeTYW/wM/6clnoos2WJNkKM+SgfplOAbdJ+scgZrWub4W3LfZojAvlbxNcO4Stn
 X8yavdkpHjQAxqFnMF6NBweJVh71vVXRtculwG6zwwSmqmCjJTgNS832znB2TK4jNgGs
 +Ekund9tztezyMVSPEFmWXJ3TWO4Yd+fgHbY60xTcKDLfvQdLP8GLKlVE1YCYQpC7zSZ
 OGRA==
X-Gm-Message-State: AOJu0YwMoI3qWWpMbKlUkAwr9+J1g2fAMLFBLr9UgyhpSq35wlfp9uBO
 z0H2F1VU7pjLs0ChTQ6TBMM0LSHSNzrx6SkYX5IREYKGDIditLE2vn7uYdPMxlHc2vklGK+TqqE
 YRvABSOEP03DPpPKEvbrhWRklRaZKVltmlKI=
X-Google-Smtp-Source: AGHT+IEMHO0w8M0ujd6Zhfr3PlNsVEvF/yH/KjIVipOUAG1UUfeYjbki6pVONZNTK3RQn5jlKO51Qqz2LStvZlzAoao=
X-Received: by 2002:a17:903:32c7:b0:1d7:4c1a:206c with SMTP id
 i7-20020a17090332c700b001d74c1a206cmr54074plr.87.1705843603227; Sun, 21 Jan
 2024 05:26:43 -0800 (PST)
MIME-Version: 1.0
References: <CA+rFky7PBF93-UnMyD7MQyivMBeO-2kSc4kp6HoOTU-4z9B_sQ@mail.gmail.com>
 <CADpxD9MXLUgdTK=HoVQckR6Gd6YGSd6MDDdU=nESSyAgAp0iJQ@mail.gmail.com>
In-Reply-To: <CADpxD9MXLUgdTK=HoVQckR6Gd6YGSd6MDDdU=nESSyAgAp0iJQ@mail.gmail.com>
From: Andrew Randrianasulu <randrianasulu@gmail.com>
Date: Sun, 21 Jan 2024 16:09:19 +0300
Message-ID: <CA+rFky6XZ-9Vg_MXVuHSdjMkFjNTZxQmJJQS4mbfvpOMjj17Dg@mail.gmail.com>
To: MJPEG-tools user list <mjpeg-users@lists.sourceforge.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Sun, Jan 21, 2024 at 4:19 PM Steven Schultz wrote: >
   > > > On Sun, Jan 21, 2024 at 6:55 AM Andrew Randrianasulu wrote: >> >>
   Using svn code from >> >> svn checkout https://svn.code.sf.net/p [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.214.173 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.214.173 listed in wl.mailspike.net]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [randrianasulu[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1rRXqf-0007Zw-DZ
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

T24gU3VuLCBKYW4gMjEsIDIwMjQgYXQgNDoxOeKAr1BNIFN0ZXZlbiBTY2h1bHR6IDxzY2h1bHR6
MTAxMEBnbWFpbC5jb20+IHdyb3RlOgo+Cj4KPgo+IE9uIFN1biwgSmFuIDIxLCAyMDI0IGF0IDY6
NTXigK9BTSBBbmRyZXcgUmFuZHJpYW5hc3VsdSA8cmFuZHJpYW5hc3VsdUBnbWFpbC5jb20+IHdy
b3RlOgo+Pgo+PiBVc2luZyBzdm4gY29kZSBmcm9tCj4+Cj4+IHN2biBjaGVja291dCBodHRwczov
L3N2bi5jb2RlLnNmLm5ldC9wL21qcGVnL0NvZGUvIG1qcGVnLUNvZGUKPj4KPj4gbm90IHRlc3Rl
ZCBhcGFydCBmcm9tIGNvbXBpbGF0aW9uIC4uLgo+Cj4KPiAgYSAiaGVsbG8gd29ybGQiIGNoYW5n
ZSB3b3VsZCBhbHNvIGNvbXBpbGUg8J+YiQo+Cj4gY291bGQgc29tZSBvbmUgdGVzdCBpdCBiZWZv
cmUgYSBjb21taXQgaXMgZG9uZT8KCkkgaG9wZSAgYXQgbGVhc3Qgb25lIHVzZXIgd2l0aCBodyBw
bGF5ZXIgd2lsbCBzdXJmYWNlIHRoaXMgZXZlbmluZyA6KQoKPgo+Cj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBNanBlZy11c2VycyBtYWlsaW5nIGxp
c3QKPiBNanBlZy11c2Vyc0BsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKPiBodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9tanBlZy11c2VycwoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk1qcGVnLXVzZXJzIG1haWxpbmcgbGlz
dApNanBlZy11c2Vyc0BsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vm
b3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vbWpwZWctdXNlcnMK
