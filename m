Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C50842F2E
	for <lists+mjpeg-users@lfdr.de>; Tue, 30 Jan 2024 22:53:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1rUw2l-0007AK-8m;
	Tue, 30 Jan 2024 21:53:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <randrianasulu@gmail.com>) id 1rUw2k-0007AE-0o
 for Mjpeg-users@lists.sourceforge.net;
 Tue, 30 Jan 2024 21:53:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:To:Subject:
 Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=E4Mu96J3H7RaPksEUR0WZbbzWgcMSoRboHbkGnLZSE8=; b=W6+J22ya4bgzSLx1EjUYKW6NGO
 lM+H6OxmelsyD4/xONhqur4NqphE0iIcmIa3+cjAnd4gy7RzslTfLRVa/nP2+gN9rLI3JdxTnLvss
 cxeDiLpOYFZDM3fp96O8SJwBYue86gOzVG//qC9/2ud6DqU046ygzRniD4oGHFC12TRw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=E4Mu96J3H7RaPksEUR0WZbbzWgcMSoRboHbkGnLZSE8=; b=kFXEstmVy4W7bN4jV9UeWjLQXE
 4KgbR/6Izof4VhlMNAixFUqIWiPcuOihDL2TOKuBLZRZAPQRXYKT8djgu22BejzaXMK2T8BVubCvU
 e+HQ+wL6yIPOwLYC/o5KiT1tcjwtpaLrMNGYzCPZ3wXusdtItZKDrH5aMT4skGGwIHyk=;
Received: from mail-pl1-f179.google.com ([209.85.214.179])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rUw2i-0003xU-8R for Mjpeg-users@lists.sourceforge.net;
 Tue, 30 Jan 2024 21:53:22 +0000
Received: by mail-pl1-f179.google.com with SMTP id
 d9443c01a7336-1d8a66a2976so39995755ad.2
 for <Mjpeg-users@lists.sourceforge.net>; Tue, 30 Jan 2024 13:53:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706651595; x=1707256395; darn=lists.sourceforge.net;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=E4Mu96J3H7RaPksEUR0WZbbzWgcMSoRboHbkGnLZSE8=;
 b=Lqx9QdawK54iSXP62vLliCKaodRD7iPZJbQ9KicsGXl1Ez9CgZP8xAajaTEp6kDktR
 Kc97FWDfXw53Qj4IgT1px+FDys/GYKqmTO9c48RTaCJyqR920cYPhZZ7P22v4D7+ssJE
 mUWmY1y/dExho0jJEEsWF4W0HYk13olGmajdkubgO7OLfSKH8YObsRvR+b/a8G50MP0A
 mXm12MLccXgoQaa3fRGHj3r6YUYxrEbQK+pcyF5O5oCYlyP9ZKGr6aJ24mFC5tRVOtHU
 f4c+kCYfB42jbrkKsg0Xx4oa9UM6ypQPWuk5XunN1UTr3G/4uHD+SlAkQ+Rx3ssajYph
 24pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706651595; x=1707256395;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=E4Mu96J3H7RaPksEUR0WZbbzWgcMSoRboHbkGnLZSE8=;
 b=GUKxBSE4yK6PDOzsyaIsHP76hq/by5We+4NKwlBEMfbvI/zn+p5OLTS7LCzJj/qRWY
 CMPJgdN+YqCujuxBqITgakzRFv0+qh7jFqkQlfU2mAI6xpM4jbnGjCoSe/wa86a3JD7C
 1gQhAJYrHspW2nHITNK26w4fnbFNoa1JrRpPpxzoOqN2+L0OWdVF//u6q9EbD+r82Of4
 M4emxW0LGJxutlP3f0jVxY8pieF1DmCbjm7W9jtsUSX9gH//kZB9626ctMSJkH8keqjL
 PWIPCgk49T+BJUBWSy7OiPDJV5jAGuvV2/K7iADl7x+JCQpfQLehnnPPtCvnmqizn/YB
 oW8Q==
