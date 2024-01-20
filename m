Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D148334D9
	for <lists+mjpeg-users@lfdr.de>; Sat, 20 Jan 2024 14:41:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1rRBaz-0005C9-Ud;
	Sat, 20 Jan 2024 13:41:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <randrianasulu@gmail.com>) id 1rRBax-0005Bu-Se
 for Mjpeg-users@lists.sourceforge.net;
 Sat, 20 Jan 2024 13:41:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:To:Subject:
 Message-ID:Date:From:MIME-Version:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oyciTvdwD0sCZnWKAQCelJ/s2lzrTcl8bv04UOE7Ni8=; b=cWLK1TWO+lDf2XreejcWxzxqba
 vmDtSRnhWNSOj+wLJJWIR8dHX7KSQ2TYZx0qH0rDOjyLAyL7s64RsMmUlYRLYkcQQAQI1NolJ75RX
 3MFyI8EqgGqhkk2oAlvaNm8lPu3gyjHe4KFN09NBtwMzd7UI93uSBXEWJoNAQ6j4DWnI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=oyciTvdwD0sCZnWKAQCelJ/s2lzrTcl8bv04UOE7Ni8=; b=T
 HnMG4Ja/JRLTwq8pVXeQ99LY28TOTU+6TYAzHgmNRR2twC0qUC8LfT1JHUlY8c4TKfDYMeS9eh9sH
 BH5d8xglTqhgnsis+uau2japKZ791OXDrxzWg7DS4/JHHPWtYokFFp0MMLbOGv1kfVV5N9o1BAtQo
 buIb5UV3Apfh6J64=;
