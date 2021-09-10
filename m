Return-Path: <mjpeg-users-bounces@lists.sourceforge.net>
X-Original-To: lists+mjpeg-users@lfdr.de
Delivered-To: lists+mjpeg-users@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7FF4071C6
	for <lists+mjpeg-users@lfdr.de>; Fri, 10 Sep 2021 21:15:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <mjpeg-users-bounces@lists.sourceforge.net>)
	id 1mOlzX-00010q-NF; Fri, 10 Sep 2021 19:15:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <SRS0=xOqwJf=OA=jankom.net=janos@eigbox.net>)
 id 1mOlzV-00010b-06; Fri, 10 Sep 2021 19:15:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PSzhEpcM4rF8zrc/vhTwJrTJMwTELKQ6m+zHCf1t1KI=; b=cNMyMOj9NnYZShPcBH6YfO3pp
 8Io1LPP26KDHiUHpjh7K+DYeJ4scWD8tJbto0SnVxViSoYD3zhTs5hH280QA/GvbU9X4jyxDM6J6b
 +NreebzdSsR4bN1dtloayo0S93bHrkSAYIFf58Tw6hRewJRWhzqw56yfIlcjxweJ2g2/Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:MIME-Version:Content-Type:References:In-Reply-To:Date:To:From:
 Subject:Message-ID:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PSzhEpcM4rF8zrc/vhTwJrTJMwTELKQ6m+zHCf1t1KI=; b=PViedL5u7DhJD9YUnX/2eblGrx
 Yq3bz1EigdkTZ5ZcQ71DlBmDuEB7lsQl7hSK1cPjIMfPtZIwRTKJEPKZAmc2/V7TIg0agy1Qs40GH
 wmqkd+OsMLl9g94i1iVbK4Fujlc/2iLdr4o3ChxdSNBHaYYrBaiJDRhp2HcqVezxC3qE=;
Received: from bosmailout10.eigbox.net ([66.96.189.10])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mOlzS-006WTs-LY; Fri, 10 Sep 2021 19:15:12 +0000
Received: from bosmailscan02.eigbox.net ([10.20.15.2])
 by bosmailout10.eigbox.net with esmtp (Exim)
 id 1mOlzL-0005z2-Oq; Fri, 10 Sep 2021 15:15:03 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=jankom.net; 
 s=dkim;
 h=Sender:MIME-Version:Content-Type:References:In-Reply-To:Date:To:
 From:Subject:Message-ID:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PSzhEpcM4rF8zrc/vhTwJrTJMwTELKQ6m+zHCf1t1KI=; b=aM4o/iXGld245a3IDl7vVeFFAK
 y2BSJJvYqSkgAGHu4z5aIWCPAZaaaQIa+BKZAjNe1QFyMNm9G5tEuG18vVPH+1bCR1V4jHKjTOeEO
 LAJHSxBh06G7XhrBkW5FDRuhLiQFHXmqGBlXDgoCCLQe/1UWpecnbNEFWjnYYlQfdBrFX5hkdWUf9
 1vmm3o61/wZ4EIf9SweYRfEJfdUQuA1dFs5DfcDFmFQn0Fl7taNksRdtogKLHhlQeF6ara5IwTg9n
 yuoHOnlHVXq0wKMYfhbGXHDuI/TGRwrDJLXegO8RE3vNRYCEjQEtjGI7nqYMtp23a8EtYCtX6/mld
 spC98WGg==;
Received: from [10.115.3.32] (helo=bosimpout12)
 by bosmailscan02.eigbox.net with esmtp (Exim)
 id 1mOlzJ-0003vS-P3; Fri, 10 Sep 2021 15:15:03 -0400
Received: from bosauthsmtp06.yourhostingaccount.com ([10.20.18.6])
 by bosimpout12 with 
 id sKEy2500F07rX7u01KF1je; Fri, 10 Sep 2021 15:15:01 -0400
