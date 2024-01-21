Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D948355D4
	for <lists+mjpeg-users@lfdr.de>; Sun, 21 Jan 2024 13:55:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1rRXLp-0004Lp-Io;
	Sun, 21 Jan 2024 12:55:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <randrianasulu@gmail.com>) id 1rRXLm-0004L3-QU
 for Mjpeg-users@lists.sourceforge.net;
 Sun, 21 Jan 2024 12:54:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5znuvTLVXYqlwZ7EiKcoeaokSzLvx7fjvBlFYtms8ss=; b=mNBPETXbA+fmukycivlVz6qaas
 C1O3gfnC8a2j8lpl40X05Dzn1VEnqbvgOARVK4ELz80X0EaFW0AoGZfZ+lzw6nLxnIGPWZtX4Ec0N
 vLXxchxCmxiVrCkabGqo0lREtdaHgmqB4qYNELsXZRd+AwymoRn/+Peyp3rkqBx5Jyew=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=5znuvTLVXYqlwZ7EiKcoeaokSzLvx7fjvBlFYtms8ss=; b=T
 dZwv58c3ln+RAFOsiLtxEyq9fCMpZNGez7pA54JfjWEmb8AG8chNfOYFWyiz9B9ew4S1Y0HapMM8q
 pbkHbSOW6Fut5xW0rX+7WmqtEtV8jhzMr/ugTbXvLQsgIzFRBEGadSPUQudzA/pX+Zu9xjYlYdNTh
 m/+yEQMbtK96mKXk=;
Received: from mail-pg1-f179.google.com ([209.85.215.179])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rRXLk-0005YE-N7 for Mjpeg-users@lists.sourceforge.net;
 Sun, 21 Jan 2024 12:54:59 +0000
Received: by mail-pg1-f179.google.com with SMTP id
 41be03b00d2f7-5cfb81124ecso1519557a12.2
 for <Mjpeg-users@lists.sourceforge.net>; Sun, 21 Jan 2024 04:54:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1705841686; x=1706446486; darn=lists.sourceforge.net;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=5znuvTLVXYqlwZ7EiKcoeaokSzLvx7fjvBlFYtms8ss=;
 b=O2bv9RiZz5a7rnNPKDG0pcZFjZNbv/bkaVMN9D+zYO1plMhO6PTrfIs5CCSB5ct/zU
 tcig2FnZtGRaa4bra6YmGGDgpQH57DHT2DdemkeWxtrqzic84MQxdvZHNyV/1aQOqiX7
 lXY6h1NPdFdBGkxrznqSK3PSCCW91GBVjw4Y3f5JpCc/Po3h1mOtOWhri4BCR42uZWYt
 TKjrxv7HI1IUL3Ymko4Vhb/MgqUyluIjt13RcbALHb3MjRB721NlG2/ThGOAQLP4dAJx
 WYRQ33ve36XRveWbWYBkAZrBx0GqCADBBVVwUmCMJY10A2wq1lodD4tcFK3h/TP76zgW
 pNHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1705841686; x=1706446486;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=5znuvTLVXYqlwZ7EiKcoeaokSzLvx7fjvBlFYtms8ss=;
 b=kjvjhLQe0zugNbD+sDT0UhYBpD0wOwlKZhdeTlQvCzsnz/IM5vOxh/2MaR5HumALgU
 pYkJHSW5qns2X8iInGRpTWy0I9nmAXRbTmwfnmpDwGIOzKkymVepxpmwMvDmf0aVBR9h
 MrtTY3eo3XuivEMSaGP4FMg4QZodnB35nAu80sjKcgZ9FC2RkWRX//Ff5zl4f0AjqBiA
 zP/vxAgyYJCivSMotdMeg8B9iX5RtoveoKnvmmDqDNdZ/zvmY/HXS2F764/OOp34CvSD
 4RCu8Ba93cYFyK57Vc5O+0pScXcgGl7aNdreOX81oVv7/FwZha+F/MelvtDb2+G7chM9
 19qA==
X-Gm-Message-State: AOJu0YyLk9O/IExxskl+FTESM43Hf6Au3mUnuYtxgkvamzukvJVshAUB
 Qp7fU5PiK7podz7RCm3o2MfDLW4xSffT2BAwLteldNTnIzPL24QNoKacn8mxBuGSi0SnHDtwc1R
 sOVf+luJmYeyjY0eNCgCM9okwFJrxC08OrQgENA==
X-Google-Smtp-Source: AGHT+IH6/0979gbg9MayoGBLpj0oN0NOUgjIZ/kOiDbbku9tg8DGfItGXFl8fzi4piLaGnG0zc2XTcmS7qFqelTgP2w=
X-Received: by 2002:a17:902:db02:b0:1d7:467b:f488 with SMTP id
 m2-20020a170902db0200b001d7467bf488mr1177709plx.114.1705841686532; Sun, 21
 Jan 2024 04:54:46 -0800 (PST)