X-Gm-Message-State: AOJu0YzpKVLj4rlrXSpN5ZUG1StqHa+NNLRKpmzDz5pKQm5gtjD2zheH
 o5aVQN+/fVWbi7+4b9ptI11awKRXGktv3EFOh7BdyDSkXGjARqzmNiDE7CPiM6Gtn42k7niYJC8
 jA5uf/jsxFFnU6xlzXzpvLdIxXLu3Mp9JhbM=
X-Google-Smtp-Source: AGHT+IFMWLp4wA+9YYhzBJ5zY2A01qEBv1oO4Ij5WZB4r0KW93VpB1EE+UUVDf9QgMRmFeSAIAM5ffHYsc3Klj7iVF8=
X-Received: by 2002:a17:902:d50c:b0:1d9:1b3f:b39b with SMTP id
 b12-20020a170902d50c00b001d91b3fb39bmr1960346plg.67.1706651594688; Tue, 30
 Jan 2024 13:53:14 -0800 (PST)
MIME-Version: 1.0
References: <CA+rFky6SQmNd3dT1h5D1y2_ODWO1yyDX_23oeHqAeixeDcXrdg@mail.gmail.com>
In-Reply-To: <CA+rFky6SQmNd3dT1h5D1y2_ODWO1yyDX_23oeHqAeixeDcXrdg@mail.gmail.com>
From: Andrew Randrianasulu <randrianasulu@gmail.com>
Date: Wed, 31 Jan 2024 00:36:45 +0300
Message-ID: <CA+rFky5Xdg3u=2BbdiFPXfy8XMFf=FpELLFWcEfKY64RFgCfQA@mail.gmail.com>
To: MJPEG-tools user list <Mjpeg-users@lists.sourceforge.net>,
 broadcast@earthling.net
X-Spam-Score: 1.8 (+)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Forwarded message --------- From: Andrew Randrianasulu Date:
    Tue, Jan 30, 2024 at 9:23 PM Subject: Adopted from pdflib image sample
   (C) - 33352495-MIT.pdf To: Andrew Randrianasulu http://dspace.mit.edu/bitstream/handle/1721.1/11468/33352495-MIT.pdf?sequence=2
    
 
 Content analysis details:   (1.8 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.214.179 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [randrianasulu[at]gmail.com]
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.214.179 listed in wl.mailspike.net]
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  2.0 URI_DOTEDU             Has .edu URI
X-Headers-End: 1rUw2i-0003xU-8R
Subject: [Mjpeg-users] Fwd: 33352495-MIT.pdf (mpeg2 MC audio)
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

LS0tLS0tLS0tLSBGb3J3YXJkZWQgbWVzc2FnZSAtLS0tLS0tLS0KRnJvbTogQW5kcmV3IFJhbmRy
aWFuYXN1bHUgPHJhbmRyaWFuYXN1bHVAZ21haWwuY29tPgpEYXRlOiBUdWUsIEphbiAzMCwgMjAy
NCBhdCA5OjIz4oCvUE0KU3ViamVjdDogQWRvcHRlZCBmcm9tIHBkZmxpYiBpbWFnZSBzYW1wbGUg
KEMpIC0gMzMzNTI0OTUtTUlULnBkZgpUbzogQW5kcmV3IFJhbmRyaWFuYXN1bHUgPHJhbmRyaWFu
YXN1bHVAZ21haWwuY29tPgoKCmh0dHA6Ly9kc3BhY2UubWl0LmVkdS9iaXRzdHJlYW0vaGFuZGxl
LzE3MjEuMS8xMTQ2OC8zMzM1MjQ5NS1NSVQucGRmP3NlcXVlbmNlPTIKCkFuIEltcGxlbWVudGF0
aW9uIG9mIHRoZSAgTVBFR+KAlDIgQXVkaW8gRGVjb2RpbmcgU3BlY2nvrIFjYXRpb24gIGJ5ICBD
aGFkIE1pa2tlbHNvbgoKPT09PQoKaW50ZXJlc3RpbmcgcmVhZCwgd2hpbGUgIHdheSBhYm92ZSBt
eSBjb2RpbmcgbGV2ZWwuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTWpwZWctdXNlcnMgbWFpbGluZyBsaXN0Ck1qcGVnLXVzZXJzQGxpc3RzLnNvdXJj
ZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9t
anBlZy11c2Vycwo=
