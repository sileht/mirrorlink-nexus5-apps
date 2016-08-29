.class public Lcom/lge/mirrorlink/certificate/ImportedDevCert;
.super Lcom/lge/mirrorlink/certificate/CertificateBuilder;
.source "ImportedDevCert.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "certFileName"    # Ljava/lang/String;
    .param p3, "requireEKU"    # Z

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/lge/mirrorlink/certificate/CertificateBuilder;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/lge/mirrorlink/certificate/ImportedDevCert;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/lge/mirrorlink/certificate/ImportedDevCert;->mCertFileName:Ljava/lang/String;

    .line 26
    iput-boolean p3, p0, Lcom/lge/mirrorlink/certificate/ImportedDevCert;->mRequireEKU:Z

    .line 23
    return-void
.end method


# virtual methods
.method public generateCert()Z
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 47
    iget-object v8, p0, Lcom/lge/mirrorlink/certificate/ImportedDevCert;->mInputStream:Ljava/io/InputStream;

    if-nez v8, :cond_6

    .line 48
    return v9

    .line 51
    :cond_6
    const/4 v2, 0x0

    .line 52
    .local v2, "certString":Ljava/lang/String;
    iget-object v8, p0, Lcom/lge/mirrorlink/certificate/ImportedDevCert;->mInputStream:Ljava/io/InputStream;

    invoke-static {v8}, Lcom/lge/mirrorlink/certificate/CertificateExtractor;->extract(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "certString":Ljava/lang/String;
    if-nez v2, :cond_10

    .line 54
    return v9

    .line 57
    :cond_10
    const/4 v4, 0x1

    .line 58
    .local v4, "generateCertOK":Z
    new-instance v7, Ljava/io/StringBufferInputStream;

    invoke-direct {v7, v2}, Ljava/io/StringBufferInputStream;-><init>(Ljava/lang/String;)V

    .line 59
    .local v7, "stringBufferInputStream":Ljava/io/StringBufferInputStream;
    new-instance v0, Landroid/util/Base64InputStream;

    invoke-direct {v0, v7, v9}, Landroid/util/Base64InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 61
    .local v0, "base64InputStream":Landroid/util/Base64InputStream;
    :try_start_1b
    const-string/jumbo v8, "X.509"

    invoke-static {v8}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 62
    .local v3, "certificateFactory":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v3, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    iput-object v8, p0, Lcom/lge/mirrorlink/certificate/ImportedDevCert;->mCert:Ljava/security/cert/X509Certificate;
    :try_end_2a
    .catch Ljava/security/cert/CertificateException; {:try_start_1b .. :try_end_2a} :catch_33

    .line 68
    .end local v3    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    :goto_2a
    :try_start_2a
    invoke-virtual {v7}, Ljava/io/StringBufferInputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_3f

    .line 73
    :goto_2d
    :try_start_2d
    iget-object v8, p0, Lcom/lge/mirrorlink/certificate/ImportedDevCert;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_32} :catch_4a

    .line 78
    :goto_32
    return v4

    .line 63
    :catch_33
    move-exception v1

    .line 64
    .local v1, "ce":Ljava/security/cert/CertificateException;
    const-string/jumbo v8, "MirrorLink_Cert"

    const-string/jumbo v9, "CertificateException happens !"

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const/4 v4, 0x0

    goto :goto_2a

    .line 69
    .end local v1    # "ce":Ljava/security/cert/CertificateException;
    :catch_3f
    move-exception v5

    .line 70
    .local v5, "ie":Ljava/io/IOException;
    const-string/jumbo v8, "MirrorLink_Cert"

    const-string/jumbo v9, "IOExeption happens !"

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    .line 74
    .end local v5    # "ie":Ljava/io/IOException;
    :catch_4a
    move-exception v6

    .line 75
    .local v6, "inputStreamException":Ljava/io/IOException;
    const-string/jumbo v8, "MirrorLink_Cert"

    const-string/jumbo v9, "IOException happens !"

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32
.end method

.method public loadSource()Z
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 31
    iget-object v2, p0, Lcom/lge/mirrorlink/certificate/ImportedDevCert;->mCertFileName:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 32
    return v5

    .line 36
    :cond_6
    :try_start_6
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "/data/misc/mirrorlink/"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/mirrorlink/certificate/ImportedDevCert;->mCertFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".crt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .local v0, "certFile":Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/lge/mirrorlink/certificate/ImportedDevCert;->mInputStream:Ljava/io/InputStream;
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_2b} :catch_2d

    .line 42
    const/4 v2, 0x1

    return v2

    .line 38
    .end local v0    # "certFile":Ljava/io/File;
    :catch_2d
    move-exception v1

    .line 39
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v2, "MirrorLink_Cert"

    const-string/jumbo v3, "FileNotFoundException happens !"

    invoke-static {v2, v3, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    return v5
.end method