X-Authority-Analysis: v=2.3 cv=d4VuNSrE c=1 sm=1 tr=0
 a=fIc3/5IyPUehxkj7BpkQ7Q==:117 a=ehTEJ6tpFtzmONIPUOPr2A==:17
 a=7QKq2e-ADPsA:10 a=t3-kdQ52NUsA:10 a=jDPn5Ez8AAAA:8 a=FP58Ms26AAAA:8
 a=2z1OXlWFAAAA:8 a=l4hga9LzAAAA:8 a=YGquNjJAlQPnry9-jJMA:9 a=QEXdDO2ut3YA:10
 a=NBb6moFh3LMA:10 a=zE6gN52l29uAttsylekA:9 a=3zVNXZ1q5X4A:10
 a=xx4rFbxELgcA:10 a=qBBZk9_c10KGGu05SxeP:22 a=SNRPda0NjyR9MlWdJ_lJ:22
 a=3HEqyBG9YizcQX9YUvu1:22
Received: from catv-80-98-78-163.catv.broadband.hu ([80.98.78.163]:36552
 helo=acerlinux) by bosauthsmtp06.eigbox.net with esmtpa (Exim)
 id 1mOlzG-0007VP-4R; Fri, 10 Sep 2021 15:14:58 -0400
Message-ID: <afd2e1c79bae125792aa5b89513cdc99293cbf5f.camel@jankom.net>
From: "Janos G. Komaromi" <janos@jankom.net>
To: MJPEG-tools user list <mjpeg-users@lists.sourceforge.net>, Mjpeg
 Developer <mjpeg-developer@lists.sourceforge.net>