MIME-Version: 1.0
From: Andrew Randrianasulu <randrianasulu@gmail.com>
Date: Sun, 21 Jan 2024 15:37:22 +0300
Message-ID: <CA+rFky7PBF93-UnMyD7MQyivMBeO-2kSc4kp6HoOTU-4z9B_sQ@mail.gmail.com>
To: Mjpeg-users@lists.sourceforge.net, 
 "Cinelerra.GG" <cin@lists.cinelerra-gg.org>
Content-Type: multipart/mixed; boundary="000000000000c4ea47060f74378d"
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Using svn code from svn checkout
 https://svn.code.sf.net/p/mjpeg/Code/
 mjpeg-Code not tested apart from compilation ... 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [randrianasulu[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.179 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.179 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rRXLk-0005YE-N7
Subject: [Mjpeg-users] mplex patch adding support for 32/44.1khz lpcm
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
Errors-To: mjpeg-users-bounces@lists.sourceforge.net

--000000000000c4ea47060f74378d
Content-Type: text/plain; charset="UTF-8"

Using svn code from

svn checkout https://svn.code.sf.net/p/mjpeg/Code/ mjpeg-Code

not tested apart from compilation ...

--000000000000c4ea47060f74378d
Content-Type: text/x-patch; charset="US-ASCII"; name="mplex_add_44_32khz_lpcm.diff"
Content-Disposition: attachment; filename="mplex_add_44_32khz_lpcm.diff"
Content-Transfer-Encoding: base64
Content-ID: <f_lrnhdz5v0>
X-Attachment-Id: f_lrnhdz5v0

SW5kZXg6IG1wbGV4L2xwY21zdHJtX2luLmNwcAo9PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09Ci0tLSBtcGxleC9scGNtc3Ry
bV9pbi5jcHAJKHJldmlzaW9uIDM1MDcpCisrKyBtcGxleC9scGNtc3RybV9pbi5jcHAJKHdvcmtp
bmcgY29weSkKQEAgLTMwNiw3ICszMDYsMTUgQEAKICAgICBkZWZhdWx0IDogYnBzX2NvZGUgPSAz
OyBicmVhazsKICAgICB9CiAgICAgZHN0WzRdID0gc3RhcnRpbmdfZnJhbWVfaW5kZXg7Ci0gICAg
dW5zaWduZWQgaW50IGJzZl9jb2RlID0gKHNhbXBsZXNfcGVyX3NlY29uZCA9PSA0ODAwMCkgPyAw
IDogMTsKKyAgICB1bnNpZ25lZCBpbnQgYnNmX2NvZGU7CisgICAgc3dpdGNoKHNhbXBsZXNfcGVy
X3NlY29uZCkKKyAgICB7CisgICAgY2FzZSA0ODAwMDogYnNmX2NvZGUgPSAwOyBicmVhazsKKyAg
ICBjYXNlIDk2MDAwOiBic2ZfY29kZSA9IDE7IGJyZWFrOworICAgIGNhc2UgNDQxMDA6IGJzZl9j
b2RlID0gMjsgYnJlYWs7CisgICAgY2FzZSAzMjAwMDogYnNmX2NvZGUgPSAzOyBicmVhazsKKyAg
ICB9CisgICAgLy91bnNpZ25lZCBpbnQgYnNmX2NvZGUgPSAoc2FtcGxlc19wZXJfc2Vjb25kID09
IDQ4MDAwKSA/IDAgOiAxOwogICAgIHVuc2lnbmVkIGludCBjaGFubmVsc19jb2RlID0gY2hhbm5l
bHMgLSAxOwogICAgIGRzdFs1XSA9IChicHNfY29kZSA8PCA2KSB8IChic2ZfY29kZSA8PCA0KSB8
IGNoYW5uZWxzX2NvZGU7CiAgICAgZHN0WzZdID0gZHluYW1pY19yYW5nZV9jb2RlOwpJbmRleDog
bXBsZXgvc3RyZWFtX3BhcmFtcy5jcHAKPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQotLS0gbXBsZXgvc3RyZWFtX3BhcmFt
cy5jcHAJKHJldmlzaW9uIDM1MDcpCisrKyBtcGxleC9zdHJlYW1fcGFyYW1zLmNwcAkod29ya2lu
ZyBjb3B5KQpAQCAtNDYsNyArNDYsNyBAQAogCQkJCQkJCQl1bnNpZ25lZCBpbnQgY2hhbnMsIAog
CQkJCQkJCQl1bnNpZ25lZCBpbnQgYml0cyApCiB7Ci0gICAgaWYoIHNhbXBsZXMgIT0gNDgwMDAg
JiYgc2FtcGxlcyAhPSA5NjAwMCApCisgICAgaWYoIHNhbXBsZXMgIT0gNDgwMDAgJiYgc2FtcGxl
cyAhPSA5NjAwMCAgJiYgc2FtcGxlcyAhPSA0NDEwMCAmJiBzYW1wbGVzICE9IDMyMDAwICkKICAg
ICAgICAgcmV0dXJuIDA7CiAgICAgaWYoIGNoYW5zIDwgMSB8fCBjaGFucyA+IDcgKQogICAgICAg
ICByZXR1cm4gMDsK
--000000000000c4ea47060f74378d
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--000000000000c4ea47060f74378d
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users

--000000000000c4ea47060f74378d--

