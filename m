Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5392A5EC553
	for <lists+mjpeg-users@lfdr.de>; Tue, 27 Sep 2022 16:01:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1odB8r-0004vu-0t;
	Tue, 27 Sep 2022 14:00:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <SRS0=veS+zK=Z6=jankom.net=janos@eigbox.net>)
 id 1odB8p-0004vl-Ch for mjpeg-users@lists.sourceforge.net;
 Tue, 27 Sep 2022 14:00:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:MIME-Version:Content-Transfer-Encoding:
 Content-Type:Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TYqSi+IKKQOWmxmW/vOo90JIBd65V3Lf+Zcex75xHYM=; b=krZ3SFbksue4rit9rO7ohUkj+e
 zR7kVLet2/fAJcQO3oUAb/p4NrJoF5/xuN0UJuyKE7F/Iio6eatS5skL5qTEReS6MwvrUQOkOR3H4
 l3oqSvzq3ponX1KbNWjVESqQCK8G5e0Y39RJl+x7f2d/DiJHFP5R0zhHPgIaJkuR3uuM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:MIME-Version:Content-Transfer-Encoding:Content-Type:Date:To:From:
 Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=TYqSi+IKKQOWmxmW/vOo90JIBd65V3Lf+Zcex75xHYM=; b=L
 Up6EHH8/bWugi0K/nX0wiY9ot+YKJOOltahnCZbxS+Ey+HXfPGbZFL5DFM5Ni+Gi+N7DrDVSVsm2s
 h5Wm7RAEZwjZBHJ0lqOyy6OhZCbCM+NLgzLeO7vGe9WZEBlThkEE/ezFMEweMI+w9xoU9Wr5rtJHa
 lYvzpKWrO0j/XPUw=;
Received: from bosmailout08.eigbox.net ([66.96.189.8])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1odB8n-0006ua-4T for mjpeg-users@lists.sourceforge.net;
 Tue, 27 Sep 2022 14:00:55 +0000
Received: from bosmailscan04.eigbox.net ([10.20.15.4])
 by bosmailout08.eigbox.net with esmtp (Exim) id 1odB8g-00064N-Qs
 for mjpeg-users@lists.sourceforge.net; Tue, 27 Sep 2022 10:00:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=jankom.net; 
 s=dkim;
 h=Sender:MIME-Version:Content-Transfer-Encoding:Content-Type:Date:To
 :From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TYqSi+IKKQOWmxmW/vOo90JIBd65V3Lf+Zcex75xHYM=; b=0UECEOWEjlKzFxEfSmZrhlFTtl
 Mi+1mbBhyUkRy50BqhG17Hhd1qZzAyZvEszfHAsl9rDlDSQ3Ypu5ylNAD6ohliDLk5MyxFpIQLeNm
 W1Og3qHDJQxSLkFL3MGxAeZ8LqlxSsTdUut70mgDJ+xT7VAj6AsIyOXs5ER/dHBZnH6rf0GHE9dEg
 PQm6ZCm13z+oNQ2Pt6tjQ8VFA6hRrGbEdYb/5HiFbXx1wSe0XAxyMGr1v3ue1ZGDVrkyRJyxejSuT
 PDYHORlZNoNutbpFGkDivonNS9QPhi4J9vcs00WWJ6iyZ+nj1KLLtCDneCDr/Iucffrs1JmnsOOHc
 2cIJpFDw==;
Received: from [10.115.3.32] (helo=bosimpout12)
 by bosmailscan04.eigbox.net with esmtp (Exim) id 1odB8g-0001fM-I3
 for mjpeg-users@lists.sourceforge.net; Tue, 27 Sep 2022 10:00:46 -0400
Received: from bosauthsmtp09.yourhostingaccount.com ([10.20.18.9])
 by bosimpout12 with 
 id R20j2800M0BkY8i0120mPs; Tue, 27 Sep 2022 10:00:46 -0400
X-Authority-Analysis: v=2.3 cv=d4VuNSrE c=1 sm=1 tr=0
 a=+tcVrJynzLVJ9yqDAOBWjQ==:117 a=BMPAqxsBfaMw7D4mMDT+Qw==:17
 a=IkcTkHD0fZMA:10 a=xOM3xZuef0cA:10 a=Kd1Wz92Rn5oA:10 a=jDPn5Ez8AAAA:8
 a=rB8NGzmBNrQv29OoDy8A:9 a=QEXdDO2ut3YA:10 a=qBBZk9_c10KGGu05SxeP:22
