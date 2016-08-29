.class public Lcom/lge/mirrorlink/certificate/AppCertRetriever;
.super Ljava/lang/Object;
.source "AppCertRetriever.java"


# static fields
.field public static final ACMS_APP_PARAMS:Ljava/lang/String; = "?certificateVersion=1.0&platformID=Android&runtimeID=Native&appID="

.field public static final ACMS_APP_URL:Ljava/lang/String; = "http://acms.carconnectivity.org:80/obtainCertificate.html"

.field private static final TAG:Ljava/lang/String; = "MirrorLink_Cert"


# instance fields
.field private mAppCertCheckHandler:Landroid/os/Handler;

.field private mAppCertStatusListener:Lcom/lge/mirrorlink/certificate/CertificateStatusListener;

.field private mAppIdentifier:Ljava/lang/String;

.field private mFirstTryTime:J

.field private mPkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Handler;Lcom/lge/mirrorlink/certificate/CertificateStatusListener;)V
    .registers 8
    .param p1, "appid"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "firstTry"    # J
    .param p5, "appCertCheckHandler"    # Landroid/os/Handler;
    .param p6, "appCertStatusListener"    # Lcom/lge/mirrorlink/certificate/CertificateStatusListener;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/lge/mirrorlink/certificate/AppCertRetriever;->mAppIdentifier:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/lge/mirrorlink/certificate/AppCertRetriever;->mPkgName:Ljava/lang/String;

    .line 32
    iput-wide p3, p0, Lcom/lge/mirrorlink/certificate/AppCertRetriever;->mFirstTryTime:J

    .line 33
    iput-object p5, p0, Lcom/lge/mirrorlink/certificate/AppCertRetriever;->mAppCertCheckHandler:Landroid/os/Handler;

    .line 34
    iput-object p6, p0, Lcom/lge/mirrorlink/certificate/AppCertRetriever;->mAppCertStatusListener:Lcom/lge/mirrorlink/certificate/CertificateStatusListener;

    .line 29
    return-void
.end method

