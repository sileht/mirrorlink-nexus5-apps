.class public Lcom/lge/mirrorlink/certificate/ACMSConnector;
.super Ljava/lang/Object;
.source "ACMSConnector.java"


# static fields
.field public static final ACMS_DEV_PARAMS1:Ljava/lang/String; = "?certificateVersion=1.0&developerID="

.field public static final ACMS_DEV_PARAMS2:Ljava/lang/String; = "&serverID="

.field public static final ACMS_DEV_URL:Ljava/lang/String; = "http://acms.carconnectivity.org:80/obtainDeveloperCertificate.html"

.field public static final OCSP_URL:Ljava/lang/String; = "http://acms.carconnectivity.org/OCSP"

.field private static final TAG:Ljava/lang/String; = "MirrorLink_Cert"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized checkCertificateRevocation([B)[B
    .registers 16
    .param p0, "req"    # [B

    .prologue
    const/4 v14, 0x0

    const-class v11, Lcom/lge/mirrorlink/certificate/ACMSConnector;

    monitor-enter v11

    .line 81
    :try_start_4
    new-instance v9, Ljava/net/URL;

    const-string/jumbo v10, "http://acms.carconnectivity.org/OCSP"

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 82
    .local v9, "url":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 83
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 84
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 86
    const/16 v10, 0x1388

    invoke-virtual {v0, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 87
    const/16 v10, 0x1388

    invoke-virtual {v0, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 88
    const-string/jumbo v10, "POST"

    invoke-virtual {v0, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 89
    const-string/jumbo v10, "Content-Type"

    const-string/jumbo v12, "application/ocsp-request"

    invoke-virtual {v0, v10, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 92
    .local v2, "os":Ljava/io/OutputStream;
    invoke-virtual {v2, p0}, Ljava/io/OutputStream;->write([B)V

    .line 93
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 94
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 96
    const-string/jumbo v10, "MirrorLink_Cert"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "checkCertificateRevocation to ACMS :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 99
    .local v7, "statusCode":I
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v8

    .line 100
    .local v8, "statusMsg":Ljava/lang/String;
    if-eqz v8, :cond_94

    .line 101
    const-string/jumbo v10, "MirrorLink_Cert"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "checkCertificateRevocation response from ACMS:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_94
    const/16 v10, 0xc8

    if-ne v7, v10, :cond_e6

    .line 105
    const-string/jumbo v10, "MirrorLink_Cert"

    const-string/jumbo v12, "200 OK for checkCertificateRevocation"

    invoke-static {v10, v12}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-static {v10}, Lcom/lge/mirrorlink/certificate/InputStreamUtil;->getByteArrayFromInputStream(Ljava/io/InputStream;)[B

    move-result-object v6

    .line 107
    .local v6, "response":[B
    if-eqz v6, :cond_db

    .line 108
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, "resHeader":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v10

    int-to-long v4, v10

    .line 110
    .local v4, "resLength":J
    const-string/jumbo v10, "MirrorLink_Cert"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "response type:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " response length:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_d9} :catch_115
    .catchall {:try_start_4 .. :try_end_d9} :catchall_120

    monitor-exit v11

    .line 111
    return-object v6

    .line 113
    .end local v3    # "resHeader":Ljava/lang/String;
    .end local v4    # "resLength":J
    :cond_db
    :try_start_db
    const-string/jumbo v10, "MirrorLink_Cert"

    const-string/jumbo v12, "response body for checkCertificateRevocation not exist"

    invoke-static {v10, v12}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_e4} :catch_115
    .catchall {:try_start_db .. :try_end_e4} :catchall_120

    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "os":Ljava/io/OutputStream;
    .end local v6    # "response":[B
    .end local v7    # "statusCode":I
    .end local v8    # "statusMsg":Ljava/lang/String;
    .end local v9    # "url":Ljava/net/URL;
    :cond_e4
    :goto_e4
    monitor-exit v11

    .line 125
    return-object v14

    .line 116
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v2    # "os":Ljava/io/OutputStream;
    .restart local v7    # "statusCode":I
    .restart local v8    # "statusMsg":Ljava/lang/String;
    .restart local v9    # "url":Ljava/net/URL;
    :cond_e6
    if-eqz v8, :cond_e4

    .line 117
    :try_start_e8
    const-string/jumbo v10, "MirrorLink_Cert"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unexpected Error("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " for checkCertificateRevocation"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_114
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_114} :catch_115
    .catchall {:try_start_e8 .. :try_end_114} :catchall_120

    goto :goto_e4

    .line 121
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "os":Ljava/io/OutputStream;
    .end local v7    # "statusCode":I
    .end local v8    # "statusMsg":Ljava/lang/String;
    .end local v9    # "url":Ljava/net/URL;
    :catch_115
    move-exception v1

    .line 122
    .local v1, "e":Ljava/io/IOException;
    :try_start_116
    const-string/jumbo v10, "MirrorLink_Cert"

    const-string/jumbo v12, "checkCertificateRevocation:"

    invoke-static {v10, v12, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_11f
    .catchall {:try_start_116 .. :try_end_11f} :catchall_120

    goto :goto_e4

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_120
    move-exception v10

    monitor-exit v11

    throw v10
.end method

.method public static declared-synchronized obtainDevIdCertificate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p0, "devid"    # Ljava/lang/String;
    .param p1, "serverid"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const-class v8, Lcom/lge/mirrorlink/certificate/ACMSConnector;

    monitor-enter v8

    .line 31
    :try_start_4
    new-instance v6, Ljava/net/URL;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "http://acms.carconnectivity.org:80/obtainDeveloperCertificate.html?certificateVersion=1.0&developerID="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "&serverID="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 32
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 33
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 35
    const-string/jumbo v7, "MirrorLink_Cert"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "connect to ACMS :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 38
    .local v4, "statusCode":I
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    .line 39
    .local v5, "statusMsg":Ljava/lang/String;
    if-eqz v5, :cond_86

    .line 40
    const-string/jumbo v7, "MirrorLink_Cert"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "read to ACMS:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_86
    const/16 v7, 0xc8

    if-ne v4, v7, :cond_b0

    .line 44
    const-string/jumbo v7, "MirrorLink_Cert"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "200 OK for dev:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/mirrorlink/certificate/InputStreamUtil;->getStringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_ab} :catch_10b
    .catchall {:try_start_4 .. :try_end_ab} :catchall_13d

    move-result-object v3

    .line 46
    .local v3, "response":Ljava/lang/String;
    if-eqz v3, :cond_115

    monitor-exit v8

    .line 47
    return-object v3

    .line 49
    .end local v3    # "response":Ljava/lang/String;
    :cond_b0
    const/16 v7, 0x1f4

    if-ne v4, v7, :cond_140

    .line 50
    :try_start_b4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/mirrorlink/certificate/InputStreamUtil;->getStringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "errorCode":Ljava/lang/String;
    if-eqz v2, :cond_115

    .line 52
    if-eqz v2, :cond_e5

    const-string/jumbo v7, "800"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e5

    .line 53
    const-string/jumbo v7, "MirrorLink_Cert"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "500: 800 No certificate available dev for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e3
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_e3} :catch_10b
    .catchall {:try_start_b4 .. :try_end_e3} :catchall_13d

    :goto_e3
    monitor-exit v8

    .line 59
    return-object v11

    .line 54
    :cond_e5
    if-eqz v2, :cond_117

    :try_start_e7
    const-string/jumbo v7, "801"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_117

    .line 55
    const-string/jumbo v7, "MirrorLink_Cert"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "500: 801 Certification Database currently offline dev for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10a
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_10a} :catch_10b
    .catchall {:try_start_e7 .. :try_end_10a} :catchall_13d

    goto :goto_e3

    .line 69
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "errorCode":Ljava/lang/String;
    .end local v4    # "statusCode":I
    .end local v5    # "statusMsg":Ljava/lang/String;
    .end local v6    # "url":Ljava/net/URL;
    :catch_10b
    move-exception v1

    .line 70
    .local v1, "e":Ljava/io/IOException;
    :try_start_10c
    const-string/jumbo v7, "MirrorLink_Cert"

    const-string/jumbo v9, "obtainDevIdCertificate:"

    invoke-static {v7, v9, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_115
    .catchall {:try_start_10c .. :try_end_115} :catchall_13d

    .end local v1    # "e":Ljava/io/IOException;
    :cond_115
    :goto_115
    monitor-exit v8

    .line 73
    return-object v11

    .line 57
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v2    # "errorCode":Ljava/lang/String;
    .restart local v4    # "statusCode":I
    .restart local v5    # "statusMsg":Ljava/lang/String;
    .restart local v6    # "url":Ljava/net/URL;
    :cond_117
    :try_start_117
    const-string/jumbo v7, "MirrorLink_Cert"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "500 : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " dev for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13c
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_13c} :catch_10b
    .catchall {:try_start_117 .. :try_end_13c} :catchall_13d

    goto :goto_e3

    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "errorCode":Ljava/lang/String;
    .end local v4    # "statusCode":I
    .end local v5    # "statusMsg":Ljava/lang/String;
    .end local v6    # "url":Ljava/net/URL;
    :catchall_13d
    move-exception v7

    monitor-exit v8

    throw v7

    .line 61
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "statusCode":I
    .restart local v5    # "statusMsg":Ljava/lang/String;
    .restart local v6    # "url":Ljava/net/URL;
    :cond_140
    const/16 v7, 0x190

    if-ne v4, v7, :cond_15f

    .line 62
    :try_start_144
    const-string/jumbo v7, "MirrorLink_Cert"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "400 Bad Request:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_115

    .line 64
    :cond_15f
    if-eqz v5, :cond_115

    .line 65
    const-string/jumbo v7, "MirrorLink_Cert"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unexpected Error("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " for dev:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_191
    .catch Ljava/io/IOException; {:try_start_144 .. :try_end_191} :catch_10b
    .catchall {:try_start_144 .. :try_end_191} :catchall_13d

    goto :goto_115
.end method