Received: from 203.sub-174-242-137.myvzw.com ([174.242.137.203]:13975
 helo=[192.168.72.52]) by bosauthsmtp09.eigbox.net with esmtpa (Exim)
 id 1odB8d-0001uY-4l
 for mjpeg-users@lists.sourceforge.net; Tue, 27 Sep 2022 10:00:43 -0400
Message-ID: <ed5481fd618006e4d259165748a48fd06c58789e.camel@jankom.net>
From: "Janos G. Komaromi" <janos@jankom.net>
To: mjpeg-users@lists.sourceforge.net
Date: Tue, 27 Sep 2022 10:00:40 -0400
User-Agent: Evolution 3.44.1-0ubuntu1 
MIME-Version: 1.0
X-EN-UserInfo: 44a69bc9b6dca178582a57c3954217da:931c98230c6409dcc37fa7e93b490c27
X-EN-AuthUser: janos@jankom.net
X-EN-OrigIP: 174.242.137.203
X-EN-OrigHost: 203.sub-174-242-137.myvzw.com
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi friends, I have not been doing video stuff for a few years,
 but now as a retiree I wanted to digitize my old videos from magnetic tapes.
 I have a neat gizmo that creates an .avi file from VHS video and stereo [...]
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [66.96.189.8 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [66.96.189.8 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1odB8n-0006ua-4T
Subject: [Mjpeg-users] glav error opening .avi file + mailing list addition
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

SGkgZnJpZW5kcywKCkkgaGF2ZSBub3QgYmVlbiBkb2luZyB2aWRlbyBzdHVmZiBmb3IgYSBmZXcg
eWVhcnMsIGJ1dCBub3cgYXMgYSByZXRpcmVlCkkgd2FudGVkIHRvIGRpZ2l0aXplIG15IG9sZCB2
aWRlb3MgZnJvbSBtYWduZXRpYyB0YXBlcy4gSSBoYXZlIGEgbmVhdApnaXptbyB0aGF0IGNyZWF0
ZXMgYW4gLmF2aSBmaWxlIGZyb20gVkhTIHZpZGVvIGFuZCBzdGVyZW8gaW5wdXRzIG9uIGEKbWlj
cm8gc2QgY2FyZC4gVGhlIGNyZWF0ZWQgLmF2aSBmaWxlIHBsYXlzIHdlbGwgd2l0aCB2bGMuCgpJ
IHVzZWQgdG8gaGF2ZSBhbiBvbGQgZGVza3RvcCB3aXRoIEZlZG9yYS0zIGFuZCB0aGVuIENlbnRP
UywgYnV0IEkKcmV0aXJlZCB0aGF0IG9sZCBmcmllbmQsIGFuZCBoYXZlIG5vdyBhIG5pY2UgbGl0
dGxlIEZpdGxldDIgbWFjaGluZQp0aGF0IEkgY2FuIHJlY29tbWVuZCB0byBhbnlvbmUuIEl0IGlz
IGFsbW9zdCBhcyBzbWFsbCBhcyBhIHNtYXJ0IHBob25lLAphbmQgSSB1c2UgbXkgb2xkIGtleWJv
YXJkIGFuZCBMQ0Qgc2NyZWVuIHdpdGggaXQuIEl0IHJ1bnMgR2VudG9vIGxpbnV4CndpdGggbXkg
Y3VzdG9tIHR3bSB3aW5kb3cgbWFuYWdlci4gSSBoYXZlIGluc3RhbGxlZCBtb3N0IG9mIHRoZSBz
dHVmZgpmcm9tIG15IG9sZCBkZXNrdG9wLCBpbmNsdWRpbmcgbWpwZWd0b29scywgZmZtcGVnLCBl
dGMuIG9uIGl0LgoKSGVyZSBpcyBteSBpc3N1ZSBhbmQgcmVxdWVzdCBmb3IgaGVscC4KCkkgdHJ5
IHRvIG1ha2Ugc29tZSB2ZXJ5IGJhc2ljIGVkaXRpbmcgb2YgdGhlIGRpZ2l0aXplZCAuYXZpIGZp
bGUsIGJ1dApyYW4gaW50byBhIHByb2JsZW0uIEkgc3R1ZGllZCBteSBvbGRlciBwb3N0cywgbm90
ZXMsIGJ1dCBhbSBzdGlsbApzdHVjay4gSXQgbG9va3MgbGlrZSB0aGUuYXZpIGZpbGUgY3JlYXRl
ZCB3aXRoIHRoZSBkaWdpdGl6aW5nIGdpem1vIGlzCnRvbyBzb3BoaXN0aWNhdGVkIGZvciBsYXZw
bGF5IG9yIGdsYXYgLSBzZWUgYmVsb3cuIERvIEkgbmVlZCB0byB0cmFucy0KY29kZSB0aGUgLmF2
aSBmaWxlLCBhbmQgaG93PyBUaGFuayB5b3UgZm9yIHlvdXIgYXR0ZW50aW9uIC0gSmFub3MKCkFz
IGEgc2lkZSBub3RlOiBjb3VsZCB5b3UgcGxlYXNlIGFkZCBhbm90aGVyIGVtYWlsIGFkZHJlc3Mg
dG8gdGhpcwptYWlsaW5nIGxpc3QuIEl0IGlzIHRoZSBhZGRyZXNzIG9uIHRoZSBtYWlsIHNlcnZl
ciBydW5uaW5nIG9uIG15IEZpdGxldAptYWNoaW5lIC0gamFub3NAYW5kcmFzbGludXguamdrbGlu
dXguamFua29tLm5ldAoKREVUQUlMUzoKamFub3NAYW5kcmFzbGludXggfi90bXAgJCBsYXZwbGF5
IC1wIFMgLXYgMiBlemNhcDAwMDEuYXZpIApsYXZwbGF5Mi4yLjEKbGF2dG9vbHMgdmVyc2lvbiAy
LjIuMQotLURFQlVHOiBbbGF2cGxheV0gT3BlbmluZyB2aWRlbyBmaWxlIGV6Y2FwMDAwMS5hdmkg
Li4uCioqRVJST1I6IFtsYXZwbGF5XSBFcnJvciBvcGVuaW5nIGV6Y2FwMDAwMS5hdmkKCmphbm9z
QGFuZHJhc2xpbnV4IH4vdG1wICQgZmlsZSBlemNhcDAwMDEuYXZpIAplemNhcDAwMDEuYXZpOiBS
SUZGIChsaXR0bGUtZW5kaWFuKSBkYXRhLCBBVkksIDgwMCB4IDU5MiwgMzAuMDAgZnBzLAp2aWRl
bzogWHZpRCwgYXVkaW86IE1QRUctMSBMYXllciAzIChzdGVyZW8sIDQ0MTAwIEh6KQoKamFub3NA
YW5kcmFzbGludXggfi90bXAgJCBmZnByb2JlIGV6Y2FwMDAwMS5hdmkgCmZmcHJvYmUgdmVyc2lv
biA0LjQuMiBDb3B5cmlnaHQgKGMpIDIwMDctMjAyMSB0aGUgRkZtcGVnIGRldmVsb3BlcnMKICBi
dWlsdCB3aXRoIGdjYyAxMS4zLjAgKEdlbnRvbyAxMS4zLjAgcDQpCi4uLgpJbnB1dCAjMCwgYXZp
LCBmcm9tICdlemNhcDAwMDEuYXZpJzoKICBEdXJhdGlvbjogMDE6NDg6NTEuNjcsIHN0YXJ0OiAw
LjAwMDAwMCwgYml0cmF0ZTogOTY3IGtiL3MKICBTdHJlYW0gIzA6MDogVmlkZW86IG1wZWc0IChB
ZHZhbmNlZCBTaW1wbGUgUHJvZmlsZSkgKFhWSUQgLwoweDQ0NDk1NjU4KSwgeXV2NDIwcCwgODAw
eDU5MiBbU0FSIDE6MSBEQVIgNTA6MzddLCA4OTYga2IvcywgMzAgZnBzLCAzMAp0YnIsIDMwIHRi
biwgMzAgdGJjIFN0cmVhbSAjMDoxOiBBdWRpbzogbXAzIChVWzBdWzBdWzBdIC8gMHgwMDU1KSwK
NDQxMDAgSHosIHN0ZXJlbywgZmx0cCwgNjQga2IvcwoKCi0tIApKYW5vcyBHLiBLb21hcm9taSBz
ZW50IGl0Ck5PVCBmcm9tIGlQaG9uZSBub3IgR29vZ2xlCmZhY2Vib29rLCBpbnN0YWdyYW0sIHZp
YmVyLCBzbmFwY2hhdCwgdHdpdHRlciwgI0AqfnwKZXRjLiAtIG5laXRoZXIgb2YgdGhvc2UKaHR0
cHM6Ly9qZ2tsaW51eC5qYW5rb20ubmV0LwrigIsKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpNanBlZy11c2VycyBtYWlsaW5nIGxpc3QKTWpwZWctdXNl
cnNAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xp
c3RzL2xpc3RpbmZvL21qcGVnLXVzZXJzCg==