.method private setScheduleNextRetrieve()V
    .registers 9

    .prologue
    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 104
    .local v2, "now":J
    invoke-static {}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getQueryPeriod()I

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0x36ee80

    mul-long/2addr v4, v6

    add-long v0, v2, v4

    .line 106
    .local v0, "nextQueryTime":J
    iget-wide v4, p0, Lcom/lge/mirrorlink/certificate/AppCertRetriever;->mFirstTryTime:J

    .line 103
    const-wide v6, 0x3a9456800L

    .line 106
    add-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-gez v4, :cond_4b

    .line 107
    const-string/jumbo v4, "MirrorLink_Cert"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setScheduleNextRetrieve:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v4, p0, Lcom/lge/mirrorlink/certificate/AppCertRetriever;->mAppCertCheckHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/lge/mirrorlink/certificate/AppCertRetriever;->mAppCertCheckHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/lge/mirrorlink/certificate/AppCertRetriever;->mPkgName:Ljava/lang/String;

    const/16 v7, 0x3ea

    invoke-static {v5, v7, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    sub-long v6, v0, v2

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 101
    :cond_4b
    return-void
.end method


# virtual methods
.method public retrieveAppCert()Ljava/lang/String;
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 40
    :try_start_1
    new-instance v7, Ljava/net/URL;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "http://acms.carconnectivity.org:80/obtainCertificate.html?certificateVersion=1.0&platformID=Android&runtimeID=Native&appID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/mirrorlink/certificate/AppCertRetriever;->mAppIdentifier:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 41
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 42
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 44
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 45
    .local v5, "statusCode":I
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v6

    .line 46
    .local v6, "statusMsg":Ljava/lang/String;
    if-eqz v6, :cond_5c

    .line 47
    const-string/jumbo v8, "MirrorLink_Cert"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "read to ACMS:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_5c
    const/16 v8, 0xc8

    if-ne v5, v8, :cond_87

    .line 51
    const-string/jumbo v8, "MirrorLink_Cert"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "200 OK for app:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/mirrorlink/certificate/AppCertRetriever;->mAppIdentifier:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v8}, Lcom/lge/mirrorlink/certificate/InputStreamUtil;->getStringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "appCert":Ljava/lang/String;
    if-eqz v0, :cond_104

    .line 54
    return-object v0

    .line 56
    .end local v0    # "appCert":Ljava/lang/String;
    :cond_87
    const/16 v8, 0x1f4

    if-ne v5, v8, :cond_1b6

    .line 57
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v8}, Lcom/lge/mirrorlink/certificate/InputStreamUtil;->getStringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, "errorCode":Ljava/lang/String;
    if-eqz v3, :cond_104

    .line 59
    if-eqz v3, :cond_c0

    const-string/jumbo v8, "800"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c0

    .line 60
    const-string/jumbo v8, "MirrorLink_Cert"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "500: 800 No certificate available for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/mirrorlink/certificate/AppCertRetriever;->mAppIdentifier:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Lcom/lge/mirrorlink/certificate/AppCertRetriever;->setScheduleNextRetrieve()V

    .line 77
    :goto_bf
    return-object v12

    .line 62
    :cond_c0
    if-eqz v3, :cond_105

    const-string/jumbo v8, "801"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_105

    .line 63
    const-string/jumbo v8, "MirrorLink_Cert"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "500: 801 Certification Database currently offline for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/mirrorlink/certificate/AppCertRetriever;->mAppIdentifier:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v8, p0, Lcom/lge/mirrorlink/certificate/AppCertRetriever;->mAppCertCheckHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/lge/mirrorlink/certificate/AppCertRetriever;->mAppCertCheckHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/lge/mirrorlink/certificate/AppCertRetriever;->mPkgName:Ljava/lang/String;

    const/16 v11, 0x3ea

    invoke-static {v9, v11, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    const-wide/32 v10, 0x5265c00

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_f9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_f9} :catch_fa

    goto :goto_bf

    .line 94
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "errorCode":Ljava/lang/String;
    .end local v5    # "statusCode":I
    .end local v6    # "statusMsg":Ljava/lang/String;
    .end local v7    # "url":Ljava/net/URL;
    :catch_fa
    move-exception v2

    .line 95
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v8, "MirrorLink_Cert"

    const-string/jumbo v9, "retrieveAppCert:"

    invoke-static {v8, v9, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    .end local v2    # "e":Ljava/io/IOException;
    :cond_104
    :goto_104
    return-object v12

    .line 65
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "errorCode":Ljava/lang/String;
    .restart local v5    # "statusCode":I
    .restart local v6    # "statusMsg":Ljava/lang/String;
    .restart local v7    # "url":Ljava/net/URL;
    :cond_105
    if-eqz v3, :cond_130

    :try_start_107
    const-string/jumbo v8, "8"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_130

    .line 66
    const-string/jumbo v8, "MirrorLink_Cert"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "500: 8xx Reserved for future use for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/mirrorlink/certificate/AppCertRetriever;->mAppIdentifier:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Lcom/lge/mirrorlink/certificate/AppCertRetriever;->setScheduleNextRetrieve()V

    goto :goto_bf

    .line 68
    :cond_130
    if-eqz v3, :cond_161

    const-string/jumbo v8, "900"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_161

    .line 69
    const-string/jumbo v8, "MirrorLink_Cert"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "500: 900 Certificate has been revoked for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/mirrorlink/certificate/AppCertRetriever;->mAppIdentifier:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v8, p0, Lcom/lge/mirrorlink/certificate/AppCertRetriever;->mAppCertStatusListener:Lcom/lge/mirrorlink/certificate/CertificateStatusListener;

    iget-object v9, p0, Lcom/lge/mirrorlink/certificate/AppCertRetriever;->mPkgName:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Lcom/lge/mirrorlink/certificate/CertificateStatusListener;->onApplicationCertificateRevoked(Ljava/lang/String;Z)V

    goto/16 :goto_bf

    .line 71
    :cond_161
    if-eqz v3, :cond_18a

    const-string/jumbo v8, "9"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18a

    .line 72
    const-string/jumbo v8, "MirrorLink_Cert"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "500: 9xx Reserved for future use for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/mirrorlink/certificate/AppCertRetriever;->mAppIdentifier:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_bf

    .line 74
    :cond_18a
    const-string/jumbo v8, "MirrorLink_Cert"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "500 : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " Reserved for future use for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/mirrorlink/certificate/AppCertRetriever;->mAppIdentifier:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Lcom/lge/mirrorlink/certificate/AppCertRetriever;->setScheduleNextRetrieve()V

    goto/16 :goto_bf

    .line 79
    .end local v3    # "errorCode":Ljava/lang/String;
    :cond_1b6
    const/16 v8, 0x190

    if-ne v5, v8, :cond_1d8

    .line 80
    const-string/jumbo v8, "MirrorLink_Cert"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "400 Bad Request:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/mirrorlink/certificate/AppCertRetriever;->mAppIdentifier:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_104

    .line 82
    :cond_1d8
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, "sc":Ljava/lang/String;
    const-string/jumbo v8, "4"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_203

    .line 84
    const-string/jumbo v8, "MirrorLink_Cert"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "4xx : N/A for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/mirrorlink/certificate/AppCertRetriever;->mAppIdentifier:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_104

    .line 85
    :cond_203
    const-string/jumbo v8, "5"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_22d

    .line 86
    const-string/jumbo v8, "MirrorLink_Cert"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "5xx : N/A for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/mirrorlink/certificate/AppCertRetriever;->mAppIdentifier:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Lcom/lge/mirrorlink/certificate/AppCertRetriever;->setScheduleNextRetrieve()V

    goto/16 :goto_104

    .line 89
    :cond_22d
    if-eqz v6, :cond_104

    .line 90
    const-string/jumbo v8, "MirrorLink_Cert"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unexpected Error("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " for app:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/mirrorlink/certificate/AppCertRetriever;->mAppIdentifier:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_261
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_261} :catch_fa

    goto/16 :goto_104
.end method
