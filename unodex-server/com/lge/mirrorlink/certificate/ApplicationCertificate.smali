.class public Lcom/lge/mirrorlink/certificate/ApplicationCertificate;
.super Ljava/lang/Object;
.source "ApplicationCertificate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mirrorlink/certificate/ApplicationCertificate$OCSPCheckHandler;
    }
.end annotation


# static fields
.field private static final MESSAGE_CHECK_APP_CERTI_REVOCATION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MirrorLink_Cert"


# instance fields
.field public appCertInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;

.field public appIdentifier:Ljava/lang/String;

.field public appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/App;

.field public blacklistedPlatformVersions:Ljava/lang/String;

.field public blacklistedRuntimeVersions:Ljava/lang/String;

.field public certiIssuer:Ljava/lang/String;

.field public certiKeyAlgorithm:Ljava/lang/String;

.field public certiNotAfter:Ljava/util/Date;

.field public certiNotBefore:Ljava/util/Date;

.field public certiPublicKey:[B

.field public certiSerial:Ljava/math/BigInteger;

.field public certiSubject:Ljava/lang/String;

.field public certiVersion:I

.field public lastOCSPRetrieve:J

.field public lastOCSPStatus:I

.field public lastOCSPSuccess:J

.field private mAppCertificate:Ljava/security/cert/X509Certificate;

.field private mCACertificate:Ljava/security/cert/X509Certificate;

.field mCertificateStatusListener:Lcom/lge/mirrorlink/certificate/CertificateStatusListener;

.field mHandlerThread:Landroid/os/HandlerThread;

.field mOCSPCheckHandler:Lcom/lge/mirrorlink/certificate/ApplicationCertificate$OCSPCheckHandler;

.field public majorVersion:Ljava/lang/String;

.field public minorVersion:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public platformID:Ljava/lang/String;

.field public rawAppCert:Ljava/lang/String;

.field public rawCertificate:Ljava/lang/String;

.field public runtimeID:Ljava/lang/String;

.field public sourcePath:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lcom/lge/mirrorlink/certificate/ApplicationCertificate;)Z
    .registers 2

    invoke-direct {p0}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->checkAppCertiRevocationInternal()Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Lcom/lge/mirrorlink/certificate/CertificateStatusListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/lge/mirrorlink/certificate/CertificateStatusListener;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->mCertificateStatusListener:Lcom/lge/mirrorlink/certificate/CertificateStatusListener;

    .line 42
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->packageName:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->sourcePath:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->rawCertificate:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->rawAppCert:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->certiVersion:I

    .line 50
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->certiIssuer:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->certiSerial:Ljava/math/BigInteger;

    .line 52
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->certiSubject:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->certiKeyAlgorithm:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->certiPublicKey:[B

    .line 56
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->certiNotBefore:Ljava/util/Date;

    .line 57
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->certiNotAfter:Ljava/util/Date;

    .line 59
    iput-wide v2, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->lastOCSPRetrieve:J

    .line 60
    iput-wide v2, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->lastOCSPSuccess:J

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->lastOCSPStatus:I

    .line 63
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->majorVersion:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->minorVersion:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->appIdentifier:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/App;

    .line 67
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->appCertInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;

    .line 148
    iput-object p1, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->mCertificateStatusListener:Lcom/lge/mirrorlink/certificate/CertificateStatusListener;

    .line 150
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "AppCertThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->mHandlerThread:Landroid/os/HandlerThread;

    .line 151
    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 152
    new-instance v0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate$OCSPCheckHandler;

    iget-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate$OCSPCheckHandler;-><init>(Lcom/lge/mirrorlink/certificate/ApplicationCertificate;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->mOCSPCheckHandler:Lcom/lge/mirrorlink/certificate/ApplicationCertificate$OCSPCheckHandler;

    .line 146
    return-void
.end method

.method private checkAppCertiRevocationInternal()Z
    .registers 11

    .prologue
    const-wide/32 v8, 0x36ee80

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 556
    const-string/jumbo v1, "MirrorLink_Cert"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "check certificate revocation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    invoke-direct {p0}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->checkRevocation()I

    move-result v0

    .line 560
    .local v0, "result":I
    packed-switch v0, :pswitch_data_be

    .line 590
    :pswitch_3f
    invoke-direct {p0}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->isRevokeDriveGraceOver()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 591
    iget-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->mCertificateStatusListener:Lcom/lge/mirrorlink/certificate/CertificateStatusListener;

    invoke-interface {v1, p0, v4}, Lcom/lge/mirrorlink/certificate/CertificateStatusListener;->onApplicationCertificateDriveOver(Lcom/lge/mirrorlink/certificate/ApplicationCertificate;Z)V

    .line 593
    :cond_4a
    invoke-direct {p0}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->isRevokeBaseGraceOver()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 594
    iget-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->mCertificateStatusListener:Lcom/lge/mirrorlink/certificate/CertificateStatusListener;

    invoke-interface {v1, p0, v6}, Lcom/lge/mirrorlink/certificate/CertificateStatusListener;->onApplicationCertificateBaseOver(Lcom/lge/mirrorlink/certificate/ApplicationCertificate;Z)V

    .line 596
    :cond_55
    invoke-direct {p0}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->setScheduleNextCheckRevocation()V

    .line 600
    :goto_58
    iput v0, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->lastOCSPStatus:I

    .line 602
    return v6

    .line 562
    :pswitch_5b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->lastOCSPSuccess:J

    .line 563
    iget-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->mCertificateStatusListener:Lcom/lge/mirrorlink/certificate/CertificateStatusListener;

    invoke-interface {v1, p0, v4}, Lcom/lge/mirrorlink/certificate/CertificateStatusListener;->onApplicationCertificateSuccess(Lcom/lge/mirrorlink/certificate/ApplicationCertificate;Z)V

    .line 564
    invoke-direct {p0}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->setScheduleNextCheckRevocation()V

    goto :goto_58

    .line 567
    :pswitch_6a
    iget-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->mCertificateStatusListener:Lcom/lge/mirrorlink/certificate/CertificateStatusListener;

    invoke-interface {v1, p0, v4}, Lcom/lge/mirrorlink/certificate/CertificateStatusListener;->onApplicationCertificateRevoked(Lcom/lge/mirrorlink/certificate/ApplicationCertificate;Z)V

    goto :goto_58

    .line 572
    :pswitch_70
    iget-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->mOCSPCheckHandler:Lcom/lge/mirrorlink/certificate/ApplicationCertificate$OCSPCheckHandler;

    iget-object v2, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->mOCSPCheckHandler:Lcom/lge/mirrorlink/certificate/ApplicationCertificate$OCSPCheckHandler;

    invoke-static {v2, v4, v6, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    invoke-static {}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getQueryPeriod()I

    move-result v3

    int-to-long v4, v3

    mul-long/2addr v4, v8

    invoke-virtual {v1, v2, v4, v5}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate$OCSPCheckHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_58

    .line 575
    :pswitch_82
    iget-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->mOCSPCheckHandler:Lcom/lge/mirrorlink/certificate/ApplicationCertificate$OCSPCheckHandler;

    iget-object v2, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->mOCSPCheckHandler:Lcom/lge/mirrorlink/certificate/ApplicationCertificate$OCSPCheckHandler;

    invoke-static {v2, v4, v6, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    invoke-static {}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getDriveGrace()I

    move-result v3

    int-to-long v4, v3

    mul-long/2addr v4, v8

    invoke-virtual {v1, v2, v4, v5}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate$OCSPCheckHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_58

    .line 581
    :pswitch_94
    const-string/jumbo v1, "MirrorLink_Cert"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MUST NOT send any further OCSP requests - resultStatus :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    .line 585
    :pswitch_af
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->lastOCSPSuccess:J

    .line 586
    iget-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->mCertificateStatusListener:Lcom/lge/mirrorlink/certificate/CertificateStatusListener;

    invoke-interface {v1, p0, v4}, Lcom/lge/mirrorlink/certificate/CertificateStatusListener;->onApplicationCertificateFailed(Lcom/lge/mirrorlink/certificate/ApplicationCertificate;Z)V

    .line 587
    invoke-direct {p0}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->setScheduleNextCheckRevocation()V

    goto :goto_58

    .line 560
    :pswitch_data_be
    .packed-switch -0x7
        :pswitch_70
        :pswitch_af
        :pswitch_94
        :pswitch_af
        :pswitch_70
        :pswitch_6a
        :pswitch_3f
        :pswitch_5b
        :pswitch_94
        :pswitch_82
        :pswitch_70
        :pswitch_3f
        :pswitch_94
        :pswitch_94
    .end packed-switch
.end method

.method private checkRevocation()I
    .registers 11

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 609
    iget-object v6, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->mAppCertificate:Ljava/security/cert/X509Certificate;

    if-nez v6, :cond_7

    .line 610
    return v9

    .line 612
    :cond_7
    new-instance v3, Ljava/math/BigInteger;

    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    const/16 v7, 0x90

    invoke-direct {v3, v7, v6}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 613
    .local v3, "nonce":Ljava/math/BigInteger;
    iget-object v6, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->mCACertificate:Ljava/security/cert/X509Certificate;

    iget-object v7, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->certiSerial:Ljava/math/BigInteger;

    invoke-static {v6, v7, v3}, Lcom/lge/mirrorlink/certificate/CertificateManager;->generateOCSPRequest(Ljava/security/cert/X509Certificate;Ljava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object v2

    .line 614
    .local v2, "encodedReq":[B
    new-instance v0, Ljava/lang/String;

    invoke-static {v2, v8}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    .line 615
    .local v0, "b64Req":Ljava/lang/String;
    const-string/jumbo v6, "MirrorLink_Cert"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "AppCert OCSPReq:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    invoke-static {v2}, Lcom/lge/mirrorlink/certificate/ACMSConnector;->checkCertificateRevocation([B)[B

    move-result-object v1

    .line 617
    .local v1, "bRes":[B
    if-nez v1, :cond_45

    .line 618
    return v9

    .line 620
    :cond_45
    new-instance v4, Lcom/lge/mirrorlink/certificate/OCSPResponseResult;

    invoke-direct {v4}, Lcom/lge/mirrorlink/certificate/OCSPResponseResult;-><init>()V

    .line 621
    .local v4, "result":Lcom/lge/mirrorlink/certificate/OCSPResponseResult;
    invoke-static {v1, v3, v4}, Lcom/lge/mirrorlink/certificate/CertificateManager;->parseOCSPResponse([BLjava/math/BigInteger;Lcom/lge/mirrorlink/certificate/OCSPResponseResult;)I

    move-result v5

    .line 623
    .local v5, "resultStatus":I
    iget v6, v4, Lcom/lge/mirrorlink/certificate/OCSPResponseResult;->queryPeriod:I

    if-ltz v6, :cond_a1

    iget v6, v4, Lcom/lge/mirrorlink/certificate/OCSPResponseResult;->queryPeriod:I

    invoke-static {}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getQueryPeriod()I

    move-result v7

    if-eq v6, v7, :cond_a1

    .line 626
    :cond_5a
    :goto_5a
    iget-object v6, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->mCertificateStatusListener:Lcom/lge/mirrorlink/certificate/CertificateStatusListener;

    iget v7, v4, Lcom/lge/mirrorlink/certificate/OCSPResponseResult;->queryPeriod:I

    iget v8, v4, Lcom/lge/mirrorlink/certificate/OCSPResponseResult;->driveGrace:I

    iget v9, v4, Lcom/lge/mirrorlink/certificate/OCSPResponseResult;->baseGrace:I

    invoke-interface {v6, v7, v8, v9}, Lcom/lge/mirrorlink/certificate/CertificateStatusListener;->onOCSPQueryPeriodChanged(III)V

    .line 629
    :cond_65
    iget v6, v4, Lcom/lge/mirrorlink/certificate/OCSPResponseResult;->queryPeriod:I

    if-ltz v6, :cond_6e

    .line 630
    iget v6, v4, Lcom/lge/mirrorlink/certificate/OCSPResponseResult;->queryPeriod:I

    invoke-static {v6}, Lcom/lge/mirrorlink/certificate/CertificateManager;->setQueryPeriod(I)V

    .line 632
    :cond_6e
    iget v6, v4, Lcom/lge/mirrorlink/certificate/OCSPResponseResult;->driveGrace:I

    if-ltz v6, :cond_77

    .line 633
    iget v6, v4, Lcom/lge/mirrorlink/certificate/OCSPResponseResult;->driveGrace:I

    invoke-static {v6}, Lcom/lge/mirrorlink/certificate/CertificateManager;->setDriveGrace(I)V

    .line 635
    :cond_77
    iget v6, v4, Lcom/lge/mirrorlink/certificate/OCSPResponseResult;->baseGrace:I

    if-ltz v6, :cond_80

    .line 636
    iget v6, v4, Lcom/lge/mirrorlink/certificate/OCSPResponseResult;->baseGrace:I

    invoke-static {v6}, Lcom/lge/mirrorlink/certificate/CertificateManager;->setBaseGrace(I)V

    .line 639
    :cond_80
    const-string/jumbo v6, "MirrorLink_Cert"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "AppCert OCSPResp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->lastOCSPRetrieve:J

    .line 643
    return v5

    .line 624
    :cond_a1
    iget v6, v4, Lcom/lge/mirrorlink/certificate/OCSPResponseResult;->driveGrace:I

    if-ltz v6, :cond_ad

    iget v6, v4, Lcom/lge/mirrorlink/certificate/OCSPResponseResult;->driveGrace:I

    invoke-static {}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getDriveGrace()I

    move-result v7

    if-ne v6, v7, :cond_5a

    .line 625
    :cond_ad
    iget v6, v4, Lcom/lge/mirrorlink/certificate/OCSPResponseResult;->baseGrace:I

    if-ltz v6, :cond_65

    iget v6, v4, Lcom/lge/mirrorlink/certificate/OCSPResponseResult;->baseGrace:I

    invoke-static {}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getBaseGrace()I

    move-result v7

    if-eq v6, v7, :cond_65

    goto :goto_5a
.end method

.method public static createInstance(Ljava/lang/String;Lcom/lge/mirrorlink/certificate/CertificateStatusListener;)Lcom/lge/mirrorlink/certificate/ApplicationCertificate;
    .registers 9
    .param p0, "certStr"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/lge/mirrorlink/certificate/CertificateStatusListener;

    .prologue
    const/4 v5, 0x0

    .line 100
    if-nez p0, :cond_4

    .line 101
    return-object v5

    .line 103
    :cond_4
    new-instance v0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;

    invoke-direct {v0, p1}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;-><init>(Lcom/lge/mirrorlink/certificate/CertificateStatusListener;)V

    .line 104
    .local v0, "appCerti":Lcom/lge/mirrorlink/certificate/ApplicationCertificate;
    iput-object p0, v0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->rawCertificate:Ljava/lang/String;

    .line 120
    const/4 v4, 0x0

    .line 121
    .local v4, "offset":I
    :goto_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_1b

    .line 122
    const-string/jumbo v5, "-----BEGIN CERTIFICATE-----"

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 123
    .local v1, "beginIdx":I
    if-ge v1, v4, :cond_1c

    .line 137
    .end local v1    # "beginIdx":I
    :cond_1b
    return-object v0

    .line 126
    .restart local v1    # "beginIdx":I
    :cond_1c
    const-string/jumbo v5, "-----END CERTIFICATE-----"

    const-string/jumbo v6, "-----BEGIN CERTIFICATE-----"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 127
    .local v3, "endIdx":I
    const-string/jumbo v5, "-----BEGIN CERTIFICATE-----"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v1

    if-lt v3, v5, :cond_1b

    .line 130
    const-string/jumbo v5, "-----BEGIN CERTIFICATE-----"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "certiString1":Ljava/lang/String;
    invoke-direct {v0, v2}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->parseAppCertificate(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 134
    const-string/jumbo v5, "-----END CERTIFICATE-----"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    goto :goto_c
.end method

.method private isApplicationIDValid(Ljava/lang/String;)Z
    .registers 5
    .param p1, "appID"    # Ljava/lang/String;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->appIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->appIdentifier:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 397
    const/4 v0, 0x1

    return v0

    .line 399
    :cond_e
    const-string/jumbo v0, "MirrorLink_Cert"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Certificate Application ID not valid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->appIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const/4 v0, 0x0

    return v0
.end method

.method private isCertificateExpired()Z
    .registers 5

    .prologue
    .line 381
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 382
    .local v0, "now":Ljava/util/Date;
    iget-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->certiNotAfter:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->certiNotBefore:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 383
    :cond_15
    const-string/jumbo v1, "MirrorLink_Cert"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Certificate Expireation Date : notBefore:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->certiNotBefore:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " notAfter:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->certiNotAfter:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string/jumbo v1, "MirrorLink_Cert"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "now:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const/4 v1, 0x1

    return v1

    .line 390
    :cond_5a
    const/4 v1, 0x0

    return v1
.end method

.method private isPlatformIDValid()Z
    .registers 4

    .prologue
    .line 429
    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->platformID:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->platformID:Ljava/lang/String;

    const-string/jumbo v1, "Android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 430
    const/4 v0, 0x1

    return v0

    .line 432
    :cond_11
    const-string/jumbo v0, "MirrorLink_Cert"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Certificate Platform ID not valid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->platformID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const/4 v0, 0x0

    return v0
.end method

.method private isPlatformVersionValid()Z
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 406
    iget-object v4, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->blacklistedPlatformVersions:Ljava/lang/String;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->blacklistedPlatformVersions:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_f

    .line 407
    :cond_e
    return v8

    .line 409
    :cond_f
    iget-object v4, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->blacklistedPlatformVersions:Ljava/lang/String;

    invoke-static {v4}, Lcom/lge/mirrorlink/common/StringUtil;->CommaSeparatedStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 410
    .local v1, "blockedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_34

    .line 411
    const-string/jumbo v4, "MirrorLink_Cert"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed in parsing blacklistedPlatformVersion : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->blacklistedPlatformVersions:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    return v8

    .line 414
    :cond_34
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "blockedVersion$iterator":Ljava/util/Iterator;
    :cond_38
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_82

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 415
    .local v2, "blockedVersion":Ljava/lang/String;
    if-eqz v2, :cond_38

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_38

    .line 418
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 419
    .local v0, "androidOSVersion":Ljava/lang/String;
    const-string/jumbo v4, "MirrorLink_Cert"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Android Version :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "blockedVersion.trim() :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 421
    return v7

    .line 424
    .end local v0    # "androidOSVersion":Ljava/lang/String;
    .end local v2    # "blockedVersion":Ljava/lang/String;
    :cond_82
    return v8
.end method

.method private isRevokeBaseGraceOver()Z
    .registers 9

    .prologue
    .line 481
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 482
    .local v0, "now":J
    iget-wide v2, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->lastOCSPSuccess:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1e

    iget-wide v2, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->lastOCSPSuccess:J

    invoke-static {}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getBaseGrace()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0xe10

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_20

    .line 484
    :cond_1e
    const/4 v2, 0x0

    return v2

    .line 487
    :cond_20
    const-string/jumbo v2, "MirrorLink_Cert"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isRevokeBaseGraceOver: over base grace period(now:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 488
    const-string/jumbo v4, ", last success:"

    .line 487
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 488
    iget-wide v4, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->lastOCSPSuccess:J

    .line 487
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 488
    const-string/jumbo v4, ", base grace:"

    .line 487
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 489
    invoke-static {}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getBaseGrace()I

    move-result v4

    .line 487
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 489
    const-string/jumbo v4, ")"

    .line 487
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const/4 v2, 0x1

    return v2
.end method

.method private isRevokeDriveGraceOver()Z
    .registers 9

    .prologue
    .line 470
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 471
    .local v0, "now":J
    iget-wide v2, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->lastOCSPSuccess:J

    invoke-static {}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getDriveGrace()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0xe10

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_18

    .line 473
    const/4 v2, 0x0

    return v2

    .line 476
    :cond_18
    const/4 v2, 0x1

    return v2
.end method

.method private isRevokePeriodOver()Z
    .registers 9

    .prologue
    .line 459
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 460
    .local v0, "now":J
    iget-wide v2, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->lastOCSPSuccess:J

    invoke-static {}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getQueryPeriod()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0xe10

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_18

    .line 462
    const/4 v2, 0x0

    return v2

    .line 465
    :cond_18
    const/4 v2, 0x1

    return v2
.end method

.method private isRuntimeIDValid()Z
    .registers 4

    .prologue
    .line 439
    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->runtimeID:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->runtimeID:Ljava/lang/String;

    const-string/jumbo v1, "Native"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 440
    const/4 v0, 0x1

    return v0

    .line 442
    :cond_11
    const-string/jumbo v0, "MirrorLink_Cert"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Certificate Runtime ID not valid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->runtimeID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const/4 v0, 0x0

    return v0
.end method

.method private isTrustChainValid()Z
    .registers 5

    .prologue
    .line 450
    :try_start_0
    iget-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->mAppCertificate:Ljava/security/cert/X509Certificate;

    iget-object v2, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->mCACertificate:Ljava/security/cert/X509Certificate;

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/certificate/CertificateManager;->verifyTrustChain(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z
    :try_end_7
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    return v1

    .line 451
    :catch_9
    move-exception v0

    .line 452
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    const-string/jumbo v1, "MirrorLink_Cert"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BadPaddingException in checking AppCert Trust Chain : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 454
    const/4 v1, 0x0

    return v1
.end method

.method private parseAppCertificate(Ljava/lang/String;)Z
    .registers 22
    .param p1, "certStr"    # Ljava/lang/String;

    .prologue
    .line 157
    if-nez p1, :cond_5

    .line 158
    const/16 v17, 0x0

    return v17

    .line 160
    :cond_5
    new-instance v16, Ljava/io/StringBufferInputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/StringBufferInputStream;-><init>(Ljava/lang/String;)V

    .line 161
    .local v16, "sbis2":Ljava/io/StringBufferInputStream;
    new-instance v3, Landroid/util/Base64InputStream;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v3, v0, v1}, Landroid/util/Base64InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 163
    .local v3, "b64is":Landroid/util/Base64InputStream;
    :try_start_19
    const-string/jumbo v17, "X.509"

    invoke-static/range {v17 .. v17}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v6

    .line 164
    .local v6, "certificateFactory":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v6, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 165
    .local v5, "certi":Ljava/security/cert/X509Certificate;
    if-nez v5, :cond_49

    .line 166
    const-string/jumbo v17, "MirrorLink_Cert"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "FAIL to parse Application Certificate : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/16 v17, 0x0

    return v17

    .line 169
    :cond_49
    const-string/jumbo v17, "MirrorLink_Cert"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "IssuerDN:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string/jumbo v17, "MirrorLink_Cert"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "SubjectDN:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string/jumbo v17, "MirrorLink_Cert"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "  version   :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string/jumbo v17, "MirrorLink_Cert"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "  serial    :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string/jumbo v17, "MirrorLink_Cert"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "  SigAlgName:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string/jumbo v17, "MirrorLink_Cert"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "  SigAlgOID :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string/jumbo v17, "MirrorLink_Cert"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "  NotBefore :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string/jumbo v17, "MirrorLink_Cert"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "  NotAfter  :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v17

    if-eqz v17, :cond_192

    .line 180
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "CN=ACMS CA"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    .line 179
    if-eqz v17, :cond_192

    .line 181
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "O=Car Connectivity Consortium"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    .line 179
    if-eqz v17, :cond_192

    .line 182
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->mCACertificate:Ljava/security/cert/X509Certificate;

    .line 183
    const-string/jumbo v17, "MirrorLink_Cert"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "CA certificate is stored : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const/16 v17, 0x1

    return v17

    .line 187
    :cond_192
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v12

    .line 188
    .local v12, "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v12, :cond_229

    .line 189
    const-string/jumbo v17, "MirrorLink_Cert"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "extension num:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "extension$iterator":Ljava/util/Iterator;
    :cond_1ba
    :goto_1ba
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_229

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 191
    .local v9, "extension":Ljava/lang/String;
    const-string/jumbo v17, "MirrorLink_Cert"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "extension:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v5, v9}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v11

    .line 193
    .local v11, "extensionValue":[B
    if-eqz v11, :cond_1ba

    .line 194
    const-string/jumbo v17, "MirrorLink_Cert"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "value:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget-byte v19, v11, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x1

    aget-byte v19, v11, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x2

    aget-byte v19, v11, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1ba

    .line 236
    .end local v5    # "certi":Ljava/security/cert/X509Certificate;
    .end local v6    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v9    # "extension":Ljava/lang/String;
    .end local v10    # "extension$iterator":Ljava/util/Iterator;
    .end local v11    # "extensionValue":[B
    .end local v12    # "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_225
    move-exception v8

    .line 240
    :cond_226
    :goto_226
    const/16 v17, 0x1

    return v17

    .line 199
    .restart local v5    # "certi":Ljava/security/cert/X509Certificate;
    .restart local v6    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .restart local v12    # "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_229
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v7

    .line 200
    .local v7, "cexts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v7, :cond_24d

    .line 201
    const-string/jumbo v17, "MirrorLink_Cert"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "critical extension num:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_24d
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getNonCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v15

    .line 205
    .local v15, "ncexts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v15, :cond_226

    .line 206
    const-string/jumbo v17, "MirrorLink_Cert"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "non critical extension num:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v15}, Ljava/util/Set;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 208
    .local v13, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_275
    :goto_275
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_226

    .line 209
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 210
    .local v14, "ncext":Ljava/lang/String;
    const-string/jumbo v17, "MirrorLink_Cert"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "non critical extension:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string/jumbo v17, "1.3.6.1.4.1.41577.2.1"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_275

    .line 212
    invoke-virtual {v5, v14}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v11

    .line 213
    .restart local v11    # "extensionValue":[B
    if-eqz v11, :cond_275

    .line 214
    invoke-static {v11}, Lcom/lge/mirrorlink/certificate/ASN1Util;->getDERStringValue([B)Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "appinfo":Ljava/lang/String;
    const-string/jumbo v17, "MirrorLink_Cert"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "ML Extension:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    if-eqz v2, :cond_356

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x14

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_356

    .line 217
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->parseAppCertificateXML(Ljava/lang/String;)Z

    .line 218
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->mAppCertificate:Ljava/security/cert/X509Certificate;

    .line 219
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->certiVersion:I

    .line 220
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->certiIssuer:Ljava/lang/String;

    .line 221
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->certiSerial:Ljava/math/BigInteger;

    .line 222
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->certiSubject:Ljava/lang/String;

    .line 223
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->certiNotBefore:Ljava/util/Date;

    .line 224
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->certiNotAfter:Ljava/util/Date;

    .line 225
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->rawAppCert:Ljava/lang/String;

    .line 227
    const-string/jumbo v17, "MirrorLink_Cert"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Application Certificate is stored : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_275

    .line 237
    .end local v2    # "appinfo":Ljava/lang/String;
    .end local v5    # "certi":Ljava/security/cert/X509Certificate;
    .end local v6    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v7    # "cexts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "extensionValue":[B
    .end local v12    # "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v14    # "ncext":Ljava/lang/String;
    .end local v15    # "ncexts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_353
    move-exception v4

    .local v4, "ce":Ljava/security/cert/CertificateException;
    goto/16 :goto_226

    .line 229
    .end local v4    # "ce":Ljava/security/cert/CertificateException;
    .restart local v2    # "appinfo":Ljava/lang/String;
    .restart local v5    # "certi":Ljava/security/cert/X509Certificate;
    .restart local v6    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .restart local v7    # "cexts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v11    # "extensionValue":[B
    .restart local v12    # "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v14    # "ncext":Ljava/lang/String;
    .restart local v15    # "ncexts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_356
    const-string/jumbo v17, "MirrorLink_Cert"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Invalid ML Extension:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_372
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_19 .. :try_end_372} :catch_225
    .catch Ljava/security/cert/CertificateException; {:try_start_19 .. :try_end_372} :catch_353

    goto/16 :goto_275
.end method

.method private setScheduleNextCheckRevocation()V
    .registers 15

    .prologue
    .line 498
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 500
    .local v6, "now":J
    iget-object v3, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_16

    .line 501
    const-string/jumbo v3, "MirrorLink_Cert"

    const-string/jumbo v8, "AppCert setScheduleNextCheckRevocation : Handler Thread is stopped. Can not send message"

    invoke-static {v3, v8}, Lcom/lge/mirrorlink/common/ExtLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    return-void

    .line 506
    :cond_16
    invoke-static {}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getQueryPeriod()I

    move-result v3

    if-lez v3, :cond_fb

    .line 507
    iget-wide v8, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->lastOCSPSuccess:J

    sub-long v8, v6, v8

    const-wide/16 v10, 0xe10

    div-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getQueryPeriod()I

    move-result v3

    int-to-long v10, v3

    div-long/2addr v8, v10

    long-to-int v3, v8

    add-int/lit8 v3, v3, 0x1

    invoke-static {}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getQueryPeriod()I

    move-result v8

    mul-int v2, v3, v8

    .line 508
    .local v2, "nextQueryHour":I
    iget-wide v8, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->lastOCSPSuccess:J

    mul-int/lit16 v3, v2, 0xe10

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v10, v3

    add-long/2addr v8, v10

    sub-long v4, v8, v6

    .line 509
    .local v4, "nextQueryTime":J
    const-string/jumbo v3, "MirrorLink_Cert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "AppCert set timer to queryPeriod for next checking.. in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " hour"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    :goto_60
    iget-wide v8, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->lastOCSPSuccess:J

    invoke-static {}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getDriveGrace()I

    move-result v3

    int-to-long v10, v3

    const-wide/16 v12, 0xe10

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    add-long/2addr v8, v10

    cmp-long v3, v6, v8

    if-gez v3, :cond_90

    .line 522
    iget-wide v8, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->lastOCSPSuccess:J

    invoke-static {}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getDriveGrace()I

    move-result v3

    int-to-long v10, v3

    const-wide/16 v12, 0xe10

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    add-long/2addr v8, v10

    sub-long v0, v8, v6

    .line 523
    .local v0, "nextCheckTime":J
    cmp-long v3, v4, v0

    if-lez v3, :cond_90

    .line 524
    move-wide v4, v0

    .line 525
    const-string/jumbo v3, "MirrorLink_Cert"

    const-string/jumbo v8, "AppCert set timer to driveGrace for next checking.. "

    invoke-static {v3, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    .end local v0    # "nextCheckTime":J
    :cond_90
    iget-wide v8, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->lastOCSPSuccess:J

    invoke-static {}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getBaseGrace()I

    move-result v3

    int-to-long v10, v3

    const-wide/16 v12, 0xe10

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    add-long/2addr v8, v10

    cmp-long v3, v6, v8

    if-gez v3, :cond_c0

    .line 529
    iget-wide v8, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->lastOCSPSuccess:J

    invoke-static {}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getBaseGrace()I

    move-result v3

    int-to-long v10, v3

    const-wide/16 v12, 0xe10

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    add-long/2addr v8, v10

    sub-long v0, v8, v6

    .line 530
    .restart local v0    # "nextCheckTime":J
    cmp-long v3, v4, v0

    if-lez v3, :cond_c0

    .line 531
    move-wide v4, v0

    .line 532
    const-string/jumbo v3, "MirrorLink_Cert"

    const-string/jumbo v8, "AppCert set timer to baseGrace for next checking.. "

    invoke-static {v3, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    .end local v0    # "nextCheckTime":J
    :cond_c0
    const-string/jumbo v3, "MirrorLink_Cert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "AppCert set timer for next checking.. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/util/Date;

    add-long v10, v6, v4

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v3, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->mOCSPCheckHandler:Lcom/lge/mirrorlink/certificate/ApplicationCertificate$OCSPCheckHandler;

    iget-object v8, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->mOCSPCheckHandler:Lcom/lge/mirrorlink/certificate/ApplicationCertificate$OCSPCheckHandler;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v3, v8, v4, v5}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate$OCSPCheckHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 496
    return-void

    .line 510
    .end local v2    # "nextQueryHour":I
    .end local v4    # "nextQueryTime":J
    :cond_fb
    invoke-static {}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getQueryPeriod()I

    move-result v3

    if-nez v3, :cond_127

    .line 512
    const/4 v2, 0x0

    .line 513
    .restart local v2    # "nextQueryHour":I
    const-wide/16 v4, 0x0

    .line 514
    .restart local v4    # "nextQueryTime":J
    const-string/jumbo v3, "MirrorLink_Cert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "AppCert set timer to queryPeriod for next checking.. in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " hour"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_60

    .line 516
    .end local v2    # "nextQueryHour":I
    .end local v4    # "nextQueryTime":J
    :cond_127
    iget-wide v8, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->lastOCSPSuccess:J

    sub-long v8, v6, v8

    const-wide/16 v10, 0xe10

    div-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    const-wide/16 v10, 0x18

    div-long/2addr v8, v10

    long-to-int v3, v8

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v2, v3, 0x18

    .line 517
    .restart local v2    # "nextQueryHour":I
    iget-wide v8, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->lastOCSPSuccess:J

    mul-int/lit16 v3, v2, 0xe10

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v10, v3

    add-long/2addr v8, v10

    sub-long v4, v8, v6

    .line 518
    .restart local v4    # "nextQueryTime":J
    const-string/jumbo v3, "MirrorLink_Cert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "AppCert set timer to queryPeriod for next checking.. in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " hour"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_60
.end method


# virtual methods
.method public checkOCSPRevocation(Z)Z
    .registers 10
    .param p1, "force"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 543
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 544
    .local v0, "now":J
    if-nez p1, :cond_e

    invoke-static {}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getQueryPeriod()I

    move-result v2

    if-nez v2, :cond_20

    .line 545
    :cond_e
    iget-object v2, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->mOCSPCheckHandler:Lcom/lge/mirrorlink/certificate/ApplicationCertificate$OCSPCheckHandler;

    invoke-virtual {v2, v7}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate$OCSPCheckHandler;->removeMessages(I)V

    .line 546
    iget-object v2, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->mOCSPCheckHandler:Lcom/lge/mirrorlink/certificate/ApplicationCertificate$OCSPCheckHandler;

    iget-object v3, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->mOCSPCheckHandler:Lcom/lge/mirrorlink/certificate/ApplicationCertificate$OCSPCheckHandler;

    invoke-static {v3, v7, v6, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate$OCSPCheckHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    return v2

    .line 544
    :cond_20
    iget-wide v2, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->lastOCSPSuccess:J

    invoke-static {}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getQueryPeriod()I

    move-result v4

    mul-int/lit16 v4, v4, 0xe10

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v2, v4

    const-wide/32 v4, 0x493e0

    sub-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_e

    .line 548
    invoke-direct {p0}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->setScheduleNextCheckRevocation()V

    .line 550
    return v7
.end method

.method public hasValidAppInfo(Ljava/lang/String;)Z
    .registers 3
    .param p1, "appid"    # Ljava/lang/String;

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->isTrustChainValid()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 335
    invoke-direct {p0}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->isCertificateExpired()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 334
    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    .line 336
    :cond_e
    invoke-direct {p0, p1}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->isApplicationIDValid(Ljava/lang/String;)Z

    move-result v0

    .line 334
    if-eqz v0, :cond_c

    .line 337
    invoke-direct {p0}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->isPlatformVersionValid()Z

    move-result v0

    .line 334
    if-eqz v0, :cond_c

    .line 338
    invoke-direct {p0}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->isPlatformIDValid()Z

    move-result v0

    .line 334
    if-eqz v0, :cond_c

    .line 339
    invoke-direct {p0}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->isRuntimeIDValid()Z

    move-result v0

    goto :goto_d
.end method

.method public isCertified()Z
    .registers 4

    .prologue
    .line 353
    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->appIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->rawCertificate:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 354
    invoke-direct {p0}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->isTrustChainValid()Z

    move-result v0

    .line 353
    if-eqz v0, :cond_14

    .line 355
    invoke-direct {p0}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->isRevokeBaseGraceOver()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 360
    :cond_14
    const-string/jumbo v0, "MirrorLink_Cert"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isCertified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->appIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not certified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const/4 v0, 0x0

    return v0

    .line 356
    :cond_39
    invoke-direct {p0}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->isCertificateExpired()Z

    move-result v0

    if-nez v0, :cond_14

    .line 357
    const-string/jumbo v0, "MirrorLink_Cert"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isCertified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->appIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is certified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const/4 v0, 0x1

    return v0
.end method

.method public isDriveCertified()Z
    .registers 4

    .prologue
    .line 367
    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->appIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->rawCertificate:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 368
    invoke-direct {p0}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->isTrustChainValid()Z

    move-result v0

    .line 367
    if-eqz v0, :cond_14

    .line 369
    invoke-direct {p0}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->isRevokeDriveGraceOver()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 374
    :cond_14
    const-string/jumbo v0, "MirrorLink_Cert"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isCertified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->appIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not certified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const/4 v0, 0x0

    return v0

    .line 370
    :cond_39
    invoke-direct {p0}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->isCertificateExpired()Z

    move-result v0

    if-nez v0, :cond_14

    .line 371
    const-string/jumbo v0, "MirrorLink_Cert"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isCertified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->appIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is certified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const/4 v0, 0x1

    return v0
.end method

.method public isNeedToRetry(Ljava/lang/String;)Z
    .registers 5
    .param p1, "appid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 344
    invoke-direct {p0}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->isTrustChainValid()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-direct {p0, p1}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->isApplicationIDValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 347
    :cond_e
    invoke-direct {p0}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->isCertificateExpired()Z

    move-result v2

    if-nez v2, :cond_28

    invoke-direct {p0}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->isPlatformVersionValid()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 348
    invoke-direct {p0}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->isPlatformIDValid()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-direct {p0}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->isRuntimeIDValid()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 347
    :goto_26
    return v0

    .line 345
    :cond_27
    return v0

    :cond_28
    move v0, v1

    .line 347
    goto :goto_26

    :cond_2a
    move v0, v1

    .line 348
    goto :goto_26
.end method

.method public parseAppCertificateXML(Ljava/lang/String;)Z
    .registers 14
    .param p1, "certString"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 245
    const-string/jumbo v7, "MirrorLink_Cert"

    const-string/jumbo v8, "parse Application Certificate XML : begin"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :try_start_b
    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 249
    .local v5, "sr":Ljava/io/StringReader;
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 250
    .local v3, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 251
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 253
    .local v6, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 255
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 256
    .local v2, "eventType":I
    :goto_23
    if-eq v2, v10, :cond_279

    .line 257
    if-nez v2, :cond_35

    .line 258
    const-string/jumbo v7, "MirrorLink_Cert"

    const-string/jumbo v8, "parseApplicationCertificate : START_DOCUMENT"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :cond_30
    :goto_30
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_23

    .line 259
    :cond_35
    if-ne v2, v10, :cond_4c

    .line 260
    const-string/jumbo v7, "MirrorLink_Cert"

    const-string/jumbo v8, "parseApplicationCertificate : END_DOCUMENT"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_40} :catch_41
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_40} :catch_80

    goto :goto_30

    .line 323
    .end local v2    # "eventType":I
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "sr":Ljava/io/StringReader;
    .end local v6    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_41
    move-exception v1

    .line 324
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v7, "MirrorLink_Cert"

    const-string/jumbo v8, "parseApplicationCertificate : XmlPullParserException"

    invoke-static {v7, v8, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 329
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4b
    return v11

    .line 261
    .restart local v2    # "eventType":I
    .restart local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5    # "sr":Ljava/io/StringReader;
    .restart local v6    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_4c
    const/4 v7, 0x2

    if-ne v2, v7, :cond_24f

    .line 262
    :try_start_4f
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 263
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v7, "MirrorLink_Cert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "parseApplicationCertificate : START_TAG : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string/jumbo v7, "certificate"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8b

    .line 265
    const-string/jumbo v7, "MirrorLink_Cert"

    const-string/jumbo v8, "<certificate>"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4f .. :try_end_7f} :catch_41
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_7f} :catch_80

    goto :goto_30

    .line 325
    .end local v2    # "eventType":I
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "sr":Ljava/io/StringReader;
    .end local v6    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_80
    move-exception v0

    .line 326
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v7, "MirrorLink_Cert"

    const-string/jumbo v8, "parseApplicationCertificate : IOException"

    invoke-static {v7, v8, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4b

    .line 266
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "eventType":I
    .restart local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "sr":Ljava/io/StringReader;
    .restart local v6    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_8b
    :try_start_8b
    const-string/jumbo v7, "version"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9e

    .line 267
    const-string/jumbo v7, "MirrorLink_Cert"

    const-string/jumbo v8, "<Version>"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    .line 268
    :cond_9e
    const-string/jumbo v7, "majorVersion"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_cb

    .line 269
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->majorVersion:Ljava/lang/String;

    .line 270
    const-string/jumbo v7, "MirrorLink_Cert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "<majorVersion>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->majorVersion:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30

    .line 271
    :cond_cb
    const-string/jumbo v7, "minorVersion"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f8

    .line 272
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->minorVersion:Ljava/lang/String;

    .line 273
    const-string/jumbo v7, "MirrorLink_Cert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "<minorVersion>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->minorVersion:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30

    .line 274
    :cond_f8
    const-string/jumbo v7, "appIdentifier"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_125

    .line 275
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->appIdentifier:Ljava/lang/String;

    .line 276
    const-string/jumbo v7, "MirrorLink_Cert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "<appIdentifier>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->appIdentifier:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30

    .line 277
    :cond_125
    const-string/jumbo v7, "appListEntry"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14c

    .line 278
    const-string/jumbo v7, "MirrorLink_Cert"

    const-string/jumbo v8, "<appListEntry>"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v7, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/App;

    if-nez v7, :cond_142

    .line 280
    new-instance v7, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;

    invoke-direct {v7}, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;-><init>()V

    iput-object v7, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/App;

    .line 282
    :cond_142
    iget-object v7, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/App;

    const-string/jumbo v8, "appListEntry"

    invoke-virtual {v7, v6, v8}, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->fromXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    goto/16 :goto_30

    .line 283
    :cond_14c
    const-string/jumbo v7, "appCertInfoEntry"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_173

    .line 284
    const-string/jumbo v7, "MirrorLink_Cert"

    const-string/jumbo v8, "<appCertInfoEntry>"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v7, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->appCertInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;

    if-nez v7, :cond_169

    .line 286
    new-instance v7, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;

    invoke-direct {v7}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;-><init>()V

    iput-object v7, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->appCertInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;

    .line 288
    :cond_169
    iget-object v7, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->appCertInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;

    const-string/jumbo v8, "appCertInfoEntry"

    invoke-virtual {v7, v6, v8}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;->fromXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    goto/16 :goto_30

    .line 289
    :cond_173
    const-string/jumbo v7, "serverProperties"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_187

    .line 290
    const-string/jumbo v7, "MirrorLink_Cert"

    const-string/jumbo v8, "<serverProperties>"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30

    .line 291
    :cond_187
    const-string/jumbo v7, "platform"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19b

    .line 292
    const-string/jumbo v7, "MirrorLink_Cert"

    const-string/jumbo v8, "<platform>"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30

    .line 293
    :cond_19b
    const-string/jumbo v7, "platformID"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1c8

    .line 294
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->platformID:Ljava/lang/String;

    .line 295
    const-string/jumbo v7, "MirrorLink_Cert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "<platformID>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->platformID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30

    .line 296
    :cond_1c8
    const-string/jumbo v7, "blacklistedPlatformVersions"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1f5

    .line 297
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->blacklistedPlatformVersions:Ljava/lang/String;

    .line 298
    const-string/jumbo v7, "MirrorLink_Cert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "<blacklistedPlatformVersions>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->blacklistedPlatformVersions:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30

    .line 299
    :cond_1f5
    const-string/jumbo v7, "runtimeID"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_222

    .line 300
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->runtimeID:Ljava/lang/String;

    .line 301
    const-string/jumbo v7, "MirrorLink_Cert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "<runtimeID>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->runtimeID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30

    .line 302
    :cond_222
    const-string/jumbo v7, "blacklistedRuntimeVersions"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 303
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->blacklistedRuntimeVersions:Ljava/lang/String;

    .line 304
    const-string/jumbo v7, "MirrorLink_Cert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "<blacklistedRuntimeVersions>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->blacklistedRuntimeVersions:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30

    .line 306
    .end local v4    # "name":Ljava/lang/String;
    :cond_24f
    const/4 v7, 0x3

    if-ne v2, v7, :cond_283

    .line 307
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 308
    .restart local v4    # "name":Ljava/lang/String;
    const-string/jumbo v7, "MirrorLink_Cert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "parseApplicationCertificate : END_TAG : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string/jumbo v7, "certificate"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 321
    .end local v4    # "name":Ljava/lang/String;
    :cond_279
    const-string/jumbo v7, "MirrorLink_Cert"

    const-string/jumbo v8, "parse Application Certificate XML : done"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return v10

    .line 312
    :cond_283
    const/4 v7, 0x4

    if-ne v2, v7, :cond_2b1

    .line 313
    const-string/jumbo v7, "MirrorLink_Cert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "parseApplicationCertificate : TEXT("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30

    .line 315
    :cond_2b1
    const-string/jumbo v7, "MirrorLink_Cert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "parseApplicationCertificate : unknown tag("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8b .. :try_end_2d2} :catch_41
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_2d2} :catch_80

    goto/16 :goto_30
.end method

.method public quit()V
    .registers 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->mOCSPCheckHandler:Lcom/lge/mirrorlink/certificate/ApplicationCertificate$OCSPCheckHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate$OCSPCheckHandler;->removeMessages(I)V

    .line 143
    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 140
    return-void
.end method
