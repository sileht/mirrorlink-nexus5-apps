.class public abstract Lcom/lge/mirrorlink/certificate/CertificateBuilder;
.super Ljava/lang/Object;
.source "CertificateBuilder.java"


# static fields
.field public static final CERT_FILE_EXT:Ljava/lang/String; = ".crt"

.field public static final ML_CERT_FILE_PATH:Ljava/lang/String; = "/data/misc/mirrorlink/"

.field public static final TAG:Ljava/lang/String; = "MirrorLink_Cert"

.field private static final TCG_KP_AIK_CERTIFICATE_OID:Ljava/lang/String; = "2.23.133.8.3"


# instance fields
.field public mCert:Ljava/security/cert/X509Certificate;

.field public mCertFileName:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field public mInputStream:Ljava/io/InputStream;

.field public mRequireEKU:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/CertificateBuilder;->mContext:Landroid/content/Context;

    .line 21
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/CertificateBuilder;->mCertFileName:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/mirrorlink/certificate/CertificateBuilder;->mRequireEKU:Z

    .line 24
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/CertificateBuilder;->mInputStream:Ljava/io/InputStream;

    .line 25
    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/CertificateBuilder;->mCert:Ljava/security/cert/X509Certificate;

    .line 12
    return-void
.end method


# virtual methods
.method public abstract generateCert()Z
.end method

.method public getResult()Ljava/security/cert/X509Certificate;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/CertificateBuilder;->mCert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public abstract loadSource()Z
.end method

.method public verifyCert()Z
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 33
    iget-object v7, p0, Lcom/lge/mirrorlink/certificate/CertificateBuilder;->mCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    .line 34
    .local v5, "key":Ljava/security/PublicKey;
    const-string/jumbo v7, "X.509"

    invoke-interface {v5}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_33

    .line 35
    const-string/jumbo v7, "MirrorLink_Cert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unsupported public key encoding format: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v5}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return v10

    .line 39
    :cond_33
    const/4 v2, 0x0

    .line 40
    .local v2, "EKUMatched":Z
    iget-boolean v7, p0, Lcom/lge/mirrorlink/certificate/CertificateBuilder;->mRequireEKU:Z

    if-eqz v7, :cond_c5

    .line 41
    const/4 v0, 0x0

    .line 44
    .local v0, "EKUList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_39
    iget-object v7, p0, Lcom/lge/mirrorlink/certificate/CertificateBuilder;->mCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v0

    .line 45
    .local v0, "EKUList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_4b

    .line 46
    const-string/jumbo v7, "MirrorLink_Cert"

    const-string/jumbo v8, "No EKU(Extended Key Usage) in X.509 Certificate"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return v10

    .line 49
    :cond_4b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 51
    .local v1, "EKUListSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_50
    if-ge v4, v1, :cond_b7

    .line 52
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 53
    .local v6, "strEKU":Ljava/lang/String;
    if-nez v6, :cond_7e

    .line 54
    const-string/jumbo v7, "MirrorLink_Cert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unexpected EKU["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "] : null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :goto_7b
    add-int/lit8 v4, v4, 0x1

    goto :goto_50

    .line 55
    :cond_7e
    const-string/jumbo v7, "2.23.133.8.3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c3

    .line 56
    const-string/jumbo v7, "MirrorLink_Cert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unexpected EKU["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ac
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_39 .. :try_end_ac} :catch_ad

    goto :goto_7b

    .line 62
    .end local v0    # "EKUList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "EKUListSize":I
    .end local v4    # "i":I
    .end local v6    # "strEKU":Ljava/lang/String;
    :catch_ad
    move-exception v3

    .line 63
    .local v3, "e":Ljava/security/cert/CertificateParsingException;
    const-string/jumbo v7, "MirrorLink_Cert"

    const-string/jumbo v8, "Parsing EKU Failed"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .end local v3    # "e":Ljava/security/cert/CertificateParsingException;
    :cond_b7
    :goto_b7
    if-nez v2, :cond_c5

    .line 67
    const-string/jumbo v7, "MirrorLink_Cert"

    const-string/jumbo v8, "No proper EKU 2.23.133.8.3"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return v10

    .line 58
    .restart local v0    # "EKUList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "EKUListSize":I
    .restart local v4    # "i":I
    .restart local v6    # "strEKU":Ljava/lang/String;
    :cond_c3
    const/4 v2, 0x1

    .line 59
    goto :goto_b7

    .line 72
    .end local v0    # "EKUList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "EKUListSize":I
    .end local v4    # "i":I
    .end local v6    # "strEKU":Ljava/lang/String;
    :cond_c5
    const/4 v7, 0x1

    return v7
.end method