Received: from mail-pl1-f182.google.com ([209.85.214.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rRBaw-0005sC-US for Mjpeg-users@lists.sourceforge.net;
 Sat, 20 Jan 2024 13:41:12 +0000
Received: by mail-pl1-f182.google.com with SMTP id
 d9443c01a7336-1d70c150632so13555535ad.0
 for <Mjpeg-users@lists.sourceforge.net>; Sat, 20 Jan 2024 05:41:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1705758065; x=1706362865; darn=lists.sourceforge.net;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=oyciTvdwD0sCZnWKAQCelJ/s2lzrTcl8bv04UOE7Ni8=;
 b=L2UrGC1+cV9bwu5+l5rlTy1B9H704/N6dOOZA0WtTRVrsVvOwj3r54BnTJLMGOVe2f
 LBog3B4suXizzj35H/G1LHCK6KfFmrrEUtd+zGD8x64PEXmizqAvBhsYKRaLD6Qrxgiu
 P6b9NlGWEgm9ZMG3vfL8o3Foh6I/DDCwMsj+iJRYN0w1139sMJPikB0D4jeI6Q87GQEQ
 UpfDDwrQ2cqSrGEwms8W3KvrUigfaKz1LKgVSQM4ftpglmqdHx+ssx4r4BZAfXmMLRMs
 XgOmKST4ukr6UGF8iozecNLemA1C+FIAEvHHg9vS/WvklhhRHq/ke6zqgOzT1VRq/qvE
 +B+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1705758065; x=1706362865;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=oyciTvdwD0sCZnWKAQCelJ/s2lzrTcl8bv04UOE7Ni8=;
 b=YCye7im1D7x243/R8H5aldGB9R7PpOJwDmLXsRQ+cKVDReroyalgT5sqb6ttGeLvxT
 Ps14Z1BCVGmmWzmYokHx3VkbMonIS1/vPavhTULyLg7o/o4LfiLJ08xFUT6p9m4m/10R
 xvLuDpOVdmJAeQ537pCYX2rMyCLHocbEv1/JTWXmXKosp+z9Qadb1tJ86tQ7BioVz2fC
 DISmUs4TW3MO9HkG0roNhsrHV2jHTL/7Q9O7j8lRjNSJmsZdR1Ayio75aWYVD3GY2jYK
 G6M7XQo1TLvPJrAiVWoUNhcJ+PLqk7XibmkXhK8Lm+8c+uvVrsxcPtd34hldQyNIFOBK
 VkRA==
X-Gm-Message-State: AOJu0Yx+hU6X3bkmrHF2NBvE0zI4+QNC0oXox3k0I50tCso3tIVrAoKV
 OetD5n1FPjFYEPQ8arEiCJnNe1IuHgOcGGFvDNzJXx03voJ3MTX7+3uby7RKetEWq+9AIZJr/DW
 ku4dsS5sMS3j7DPKqI3xsTFQOIc4BhGZY238nPg==
X-Google-Smtp-Source: AGHT+IGHrSWaY67tdMdoMhQc8fZuDb/GqeadBDbxZ6GNsiCpjwrEAeRE0XNqw33Ez0dSwurycSZfqYjrTyifSLJq4kg=
X-Received: by 2002:a17:902:76c5:b0:1d7:2095:af2a with SMTP id
 j5-20020a17090276c500b001d72095af2amr1498657plt.16.1705758064957; Sat, 20 Jan
 2024 05:41:04 -0800 (PST)
MIME-Version: 1.0
From: Andrew Randrianasulu <randrianasulu@gmail.com>
Date: Sat, 20 Jan 2024 16:23:36 +0300
Message-ID: <CA+rFky7-7Er6nsVJQFRattbVE55zEYWJDDB=7GG-McXu13NxSg@mail.gmail.com>
To: Mjpeg-users@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Hello! I am trying to develop procedure for making DVDs with
 LPCM audio using Linux NLE Cinelerra-gg [1] It works, but for some reason
 our lpcm file received as TOO LOUD by default, so I must quieten down whole
 sound track by 40 db. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [randrianasulu[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.182 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.182 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1rRBaw-0005sC-US
Subject: [Mjpeg-users] LPCM audio too loud?
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

SGVsbG8hCgpJIGFtIHRyeWluZyB0byBkZXZlbG9wIHByb2NlZHVyZSBmb3IgbWFraW5nIERWRHMg
d2l0aCBMUENNIGF1ZGlvIHVzaW5nCkxpbnV4IE5MRSBDaW5lbGVycmEtZ2cgWzFdCgpJdCB3b3Jr
cywgIGJ1dCBmb3Igc29tZSByZWFzb24gb3VyIGxwY20gZmlsZSByZWNlaXZlZCBhcyBUT08gTE9V
RCBieQpkZWZhdWx0LCBzbyBJIG11c3QgcXVpZXRlbiBkb3duICB3aG9sZSBzb3VuZCB0cmFjayBi
eSA0MCBkYi4KCnNob3J0IChsZXNzIHRoYW4gMyBtaW4pIHZpZGVvCgpodHRwczovL3lvdXR1LmJl
Ly1ORTJMWnNWVWpvCgpJcyB0aGVyZSBzb21lIHN3aXRjaCB0byBtcGxleCBJIG1pc3NlZD8KCm1w
bGV4IGxvZzoKCj09PT0KCi9kZXYvc2htLy9kdmRfMjAyNDAxMjAtMTUzNDU5L2R2ZC5zaApydW5u
aW5nIC9kZXYvc2htLy9kdmRfMjAyNDAxMjAtMTUzNDU5L2R2ZC5zaAogICBJTkZPOiBbbXBsZXhd
IG1wbGV4IHZlcnNpb24gMi4yLjEgKDIuMi43ICREYXRlOiAyMDEyLTExLTE3IDAxOjU1OjE2ICQp
CiAgIElORk86IFttcGxleF0gRmlsZSAvZGV2L3NobS9kdmRfMjAyNDAxMjAtMTUzNDU5L2R2ZC5t
MnYgbG9va3MgbGlrZQphbiBNUEVHIFZpZGVvIHN0cmVhbS4KICAgSU5GTzogW21wbGV4XSBGaWxl
IC9kZXYvc2htL2R2ZF8yMDI0MDEyMC0xNTM0NTkvZHZkLmxwY20gbG9va3MgbGlrZQphbiBMUENN
IEF1ZGlvIHN0cmVhbS4KICAgSU5GTzogW21wbGV4XSBWaWRlbyBzdHJlYW0gMDogcHJvZmlsZSA4
IHNlbGVjdGVkIC0gaWdub3JpbmcKbm9uLXN0YW5kYXJkIG9wdGlvbnMhCiAgIElORk86IFttcGxl
eF0gRm91bmQgMSBhdWRpbyBzdHJlYW1zLCAxIHZpZGVvIHN0cmVhbXMgYW5kIDAgc3VidGl0bGUg
c3RyZWFtcwogICBJTkZPOiBbbXBsZXhdIFNlbGVjdGluZyBkdmRhdXRob3IgRFZEIG91dHB1dCBw
cm9maWxlCiAgIElORk86IFttcGxleF0gTXVsdGlwbGV4aW5nIHZpZGVvIHByb2dyYW0gc3RyZWFt
IQogICBJTkZPOiBbbXBsZXhdIFNjYW5uaW5nIGZvciBoZWFkZXIgaW5mbzogVmlkZW8gc3RyZWFt
IGUwCigvZGV2L3NobS9kdmRfMjAyNDAxMjAtMTUzNDU5L2R2ZC5tMnYpCiAgIElORk86IFttcGxl
eF0gVklERU8gU1RSRUFNOiBlMAogICBJTkZPOiBbbXBsZXhdIEZyYW1lIHdpZHRoICAgICA6IDcy
MAogICBJTkZPOiBbbXBsZXhdIEZyYW1lIGhlaWdodCAgICA6IDU3NgogICBJTkZPOiBbbXBsZXhd
IEFzcGVjdCByYXRpbyAgICA6IDQ6MyBkaXNwbGF5CiAgIElORk86IFttcGxleF0gUGljdHVyZSBy
YXRlICAgIDogMjUuMDAwIGZyYW1lcy9zZWMKICAgSU5GTzogW21wbGV4XSBCaXQgcmF0ZSAgICAg
ICAgOiA5MDAwMDAwIGJpdHMvc2VjCiAgIElORk86IFttcGxleF0gVmJ2IGJ1ZmZlciBzaXplIDog
MjI5Mzc2IGJ5dGVzCiAgIElORk86IFttcGxleF0gQ1NQRiAgICAgICAgICAgIDogMAogICBJTkZP
OiBbbXBsZXhdIFNjYW5uaW5nIGZvciBoZWFkZXIgaW5mbzogTFBDTSBBdWRpbyBzdHJlYW0gMDAK
KC9kZXYvc2htL2R2ZF8yMDI0MDEyMC0xNTM0NTkvZHZkLmxwY20pCiAgIElORk86IFttcGxleF0g
TFBDTSBBVURJTyBTVFJFQU06CiAgIElORk86IFttcGxleF0gQml0IHJhdGUgICAgICAgOiAgIDE5
MjAwMCBieXRlcy9zZWMgKDE1MzYwMDApIGJpdC9zZWMpCiAgIElORk86IFttcGxleF0gQ2hhbm5l
bHMgICAgICAgOiAgICAgMgogICBJTkZPOiBbbXBsZXhdIEJpdHMgcGVyIHNhbXBsZTogICAgIDE2
CiAgIElORk86IFttcGxleF0gRnJlcXVlbmN5ICAgICAgOiAgICAgNDgwMDAgSHoKICAgSU5GTzog
W21wbGV4XSBTWVNURU1TL1BST0dSQU0gc3RyZWFtOgogICBJTkZPOiBbbXBsZXhdIHJvdWdoLWd1
ZXNzIG11bHRpcGxleGVkIHN0cmVhbSBkYXRhIHJhdGUgICAgOiAxMDc1MzIwMAogICBJTkZPOiBb
bXBsZXhdIHRhcmdldCBkYXRhLXJhdGUgc3BlY2lmaWVkICAgICAgICAgICAgICAgOiAxMDA4MDAw
MAorKyBXQVJOOiBbbXBsZXhdIFRhcmdldCBkYXRhIHJhdGUgbG93ZXIgdGhhbiBjb21wdXRlZCBy
ZXF1aXJlbWVudCEKKysgV0FSTjogW21wbGV4XSBOLmIuIGEgMjAlIG9yIHNvIGRpc2NyZXBhbmN5
IGluIHZhcmlhYmxlIGJpdC1yYXRlCisrIFdBUk46IFttcGxleF0gc3RyZWFtcyBpcyBjb21tb24g
YW5kIGhhcm1sZXNzIHByb3ZpZGVkIG5vIHRpbWUtb3V0cyB3aWxsIG9jY3VyCiAgIElORk86IFtt
cGxleF0gUnVuLWluIGRlbGF5ID0gMTA4MDAgVmlkZW8gZGVsYXkgPSAxMDgwMCBBdWRpbyBkZWxh
eSA9IDE0NDAwCiAgIElORk86IFttcGxleF0gTmV3IHNlcXVlbmNlIGNvbW1lbmNlcy4uLgogICBJ
TkZPOiBbbXBsZXhdIFZpZGVvIGUwOiBidWY9ICAgICAgMCBmcmFtZT0wMDAwMDAgc2VjdG9yPTAw
MDAwMDAwCiAgIElORk86IFttcGxleF0gQXVkaW8gYmQ6IGJ1Zj0gICAgICAwIGZyYW1lPTAwMDAw
MCBzZWN0b3I9MDAwMDAwMDAKKysgV0FSTjogW21wbGV4XSBTdHJlYW0gZTA6IGRhdGEgd2lsbCBh
cnJpdmUgdG9vIGxhdGUgc2VudChTQ1IpPTE4MTM5CnJlcXVpcmVkKERUUyk9MTgwMDAKKysgV0FS
TjogW21wbGV4XSBWaWRlbyBlMDogYnVmPSAgNjE3NzMgZnJhbWU9MDAwMDAyIHNlY3Rvcj0wMDAw
MDExOQorKyBXQVJOOiBbbXBsZXhdIEF1ZGlvIGJkOiBidWY9ICAgIDM1MiBmcmFtZT0wMDAwMjUg
c2VjdG9yPTAwMDAwMDA0CiAgIElORk86IFttcGxleF0gU1RSRUFNIGUwIGNvbXBsZXRlZAogICBJ
TkZPOiBbbXBsZXhdIFNUUkVBTSBiZCBjb21wbGV0ZWQKICAgSU5GTzogW21wbGV4XSBNdWx0aXBs
ZXggY29tcGxldGlvbiBhdCBTQ1I9NTM5OTI1OS4KICAgSU5GTzogW21wbGV4XSBWaWRlbyBlMDog
Y29tcGxldGVkCiAgIElORk86IFttcGxleF0gQXVkaW8gYmQ6IGNvbXBsZXRlZAogICBJTkZPOiBb
bXBsZXhdIFZJREVPX1NUQVRJU1RJQ1M6IGUwCiAgIElORk86IFttcGxleF0gVmlkZW8gU3RyZWFt
IGxlbmd0aDogICAgNjAxMzM0NDQgYnl0ZXMKICAgSU5GTzogW21wbGV4XSBTZXF1ZW5jZSBoZWFk
ZXJzOiAgICAgICA4NQogICBJTkZPOiBbbXBsZXhdIFNlcXVlbmNlIGVuZHMgICA6ICAgICAgICAw
CiAgIElORk86IFttcGxleF0gTm8uIFBpY3R1cmVzICAgIDogICAgIDE1MDAKICAgSU5GTzogW21w
bGV4XSBOby4gR3JvdXBzICAgICAgOiAgICAgICA4NQogICBJTkZPOiBbbXBsZXhdIE5vLiBJIEZy
YW1lcyAgICA6ICAgICAgIDg1IGF2Zy4gc2l6ZSA1OTA3NSBieXRlcwogICBJTkZPOiBbbXBsZXhd
IE5vLiBQIEZyYW1lcyAgICA6ICAgICAxNDE1IGF2Zy4gc2l6ZSAzODk0OCBieXRlcwogICBJTkZP
OiBbbXBsZXhdIE5vLiBCIEZyYW1lcyAgICA6ICAgICAgICAwIGF2Zy4gc2l6ZSAgICAgMCBieXRl
cwogICBJTkZPOiBbbXBsZXhdIEF2ZXJhZ2UgYml0LXJhdGUgOiAgODAxNzYwMCBiaXRzL3NlYwog
ICBJTkZPOiBbbXBsZXhdIFBlYWsgYml0LXJhdGUgICAgOiAgOTcwNzYwMCAgYml0cy9zZWMKICAg
SU5GTzogW21wbGV4XSBCVUZGRVJJTkcgbWluIDE2IEJ1ZiBtYXggMjM1NTQzCiAgIElORk86IFtt
cGxleF0gQVVESU9fU1RBVElTVElDUzogYmQKICAgSU5GTzogW21wbGV4XSBBdWRpbyBzdHJlYW0g
bGVuZ3RoIDExNTIwMDAwIGJ5dGVzLgogICBJTkZPOiBbbXBsZXhdIEZyYW1lcyAgICAgICAgIDog
ICAgMzU5OTkKICAgSU5GTzogW21wbGV4XSBCVUZGRVJJTkcgbWluIDMyIEJ1ZiBtYXggNTQ4MzIK
KipFUlJPUjogW21wbGV4XSBNVVggU1RBVFVTOiBGcmFtZSBkYXRhIHVuZGVyLXJ1bnMgZGV0ZWN0
ZWQhCkRWREF1dGhvcjo6ZHZkYXV0aG9yLCB2ZXJzaW9uIDAuNy4yLgpCdWlsZCBvcHRpb25zOiBn
bnVnZXRvcHQgaW1hZ2VtYWdpY2sgaWNvbnYgZnJlZXR5cGUgZnJpYmlkaSBmb250Y29uZmlnClNl
bmQgYnVnIHJlcG9ydHMgdG8gPGR2ZGF1dGhvci11c2Vyc0BsaXN0cy5zb3VyY2Vmb3JnZS5uZXQ+
CgpJTkZPOiBkZWZhdWx0IHZpZGVvIGZvcm1hdCBpcyBQQUwKSU5GTzogZHZkYXV0aG9yIGNyZWF0
aW5nIFZUUwpTVEFUOiBQaWNraW5nIFZUUyAwMQoKU1RBVDogUHJvY2Vzc2luZyAvZGV2L3NobS9k
dmRfMjAyNDAxMjAtMTUzNDU5L2R2ZC5tcGcuLi4KU1RBVDogVk9CVSA4MCBhdCA2NU1CLCAxIFBH
Q3MKSU5GTzogVmlkZW8gcHRzID0gMC4xNjAgLi4gNjAuMTYwCklORk86IEF1ZGlvWzE2XSBwdHMg
PSAwLjE2MCAuLiA2MC4xNjAKU1RBVDogVk9CVSA4NSBhdCA2OU1CLCAxIFBHQ3MKQ0hBUFRFUlM6
IFZUU1sxLzFdIDAuMDAwCklORk86IEdlbmVyYXRpbmcgVlRTIHdpdGggdGhlIGZvbGxvd2luZyB2
aWRlbyBhdHRyaWJ1dGVzOgpJTkZPOiBNUEVHIHZlcnNpb246IG1wZWcyCklORk86IFRWIHN0YW5k
YXJkOiBwYWwKSU5GTzogQXNwZWN0IHJhdGlvOiA0OjMKSU5GTzogUmVzb2x1dGlvbjogNzIweDU3
NgpJTkZPOiBBdWRpbyBjaCAwIGZvcm1hdDogcGNtLzJjaCwgIDQ4a2h6IDE2YnBzLCAnZW4nCgpT
VEFUOiBmaXhlZCA4NSBWT0JVcwpJTkZPOiBkdmRhdXRob3IgY3JlYXRpbmcgdGFibGUgb2YgY29u
dGVudHMKSU5GTzogU2Nhbm5pbmcgL2Rldi9zaG0vZHZkXzIwMjQwMTIwLTE1MzQ1OS9pc28vVklE
RU9fVFMvVlRTXzAxXzAuSUZPClRvIGJ1cm4gZHZkLCBsb2FkIGJsYW5rIG1lZGlhIGFuZCBydW46
Cmdyb3dpc29mcyAtZHZkLWNvbXBhdCAtWiAvZGV2L2R2ZCAtZHZkLXZpZGVvIC9kZXYvc2htL2R2
ZF8yMDI0MDEyMC0xNTM0NTkvaXNvCtCX0LDQstC10YDRiNC10L3QvgoKPT09PT09PQoKbXBsZXgg
Y29tbWFuZCBsaW5lIChwYXJ0IG9mIHRoZSBzY3JpcHQpCgptcGxleCAtZiA4IC1MIDQ4MDAwOjI6
MTYgLW8gJGRpci9kdmQubXBnICRkaXIvZHZkLm0ydiAkZGlyL2R2ZC5scGNtCgpbMV0gaHR0cHM6
Ly9jaW5lbGVycmEtZ2cub3JnL2Rvd25sb2FkL3Rlc3RpbmcvIC0gdGhlcmUgYXJlIHR3bwphcHBp
bWFnZXMgKG9uZSBmb3IgbmV3aXNoIGRpc3Ryb3MgYW5kIHNlY29uZCBmb3Igc29tZXRoaW5nIGxp
a2UgVWJ1bnR1CjE2L3g4Ni02NCkKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpNanBlZy11c2VycyBtYWlsaW5nIGxpc3QKTWpwZWctdXNlcnNAbGlzdHMu
c291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3Rp
bmZvL21qcGVnLXVzZXJzCg==