Date: Fri, 10 Sep 2021 15:14:54 -0400
In-Reply-To: <dd87a597-2330-0a73-c4e7-d70c3b8b8da3@utanet.at>
References: <dd87a597-2330-0a73-c4e7-d70c3b8b8da3@utanet.at>
Content-Type: multipart/mixed; boundary="=-Qk85Of0lotw+aa9HgYVL"
User-Agent: Evolution 3.36.5-0ubuntu1 
MIME-Version: 1.0
X-EN-UserInfo: 44a69bc9b6dca178582a57c3954217da:931c98230c6409dcc37fa7e93b490c27
X-EN-AuthUser: janos@jankom.net
X-EN-OrigIP: 80.98.78.163
X-EN-OrigHost: catv-80-98-78-163.catv.broadband.hu
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Sorry for sending this to the list but the attached message
 was returned to me. -- Janos G. Komaromi sent it NOT from iPhone nor Google
 facebook, instagram, viber, snapchat, twitter, #@*~| etc. - neit [...] 
 Content analysis details:   (0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: liu.se]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [66.96.189.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mOlzS-006WTs-LY
Subject: Re: [Mjpeg-users] mjpegtools new Release 2.2.1
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


--=-Qk85Of0lotw+aa9HgYVL
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Sorry for sending this to the list but the attached message was
returned to me.
-- 
Janos G. Komaromi sent it
NOT from iPhone nor Google
facebook, instagram, viber, snapchat, twitter, #@*~|
etc. - neither of those
https://jgklinux.jankom.net/

On Fri, 2021-09-10 at 07:02 +0200, Bernhard Praschinger wrote:
> Hallo,
> 
> You probably remember the last release of the mjpegtools back in
> 2013.
> Over the years since the release a lot of patches came in. CVS was 
> replaced by SVN.
> 
> Feel free to download either the source tar.gz and compile the 
> mjpegtools yourself from here:
> https://sourceforge.net/projects/mjpeg/files/mjpegtools/2.2.1/
> 
> I did prepare the RPM files on my OpenSuse 15.3 they should install 
> without problems.
> 
> You can checkout the current SVN version with a command like that:
> svn checkout https://svn.code.sf.net/p/mjpeg/Code/ mjpeg-Code
> 
> auf hoffentlich bald,
> 
> Berni the Chaos of Woodquarter
> 
> Email: shadowlord@utanet.at
> www: http://www.lysator.liu.se/~gz/bernhard
> 
> 
> _______________________________________________
> Mjpeg-users mailing list
> Mjpeg-users@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/mjpeg-users

--=-Qk85Of0lotw+aa9HgYVL
Content-Type: application/mbox;
	name="Mail_delivery_failed:_returning_message_to_sender.mbox"
Content-Disposition: attachment;
	filename="Mail_delivery_failed:_returning_message_to_sender.mbox"
Content-Transfer-Encoding: base64

RnJvbSBNYWlsZXItRGFlbW9uQGVpZ2JveC5uZXQgRnJpIFNlcCAxMCAxMToyMDozNyAyMDIxClJl
dHVybi1QYXRoOiA8PgpEZWxpdmVyZWQtVG86IGphbm9zQGphbmtvbS5uZXQKUmVjZWl2ZWQ6IGZy
b20gYm9zcG9wcHJveHkxNi5laWdib3gubmV0IChbMTAuMjAuMTUuM10pCglieSBib3Nwb3AyMS5l
aWdib3gubmV0IHdpdGggTE1UUAoJaWQgcUZLbEdjVjNPMkdqRlFBQUc3c2pDdwoJKGVudmVsb3Bl
LWZyb20gPD4pCglmb3IgPGphbm9zQGphbmtvbS5uZXQ+OyBGcmksIDEwIFNlcCAyMDIxIDExOjIw
OjM3IC0wNDAwClJlY2VpdmVkOiBmcm9tIGJvc21haWxzY2FuMDMuZWlnYm94Lm5ldCAoWzEwLjIw
LjE1LjNdKQoJYnkgYm9zcG9wcHJveHkxNi5laWdib3gubmV0IHdpdGggTE1UUAoJaWQgY0ZHRUdj
VjNPMkVuS2dBQXdoRitFUQoJKGVudmVsb3BlLWZyb20gPD4pCglmb3IgPGphbm9zQGphbmtvbS5u
ZXQ+OyBGcmksIDEwIFNlcCAyMDIxIDExOjIwOjM3IC0wNDAwClJldHVybi1wYXRoOiA8PgpFbnZl
bG9wZS10bzogamFub3NAamFua29tLm5ldApEZWxpdmVyeS1kYXRlOiBGcmksIDEwIFNlcCAyMDIx
IDExOjIwOjM3IC0wNDAwClJlY2VpdmVkOiBmcm9tIFsxMC4xMTUuMy4xXSAoaGVsbz1ib3NpbXBp
bmMwMSkKCWJ5IGJvc21haWxzY2FuMDMuZWlnYm94Lm5ldCB3aXRoIGVzbXRwIChFeGltKQoJaWQg
MW1PaUtULTAwMDdwby00QgoJZm9yIGphbm9zQGphbmtvbS5uZXQ7IEZyaSwgMTAgU2VwIDIwMjEg
MTE6MjA6MzcgLTA0MDAKUmVjZWl2ZWQ6IGZyb20gYm9zbWFpbG91dDAxLmVpZ2JveC5uZXQgKFs2
Ni45Ni4xOTAuMV0pCglieSBiaXpzbXRwIHdpdGggRVNNVFAKCWlkIE9pRU5tOVhSbXRlNUhPaUVP
bVo3azg7IEZyaSwgMTAgU2VwIDIwMjEgMTE6MTQ6NTMgLTA0MDAKWC1FTi1PcmlnSVA6IDY2Ljk2
LjE5MC4xClgtRU4tSU1QU0lEOiBPaUVObTlYUm10ZTVIT2lFT21aN2s4ClJlY2VpdmVkOiBmcm9t
IERlYmlhbi1leGltIGJ5IGJvc21haWxvdXQwMS5laWdib3gubmV0IHdpdGggbG9jYWwgKEV4aW0p
CglpZCAxbU9pSEEtMDAwMEtNLTVNCglmb3IgamFub3NAamFua29tLm5ldDsgRnJpLCAxMCBTZXAg
MjAyMSAxMToxNzoxMiAtMDQwMApYLUZhaWxlZC1SZWNpcGllbnRzOiBzaGFkb3dsb3JkQHV0YW5l
dC5hdApBdXRvLVN1Ym1pdHRlZDogYXV0by1yZXBsaWVkCkZyb206IE1haWwgRGVsaXZlcnkgU3lz
dGVtIDxNYWlsZXItRGFlbW9uQGVpZ2JveC5uZXQ+ClRvOiBqYW5vc0BqYW5rb20ubmV0ClJlZmVy
ZW5jZXM6IDxkZDg3YTU5Ny0yMzMwLTBhNzMtYzRlNy1kNzBjM2I4YjhkYTNAdXRhbmV0LmF0PgoJ
IDxmY2M4NWViNjZkOThiZmNmZjA3OWM4OGQ2ZTcyYzc2Mzk2YWRjNjM1LmNhbWVsQGphbmtvbS5u
ZXQ+CkNvbnRlbnQtVHlwZTogbXVsdGlwYXJ0L3JlcG9ydDsgcmVwb3J0LXR5cGU9ZGVsaXZlcnkt
c3RhdHVzOyBib3VuZGFyeT0xNjMxMjg3MDMyLWV4aW1kc24tMTM0OTUzNDE5MApNSU1FLVZlcnNp
b246IDEuMApTdWJqZWN0OiBNYWlsIGRlbGl2ZXJ5IGZhaWxlZDogcmV0dXJuaW5nIG1lc3NhZ2Ug
dG8gc2VuZGVyCk1lc3NhZ2UtSWQ6IDxFMW1PaUhBLTAwMDBLTS01TUBib3NtYWlsb3V0MDEuZWln
Ym94Lm5ldD4KRGF0ZTogRnJpLCAxMCBTZXAgMjAyMSAxMToxNzoxMiAtMDQwMApYLUNNQUUtRW52
ZWxvcGU6CiBNUzR3ZkdhRGtkSi9zQXlxYUhQbjdhL3k0bHg4NzNkWkQ2UEFCazkzTHpVdGJMajRG
ekZ1eDRUall4TE45dDVHYzE3eTRWZXlodkJUSElwNFIrQVVrUnRybHAvdXNEakxWeUhlTjBtN1Np
VlA5U0N2aUtHZmJPZnEKIGVmSkRmMzREZDE0ZFQ5TmtrTTQyWnF5QU01Yzg0YnkyRkpvPQpYLUV2
b2x1dGlvbi1QT1AzLVVJRDogVUlEMjM4MzItMTQ4MTI0MDk5MApYLUV2b2x1dGlvbi1Tb3VyY2U6
IDQ5Y2E3MjM5MzY5YWU3M2Y4NTRhYTVjYzMzN2NhOWVhMWJkNDEyZWIKCgotLTE2MzEyODcwMzIt
ZXhpbWRzbi0xMzQ5NTM0MTkwCkNvbnRlbnQtdHlwZTogdGV4dC9wbGFpbjsgY2hhcnNldD11cy1h
c2NpaQpDb250ZW50LVRyYW5zZmVyLUVuY29kaW5nOiA4Yml0CgpUaGlzIG1lc3NhZ2Ugd2FzIGNy
ZWF0ZWQgYXV0b21hdGljYWxseSBieSBtYWlsIGRlbGl2ZXJ5IHNvZnR3YXJlLgoKQSBtZXNzYWdl
IHRoYXQgeW91IHNlbnQgY291bGQgbm90IGJlIGRlbGl2ZXJlZCB0byBvbmUgb3IgbW9yZSBvZiBp
dHMKcmVjaXBpZW50cy4gVGhpcyBpcyBhIHBlcm1hbmVudCBlcnJvci4gVGhlIGZvbGxvd2luZyBh
ZGRyZXNzKGVzKSBmYWlsZWQ6CgogIHNoYWRvd2xvcmRAdXRhbmV0LmF0CiAgICBob3N0IHBtYWls
LnV0YW5ldC5hdCBbMjEzLjkwLjM2LjEwN10KICAgIFNNVFAgZXJyb3IgZnJvbSByZW1vdGUgbWFp
bCBzZXJ2ZXIgYWZ0ZXIgUkNQVCBUTzo8c2hhZG93bG9yZEB1dGFuZXQuYXQ+OgogICAgNTUwLVBs
ZWFzZSBzZWUgaHR0cDovL3d3dy5vcGVuc3BmLm9yZy9XaHk/aWQ9amFub3MlNDBqYW5rb20ubmV0
JmlwPTY2Ljk2LjE4NS4xJnJlY2VpdmVyPXNhaWRhLmRyZWkuaG9zdAogICAgNTUwIDogUmVhc29u
OiBtZWNoYW5pc20KCi0tMTYzMTI4NzAzMi1leGltZHNuLTEzNDk1MzQxOTAKQ29udGVudC10eXBl
OiBtZXNzYWdlL2RlbGl2ZXJ5LXN0YXR1cwoKUmVwb3J0aW5nLU1UQTogZG5zOyBib3NtYWlsb3V0
MDEuZWlnYm94Lm5ldAoKQWN0aW9uOiBmYWlsZWQKRmluYWwtUmVjaXBpZW50OiByZmM4MjI7c2hh
ZG93bG9yZEB1dGFuZXQuYXQKU3RhdHVzOiA1LjAuMApSZW1vdGUtTVRBOiBkbnM7IHBtYWlsLnV0
YW5ldC5hdApSZW1vdGUtTVRBOiBYLWlwOyBbMjEzLjkwLjM2LjEwN10KWC1FeGltLURpYWdub3N0
aWM6IFgtc3RyOyBTTVRQIGVycm9yIGZyb20gcmVtb3RlIG1haWwgc2VydmVyIGFmdGVyIFJDUFQg
VE86PHNoYWRvd2xvcmRAdXRhbmV0LmF0PjogNTUwLVBsZWFzZSBzZWUgaHR0cDovL3d3dy5vcGVu
c3BmLm9yZy9XaHk/aWQ9amFub3MlNDBqYW5rb20ubmV0JmlwPTY2Ljk2LjE4NS4xJnJlY2VpdmVy
PXNhaWRhLmRyZWkuaG9zdFxuNTUwIDogUmVhc29uOiBtZWNoYW5pc20KRGlhZ25vc3RpYy1Db2Rl
OiBzbXRwOyA1NTAtUGxlYXNlIHNlZSBodHRwOi8vd3d3Lm9wZW5zcGYub3JnL1doeT9pZD1qYW5v
cyU0MGphbmtvbS5uZXQmaXA9NjYuOTYuMTg1LjEmcmVjZWl2ZXI9c2FpZGEuZHJlaS5ob3N0CiA1
NTAgOiBSZWFzb246IG1lY2hhbmlzbQoKLS0xNjMxMjg3MDMyLWV4aW1kc24tMTM0OTUzNDE5MApD
b250ZW50LXR5cGU6IHRleHQvcmZjODIyLWhlYWRlcnMKQ29udGVudC1UcmFuc2Zlci1FbmNvZGlu
ZzogOGJpdAoKUmV0dXJuLXBhdGg6IDxqYW5vc0BqYW5rb20ubmV0PgpSZWNlaXZlZDogZnJvbSBi
b3NtYWlsc2NhbjEwLmVpZ2JveC5uZXQgKFsxMC4yMC4xNS4xMF0pCglieSBib3NtYWlsb3V0MDEu
ZWlnYm94Lm5ldCB3aXRoIGVzbXRwIChFeGltKQoJaWQgMW1PaUg4LTAwMDBGTS1CMAoJZm9yIHNo
YWRvd2xvcmRAdXRhbmV0LmF0OyBGcmksIDEwIFNlcCAyMDIxIDExOjE3OjEwIC0wNDAwCkRLSU0t
U2lnbmF0dXJlOiB2PTE7IGE9cnNhLXNoYTI1NjsgcT1kbnMvdHh0OyBjPXJlbGF4ZWQvcmVsYXhl
ZDsgZD1qYW5rb20ubmV0OwoJIHM9ZGtpbTsgaD1TZW5kZXI6Q29udGVudC1UcmFuc2Zlci1FbmNv
ZGluZzpNSU1FLVZlcnNpb246Q29udGVudC1UeXBlOgoJUmVmZXJlbmNlczpJbi1SZXBseS1UbzpE
YXRlOlRvOkZyb206U3ViamVjdDpNZXNzYWdlLUlEOlJlcGx5LVRvOkNjOkNvbnRlbnQtSUQKCTpD
b250ZW50LURlc2NyaXB0aW9uOlJlc2VudC1EYXRlOlJlc2VudC1Gcm9tOlJlc2VudC1TZW5kZXI6
UmVzZW50LVRvOgoJUmVzZW50LUNjOlJlc2VudC1NZXNzYWdlLUlEOkxpc3QtSWQ6TGlzdC1IZWxw
Okxpc3QtVW5zdWJzY3JpYmU6TGlzdC1TdWJzY3JpYmUKCTpMaXN0LVBvc3Q6TGlzdC1Pd25lcjpM
aXN0LUFyY2hpdmU7CgliaD1XQ0kwbTVldHdOQjRVRjFmSmFPS0R1aFNmYzI5V253QXdleG9jZHlS
NzBrPTsgYj1PSXl5Z1JVcjhxK3VKUVN1R3F2WUpLaWUyMAoJbm40bi9qWFJVdHo4dnRGUTdkSTZM
V1FXallTeDl6My9EM2l2RWlkQmVzd0VDZFprUTl6UjZzYzZEVW1hckJMa0hnVGxFUnJJbXZBUmcK
CUhUQ25NbE5ISlRSNDFzZUhWaFNTbjRCM2ZTdEpzTXRUVGVrN0x5T3YzaWR4c3lmeFhVczBBUTN5
T04vU0hSU2N3YVJ5SVQ0U3Q5N3lTCglReWpRWHdvUVhlR3JaVGkvRU5jb3ZPUmNseVhPVWlCMnZJ
czMvSmx6eStjMFFmR0lPZExEYjd5c3hjZDdGRjIySFR0cnJWbUw5YWd5cQoJOTQ1RE5QVEUyWDVa
d3RZdERXeHFUZTJHbFR6WndJUlJjY21OUjR0TlpZVlg0VEt3cjBxQWEvbWRBaTRIMlVJcXJ4aVI2
dFhrZlJSOFoKCTQ1WER1cllnPT07ClJlY2VpdmVkOiBmcm9tIFsxMC4xMTUuMy4zMl0gKGhlbG89
Ym9zaW1wb3V0MTIpCglieSBib3NtYWlsc2NhbjEwLmVpZ2JveC5uZXQgd2l0aCBlc210cCAoRXhp
bSkKCWlkIDFtT2lINy0wMDA0S1YtVW4KCWZvciBzaGFkb3dsb3JkQHV0YW5ldC5hdDsgRnJpLCAx
MCBTZXAgMjAyMSAxMToxNzowOSAtMDQwMApSZWNlaXZlZDogZnJvbSBib3NhdXRoc210cDA2Lnlv
dXJob3N0aW5nYWNjb3VudC5jb20gKFsxMC4yMC4xOC42XSkKCWJ5IGJvc2ltcG91dDEyIHdpdGgg
CglpZCBzRkg2MjUwMFYwN3JYN3UwMUZIOVlOOyBGcmksIDEwIFNlcCAyMDIxIDExOjE3OjA5IC0w
NDAwClgtQXV0aG9yaXR5LUFuYWx5c2lzOiB2PTIuMyBjdj1kNFZ1TlNyRSBjPTEgc209MSB0cj0w
CiBhPWZJYzMvNUl5UFVlaHhrajdCcGtRN1E9PToxMTcgYT1laFRFSjZ0cEZ0em1PTklQVU9QcjJB
PT06MTcKIGE9SWtjVGtIRDBmWk1BOjEwIGE9N1FLcTJlLUFEUHNBOjEwIGE9dDMta2RRNTJOVXNB
OjEwIGE9akRQbjVFejhBQUFBOjgKIGE9RlA1OE1zMjZBQUFBOjggYT0yejFPWGxXRkFBQUE6OCBh
PWw0aGdhOUx6QUFBQTo4IGE9WUdxdU5qSkFsUVBucnk5LWpKTUE6OQogYT1RRVhkRE8ydXQzWUE6
MTAgYT1OQmI2bW9GaDNMTUE6MTAgYT1xQkJaazlfYzEwS0dHdTA1U3hlUDoyMgogYT1TTlJQZGEw
Tmp5UjlNbFdkSl9sSjoyMiBhPTNIRXF5Qkc5WWl6Y1FYOVlVdnUxOjIyClJlY2VpdmVkOiBmcm9t
IGNhdHYtODAtOTgtNzgtMTYzLmNhdHYuYnJvYWRiYW5kLmh1IChbODAuOTguNzguMTYzXTozNjMw
MCBoZWxvPWFjZXJsaW51eCkKCWJ5IGJvc2F1dGhzbXRwMDYuZWlnYm94Lm5ldCB3aXRoIGVzbXRw
YSAoRXhpbSkKCWlkIDFtT2lINC0wMDA3NjItRWQKCWZvciBzaGFkb3dsb3JkQHV0YW5ldC5hdDsg
RnJpLCAxMCBTZXAgMjAyMSAxMToxNzowNiAtMDQwMApNZXNzYWdlLUlEOiA8ZmNjODVlYjY2ZDk4
YmZjZmYwNzljODhkNmU3MmM3NjM5NmFkYzYzNS5jYW1lbEBqYW5rb20ubmV0PgpTdWJqZWN0OiBS
ZTogW01qcGVnLXVzZXJzXSBtanBlZ3Rvb2xzIG5ldyBSZWxlYXNlIDIuMi4xCkZyb206ICJKYW5v
cyBHLiBLb21hcm9taSIgPGphbm9zQGphbmtvbS5uZXQ+ClRvOiBCZXJuaGFyZCBQcmFzY2hpbmdl
ciA8c2hhZG93bG9yZEB1dGFuZXQuYXQ+CkRhdGU6IEZyaSwgMTAgU2VwIDIwMjEgMTE6MTc6MDIg
LTA0MDAKSW4tUmVwbHktVG86IDxkZDg3YTU5Ny0yMzMwLTBhNzMtYzRlNy1kNzBjM2I4YjhkYTNA
dXRhbmV0LmF0PgpSZWZlcmVuY2VzOiA8ZGQ4N2E1OTctMjMzMC0wYTczLWM0ZTctZDcwYzNiOGI4
ZGEzQHV0YW5ldC5hdD4KQ29udGVudC1UeXBlOiB0ZXh0L3BsYWluOyBjaGFyc2V0PSJVVEYtOCIK
VXNlci1BZ2VudDogRXZvbHV0aW9uIDMuMzYuNS0wdWJ1bnR1MSAKTUlNRS1WZXJzaW9uOiAxLjAK
Q29udGVudC1UcmFuc2Zlci1FbmNvZGluZzogN2JpdApYLUVOLVVzZXJJbmZvOiA0NGE2OWJjOWI2
ZGNhMTc4NTgyYTU3YzM5NTQyMTdkYTo5MzFjOTgyMzBjNjQwOWRjYzM3ZmE3ZTkzYjQ5MGMyNwpY
LUVOLUF1dGhVc2VyOiBqYW5vc0BqYW5rb20ubmV0ClNlbmRlcjogICJKYW5vcyBHLiBLb21hcm9t
aSIgPGphbm9zQGphbmtvbS5uZXQ+ClgtRU4tT3JpZ0lQOiA4MC45OC43OC4xNjMKWC1FTi1Pcmln
SG9zdDogY2F0di04MC05OC03OC0xNjMuY2F0di5icm9hZGJhbmQuaHUKWC1FTi1DbGFzczogaW1w
aW5jCgoKLS0xNjMxMjg3MDMyLWV4aW1kc24tMTM0OTUzNDE5MC0tCgo=


--=-Qk85Of0lotw+aa9HgYVL
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--=-Qk85Of0lotw+aa9HgYVL
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Mjpeg-users mailing list
Mjpeg-users@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/mjpeg-users

--=-Qk85Of0lotw+aa9HgYVL--


