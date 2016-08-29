.class public Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;
.super Ljava/lang/Object;
.source "DeveloperIdCertificate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate$OCSPCheckHandler;
    }
.end annotation


# static fields
.field private static final MESSAGE_CHECK_APP_CERTI_REVOCATION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MirrorLink_Cert"

.field private static mOCSPSerial:I


# instance fields
.field public certiIssuer:Ljava/lang/String;

.field public certiKeyAlgorithm:Ljava/lang/String;

.field public certiNotAfter:Ljava/util/Date;

.field public certiNotBefore:Ljava/util/Date;

.field public certiPublicKey:[B

.field public certiSerial:Ljava/math/BigInteger;

.field public certiSubject:Ljava/lang/String;

.field public certiVersion:I

.field public downloadRawCertificate:Ljava/lang/String;

.field public lastOCSPRetrieve:J

.field public lastOCSPStatus:I

.field public lastOCSPSuccess:J

.field private mCACertificate:Ljava/security/cert/X509Certificate;

.field mDevIdCertStatusListener:Lcom/lge/mirrorlink/certificate/DevIdCertStatusListener;

.field private mDevIdCertificate:Ljava/security/cert/X509Certificate;

.field public mDeveloperId:Ljava/lang/String;

.field mHandlerThread:Landroid/os/HandlerThread;

.field public mManufacturerIDs:Ljava/lang/String;

.field mOCSPCheckHandler:Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate$OCSPCheckHandler;

.field public mServerIDs:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public rawCertificate:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;)Z
    .registers 2

    invoke-direct {p0}, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->checkAppCertiRevocationInternal()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const/4 v0, 0x1

    sput v0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mOCSPSerial:I

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/lge/mirrorlink/certificate/DevIdCertStatusListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/lge/mirrorlink/certificate/DevIdCertStatusListener;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mDevIdCertStatusListener:Lcom/lge/mirrorlink/certificate/DevIdCertStatusListener;

    .line 34
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->packageName:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->downloadRawCertificate:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->rawCertificate:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->certiVersion:I

    .line 41
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->certiIssuer:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->certiSerial:Ljava/math/BigInteger;

    .line 43
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->certiSubject:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->certiKeyAlgorithm:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->certiPublicKey:[B

    .line 47
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->certiNotBefore:Ljava/util/Date;

    .line 48
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->certiNotAfter:Ljava/util/Date;

    .line 50
    iput-wide v2, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->lastOCSPRetrieve:J

    .line 51
    iput-wide v2, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->lastOCSPSuccess:J

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->lastOCSPStatus:I

    .line 55
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mDeveloperId:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mServerIDs:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mManufacturerIDs:Ljava/lang/String;

    .line 117
    iput-object p1, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mDevIdCertStatusListener:Lcom/lge/mirrorlink/certificate/DevIdCertStatusListener;

    .line 119
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "DevIdCertThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mHandlerThread:Landroid/os/HandlerThread;

    .line 120
    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 121
    new-instance v0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate$OCSPCheckHandler;

    iget-object v1, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate$OCSPCheckHandler;-><init>(Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mOCSPCheckHandler:Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate$OCSPCheckHandler;

    .line 115
    return-void
.end method

.method private checkAppCertiRevocationInternal()Z
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 425
    const-string/jumbo v1, "MirrorLink_Cert"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "check DevIdCert revocation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mDeveloperId:Ljava/lang/String;

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

    .line 427
    invoke-direct {p0}, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->checkRevocation()I

    move-result v0

    .line 429
    .local v0, "result":I
    if-nez v0, :cond_4c

    .line 430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->lastOCSPSuccess:J

    .line 432
    iget-object v1, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mDevIdCertStatusListener:Lcom/lge/mirrorlink/certificate/DevIdCertStatusListener;

    invoke-interface {v1, p0, v4}, Lcom/lge/mirrorlink/certificate/DevIdCertStatusListener;->onCertificateSuccess(Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;Z)V

    .line 434
    invoke-direct {p0}, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->setScheduleNextCheckRevocation()V

    .line 451
    :goto_49
    iput v0, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->lastOCSPStatus:I

    .line 453
    return v5

    .line 436
    :cond_4c
    const/4 v1, -0x2

    if-ne v0, v1, :cond_55

    .line 438
    iget-object v1, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mDevIdCertStatusListener:Lcom/lge/mirrorlink/certificate/DevIdCertStatusListener;

    invoke-interface {v1, p0, v4}, Lcom/lge/mirrorlink/certificate/DevIdCertStatusListener;->onCertificateRevoked(Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;Z)V

    goto :goto_49

    .line 440
    :cond_55
    const/4 v1, -0x4

    if-ne v0, v1, :cond_67

    .line 441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->lastOCSPSuccess:J

    .line 442
    iget-object v1, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mDevIdCertStatusListener:Lcom/lge/mirrorlink/certificate/DevIdCertStatusListener;

    invoke-interface {v1, p0, v4}, Lcom/lge/mirrorlink/certificate/DevIdCertStatusListener;->onCertificateFailed(Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;Z)V

    .line 443
    invoke-direct {p0}, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->setScheduleNextCheckRevocation()V

    goto :goto_49

    .line 446
    :cond_67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->lastOCSPSuccess:J

    .line 447
    iget-object v1, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mDevIdCertStatusListener:Lcom/lge/mirrorlink/certificate/DevIdCertStatusListener;

    invoke-interface {v1, p0, v4}, Lcom/lge/mirrorlink/certificate/DevIdCertStatusListener;->onCertificateDriveOver(Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;Z)V

    .line 448
    invoke-direct {p0}, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->setScheduleNextCheckRevocation()V

    goto :goto_49
.end method

.method private checkRevocation()I
    .registers 13

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 460
    iget-object v6, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mDevIdCertificate:Ljava/security/cert/X509Certificate;

    if-nez v6, :cond_7

    .line 461
    return v11

    .line 463
    :cond_7
    new-instance v3, Ljava/math/BigInteger;

    new-instance v6, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/Random;-><init>(J)V

    const/16 v7, 0x90

    invoke-direct {v3, v7, v6}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 465
    .local v3, "nonce":Ljava/math/BigInteger;
    iget-object v6, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mCACertificate:Ljava/security/cert/X509Certificate;

    iget-object v7, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->certiSerial:Ljava/math/BigInteger;

    invoke-static {v6, v7, v3}, Lcom/lge/mirrorlink/certificate/CertificateManager;->generateOCSPRequest(Ljava/security/cert/X509Certificate;Ljava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object v2

    .line 466
    .local v2, "encodedReq":[B
    new-instance v0, Ljava/lang/String;

    invoke-static {v2, v10}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    .line 467
    .local v0, "b64Req":Ljava/lang/String;
    const-string/jumbo v6, "MirrorLink_Cert"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "DevIdCert OCSPReq:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-static {v2}, Lcom/lge/mirrorlink/certificate/ACMSConnector;->checkCertificateRevocation([B)[B

    move-result-object v1

    .line 469
    .local v1, "bRes":[B
    if-nez v1, :cond_49

    .line 470
    return v11

    .line 472
    :cond_49
    new-instance v4, Lcom/lge/mirrorlink/certificate/OCSPResponseResult;

    invoke-direct {v4}, Lcom/lge/mirrorlink/certificate/OCSPResponseResult;-><init>()V

    .line 473
    .local v4, "result":Lcom/lge/mirrorlink/certificate/OCSPResponseResult;
    invoke-static {v1, v3, v4}, Lcom/lge/mirrorlink/certificate/CertificateManager;->parseOCSPResponse([BLjava/math/BigInteger;Lcom/lge/mirrorlink/certificate/OCSPResponseResult;)I

    move-result v5

    .line 475
    .local v5, "resultStatus":I
    iget v6, v4, Lcom/lge/mirrorlink/certificate/OCSPResponseResult;->queryPeriod:I

    if-ltz v6, :cond_a5

    iget v6, v4, Lcom/lge/mirrorlink/certificate/OCSPResponseResult;->queryPeriod:I

    invoke-static {}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getQueryPeriod()I

    move-result v7

    if-eq v6, v7, :cond_a5

    .line 478
    :cond_5e
    :goto_5e
    iget-object v6, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mDevIdCertStatusListener:Lcom/lge/mirrorlink/certificate/DevIdCertStatusListener;

    iget v7, v4, Lcom/lge/mirrorlink/certificate/OCSPResponseResult;->queryPeriod:I

    iget v8, v4, Lcom/lge/mirrorlink/certificate/OCSPResponseResult;->driveGrace:I

    iget v9, v4, Lcom/lge/mirrorlink/certificate/OCSPResponseResult;->baseGrace:I

    invoke-interface {v6, v7, v8, v9}, Lcom/lge/mirrorlink/certificate/DevIdCertStatusListener;->onOCSPQueryPeriodChanged(III)V

    .line 481
    :cond_69
    iget v6, v4, Lcom/lge/mirrorlink/certificate/OCSPResponseResult;->queryPeriod:I

    if-ltz v6, :cond_72

    .line 482
    iget v6, v4, Lcom/lge/mirrorlink/certificate/OCSPResponseResult;->queryPeriod:I

    invoke-static {v6}, Lcom/lge/mirrorlink/certificate/CertificateManager;->setQueryPeriod(I)V

    .line 484
    :cond_72
    iget v6, v4, Lcom/lge/mirrorlink/certificate/OCSPResponseResult;->driveGrace:I

    if-ltz v6, :cond_7b

    .line 485
    iget v6, v4, Lcom/lge/mirrorlink/certificate/OCSPResponseResult;->driveGrace:I

    invoke-static {v6}, Lcom/lge/mirrorlink/certificate/CertificateManager;->setDriveGrace(I)V

    .line 487
    :cond_7b
    iget v6, v4, Lcom/lge/mirrorlink/certificate/OCSPResponseResult;->baseGrace:I

    if-ltz v6, :cond_84

    .line 488
    iget v6, v4, Lcom/lge/mirrorlink/certificate/OCSPResponseResult;->baseGrace:I

    invoke-static {v6}, Lcom/lge/mirrorlink/certificate/CertificateManager;->setBaseGrace(I)V

    .line 491
    :cond_84
    const-string/jumbo v6, "MirrorLink_Cert"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "DevIdCert OCSPResp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->lastOCSPRetrieve:J

    .line 495
    return v5

    .line 476
    :cond_a5
    iget v6, v4, Lcom/lge/mirrorlink/certificate/OCSPResponseResult;->driveGrace:I

    if-ltz v6, :cond_b1

    iget v6, v4, Lcom/lge/mirrorlink/certificate/OCSPResponseResult;->driveGrace:I

    invoke-static {}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getDriveGrace()I

    move-result v7

    if-ne v6, v7, :cond_5e

    .line 477
    :cond_b1
    iget v6, v4, Lcom/lge/mirrorlink/certificate/OCSPResponseResult;->baseGrace:I

    if-ltz v6, :cond_69

    iget v6, v4, Lcom/lge/mirrorlink/certificate/OCSPResponseResult;->baseGrace:I

    invoke-static {}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getBaseGrace()I

    move-result v7

    if-eq v6, v7, :cond_69

    goto :goto_5e
.end method

.method public static createInstance(Ljava/lang/String;Lcom/lge/mirrorlink/certificate/DevIdCertStatusListener;)Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;
    .registers 8
    .param p0, "certStr"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/lge/mirrorlink/certificate/DevIdCertStatusListener;

    .prologue
    const/4 v5, 0x0

    .line 87
    if-nez p0, :cond_4

    .line 88
    return-object v5

    .line 90
    :cond_4
    new-instance v3, Ljava/io/StringBufferInputStream;

    invoke-direct {v3, p0}, Ljava/io/StringBufferInputStream;-><init>(Ljava/lang/String;)V

    .line 91
    .local v3, "sbis":Ljava/io/StringBufferInputStream;
    new-instance v1, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;

    invoke-direct {v1, p1}, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;-><init>(Lcom/lge/mirrorlink/certificate/DevIdCertStatusListener;)V

    .line 92
    .local v1, "devIdCerti":Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;
    iput-object p0, v1, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->rawCertificate:Ljava/lang/String;

    .line 93
    iput-object p0, v1, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->downloadRawCertificate:Ljava/lang/String;

    .line 95
    const/4 v0, 0x0

    .line 96
    :cond_13
    invoke-static {v3}, Lcom/lge/mirrorlink/certificate/CertificateManager;->extractCertificates(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .local v0, "certiString":Ljava/lang/String;
    if-eqz v0, :cond_20

    .line 97
    invoke-virtual {v1, v0}, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->parseDevIdCertificate(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 98
    return-object v5

    .line 103
    :cond_20
    :try_start_20
    invoke-virtual {v3}, Ljava/io/StringBufferInputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24

    .line 106
    :goto_23
    return-object v1

    .line 104
    :catch_24
    move-exception v2

    .local v2, "ioe":Ljava/io/IOException;
    goto :goto_23
.end method

.method private isRevokeBaseGraceOver()Z
    .registers 7

    .prologue
    .line 350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 351
    .local v0, "now":J
    iget-wide v2, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->lastOCSPSuccess:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1c

    iget-wide v2, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->lastOCSPSuccess:J

    invoke-static {}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getBaseGrace()I

    move-result v4

    mul-int/lit16 v4, v4, 0xe10

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_1e

    .line 353
    :cond_1c
    const/4 v2, 0x0

    return v2

    .line 356
    :cond_1e
    const/4 v2, 0x1

    return v2
.end method

.method private isRevokeDriveGraceOver()Z
    .registers 7

    .prologue
    .line 339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 340
    .local v0, "now":J
    iget-wide v2, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->lastOCSPSuccess:J

    invoke-static {}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getDriveGrace()I

    move-result v4

    mul-int/lit16 v4, v4, 0xe10

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_16

    .line 342
    const/4 v2, 0x0

    return v2

    .line 345
    :cond_16
    const/4 v2, 0x1

    return v2
.end method

.method private isRevokePeriodOver()Z
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 317
    .local v0, "now":J
    invoke-static {}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getQueryPeriod()I

    move-result v2

    if-nez v2, :cond_55

    .line 319
    const-string/jumbo v2, "MirrorLink_Cert"

    const-string/jumbo v3, "isRevokePeriodOver() zeroQueryPeriod"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-wide v2, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->lastOCSPSuccess:J

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_9c

    .line 321
    const-string/jumbo v2, "MirrorLink_Cert"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isRevokePeriodOver() now : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string/jumbo v2, "MirrorLink_Cert"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isRevokePeriodOver() lastOCSPSuccess : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->lastOCSPSuccess:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    return v6

    .line 326
    :cond_55
    iget-wide v2, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->lastOCSPSuccess:J

    invoke-static {}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getQueryPeriod()I

    move-result v4

    mul-int/lit16 v4, v4, 0xe10

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_9c

    .line 327
    const-string/jumbo v2, "MirrorLink_Cert"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isRevokePeriodOver() now : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string/jumbo v2, "MirrorLink_Cert"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isRevokePeriodOver() lastOCSPSuccess : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->lastOCSPSuccess:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    return v6

    .line 332
    :cond_9c
    const-string/jumbo v2, "MirrorLink_Cert"

    const-string/jumbo v3, "isRevokePeriodOver() true"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const/4 v2, 0x1

    return v2
.end method

.method private setScheduleNextCheckRevocation()V
    .registers 16

    .prologue
    const/4 v14, 0x0

    .line 364
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 366
    .local v6, "now":J
    iget-object v3, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_17

    .line 367
    const-string/jumbo v3, "MirrorLink_Cert"

    const-string/jumbo v8, "DevIdCert setScheduleNextCheckRevocation : Handler Thread is stopped. Can not send message"

    invoke-static {v3, v8}, Lcom/lge/mirrorlink/common/ExtLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    return-void

    .line 372
    :cond_17
    invoke-static {}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getQueryPeriod()I

    move-result v3

    if-lez v3, :cond_12c

    .line 373
    const-string/jumbo v3, "MirrorLink_Cert"

    const-string/jumbo v8, "Set 70% query period log with msec"

    invoke-static {v3, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string/jumbo v3, "MirrorLink_Cert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "now : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " lastSucess : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->lastOCSPSuccess:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " queryperiod : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getQueryPeriod()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-wide v8, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->lastOCSPSuccess:J

    sub-long/2addr v8, v6

    invoke-static {}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getQueryPeriod()I

    move-result v3

    int-to-double v10, v3

    const-wide v12, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v10, v12

    const-wide v12, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v10, v12

    const-wide v12, 0x408f400000000000L    # 1000.0

    mul-double/2addr v10, v12

    double-to-int v3, v10

    int-to-long v10, v3

    add-long v4, v8, v10

    .line 378
    .local v4, "nextQueryTime":J
    const-string/jumbo v3, "MirrorLink_Cert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "DevIdCert set timer to queryPeriod for next checking.. in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " time"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    :goto_9b
    iget-wide v8, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->lastOCSPSuccess:J

    invoke-static {}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getDriveGrace()I

    move-result v3

    mul-int/lit16 v3, v3, 0xe10

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v10, v3

    add-long/2addr v8, v10

    cmp-long v3, v6, v8

    if-gez v3, :cond_c7

    .line 391
    iget-wide v8, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->lastOCSPSuccess:J

    invoke-static {}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getDriveGrace()I

    move-result v3

    mul-int/lit16 v3, v3, 0xe10

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v10, v3

    add-long/2addr v8, v10

    sub-long v0, v8, v6

    .line 392
    .local v0, "nextCheckTime":J
    cmp-long v3, v4, v0

    if-lez v3, :cond_c7

    .line 393
    move-wide v4, v0

    .line 394
    const-string/jumbo v3, "MirrorLink_Cert"

    const-string/jumbo v8, "DevIdCert set timer to driveGrace for next checking.. "

    invoke-static {v3, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    .end local v0    # "nextCheckTime":J
    :cond_c7
    iget-wide v8, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->lastOCSPSuccess:J

    invoke-static {}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getBaseGrace()I

    move-result v3

    mul-int/lit16 v3, v3, 0xe10

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v10, v3

    add-long/2addr v8, v10

    cmp-long v3, v6, v8

    if-gez v3, :cond_f3

    .line 398
    iget-wide v8, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->lastOCSPSuccess:J

    invoke-static {}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getBaseGrace()I

    move-result v3

    mul-int/lit16 v3, v3, 0xe10

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v10, v3

    add-long/2addr v8, v10

    sub-long v0, v8, v6

    .line 399
    .restart local v0    # "nextCheckTime":J
    cmp-long v3, v4, v0

    if-lez v3, :cond_f3

    .line 400
    move-wide v4, v0

    .line 401
    const-string/jumbo v3, "MirrorLink_Cert"

    const-string/jumbo v8, "DevIdCert set timer to baseGrace for next checking.. "

    invoke-static {v3, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    .end local v0    # "nextCheckTime":J
    :cond_f3
    const-string/jumbo v3, "MirrorLink_Cert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "DevIdCert set timer for next checking.. "

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

    .line 405
    iget-object v3, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mOCSPCheckHandler:Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate$OCSPCheckHandler;

    iget-object v8, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mOCSPCheckHandler:Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate$OCSPCheckHandler;

    const/4 v9, 0x1

    invoke-static {v8, v9, v14, v14}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v3, v8, v4, v5}, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate$OCSPCheckHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 362
    return-void

    .line 379
    .end local v4    # "nextQueryTime":J
    :cond_12c
    invoke-static {}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getQueryPeriod()I

    move-result v3

    if-nez v3, :cond_158

    .line 381
    const/4 v2, 0x0

    .line 382
    .local v2, "nextQueryHour":I
    const-wide/16 v4, 0x0

    .line 383
    .restart local v4    # "nextQueryTime":J
    const-string/jumbo v3, "MirrorLink_Cert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "DevIdCert set timer to queryPeriod for next checking.. in "

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

    goto/16 :goto_9b

    .line 385
    .end local v2    # "nextQueryHour":I
    .end local v4    # "nextQueryTime":J
    :cond_158
    iget-wide v8, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->lastOCSPSuccess:J

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

    .line 386
    .restart local v2    # "nextQueryHour":I
    iget-wide v8, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->lastOCSPSuccess:J

    mul-int/lit16 v3, v2, 0xe10

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v10, v3

    add-long/2addr v8, v10

    sub-long v4, v8, v6

    .line 387
    .restart local v4    # "nextQueryTime":J
    const-string/jumbo v3, "MirrorLink_Cert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "DevIdCert set timer to queryPeriod for next checking.. in "

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

    goto/16 :goto_9b
.end method


# virtual methods
.method public checkOCSPRevocation(Z)Z
    .registers 10
    .param p1, "force"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 412
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 413
    .local v0, "now":J
    if-nez p1, :cond_e

    invoke-static {}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getQueryPeriod()I

    move-result v2

    if-nez v2, :cond_20

    .line 414
    :cond_e
    iget-object v2, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mOCSPCheckHandler:Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate$OCSPCheckHandler;

    invoke-virtual {v2, v7}, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate$OCSPCheckHandler;->removeMessages(I)V

    .line 415
    iget-object v2, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mOCSPCheckHandler:Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate$OCSPCheckHandler;

    iget-object v3, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mOCSPCheckHandler:Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate$OCSPCheckHandler;

    invoke-static {v3, v7, v6, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate$OCSPCheckHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    return v2

    .line 413
    :cond_20
    iget-wide v2, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->lastOCSPSuccess:J

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

    .line 417
    invoke-direct {p0}, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->setScheduleNextCheckRevocation()V

    .line 419
    return v7
.end method

.method public hasValidAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "devId"    # Ljava/lang/String;
    .param p2, "serverId"    # Ljava/lang/String;
    .param p3, "clientId"    # Ljava/lang/String;

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->isTrustChainValid()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 240
    invoke-virtual {p0}, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->isCertificateExpired()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 239
    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    .line 241
    :cond_e
    invoke-virtual {p0, p1}, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->isDevIdValid(Ljava/lang/String;)Z

    move-result v0

    .line 239
    if-eqz v0, :cond_c

    .line 242
    invoke-virtual {p0, p2}, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->isServerIdsValid(Ljava/lang/String;)Z

    move-result v0

    .line 239
    if-eqz v0, :cond_c

    .line 243
    invoke-virtual {p0, p3}, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->isManufacturerIdsValid(Ljava/lang/String;)Z

    move-result v0

    goto :goto_d
.end method

.method public isCertificateExpired()Z
    .registers 5

    .prologue
    .line 262
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 263
    .local v0, "now":Ljava/util/Date;
    iget-object v1, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->certiNotAfter:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->certiNotBefore:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 264
    :cond_15
    const-string/jumbo v1, "MirrorLink_Cert"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Certificate Expireation Date : notBefore:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->certiNotBefore:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " notAfter:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->certiNotAfter:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
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

    .line 266
    const/4 v1, 0x1

    return v1

    .line 268
    :cond_5a
    const/4 v1, 0x0

    return v1
.end method

.method public isCertified()Z
    .registers 4

    .prologue
    .line 248
    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mDeveloperId:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->rawCertificate:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 249
    invoke-virtual {p0}, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->isTrustChainValid()Z

    move-result v0

    .line 248
    if-eqz v0, :cond_14

    .line 250
    invoke-direct {p0}, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->isRevokePeriodOver()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 255
    :cond_14
    const-string/jumbo v0, "MirrorLink_Cert"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isCertified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mDeveloperId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not certified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const/4 v0, 0x0

    return v0

    .line 251
    :cond_39
    invoke-virtual {p0}, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->isCertificateExpired()Z

    move-result v0

    if-nez v0, :cond_14

    .line 252
    const-string/jumbo v0, "MirrorLink_Cert"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isCertified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mDeveloperId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is certified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const/4 v0, 0x1

    return v0
.end method

.method public isDevIdValid(Ljava/lang/String;)Z
    .registers 5
    .param p1, "devId"    # Ljava/lang/String;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mDeveloperId:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mDeveloperId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 275
    const/4 v0, 0x1

    return v0

    .line 277
    :cond_e
    const-string/jumbo v0, "MirrorLink_Cert"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "check validity for Dev Id Certificate : not valid devID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "<>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mDeveloperId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public isManufacturerIdsValid(Ljava/lang/String;)Z
    .registers 6
    .param p1, "mamufacturerId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 296
    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mManufacturerIDs:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mManufacturerIDs:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    if-nez p1, :cond_11

    .line 297
    :cond_f
    const/4 v0, 0x1

    return v0

    .line 296
    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_f

    .line 299
    const-string/jumbo v0, "MirrorLink_Cert"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "check validity for Dev Id Certificate : not valid mamufacturerId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mManufacturerIDs:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    return v3
.end method

.method public isServerIdsValid(Ljava/lang/String;)Z
    .registers 5
    .param p1, "serverId"    # Ljava/lang/String;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mServerIDs:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mServerIDs:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 286
    const/4 v0, 0x1

    return v0

    .line 288
    :cond_e
    const-string/jumbo v0, "MirrorLink_Cert"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "check validity for Dev Id Certificate : not valid serverId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mServerIDs:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method public isTrustChainValid()Z
    .registers 4

    .prologue
    .line 307
    :try_start_0
    iget-object v1, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mDevIdCertificate:Ljava/security/cert/X509Certificate;

    iget-object v2, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mCACertificate:Ljava/security/cert/X509Certificate;

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/certificate/CertificateManager;->verifyTrustChain(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z
    :try_end_7
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    return v1

    .line 308
    :catch_9
    move-exception v0

    .line 309
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    const-string/jumbo v1, "MirrorLink_Cert"

    const-string/jumbo v2, "BadPaddingException in checking DevId Trust Chain: "

    invoke-static {v1, v2, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 311
    const/4 v1, 0x1

    return v1
.end method

.method public parseDevIdCertificate(Ljava/lang/String;)Z
    .registers 24
    .param p1, "certStr"    # Ljava/lang/String;

    .prologue
    .line 126
    if-nez p1, :cond_5

    .line 127
    const/16 v19, 0x0

    return v19

    .line 130
    :cond_5
    new-instance v17, Ljava/io/StringBufferInputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/StringBufferInputStream;-><init>(Ljava/lang/String;)V

    .line 131
    .local v17, "sbis2":Ljava/io/StringBufferInputStream;
    new-instance v2, Landroid/util/Base64InputStream;

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-direct {v2, v0, v1}, Landroid/util/Base64InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 133
    .local v2, "b64is":Landroid/util/Base64InputStream;
    :try_start_19
    const-string/jumbo v19, "X.509"

    invoke-static/range {v19 .. v19}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v5

    .line 134
    .local v5, "certificateFactory":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v5, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 135
    .local v4, "certi":Ljava/security/cert/X509Certificate;
    if-nez v4, :cond_49

    .line 136
    const-string/jumbo v19, "MirrorLink_Cert"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "FAIL to parse Application Certificate : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/16 v19, 0x0

    return v19

    .line 139
    :cond_49
    const-string/jumbo v19, "MirrorLink_Cert"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "IssuerDN:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string/jumbo v19, "MirrorLink_Cert"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "SubjectDN:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string/jumbo v19, "MirrorLink_Cert"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "  version   :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string/jumbo v19, "MirrorLink_Cert"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "  serial    :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string/jumbo v19, "MirrorLink_Cert"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "  SigAlgName:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string/jumbo v19, "MirrorLink_Cert"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "  SigAlgOID :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string/jumbo v19, "MirrorLink_Cert"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "  NotBefore :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string/jumbo v19, "MirrorLink_Cert"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "  NotAfter  :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v19

    if-eqz v19, :cond_170

    .line 150
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "CN=ACMS CA"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    .line 149
    if-eqz v19, :cond_170

    .line 151
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "O=Car Connectivity Consortium"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    .line 149
    if-eqz v19, :cond_170

    .line 152
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mCACertificate:Ljava/security/cert/X509Certificate;

    .line 153
    const/16 v19, 0x1

    return v19

    .line 156
    :cond_170
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v12

    .line 157
    .local v12, "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v12, :cond_207

    .line 158
    const-string/jumbo v19, "MirrorLink_Cert"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "extension num:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "extension$iterator":Ljava/util/Iterator;
    :cond_198
    :goto_198
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_207

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 160
    .local v9, "extension":Ljava/lang/String;
    const-string/jumbo v19, "MirrorLink_Cert"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "extension:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v4, v9}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v11

    .line 162
    .local v11, "extensionValue":[B
    if-eqz v11, :cond_198

    .line 163
    const-string/jumbo v19, "MirrorLink_Cert"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "value:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x0

    aget-byte v21, v11, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x1

    aget-byte v21, v11, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x2

    aget-byte v21, v11, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_198

    .line 230
    .end local v4    # "certi":Ljava/security/cert/X509Certificate;
    .end local v5    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v9    # "extension":Ljava/lang/String;
    .end local v10    # "extension$iterator":Ljava/util/Iterator;
    .end local v11    # "extensionValue":[B
    .end local v12    # "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_203
    move-exception v7

    .line 234
    :cond_204
    :goto_204
    const/16 v19, 0x1

    return v19

    .line 168
    .restart local v4    # "certi":Ljava/security/cert/X509Certificate;
    .restart local v5    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .restart local v12    # "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_207
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v6

    .line 169
    .local v6, "cexts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v6, :cond_22b

    .line 170
    const-string/jumbo v19, "MirrorLink_Cert"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "critical extension num:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_22b
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getNonCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v16

    .line 174
    .local v16, "ncexts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v16, :cond_204

    .line 175
    const-string/jumbo v19, "MirrorLink_Cert"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "non critical extension num:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 177
    .local v13, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_253
    :goto_253
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_204

    .line 178
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 179
    .local v15, "ncext":Ljava/lang/String;
    const-string/jumbo v19, "MirrorLink_Cert"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "non critical extension:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string/jumbo v19, "1.3.6.1.4.1.41577.3.1"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_303

    .line 181
    invoke-virtual {v4, v15}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v11

    .line 182
    .restart local v11    # "extensionValue":[B
    if-eqz v11, :cond_253

    .line 183
    invoke-static {v11}, Lcom/lge/mirrorlink/certificate/ASN1Util;->getDERStringValue([B)Ljava/lang/String;

    move-result-object v8

    .line 184
    .local v8, "devid":Ljava/lang/String;
    const-string/jumbo v19, "MirrorLink_Cert"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Dev Id:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mDevIdCertificate:Ljava/security/cert/X509Certificate;

    .line 187
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->certiVersion:I

    .line 188
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->certiIssuer:Ljava/lang/String;

    .line 189
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->certiSerial:Ljava/math/BigInteger;

    .line 190
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->certiSubject:Ljava/lang/String;

    .line 191
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->certiNotBefore:Ljava/util/Date;

    .line 192
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->certiNotAfter:Ljava/util/Date;

    .line 193
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->rawCertificate:Ljava/lang/String;

    .line 194
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mDeveloperId:Ljava/lang/String;

    goto/16 :goto_253

    .line 231
    .end local v4    # "certi":Ljava/security/cert/X509Certificate;
    .end local v5    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v6    # "cexts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "devid":Ljava/lang/String;
    .end local v11    # "extensionValue":[B
    .end local v12    # "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v15    # "ncext":Ljava/lang/String;
    .end local v16    # "ncexts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_300
    move-exception v3

    .local v3, "ce":Ljava/security/cert/CertificateException;
    goto/16 :goto_204

    .line 196
    .end local v3    # "ce":Ljava/security/cert/CertificateException;
    .restart local v4    # "certi":Ljava/security/cert/X509Certificate;
    .restart local v5    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .restart local v6    # "cexts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v12    # "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v15    # "ncext":Ljava/lang/String;
    .restart local v16    # "ncexts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_303
    const-string/jumbo v19, "1.3.6.1.4.1.41577.3.2"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_386

    .line 197
    invoke-virtual {v4, v15}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v11

    .line 198
    .restart local v11    # "extensionValue":[B
    if-eqz v11, :cond_253

    .line 199
    invoke-static {v11}, Lcom/lge/mirrorlink/certificate/ASN1Util;->getDERStringValue([B)Ljava/lang/String;

    move-result-object v18

    .line 200
    .local v18, "serverIDs":Ljava/lang/String;
    const-string/jumbo v19, "MirrorLink_Cert"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Server IDs:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mDevIdCertificate:Ljava/security/cert/X509Certificate;

    .line 203
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->certiVersion:I

    .line 204
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->certiIssuer:Ljava/lang/String;

    .line 205
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->certiSerial:Ljava/math/BigInteger;

    .line 206
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->certiSubject:Ljava/lang/String;

    .line 207
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->certiNotBefore:Ljava/util/Date;

    .line 208
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->certiNotAfter:Ljava/util/Date;

    .line 209
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mServerIDs:Ljava/lang/String;

    goto/16 :goto_253

    .line 211
    .end local v11    # "extensionValue":[B
    .end local v18    # "serverIDs":Ljava/lang/String;
    :cond_386
    const-string/jumbo v19, "1.3.6.1.4.1.41577.3.3"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_253

    .line 212
    invoke-virtual {v4, v15}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v11

    .line 213
    .restart local v11    # "extensionValue":[B
    if-eqz v11, :cond_253

    .line 214
    invoke-static {v11}, Lcom/lge/mirrorlink/certificate/ASN1Util;->getDERStringValue([B)Ljava/lang/String;

    move-result-object v14

    .line 215
    .local v14, "manufacturerIDs":Ljava/lang/String;
    const-string/jumbo v19, "MirrorLink_Cert"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Manufacturer IDs:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mDevIdCertificate:Ljava/security/cert/X509Certificate;

    .line 218
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->certiVersion:I

    .line 219
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->certiIssuer:Ljava/lang/String;

    .line 220
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->certiSerial:Ljava/math/BigInteger;

    .line 221
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->certiSubject:Ljava/lang/String;

    .line 222
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->certiNotBefore:Ljava/util/Date;

    .line 223
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->certiNotAfter:Ljava/util/Date;

    .line 224
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mManufacturerIDs:Ljava/lang/String;
    :try_end_403
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_19 .. :try_end_403} :catch_203
    .catch Ljava/security/cert/CertificateException; {:try_start_19 .. :try_end_403} :catch_300

    goto/16 :goto_253
.end method

.method public quit()V
    .registers 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mOCSPCheckHandler:Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate$OCSPCheckHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate$OCSPCheckHandler;->removeMessages(I)V

    .line 112
    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 109
    return-void
.end method
