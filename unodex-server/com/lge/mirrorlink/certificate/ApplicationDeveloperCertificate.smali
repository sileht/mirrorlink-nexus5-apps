.class public Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;
.super Ljava/lang/Object;
.source "ApplicationDeveloperCertificate.java"


# static fields
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

.field public devID:Ljava/lang/String;

.field public devIdCert:Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;

.field private mAppDevCertificate:Ljava/security/cert/X509Certificate;

.field private mCACertificate:Ljava/security/cert/X509Certificate;

.field public majorVersion:Ljava/lang/String;

.field public minorVersion:Ljava/lang/String;

.field public platformID:Ljava/lang/String;

.field public rawAppCert:Ljava/lang/String;

.field public runtimeID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->rawAppCert:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->devIdCert:Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiVersion:I

    .line 42
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiIssuer:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiSerial:Ljava/math/BigInteger;

    .line 44
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiSubject:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiKeyAlgorithm:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiPublicKey:[B

    .line 48
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiNotBefore:Ljava/util/Date;

    .line 49
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiNotAfter:Ljava/util/Date;

    .line 51
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->devID:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->majorVersion:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->minorVersion:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->appIdentifier:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/App;

    .line 57
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->appCertInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;

    .line 32
    return-void
.end method

.method public static createInstance(Ljava/io/InputStream;)Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;
    .registers 6
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v4, 0x0

    .line 75
    new-instance v0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    invoke-direct {v0}, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;-><init>()V

    .line 77
    .local v0, "appDevCerti":Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;
    const/4 v1, 0x0

    .line 78
    :cond_7
    invoke-static {p0}, Lcom/lge/mirrorlink/certificate/CertificateManager;->extractCertificatesDevCert(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .local v1, "certiString":Ljava/lang/String;
    if-eqz v1, :cond_14

    .line 79
    invoke-virtual {v0, v1}, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->parseAppDevCertificate(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 80
    return-object v4

    .line 85
    :cond_14
    :try_start_14
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_18

    .line 88
    :goto_17
    return-object v0

    .line 86
    :catch_18
    move-exception v2

    .local v2, "ioe":Ljava/io/IOException;
    goto :goto_17
.end method

.method public static createInstance(Ljava/lang/String;)Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;
    .registers 4
    .param p0, "certStr"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 65
    if-nez p0, :cond_4

    .line 66
    return-object v2

    .line 68
    :cond_4
    new-instance v0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    invoke-direct {v0}, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;-><init>()V

    .line 69
    .local v0, "appDevCerti":Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;
    new-instance v1, Ljava/io/StringBufferInputStream;

    invoke-direct {v1, p0}, Ljava/io/StringBufferInputStream;-><init>(Ljava/lang/String;)V

    .line 70
    .local v1, "sbis":Ljava/io/StringBufferInputStream;
    invoke-static {v1}, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->createInstance(Ljava/io/InputStream;)Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    move-result-object v2

    return-object v2
.end method

.method public static createInstanceDevCert(Ljava/io/InputStream;)Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;
    .registers 6
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v4, 0x0

    .line 127
    new-instance v0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    invoke-direct {v0}, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;-><init>()V

    .line 129
    .local v0, "appDevCerti":Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;
    const/4 v1, 0x0

    .line 130
    :cond_7
    invoke-static {p0}, Lcom/lge/mirrorlink/certificate/CertificateManager;->extractCertificatesDevCert(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .local v1, "certiString":Ljava/lang/String;
    if-eqz v1, :cond_14

    .line 131
    invoke-virtual {v0, v1}, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->parseAppDevCertificate(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 132
    return-object v4

    .line 137
    :cond_14
    :try_start_14
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_21

    .line 140
    :goto_17
    const-string/jumbo v3, "MirrorLink_Cert"

    const-string/jumbo v4, "createInstanceDevCert() return appDevCerti"

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-object v0

    .line 138
    :catch_21
    move-exception v2

    .local v2, "ioe":Ljava/io/IOException;
    goto :goto_17
.end method

.method public static createInstanceDevCert(Ljava/io/InputStream;Ljava/lang/String;)Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;
    .registers 14
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 93
    const-string/jumbo v5, "MirrorLink_Cert"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "createInstanceDevCert filename : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    invoke-direct {v0}, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;-><init>()V

    .line 96
    .local v0, "appDevCerti":Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;
    const/4 v1, 0x0

    .line 97
    .local v1, "certiString":Ljava/lang/String;
    invoke-static {p0}, Lcom/lge/mirrorlink/certificate/CertificateManager;->extractCertificatesDevCert(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "certiString":Ljava/lang/String;
    if-nez v1, :cond_5d

    .line 102
    :try_start_2a
    new-instance v4, Ljava/util/jar/JarFile;

    invoke-direct {v4, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 103
    .local v4, "jar":Ljava/util/jar/JarFile;
    const-string/jumbo v5, "assets/self-signed.ccc.crt"

    invoke-virtual {v4, v5}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v2

    .line 104
    .local v2, "entry":Ljava/util/jar/JarEntry;
    if-eqz v2, :cond_3f

    .line 105
    invoke-virtual {v4, v2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->parseAppDevCertificate(Ljava/io/InputStream;)Z
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_3f} :catch_4c

    .line 117
    .end local v2    # "entry":Ljava/util/jar/JarEntry;
    .end local v4    # "jar":Ljava/util/jar/JarFile;
    :cond_3f
    :goto_3f
    :try_start_3f
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_6d

    .line 121
    :goto_42
    const-string/jumbo v5, "MirrorLink_Cert"

    const-string/jumbo v6, "createInstanceDevCert return appDevCerti"

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-object v0

    .line 107
    :catch_4c
    move-exception v3

    .line 108
    .local v3, "ioe":Ljava/io/IOException;
    const-string/jumbo v5, "MirrorLink_Cert"

    new-array v6, v11, [Ljava/lang/Object;

    const-string/jumbo v7, "IOException"

    aput-object v7, v6, v9

    aput-object v3, v6, v10

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3f

    .line 111
    .end local v3    # "ioe":Ljava/io/IOException;
    :cond_5d
    invoke-virtual {v0, v1}, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->parseAppDevCertificate(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3f

    .line 112
    const-string/jumbo v5, "MirrorLink_Cert"

    const-string/jumbo v6, "createInstanceDevCert return null"

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-object v8

    .line 118
    :catch_6d
    move-exception v3

    .line 119
    .restart local v3    # "ioe":Ljava/io/IOException;
    const-string/jumbo v5, "MirrorLink_Cert"

    new-array v6, v11, [Ljava/lang/Object;

    const-string/jumbo v7, "IOException"

    aput-object v7, v6, v9

    aput-object v3, v6, v10

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_42
.end method


# virtual methods
.method public isApplicationIDValid(Ljava/lang/String;)Z
    .registers 5
    .param p1, "appID"    # Ljava/lang/String;

    .prologue
    .line 479
    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->appIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->appIdentifier:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 480
    const/4 v0, 0x1

    return v0

    .line 482
    :cond_e
    const-string/jumbo v0, "MirrorLink_Cert"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Certificate Application ID not valid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->appIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const/4 v0, 0x0

    return v0
.end method

.method public isCertificateExpired()Z
    .registers 5

    .prologue
    .line 465
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 466
    .local v0, "now":Ljava/util/Date;
    iget-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiNotAfter:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiNotBefore:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 467
    :cond_15
    const-string/jumbo v1, "MirrorLink_Cert"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Certificate Expired Date : notBefore:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiNotBefore:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " notAfter:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiNotAfter:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
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

    .line 469
    const/4 v1, 0x1

    return v1

    .line 471
    :cond_5a
    const-string/jumbo v1, "MirrorLink_Cert"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Certificate Not Expired Date : notBefore:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiNotBefore:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " notAfter:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiNotAfter:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
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

    .line 473
    const/4 v1, 0x0

    return v1
.end method

.method public isCertified(Ljava/lang/String;)Z
    .registers 5
    .param p1, "appid"    # Ljava/lang/String;

    .prologue
    .line 448
    const/4 v0, 0x1

    return v0

    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->appIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 449
    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->appIdentifier:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 448
    if-eqz v0, :cond_22

    .line 450
    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->devID:Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 451
    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->devIdCert:Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;

    if-eqz v0, :cond_22

    .line 452
    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->devIdCert:Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->isCertified()Z

    move-result v0

    .line 448
    if-eqz v0, :cond_22

    .line 453
    invoke-virtual {p0}, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->isCertificateExpired()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 457
    :cond_22
    const-string/jumbo v0, "MirrorLink_Cert"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AppDevCert isCertified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not certified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string/jumbo v0, "MirrorLink_Cert"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "devID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->devID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  devIdCert:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->devIdCert:Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const/4 v0, 0x0

    return v0

    .line 454
    :cond_6e
    const-string/jumbo v0, "MirrorLink_Cert"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AppDevCert isCertified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->appIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is certified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const/4 v0, 0x1

    return v0
.end method

.method public isPlatformIDValid()Z
    .registers 4

    .prologue
    .line 495
    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->platformID:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->platformID:Ljava/lang/String;

    const-string/jumbo v1, "Android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 496
    const/4 v0, 0x1

    return v0

    .line 498
    :cond_11
    const-string/jumbo v0, "MirrorLink_Cert"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Certificate Platform ID not valid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->platformID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const/4 v0, 0x0

    return v0
.end method

.method public isPlatformVersionValid()Z
    .registers 2

    .prologue
    .line 490
    const/4 v0, 0x1

    return v0
.end method

.method public isRuntimeIDValid()Z
    .registers 4

    .prologue
    .line 505
    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->runtimeID:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->runtimeID:Ljava/lang/String;

    const-string/jumbo v1, "Native"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 506
    const/4 v0, 0x1

    return v0

    .line 508
    :cond_11
    const-string/jumbo v0, "MirrorLink_Cert"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Certificate Runtime ID not valid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->runtimeID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const/4 v0, 0x0

    return v0
.end method

.method public isTrustChainValid()Z
    .registers 2

    .prologue
    .line 515
    const/4 v0, 0x1

    return v0
.end method

.method public parseAppCertificateXML(Ljava/lang/String;)Z
    .registers 14
    .param p1, "certString"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 359
    const-string/jumbo v7, "MirrorLink_Cert"

    const-string/jumbo v8, "parse Application Certificate XML : begin"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :try_start_b
    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 363
    .local v5, "sr":Ljava/io/StringReader;
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 364
    .local v3, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 365
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 367
    .local v6, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 369
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 370
    .local v2, "eventType":I
    :goto_23
    if-eq v2, v10, :cond_279

    .line 371
    if-nez v2, :cond_35

    .line 372
    const-string/jumbo v7, "MirrorLink_Cert"

    const-string/jumbo v8, "parseApplicationCertificate : START_DOCUMENT"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :cond_30
    :goto_30
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_23

    .line 373
    :cond_35
    if-ne v2, v10, :cond_4c

    .line 374
    const-string/jumbo v7, "MirrorLink_Cert"

    const-string/jumbo v8, "parseApplicationCertificate : END_DOCUMENT"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_40} :catch_41
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_40} :catch_80

    goto :goto_30

    .line 437
    .end local v2    # "eventType":I
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "sr":Ljava/io/StringReader;
    .end local v6    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_41
    move-exception v1

    .line 438
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v7, "MirrorLink_Cert"

    const-string/jumbo v8, "parseApplicationCertificate : XmlPullParserException"

    invoke-static {v7, v8, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 443
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4b
    return v11

    .line 375
    .restart local v2    # "eventType":I
    .restart local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5    # "sr":Ljava/io/StringReader;
    .restart local v6    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_4c
    const/4 v7, 0x2

    if-ne v2, v7, :cond_24f

    .line 376
    :try_start_4f
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 377
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

    .line 378
    const-string/jumbo v7, "certificate"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8b

    .line 379
    const-string/jumbo v7, "MirrorLink_Cert"

    const-string/jumbo v8, "<certificate>"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4f .. :try_end_7f} :catch_41
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_7f} :catch_80

    goto :goto_30

    .line 439
    .end local v2    # "eventType":I
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "sr":Ljava/io/StringReader;
    .end local v6    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_80
    move-exception v0

    .line 440
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v7, "MirrorLink_Cert"

    const-string/jumbo v8, "parseApplicationCertificate : IOException"

    invoke-static {v7, v8, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4b

    .line 380
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

    .line 381
    const-string/jumbo v7, "MirrorLink_Cert"

    const-string/jumbo v8, "<Version>"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    .line 382
    :cond_9e
    const-string/jumbo v7, "majorVersion"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_cb

    .line 383
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->majorVersion:Ljava/lang/String;

    .line 384
    const-string/jumbo v7, "MirrorLink_Cert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "<majorVersion>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->majorVersion:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30

    .line 385
    :cond_cb
    const-string/jumbo v7, "minorVersion"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f8

    .line 386
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->minorVersion:Ljava/lang/String;

    .line 387
    const-string/jumbo v7, "MirrorLink_Cert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "<minorVersion>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->minorVersion:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30

    .line 388
    :cond_f8
    const-string/jumbo v7, "appIdentifier"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_125

    .line 389
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->appIdentifier:Ljava/lang/String;

    .line 390
    const-string/jumbo v7, "MirrorLink_Cert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "<appIdentifier>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->appIdentifier:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30

    .line 391
    :cond_125
    const-string/jumbo v7, "appListEntry"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14c

    .line 392
    const-string/jumbo v7, "MirrorLink_Cert"

    const-string/jumbo v8, "<appListEntry>"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v7, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/App;

    if-nez v7, :cond_142

    .line 394
    new-instance v7, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;

    invoke-direct {v7}, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;-><init>()V

    iput-object v7, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/App;

    .line 396
    :cond_142
    iget-object v7, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/App;

    const-string/jumbo v8, "appListEntry"

    invoke-virtual {v7, v6, v8}, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->fromXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    goto/16 :goto_30

    .line 397
    :cond_14c
    const-string/jumbo v7, "appCertInfoEntry"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_173

    .line 398
    const-string/jumbo v7, "MirrorLink_Cert"

    const-string/jumbo v8, "<appCertInfoEntry>"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v7, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->appCertInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;

    if-nez v7, :cond_169

    .line 400
    new-instance v7, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;

    invoke-direct {v7}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;-><init>()V

    iput-object v7, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->appCertInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;

    .line 402
    :cond_169
    iget-object v7, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->appCertInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;

    const-string/jumbo v8, "appCertInfoEntry"

    invoke-virtual {v7, v6, v8}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;->fromXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    goto/16 :goto_30

    .line 403
    :cond_173
    const-string/jumbo v7, "serverProperties"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_187

    .line 404
    const-string/jumbo v7, "MirrorLink_Cert"

    const-string/jumbo v8, "<serverProperties>"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30

    .line 405
    :cond_187
    const-string/jumbo v7, "platform"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19b

    .line 406
    const-string/jumbo v7, "MirrorLink_Cert"

    const-string/jumbo v8, "<platform>"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30

    .line 407
    :cond_19b
    const-string/jumbo v7, "platformID"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1c8

    .line 408
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->platformID:Ljava/lang/String;

    .line 409
    const-string/jumbo v7, "MirrorLink_Cert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "<platformID>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->platformID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30

    .line 410
    :cond_1c8
    const-string/jumbo v7, "blacklistedPlatformVersions"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1f5

    .line 411
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->blacklistedPlatformVersions:Ljava/lang/String;

    .line 412
    const-string/jumbo v7, "MirrorLink_Cert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "<blacklistedPlatformVersions>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->blacklistedPlatformVersions:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30

    .line 413
    :cond_1f5
    const-string/jumbo v7, "runtimeID"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_222

    .line 414
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->runtimeID:Ljava/lang/String;

    .line 415
    const-string/jumbo v7, "MirrorLink_Cert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "<runtimeID>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->runtimeID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30

    .line 416
    :cond_222
    const-string/jumbo v7, "blacklistedRuntimeVersions"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 417
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->blacklistedRuntimeVersions:Ljava/lang/String;

    .line 418
    const-string/jumbo v7, "MirrorLink_Cert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "<blacklistedRuntimeVersions>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->blacklistedRuntimeVersions:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30

    .line 420
    .end local v4    # "name":Ljava/lang/String;
    :cond_24f
    const/4 v7, 0x3

    if-ne v2, v7, :cond_283

    .line 421
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 422
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

    .line 423
    const-string/jumbo v7, "certificate"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 435
    .end local v4    # "name":Ljava/lang/String;
    :cond_279
    const-string/jumbo v7, "MirrorLink_Cert"

    const-string/jumbo v8, "parse Application Certificate XML : done"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    return v10

    .line 426
    :cond_283
    const/4 v7, 0x4

    if-ne v2, v7, :cond_2b1

    .line 427
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

    .line 429
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

.method public parseAppDevCertificate(Ljava/io/InputStream;)Z
    .registers 22
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 146
    const-string/jumbo v17, "MirrorLink_Cert"

    const-string/jumbo v18, "parseAppDevCertificate Not PEM cert"

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    if-nez p1, :cond_17

    .line 148
    const-string/jumbo v17, "MirrorLink_Cert"

    const-string/jumbo v18, "is is null"

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/16 v17, 0x0

    return v17

    .line 153
    :cond_17
    :try_start_17
    const-string/jumbo v17, "X.509"

    invoke-static/range {v17 .. v17}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v6

    .line 154
    .local v6, "certificateFactory":Ljava/security/cert/CertificateFactory;
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 155
    .local v4, "certi":Ljava/security/cert/X509Certificate;
    if-nez v4, :cond_34

    .line 156
    const-string/jumbo v17, "MirrorLink_Cert"

    const-string/jumbo v18, "FAIL to parse Application Certificate : "

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const/16 v17, 0x0

    return v17

    .line 159
    :cond_34
    const-string/jumbo v17, "MirrorLink_Cert"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "IssuerDN:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string/jumbo v17, "MirrorLink_Cert"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "  version   :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string/jumbo v17, "MirrorLink_Cert"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "  serial    :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string/jumbo v17, "MirrorLink_Cert"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "  SigAlgName:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string/jumbo v17, "MirrorLink_Cert"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "  SigAlgOID :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string/jumbo v17, "MirrorLink_Cert"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "  NotBefore :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string/jumbo v17, "MirrorLink_Cert"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "  NotAfter  :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v17

    if-eqz v17, :cond_139

    .line 169
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "CN=ACMS CA"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    .line 168
    if-eqz v17, :cond_139

    .line 170
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "O=Car Connectivity Consortium"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    .line 168
    if-eqz v17, :cond_139

    .line 171
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->mCACertificate:Ljava/security/cert/X509Certificate;

    .line 172
    const/16 v17, 0x1

    return v17

    .line 175
    :cond_139
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v13

    .line 176
    .local v13, "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v13, :cond_1dd

    .line 177
    const-string/jumbo v17, "MirrorLink_Cert"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "extension num:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "extension$iterator":Ljava/util/Iterator;
    :cond_161
    :goto_161
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1dd

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 179
    .local v10, "extension":Ljava/lang/String;
    const-string/jumbo v17, "MirrorLink_Cert"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "extension:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v4, v10}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v12

    .line 181
    .local v12, "extensionValue":[B
    if-eqz v12, :cond_161

    .line 182
    const-string/jumbo v17, "MirrorLink_Cert"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "value:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget-byte v19, v12, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x1

    aget-byte v19, v12, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x2

    aget-byte v19, v12, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1cb
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_17 .. :try_end_1cb} :catch_1cc
    .catch Ljava/security/cert/CertificateException; {:try_start_17 .. :try_end_1cb} :catch_320

    goto :goto_161

    .line 244
    .end local v4    # "certi":Ljava/security/cert/X509Certificate;
    .end local v6    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v10    # "extension":Ljava/lang/String;
    .end local v11    # "extension$iterator":Ljava/util/Iterator;
    .end local v12    # "extensionValue":[B
    .end local v13    # "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1cc
    move-exception v8

    .line 245
    .local v8, "cpe":Ljava/security/cert/CertificateParsingException;
    const-string/jumbo v17, "MirrorLink_Cert"

    const-string/jumbo v18, "CertificateParsingException "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v8}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 250
    .end local v8    # "cpe":Ljava/security/cert/CertificateParsingException;
    :cond_1da
    :goto_1da
    const/16 v17, 0x1

    return v17

    .line 187
    .restart local v4    # "certi":Ljava/security/cert/X509Certificate;
    .restart local v6    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .restart local v13    # "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1dd
    :try_start_1dd
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v7

    .line 188
    .local v7, "cexts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v7, :cond_201

    .line 189
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

    .line 192
    :cond_201
    const-string/jumbo v17, "MirrorLink_Cert"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "certi.toString : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    .line 194
    .local v5, "certiBase64":Ljava/lang/String;
    const-string/jumbo v17, "MirrorLink_Cert"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "base64 encoding : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getNonCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v16

    .line 198
    .local v16, "ncexts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v16, :cond_1da

    .line 199
    const-string/jumbo v17, "MirrorLink_Cert"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "non critical extension num:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 201
    .local v14, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_26d
    :goto_26d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1da

    .line 202
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 203
    .local v15, "ncext":Ljava/lang/String;
    const-string/jumbo v17, "MirrorLink_Cert"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "non critical extension:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string/jumbo v17, "1.3.6.1.4.1.41577.3.1"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_330

    .line 205
    invoke-virtual {v4, v15}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v12

    .line 206
    .restart local v12    # "extensionValue":[B
    if-eqz v12, :cond_26d

    .line 207
    invoke-static {v12}, Lcom/lge/mirrorlink/certificate/ASN1Util;->getDERStringValue([B)Ljava/lang/String;

    move-result-object v9

    .line 208
    .local v9, "devid":Ljava/lang/String;
    const-string/jumbo v17, "MirrorLink_Cert"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Dev Id:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->mAppDevCertificate:Ljava/security/cert/X509Certificate;

    .line 211
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiVersion:I

    .line 212
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiIssuer:Ljava/lang/String;

    .line 213
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiSerial:Ljava/math/BigInteger;

    .line 214
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiSubject:Ljava/lang/String;

    .line 215
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiNotBefore:Ljava/util/Date;

    .line 216
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiNotAfter:Ljava/util/Date;

    .line 217
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->devID:Ljava/lang/String;

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->rawAppCert:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_26d

    .line 219
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->rawAppCert:Ljava/lang/String;
    :try_end_31e
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_1dd .. :try_end_31e} :catch_1cc
    .catch Ljava/security/cert/CertificateException; {:try_start_1dd .. :try_end_31e} :catch_320

    goto/16 :goto_26d

    .line 246
    .end local v4    # "certi":Ljava/security/cert/X509Certificate;
    .end local v5    # "certiBase64":Ljava/lang/String;
    .end local v6    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v7    # "cexts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "devid":Ljava/lang/String;
    .end local v12    # "extensionValue":[B
    .end local v13    # "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v15    # "ncext":Ljava/lang/String;
    .end local v16    # "ncexts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_320
    move-exception v3

    .line 247
    .local v3, "ce":Ljava/security/cert/CertificateException;
    const-string/jumbo v17, "MirrorLink_Cert"

    const-string/jumbo v18, "CertificateException "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v3}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1da

    .line 222
    .end local v3    # "ce":Ljava/security/cert/CertificateException;
    .restart local v4    # "certi":Ljava/security/cert/X509Certificate;
    .restart local v5    # "certiBase64":Ljava/lang/String;
    .restart local v6    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .restart local v7    # "cexts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v13    # "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v15    # "ncext":Ljava/lang/String;
    .restart local v16    # "ncexts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_330
    :try_start_330
    const-string/jumbo v17, "1.3.6.1.4.1.41577.2.1"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_26d

    .line 223
    invoke-virtual {v4, v15}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v12

    .line 224
    .restart local v12    # "extensionValue":[B
    if-eqz v12, :cond_26d

    .line 225
    invoke-static {v12}, Lcom/lge/mirrorlink/certificate/ASN1Util;->getDERStringValue([B)Ljava/lang/String;

    move-result-object v2

    .line 226
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

    invoke-static/range {v17 .. v18}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->mAppDevCertificate:Ljava/security/cert/X509Certificate;

    .line 228
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiVersion:I

    .line 229
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiIssuer:Ljava/lang/String;

    .line 230
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiSerial:Ljava/math/BigInteger;

    .line 231
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiSubject:Ljava/lang/String;

    .line 232
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiNotBefore:Ljava/util/Date;

    .line 233
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiNotAfter:Ljava/util/Date;

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->rawAppCert:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_3b5

    .line 235
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->rawAppCert:Ljava/lang/String;

    .line 238
    :cond_3b5
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->parseAppCertificateXML(Ljava/lang/String;)Z
    :try_end_3ba
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_330 .. :try_end_3ba} :catch_1cc
    .catch Ljava/security/cert/CertificateException; {:try_start_330 .. :try_end_3ba} :catch_320

    goto/16 :goto_26d
.end method

.method public parseAppDevCertificate(Ljava/lang/String;)Z
    .registers 23
    .param p1, "certStr"    # Ljava/lang/String;

    .prologue
    .line 255
    const-string/jumbo v18, "MirrorLink_Cert"

    const-string/jumbo v19, "parseAppDevCertificate PEM cert"

    invoke-static/range {v18 .. v19}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    if-nez p1, :cond_e

    .line 257
    const/16 v18, 0x0

    return v18

    .line 259
    :cond_e
    new-instance v17, Ljava/io/StringBufferInputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/StringBufferInputStream;-><init>(Ljava/lang/String;)V

    .line 260
    .local v17, "sbis2":Ljava/io/StringBufferInputStream;
    new-instance v3, Landroid/util/Base64InputStream;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v3, v0, v1}, Landroid/util/Base64InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 262
    .local v3, "b64is":Landroid/util/Base64InputStream;
    :try_start_22
    const-string/jumbo v18, "X.509"

    invoke-static/range {v18 .. v18}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v6

    .line 263
    .local v6, "certificateFactory":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v6, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 264
    .local v5, "certi":Ljava/security/cert/X509Certificate;
    if-nez v5, :cond_52

    .line 265
    const-string/jumbo v18, "MirrorLink_Cert"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "FAIL to parse Application Certificate : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const/16 v18, 0x0

    return v18

    .line 268
    :cond_52
    const-string/jumbo v18, "MirrorLink_Cert"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "IssuerDN:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string/jumbo v18, "MirrorLink_Cert"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "  version   :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string/jumbo v18, "MirrorLink_Cert"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "  serial    :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string/jumbo v18, "MirrorLink_Cert"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "  SigAlgName:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string/jumbo v18, "MirrorLink_Cert"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "  SigAlgOID :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string/jumbo v18, "MirrorLink_Cert"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "  NotBefore :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string/jumbo v18, "MirrorLink_Cert"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "  NotAfter  :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v18

    if-eqz v18, :cond_157

    .line 278
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "CN=ACMS CA"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    .line 277
    if-eqz v18, :cond_157

    .line 279
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "O=Car Connectivity Consortium"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    .line 277
    if-eqz v18, :cond_157

    .line 280
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->mCACertificate:Ljava/security/cert/X509Certificate;

    .line 281
    const/16 v18, 0x1

    return v18

    .line 284
    :cond_157
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v13

    .line 285
    .local v13, "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v13, :cond_1fb

    .line 286
    const-string/jumbo v18, "MirrorLink_Cert"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "extension num:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "extension$iterator":Ljava/util/Iterator;
    :cond_17f
    :goto_17f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1fb

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 288
    .local v10, "extension":Ljava/lang/String;
    const-string/jumbo v18, "MirrorLink_Cert"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "extension:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {v5, v10}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v12

    .line 290
    .local v12, "extensionValue":[B
    if-eqz v12, :cond_17f

    .line 291
    const-string/jumbo v18, "MirrorLink_Cert"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "value:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    aget-byte v20, v12, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget-byte v20, v12, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x2

    aget-byte v20, v12, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e9
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_22 .. :try_end_1e9} :catch_1ea
    .catch Ljava/security/cert/CertificateException; {:try_start_22 .. :try_end_1e9} :catch_2fc

    goto :goto_17f

    .line 349
    .end local v5    # "certi":Ljava/security/cert/X509Certificate;
    .end local v6    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v10    # "extension":Ljava/lang/String;
    .end local v11    # "extension$iterator":Ljava/util/Iterator;
    .end local v12    # "extensionValue":[B
    .end local v13    # "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1ea
    move-exception v8

    .line 350
    .local v8, "cpe":Ljava/security/cert/CertificateParsingException;
    const-string/jumbo v18, "MirrorLink_Cert"

    const-string/jumbo v19, "CertificateParsingException "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 354
    .end local v8    # "cpe":Ljava/security/cert/CertificateParsingException;
    :cond_1f8
    :goto_1f8
    const/16 v18, 0x1

    return v18

    .line 296
    .restart local v5    # "certi":Ljava/security/cert/X509Certificate;
    .restart local v6    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .restart local v13    # "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1fb
    :try_start_1fb
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v7

    .line 297
    .local v7, "cexts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v7, :cond_21f

    .line 298
    const-string/jumbo v18, "MirrorLink_Cert"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "critical extension num:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_21f
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getNonCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v16

    .line 302
    .local v16, "ncexts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v16, :cond_1f8

    .line 303
    const-string/jumbo v18, "MirrorLink_Cert"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "non critical extension num:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 305
    .local v14, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_247
    :goto_247
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1f8

    .line 306
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 307
    .local v15, "ncext":Ljava/lang/String;
    const-string/jumbo v18, "MirrorLink_Cert"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "non critical extension:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string/jumbo v18, "1.3.6.1.4.1.41577.3.1"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_30c

    .line 309
    invoke-virtual {v5, v15}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v12

    .line 310
    .restart local v12    # "extensionValue":[B
    if-eqz v12, :cond_247

    .line 311
    invoke-static {v12}, Lcom/lge/mirrorlink/certificate/ASN1Util;->getDERStringValue([B)Ljava/lang/String;

    move-result-object v9

    .line 312
    .local v9, "devid":Ljava/lang/String;
    const-string/jumbo v18, "MirrorLink_Cert"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Dev Id:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->mAppDevCertificate:Ljava/security/cert/X509Certificate;

    .line 315
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiVersion:I

    .line 316
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiIssuer:Ljava/lang/String;

    .line 317
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiSerial:Ljava/math/BigInteger;

    .line 318
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiSubject:Ljava/lang/String;

    .line 319
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiNotBefore:Ljava/util/Date;

    .line 320
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiNotAfter:Ljava/util/Date;

    .line 321
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->devID:Ljava/lang/String;

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->rawAppCert:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_247

    .line 323
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->rawAppCert:Ljava/lang/String;
    :try_end_2fa
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_1fb .. :try_end_2fa} :catch_1ea
    .catch Ljava/security/cert/CertificateException; {:try_start_1fb .. :try_end_2fa} :catch_2fc

    goto/16 :goto_247

    .line 351
    .end local v5    # "certi":Ljava/security/cert/X509Certificate;
    .end local v6    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v7    # "cexts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "devid":Ljava/lang/String;
    .end local v12    # "extensionValue":[B
    .end local v13    # "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v15    # "ncext":Ljava/lang/String;
    .end local v16    # "ncexts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_2fc
    move-exception v4

    .line 352
    .local v4, "ce":Ljava/security/cert/CertificateException;
    const-string/jumbo v18, "MirrorLink_Cert"

    const-string/jumbo v19, "CertificateException "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f8

    .line 326
    .end local v4    # "ce":Ljava/security/cert/CertificateException;
    .restart local v5    # "certi":Ljava/security/cert/X509Certificate;
    .restart local v6    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .restart local v7    # "cexts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v13    # "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v15    # "ncext":Ljava/lang/String;
    .restart local v16    # "ncexts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_30c
    :try_start_30c
    const-string/jumbo v18, "1.3.6.1.4.1.41577.2.1"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_247

    .line 327
    invoke-virtual {v5, v15}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v12

    .line 328
    .restart local v12    # "extensionValue":[B
    if-eqz v12, :cond_247

    .line 329
    invoke-static {v12}, Lcom/lge/mirrorlink/certificate/ASN1Util;->getDERStringValue([B)Ljava/lang/String;

    move-result-object v2

    .line 330
    .local v2, "appinfo":Ljava/lang/String;
    const-string/jumbo v18, "MirrorLink_Cert"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "ML Extension:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->mAppDevCertificate:Ljava/security/cert/X509Certificate;

    .line 332
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiVersion:I

    .line 333
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiIssuer:Ljava/lang/String;

    .line 334
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiSerial:Ljava/math/BigInteger;

    .line 335
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiSubject:Ljava/lang/String;

    .line 336
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiNotBefore:Ljava/util/Date;

    .line 337
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiNotAfter:Ljava/util/Date;

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->rawAppCert:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_393

    .line 340
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->rawAppCert:Ljava/lang/String;

    .line 343
    :cond_393
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->parseAppCertificateXML(Ljava/lang/String;)Z
    :try_end_398
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_30c .. :try_end_398} :catch_1ea
    .catch Ljava/security/cert/CertificateException; {:try_start_30c .. :try_end_398} :catch_2fc

    goto/16 :goto_247
.end method

.method public removeDevIdCertificate()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 520
    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->devIdCert:Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;

    if-eqz v0, :cond_a

    .line 521
    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->devIdCert:Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->quit()V

    .line 523
    :cond_a
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->devIdCert:Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;

    .line 518
    return-void
.end method
