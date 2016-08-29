.class public Lcom/lge/mirrorlink/certificate/CertificateManager;
.super Ljava/lang/Object;
.source "CertificateManager.java"


# static fields
.field public static final BEGIN_CERTIFICATE_STRING:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----"

.field private static final DEVICE_CERT_FILENAME:Ljava/lang/String; = "device_certificate"

.field private static final DEVICE_PRIVATE_KEY_FILENAME:Ljava/lang/String; = "dap_device_key"

.field private static final DEVICE_PRIVATE_KEY_PASSWORD:Ljava/lang/String; = "lge173205"

.field public static final END_CERTIFICATE_STRING:Ljava/lang/String; = "-----END CERTIFICATE-----"

.field public static final HASH_SHA256_OID:Ljava/lang/String; = "2.16.840.1.101.3.4.2.1"

.field private static final MANUFACTURER_CERT_FILENAME:Ljava/lang/String; = "manufacturer_certificate"

.field public static final MIRRORLINK_DEV_ID_OID:Ljava/lang/String; = "1.3.6.1.4.1.41577.3.1"

.field public static final MIRRORLINK_DEV_MANUFACTURER_IDS_OID:Ljava/lang/String; = "1.3.6.1.4.1.41577.3.3"

.field public static final MIRRORLINK_DEV_SERVER_IDS_OID:Ljava/lang/String; = "1.3.6.1.4.1.41577.3.2"

.field public static final MIRRORLINK_EXTENSION_OID:Ljava/lang/String; = "1.3.6.1.4.1.41577.2.1"

.field public static final MIRRORLINK_OCSP_BASEGRACE_OID:Ljava/lang/String; = "1.3.6.1.4.1.41577.1.3"

.field public static final MIRRORLINK_OCSP_DRIVEGRACE_OID:Ljava/lang/String; = "1.3.6.1.4.1.41577.1.2"

.field public static final MIRRORLINK_OCSP_QUERYPERIOD_OID:Ljava/lang/String; = "1.3.6.1.4.1.41577.1.1"

.field public static final OCSP_RESULT_FAIL:I = -0x1

.field public static final OCSP_RESULT_FAIL_RESPONSE:I = -0x4

.field public static final OCSP_RESULT_INTERNAL_ERROR:I = 0x2

.field public static final OCSP_RESULT_MALFORMED_REQUEST:I = 0x1

.field public static final OCSP_RESULT_REVOKED:I = -0x2

.field public static final OCSP_RESULT_SIGNATURE_FAILED:I = -0x7

.field public static final OCSP_RESULT_SIG_REQUIRED:I = 0x5

.field public static final OCSP_RESULT_SUCCESS:I = 0x0

.field public static final OCSP_RESULT_TRUST_CHAIN_FAILED:I = -0x6

.field public static final OCSP_RESULT_TRY_LATER:I = 0x3

.field public static final OCSP_RESULT_UNAUTHORIZED:I = 0x6

.field public static final OCSP_RESULT_UNKNOWN:I = -0x5

.field public static final OCSP_RESULT_WRONG_NONCE:I = -0x3

.field private static final TAG:Ljava/lang/String; = "MirrorLink_Cert"

.field public static final TCG_KP_AIK_CERTIFICATE_OID:Ljava/lang/String; = "2.23.133.8.3"

.field private static final TRUSTROOT_CERT_FILENAME:Ljava/lang/String; = "trust_root_certificate"

.field private static appPrivateKey:Ljava/security/interfaces/RSAPrivateKey;

.field private static appPublicKey:Ljava/security/interfaces/RSAPublicKey;

.field private static baseGrace:I

.field private static driveGrace:I

.field private static mContext:Landroid/content/Context;

.field private static mDAPNonce:Ljava/lang/String;

.field private static mOCSPSerial:I

.field private static mTrustRootCertAppCert:Ljava/security/cert/X509Certificate;

.field private static mTrustRootCertDAP:Ljava/security/cert/X509Certificate;

.field private static queryPeriod:I

.field private static sCertManager:Lcom/lge/mirrorlink/certificate/CertificateManager;


# instance fields
.field private mDeviceCert:Ljava/security/cert/X509Certificate;

.field private mDevicePrivateKey:Ljava/security/PrivateKey;

.field private mManufacturerCert:Ljava/security/cert/X509Certificate;

.field mTrustRootHashValue:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 121
    sput-object v1, Lcom/lge/mirrorlink/certificate/CertificateManager;->mTrustRootCertAppCert:Ljava/security/cert/X509Certificate;

    .line 122
    sput-object v1, Lcom/lge/mirrorlink/certificate/CertificateManager;->mTrustRootCertDAP:Ljava/security/cert/X509Certificate;

    .line 130
    sput-object v1, Lcom/lge/mirrorlink/certificate/CertificateManager;->appPrivateKey:Ljava/security/interfaces/RSAPrivateKey;

    .line 131
    sput-object v1, Lcom/lge/mirrorlink/certificate/CertificateManager;->appPublicKey:Ljava/security/interfaces/RSAPublicKey;

    .line 133
    const/4 v0, 0x1

    sput v0, Lcom/lge/mirrorlink/certificate/CertificateManager;->mOCSPSerial:I

    .line 134
    const/16 v0, 0xa8

    sput v0, Lcom/lge/mirrorlink/certificate/CertificateManager;->queryPeriod:I

    .line 135
    const/16 v0, 0x2d0

    sput v0, Lcom/lge/mirrorlink/certificate/CertificateManager;->driveGrace:I

    .line 136
    const/16 v0, 0x870

    sput v0, Lcom/lge/mirrorlink/certificate/CertificateManager;->baseGrace:I

    .line 140
    const-string/jumbo v0, ""

    sput-object v0, Lcom/lge/mirrorlink/certificate/CertificateManager;->mDAPNonce:Ljava/lang/String;

    .line 142
    sput-object v1, Lcom/lge/mirrorlink/certificate/CertificateManager;->sCertManager:Lcom/lge/mirrorlink/certificate/CertificateManager;

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object v0, p0, Lcom/lge/mirrorlink/certificate/CertificateManager;->mDevicePrivateKey:Ljava/security/PrivateKey;

    .line 119
    iput-object v0, p0, Lcom/lge/mirrorlink/certificate/CertificateManager;->mDeviceCert:Ljava/security/cert/X509Certificate;

    .line 120
    iput-object v0, p0, Lcom/lge/mirrorlink/certificate/CertificateManager;->mManufacturerCert:Ljava/security/cert/X509Certificate;

    .line 124
    iput-object v0, p0, Lcom/lge/mirrorlink/certificate/CertificateManager;->mTrustRootHashValue:[B

    .line 155
    sput-object p1, Lcom/lge/mirrorlink/certificate/CertificateManager;->mContext:Landroid/content/Context;

    .line 157
    invoke-direct {p0}, Lcom/lge/mirrorlink/certificate/CertificateManager;->loadCertificates()Z

    .line 159
    sget-object v0, Lcom/lge/mirrorlink/certificate/CertificateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;->getOCSPQueryPeriod(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/lge/mirrorlink/certificate/CertificateManager;->queryPeriod:I

    .line 160
    sget-object v0, Lcom/lge/mirrorlink/certificate/CertificateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;->getOCSPDriveGrace(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/lge/mirrorlink/certificate/CertificateManager;->driveGrace:I

    .line 161
    sget-object v0, Lcom/lge/mirrorlink/certificate/CertificateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;->getOCSPBaseGrace(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/lge/mirrorlink/certificate/CertificateManager;->baseGrace:I

    .line 163
    const-string/jumbo v0, "MirrorLink_Cert"

    const-string/jumbo v1, "CertificateManager loaded"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method private static checkTrustChain(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z
    .registers 12
    .param p0, "root"    # Ljava/security/cert/X509Certificate;
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 849
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    .line 851
    .local v4, "publicKey":Ljava/security/PublicKey;
    :try_start_5
    invoke-virtual {p1, v4}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_8
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_8} :catch_b3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_8} :catch_a8
    .catch Ljava/security/InvalidKeyException; {:try_start_5 .. :try_end_8} :catch_9d
    .catch Ljava/security/NoSuchProviderException; {:try_start_5 .. :try_end_8} :catch_92
    .catch Ljava/security/SignatureException; {:try_start_5 .. :try_end_8} :catch_3f

    .line 871
    const-string/jumbo v6, "MirrorLink_Cert"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v8

    invoke-interface {v8}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is verified by Trust Root("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 872
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v8

    invoke-interface {v8}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v8

    .line 871
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 872
    const-string/jumbo v8, ")"

    .line 871
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    const/4 v6, 0x1

    return v6

    .line 864
    :catch_3f
    move-exception v5

    .line 865
    .local v5, "se":Ljava/security/SignatureException;
    const-string/jumbo v6, "MirrorLink_Cert"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v8

    invoke-interface {v8}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "(Issuer:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v8

    invoke-interface {v8}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 866
    const-string/jumbo v8, ") is not verified by Root Certificate("

    .line 865
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 867
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v8

    invoke-interface {v8}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v8

    .line 865
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 867
    const-string/jumbo v8, ")"

    .line 865
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    const-string/jumbo v6, "MirrorLink_Cert"

    const-string/jumbo v7, "verify TrustChain by root:SignatureException:"

    invoke-static {v6, v7, v5}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 869
    return v9

    .line 861
    .end local v5    # "se":Ljava/security/SignatureException;
    :catch_92
    move-exception v3

    .line 862
    .local v3, "nspe":Ljava/security/NoSuchProviderException;
    const-string/jumbo v6, "MirrorLink_Cert"

    const-string/jumbo v7, "verify TrustChain by root:NoSuchProviderException:"

    invoke-static {v6, v7, v3}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 863
    return v9

    .line 858
    .end local v3    # "nspe":Ljava/security/NoSuchProviderException;
    :catch_9d
    move-exception v1

    .line 859
    .local v1, "ike":Ljava/security/InvalidKeyException;
    const-string/jumbo v6, "MirrorLink_Cert"

    const-string/jumbo v7, "verify TrustChain by root:InvalidKeyException:"

    invoke-static {v6, v7, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 860
    return v9

    .line 855
    .end local v1    # "ike":Ljava/security/InvalidKeyException;
    :catch_a8
    move-exception v2

    .line 856
    .local v2, "nsae":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v6, "MirrorLink_Cert"

    const-string/jumbo v7, "verify TrustChain by root:NoSuchAlgorithmException:"

    invoke-static {v6, v7, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 857
    return v9

    .line 852
    .end local v2    # "nsae":Ljava/security/NoSuchAlgorithmException;
    :catch_b3
    move-exception v0

    .line 853
    .local v0, "ce":Ljava/security/cert/CertificateException;
    const-string/jumbo v6, "MirrorLink_Cert"

    const-string/jumbo v7, "verify TrustChain by root:CertificateException:"

    invoke-static {v6, v7, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 854
    return v9
.end method

.method public static extractCertificates(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 8
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v6, 0x0

    .line 458
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 459
    .local v1, "dis":Ljava/io/DataInputStream;
    const/4 v0, 0x0

    .line 462
    :cond_7
    :goto_7
    :try_start_7
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 464
    .local v3, "line":Ljava/lang/String;
    if-nez v3, :cond_e

    .line 481
    .end local v3    # "line":Ljava/lang/String;
    :goto_d
    return-object v6

    .line 466
    .restart local v3    # "line":Ljava/lang/String;
    :cond_e
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_7

    .line 467
    const-string/jumbo v4, "-----BEGIN CERTIFICATE-----"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 468
    const-string/jumbo v0, ""

    .local v0, "certiString1":Ljava/lang/String;
    goto :goto_7

    .line 469
    .end local v0    # "certiString1":Ljava/lang/String;
    :cond_25
    const-string/jumbo v4, "-----END CERTIFICATE-----"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 470
    return-object v0

    .line 472
    :cond_2f
    if-eqz v0, :cond_7

    .line 473
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_45} :catch_47

    move-result-object v0

    .restart local v0    # "certiString1":Ljava/lang/String;
    goto :goto_7

    .line 477
    .end local v0    # "certiString1":Ljava/lang/String;
    .end local v3    # "line":Ljava/lang/String;
    :catch_47
    move-exception v2

    .line 478
    .local v2, "ioe":Ljava/io/IOException;
    const-string/jumbo v4, "MirrorLink_Cert"

    const-string/jumbo v5, "IOException in extractCertificates:"

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public static extractCertificatesDevCert(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 8
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v6, 0x0

    .line 486
    const-string/jumbo v4, "MirrorLink_Cert"

    const-string/jumbo v5, "extractCertificatesDevCert() start"

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 488
    .local v1, "dis":Ljava/io/DataInputStream;
    const/4 v0, 0x0

    .line 492
    :cond_10
    :goto_10
    :try_start_10
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_69

    move-result-object v3

    .line 494
    .local v3, "line":Ljava/lang/String;
    if-nez v3, :cond_20

    .line 512
    .end local v3    # "line":Ljava/lang/String;
    :goto_16
    const-string/jumbo v4, "MirrorLink_Cert"

    const-string/jumbo v5, "extractCertificatesDevCert() return null"

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    return-object v6

    .line 496
    .restart local v3    # "line":Ljava/lang/String;
    :cond_20
    :try_start_20
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_10

    .line 497
    const-string/jumbo v4, "-----BEGIN CERTIFICATE-----"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 498
    const-string/jumbo v0, ""

    .local v0, "certiStringPEM":Ljava/lang/String;
    goto :goto_10

    .line 499
    .end local v0    # "certiStringPEM":Ljava/lang/String;
    :cond_37
    const-string/jumbo v4, "-----END CERTIFICATE-----"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 500
    const-string/jumbo v4, "MirrorLink_Cert"

    const-string/jumbo v5, "extractCertificatesDevCert() return PEM certi String"

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    return-object v0

    .line 504
    :cond_4a
    if-eqz v0, :cond_10

    .line 505
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_67} :catch_69

    move-result-object v0

    .restart local v0    # "certiStringPEM":Ljava/lang/String;
    goto :goto_10

    .line 509
    .end local v0    # "certiStringPEM":Ljava/lang/String;
    .end local v3    # "line":Ljava/lang/String;
    :catch_69
    move-exception v2

    .line 510
    .local v2, "ioe":Ljava/io/IOException;
    const-string/jumbo v4, "MirrorLink_Cert"

    const-string/jumbo v5, "IOException in extractCertificates:"

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16
.end method

.method public static extractPrivateKey(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 9
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v7, 0x0

    .line 518
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 519
    .local v2, "dis":Ljava/io/DataInputStream;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 520
    .local v1, "certiStringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 523
    :cond_c
    :goto_c
    :try_start_c
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 525
    .local v4, "line":Ljava/lang/String;
    if-nez v4, :cond_13

    .line 544
    .end local v4    # "line":Ljava/lang/String;
    :goto_12
    return-object v7

    .line 527
    .restart local v4    # "line":Ljava/lang/String;
    :cond_13
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_c

    .line 528
    const-string/jumbo v5, "-----BEGIN PRIVATE KEY-----"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2f

    .line 529
    const-string/jumbo v5, "-----BEGIN RSA PRIVATE KEY-----"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 528
    if-eqz v5, :cond_33

    .line 530
    :cond_2f
    const-string/jumbo v0, ""

    .local v0, "certiString1":Ljava/lang/String;
    goto :goto_c

    .line 531
    .end local v0    # "certiString1":Ljava/lang/String;
    :cond_33
    const-string/jumbo v5, "-----END PRIVATE KEY-----"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_45

    .line 532
    const-string/jumbo v5, "-----END RSA PRIVATE KEY-----"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 531
    if-eqz v5, :cond_46

    .line 533
    :cond_45
    return-object v0

    .line 535
    :cond_46
    if-eqz v0, :cond_c

    .line 536
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_5c} :catch_5e

    move-result-object v0

    .restart local v0    # "certiString1":Ljava/lang/String;
    goto :goto_c

    .line 540
    .end local v0    # "certiString1":Ljava/lang/String;
    .end local v4    # "line":Ljava/lang/String;
    :catch_5e
    move-exception v3

    .line 541
    .local v3, "ioe":Ljava/io/IOException;
    const-string/jumbo v5, "MirrorLink_Cert"

    const-string/jumbo v6, "IOException in extractPrivateKey:"

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method

.method public static generateOCSPRequest(Ljava/security/cert/X509Certificate;Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .registers 14
    .param p0, "issuerCert"    # Ljava/security/cert/X509Certificate;
    .param p1, "serialNumber"    # Ljava/math/BigInteger;
    .param p2, "nonce"    # Ljava/math/BigInteger;

    .prologue
    .line 820
    :try_start_0
    new-instance v2, Lorg/bouncycastle/ocsp/CertificateID;

    const-string/jumbo v8, "2.16.840.1.101.3.4.2.1"

    invoke-direct {v2, v8, p0, p1}, Lorg/bouncycastle/ocsp/CertificateID;-><init>(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/math/BigInteger;)V

    .line 822
    .local v2, "id":Lorg/bouncycastle/ocsp/CertificateID;
    new-instance v0, Lorg/bouncycastle/ocsp/OCSPReqGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/ocsp/OCSPReqGenerator;-><init>()V

    .line 824
    .local v0, "gen":Lorg/bouncycastle/ocsp/OCSPReqGenerator;
    invoke-virtual {v0, v2}, Lorg/bouncycastle/ocsp/OCSPReqGenerator;->addRequest(Lorg/bouncycastle/ocsp/CertificateID;)V

    .line 826
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 827
    .local v5, "oids":Ljava/util/Vector;
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 829
    .local v7, "values":Ljava/util/Vector;
    sget-object v8, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_nonce:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 830
    new-instance v8, Lorg/bouncycastle/asn1/x509/X509Extension;

    new-instance v9, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    const/4 v10, 0x0

    invoke-direct {v8, v10, v9}, Lorg/bouncycastle/asn1/x509/X509Extension;-><init>(ZLorg/bouncycastle/asn1/ASN1OctetString;)V

    invoke-virtual {v7, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 832
    const-string/jumbo v8, "MirrorLink_Cert"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "OCSP nonce:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x10

    invoke-virtual {p2, v10}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    new-instance v8, Lorg/bouncycastle/asn1/x509/X509Extensions;

    invoke-direct {v8, v5, v7}, Lorg/bouncycastle/asn1/x509/X509Extensions;-><init>(Ljava/util/Vector;Ljava/util/Vector;)V

    invoke-virtual {v0, v8}, Lorg/bouncycastle/ocsp/OCSPReqGenerator;->setRequestExtensions(Lorg/bouncycastle/asn1/x509/X509Extensions;)V

    .line 835
    invoke-virtual {v0}, Lorg/bouncycastle/ocsp/OCSPReqGenerator;->generate()Lorg/bouncycastle/ocsp/OCSPReq;

    move-result-object v6

    .line 837
    .local v6, "req":Lorg/bouncycastle/ocsp/OCSPReq;
    invoke-virtual {v6}, Lorg/bouncycastle/ocsp/OCSPReq;->getEncoded()[B
    :try_end_60
    .catch Lorg/bouncycastle/ocsp/OCSPException; {:try_start_0 .. :try_end_60} :catch_79
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_60} :catch_6e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_60} :catch_62

    move-result-object v8

    return-object v8

    .line 842
    .end local v0    # "gen":Lorg/bouncycastle/ocsp/OCSPReqGenerator;
    .end local v2    # "id":Lorg/bouncycastle/ocsp/CertificateID;
    .end local v5    # "oids":Ljava/util/Vector;
    .end local v6    # "req":Lorg/bouncycastle/ocsp/OCSPReq;
    .end local v7    # "values":Ljava/util/Vector;
    :catch_62
    move-exception v1

    .line 843
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v8, "MirrorLink_Cert"

    const-string/jumbo v9, "IllegalArgumentException:"

    invoke-static {v8, v9, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 845
    .end local v1    # "iae":Ljava/lang/IllegalArgumentException;
    :goto_6c
    const/4 v8, 0x0

    return-object v8

    .line 840
    :catch_6e
    move-exception v3

    .line 841
    .local v3, "ioe":Ljava/io/IOException;
    const-string/jumbo v8, "MirrorLink_Cert"

    const-string/jumbo v9, "IOException:"

    invoke-static {v8, v9, v3}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6c

    .line 838
    .end local v3    # "ioe":Ljava/io/IOException;
    :catch_79
    move-exception v4

    .line 839
    .local v4, "ocspe":Lorg/bouncycastle/ocsp/OCSPException;
    const-string/jumbo v8, "MirrorLink_Cert"

    const-string/jumbo v9, "OCSPException:"

    invoke-static {v8, v9, v4}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6c
.end method

.method public static generateXmlDigest(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "xml_Root"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 348
    if-nez p0, :cond_4

    .line 349
    return-object v6

    .line 353
    :cond_4
    const/4 v2, 0x0

    .line 356
    .local v2, "theDigest":[B
    :try_start_5
    const-string/jumbo v4, "SHA-1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 357
    .local v0, "digester":Ljava/security/MessageDigest;
    const-string/jumbo v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 358
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_19
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_19} :catch_28
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_19} :catch_1d

    move-result-object v2

    .line 365
    .end local v0    # "digester":Ljava/security/MessageDigest;
    .end local v2    # "theDigest":[B
    :goto_1a
    if-nez v2, :cond_33

    .line 366
    return-object v6

    .line 361
    .restart local v2    # "theDigest":[B
    :catch_1d
    move-exception v3

    .line 362
    .local v3, "uee":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v4, "MirrorLink_Cert"

    const-string/jumbo v5, "generateXmlSignature digest Failed:"

    invoke-static {v4, v5, v3}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a

    .line 359
    .end local v3    # "uee":Ljava/io/UnsupportedEncodingException;
    :catch_28
    move-exception v1

    .line 360
    .local v1, "nsae":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v4, "MirrorLink_Cert"

    const-string/jumbo v5, "generateXmlSignature digest Failed:"

    invoke-static {v4, v5, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a

    .line 369
    .end local v1    # "nsae":Ljava/security/NoSuchAlgorithmException;
    .end local v2    # "theDigest":[B
    :cond_33
    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static generateXmlSignature(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "xml_SignedInfo"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 374
    sget-object v6, Lcom/lge/mirrorlink/certificate/CertificateManager;->appPrivateKey:Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v6, :cond_a

    sget-object v6, Lcom/lge/mirrorlink/certificate/CertificateManager;->appPublicKey:Ljava/security/interfaces/RSAPublicKey;

    if-nez v6, :cond_b

    .line 375
    :cond_a
    return-object v9

    .line 374
    :cond_b
    if-eqz p0, :cond_a

    .line 378
    const-string/jumbo v6, "MirrorLink_Cert"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "priKey:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/lge/mirrorlink/certificate/CertificateManager;->appPrivateKey:Ljava/security/interfaces/RSAPrivateKey;

    invoke-interface {v8}, Ljava/security/interfaces/RSAPrivateKey;->getEncoded()[B

    move-result-object v8

    invoke-static {v8, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string/jumbo v6, "MirrorLink_Cert"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pubKey:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/lge/mirrorlink/certificate/CertificateManager;->appPublicKey:Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v8}, Ljava/security/interfaces/RSAPublicKey;->getEncoded()[B

    move-result-object v8

    invoke-static {v8, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const/4 v4, 0x0

    .line 386
    .local v4, "theSignature":[B
    :try_start_56
    const-string/jumbo v6, "SHA1withRSA"

    invoke-static {v6}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v3

    .line 387
    .local v3, "signer":Ljava/security/Signature;
    sget-object v6, Lcom/lge/mirrorlink/certificate/CertificateManager;->appPrivateKey:Ljava/security/interfaces/RSAPrivateKey;

    invoke-virtual {v3, v6}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 388
    const-string/jumbo v6, "UTF-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/security/Signature;->update([B)V

    .line 389
    invoke-virtual {v3}, Ljava/security/Signature;->sign()[B

    move-result-object v4

    .line 390
    .local v4, "theSignature":[B
    const-string/jumbo v6, "theSignature ---> "

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_56 .. :try_end_7a} :catch_9e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_56 .. :try_end_7a} :catch_93
    .catch Ljava/security/InvalidKeyException; {:try_start_56 .. :try_end_7a} :catch_88
    .catch Ljava/security/SignatureException; {:try_start_56 .. :try_end_7a} :catch_7d

    .line 401
    .end local v3    # "signer":Ljava/security/Signature;
    .end local v4    # "theSignature":[B
    :goto_7a
    if-nez v4, :cond_a9

    .line 402
    return-object v9

    .line 397
    :catch_7d
    move-exception v2

    .line 398
    .local v2, "se":Ljava/security/SignatureException;
    const-string/jumbo v6, "MirrorLink_Cert"

    const-string/jumbo v7, "generateXmlSignature sign Failed:"

    invoke-static {v6, v7, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7a

    .line 395
    .end local v2    # "se":Ljava/security/SignatureException;
    :catch_88
    move-exception v1

    .line 396
    .local v1, "ike":Ljava/security/InvalidKeyException;
    const-string/jumbo v6, "MirrorLink_Cert"

    const-string/jumbo v7, "generateXmlSignature sign Failed:"

    invoke-static {v6, v7, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7a

    .line 393
    .end local v1    # "ike":Ljava/security/InvalidKeyException;
    :catch_93
    move-exception v0

    .line 394
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v6, "MirrorLink_Cert"

    const-string/jumbo v7, "generateXmlSignature sign Failed:"

    invoke-static {v6, v7, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7a

    .line 391
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_9e
    move-exception v5

    .line 392
    .local v5, "uee":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v6, "MirrorLink_Cert"

    const-string/jumbo v7, "generateXmlSignature digest Failed:"

    invoke-static {v6, v7, v5}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7a

    .line 429
    .end local v5    # "uee":Ljava/io/UnsupportedEncodingException;
    :cond_a9
    invoke-static {v4, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static getAlias(Ljava/security/KeyStore;)Ljava/lang/String;
    .registers 9
    .param p0, "ks"    # Ljava/security/KeyStore;

    .prologue
    .line 619
    const-string/jumbo v0, ""

    .line 622
    .local v0, "ALIAS":Ljava/lang/String;
    :try_start_3
    invoke-virtual {p0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v2

    .line 623
    .local v2, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 625
    .local v5, "vectaliases":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :goto_c
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_27

    .line 626
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_1b} :catch_1c

    goto :goto_c

    .line 636
    .end local v2    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v5    # "vectaliases":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :catch_1c
    move-exception v4

    .line 637
    .local v4, "kse":Ljava/security/KeyStoreException;
    const-string/jumbo v6, "MirrorLink_Cert"

    const-string/jumbo v7, "getAlias : KeyStoreException "

    invoke-static {v6, v7, v4}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 640
    .end local v4    # "kse":Ljava/security/KeyStoreException;
    :cond_26
    :goto_26
    return-object v0

    .line 629
    .restart local v2    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v5    # "vectaliases":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_27
    const/4 v6, 0x0

    :try_start_28
    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 630
    .local v1, "aliases":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_31
    array-length v6, v1

    if-ge v3, v6, :cond_26

    .line 631
    aget-object v6, v1, v3

    invoke-virtual {p0, v6}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 632
    aget-object v0, v1, v3
    :try_end_3e
    .catch Ljava/security/KeyStoreException; {:try_start_28 .. :try_end_3e} :catch_1c

    goto :goto_26

    .line 630
    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_31
.end method

.method public static getBaseGrace()I
    .registers 1

    .prologue
    .line 1045
    sget v0, Lcom/lge/mirrorlink/certificate/CertificateManager;->baseGrace:I

    return v0
.end method

.method public static getDAPNonce()Ljava/lang/String;
    .registers 1

    .prologue
    .line 453
    sget-object v0, Lcom/lge/mirrorlink/certificate/CertificateManager;->mDAPNonce:Ljava/lang/String;

    return-object v0
.end method

.method public static getDriveGrace()I
    .registers 1

    .prologue
    .line 1040
    sget v0, Lcom/lge/mirrorlink/certificate/CertificateManager;->driveGrace:I

    return v0
.end method

.method private getHashValue(Ljava/security/cert/X509Certificate;)[B
    .registers 8
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 733
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    .line 734
    .local v3, "publicKey":Ljava/security/PublicKey;
    invoke-interface {v3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 735
    .local v0, "bytesPK":[B
    const-string/jumbo v4, "SHA-256"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 736
    .local v2, "md":Ljava/security/MessageDigest;
    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 737
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B
    :try_end_15
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_15} :catch_17

    move-result-object v4

    return-object v4

    .line 738
    .end local v0    # "bytesPK":[B
    .end local v2    # "md":Ljava/security/MessageDigest;
    .end local v3    # "publicKey":Ljava/security/PublicKey;
    :catch_17
    move-exception v1

    .line 739
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v4, "MirrorLink_Cert"

    const-string/jumbo v5, "testVertification : Unexpected Error - SHA-256 Not supported"

    invoke-static {v4, v5, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 741
    const/4 v4, 0x0

    return-object v4
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/mirrorlink/certificate/CertificateManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    sget-object v0, Lcom/lge/mirrorlink/certificate/CertificateManager;->sCertManager:Lcom/lge/mirrorlink/certificate/CertificateManager;

    if-nez v0, :cond_b

    .line 147
    new-instance v0, Lcom/lge/mirrorlink/certificate/CertificateManager;

    invoke-direct {v0, p0}, Lcom/lge/mirrorlink/certificate/CertificateManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/mirrorlink/certificate/CertificateManager;->sCertManager:Lcom/lge/mirrorlink/certificate/CertificateManager;

    .line 149
    :cond_b
    sget-object v0, Lcom/lge/mirrorlink/certificate/CertificateManager;->sCertManager:Lcom/lge/mirrorlink/certificate/CertificateManager;

    return-object v0
.end method

.method public static getQueryPeriod()I
    .registers 1

    .prologue
    .line 1035
    sget v0, Lcom/lge/mirrorlink/certificate/CertificateManager;->queryPeriod:I

    return v0
.end method

.method private static loadApplicationKeyPair()V
    .registers 5

    .prologue
    .line 436
    :try_start_0
    const-string/jumbo v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    .line 437
    .local v1, "keyGen":Ljava/security/KeyPairGenerator;
    const/16 v3, 0x400

    invoke-virtual {v1, v3}, Ljava/security/KeyPairGenerator;->initialize(I)V

    .line 438
    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->genKeyPair()Ljava/security/KeyPair;

    move-result-object v2

    .line 439
    .local v2, "keypair":Ljava/security/KeyPair;
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    check-cast v3, Ljava/security/interfaces/RSAPrivateKey;

    sput-object v3, Lcom/lge/mirrorlink/certificate/CertificateManager;->appPrivateKey:Ljava/security/interfaces/RSAPrivateKey;

    .line 440
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v3

    check-cast v3, Ljava/security/interfaces/RSAPublicKey;

    sput-object v3, Lcom/lge/mirrorlink/certificate/CertificateManager;->appPublicKey:Ljava/security/interfaces/RSAPublicKey;
    :try_end_20
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_20} :catch_21

    .line 432
    .end local v2    # "keypair":Ljava/security/KeyPair;
    :goto_20
    return-void

    .line 441
    :catch_21
    move-exception v0

    .line 442
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v3, "MirrorLink_Cert"

    const-string/jumbo v4, "loadApplicationKeyPair Failed:"

    invoke-static {v3, v4, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_20
.end method

.method private static loadCertificateFromCert(Landroid/content/Context;Ljava/lang/String;Z)Ljava/security/cert/X509Certificate;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "certFileName"    # Ljava/lang/String;
    .param p2, "requireEKU"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 708
    const/4 v0, 0x0

    .line 709
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const/4 v3, 0x0

    .line 711
    .local v3, "is":Ljava/io/InputStream;
    :try_start_3
    invoke-static {p0, p1}, Lcom/lge/mirrorlink/certificate/CertificateManager;->openRawResourceFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 712
    .local v3, "is":Ljava/io/InputStream;
    const-string/jumbo v4, "X.509"

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 713
    .local v1, "certificateFactory":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_22

    .line 715
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v3, :cond_19

    .line 717
    :try_start_16
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_20

    .line 723
    :cond_19
    :goto_19
    invoke-static {v0, p2, p1}, Lcom/lge/mirrorlink/certificate/CertificateManager;->verifyCertificate(Ljava/security/cert/X509Certificate;ZLjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 724
    return-object v5

    .line 718
    :catch_20
    move-exception v2

    .local v2, "ie":Ljava/io/IOException;
    goto :goto_19

    .line 714
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v2    # "ie":Ljava/io/IOException;
    .end local v3    # "is":Ljava/io/InputStream;
    :catchall_22
    move-exception v4

    .line 715
    if-eqz v3, :cond_28

    .line 717
    :try_start_25
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29

    .line 714
    :cond_28
    :goto_28
    throw v4

    .line 718
    :catch_29
    move-exception v2

    .restart local v2    # "ie":Ljava/io/IOException;
    goto :goto_28

    .line 727
    .end local v2    # "ie":Ljava/io/IOException;
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v1    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .restart local v3    # "is":Ljava/io/InputStream;
    :cond_2b
    return-object v0
.end method

.method private static loadCertificateFromPEM(Landroid/content/Context;Ljava/lang/String;Z)Ljava/security/cert/X509Certificate;
    .registers 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "certFileName"    # Ljava/lang/String;
    .param p2, "requireEKU"    # Z

    .prologue
    const/4 v13, 0x0

    .line 668
    const/4 v2, 0x0

    .line 669
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    const/4 v8, 0x0

    .line 671
    .local v8, "is":Ljava/io/InputStream;
    :try_start_3
    invoke-static {p0, p1}, Lcom/lge/mirrorlink/certificate/CertificateManager;->openRawResourceFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 673
    .local v8, "is":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 674
    .local v3, "certiString":Ljava/lang/String;
    invoke-static {v8}, Lcom/lge/mirrorlink/certificate/CertificateManager;->extractCertificates(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .local v3, "certiString":Ljava/lang/String;
    if-eqz v3, :cond_2b

    .line 675
    new-instance v9, Ljava/io/StringBufferInputStream;

    invoke-direct {v9, v3}, Ljava/io/StringBufferInputStream;-><init>(Ljava/lang/String;)V

    .line 677
    .local v9, "sbis":Ljava/io/StringBufferInputStream;
    new-instance v1, Landroid/util/Base64InputStream;

    const/4 v10, 0x0

    invoke-direct {v1, v9, v10}, Landroid/util/Base64InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 679
    .local v1, "b64is":Landroid/util/Base64InputStream;
    const-string/jumbo v10, "X.509"

    invoke-static {v10}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v4

    .line 680
    .local v4, "certificateFactory":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v4, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v2, v0
    :try_end_28
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_28} :catch_3d
    .catchall {:try_start_3 .. :try_end_28} :catchall_67

    .line 683
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    :try_start_28
    invoke-virtual {v9}, Ljava/io/StringBufferInputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_39
    .catch Ljava/security/cert/CertificateException; {:try_start_28 .. :try_end_2b} :catch_3d
    .catchall {:try_start_28 .. :try_end_2b} :catchall_67

    .line 690
    .end local v1    # "b64is":Landroid/util/Base64InputStream;
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .end local v4    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v9    # "sbis":Ljava/io/StringBufferInputStream;
    :cond_2b
    :goto_2b
    if-eqz v8, :cond_30

    .line 692
    :try_start_2d
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_3b

    .line 698
    .end local v3    # "certiString":Ljava/lang/String;
    .end local v8    # "is":Ljava/io/InputStream;
    :cond_30
    :goto_30
    move/from16 v0, p2

    invoke-static {v2, v0, p1}, Lcom/lge/mirrorlink/certificate/CertificateManager;->verifyCertificate(Ljava/security/cert/X509Certificate;ZLjava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_70

    .line 699
    return-object v13

    .line 684
    .restart local v1    # "b64is":Landroid/util/Base64InputStream;
    .restart local v2    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v3    # "certiString":Ljava/lang/String;
    .restart local v4    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .restart local v8    # "is":Ljava/io/InputStream;
    .restart local v9    # "sbis":Ljava/io/StringBufferInputStream;
    :catch_39
    move-exception v7

    .local v7, "ioe":Ljava/io/IOException;
    goto :goto_2b

    .line 693
    .end local v1    # "b64is":Landroid/util/Base64InputStream;
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .end local v4    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v7    # "ioe":Ljava/io/IOException;
    .end local v9    # "sbis":Ljava/io/StringBufferInputStream;
    :catch_3b
    move-exception v6

    .local v6, "ie":Ljava/io/IOException;
    goto :goto_30

    .line 687
    .end local v3    # "certiString":Ljava/lang/String;
    .end local v6    # "ie":Ljava/io/IOException;
    .end local v8    # "is":Ljava/io/InputStream;
    :catch_3d
    move-exception v5

    .line 688
    .local v5, "e":Ljava/security/cert/CertificateException;
    :try_start_3e
    const-string/jumbo v11, "MirrorLink_Cert"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "loadCertificateFromPEM : Fail to load "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez p1, :cond_65

    const-string/jumbo v10, "null"

    :goto_52
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5d
    .catchall {:try_start_3e .. :try_end_5d} :catchall_67

    .line 690
    if-eqz v8, :cond_30

    .line 692
    :try_start_5f
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_63

    goto :goto_30

    .line 693
    :catch_63
    move-exception v6

    .restart local v6    # "ie":Ljava/io/IOException;
    goto :goto_30

    .end local v6    # "ie":Ljava/io/IOException;
    :cond_65
    move-object v10, p1

    .line 688
    goto :goto_52

    .line 689
    .end local v5    # "e":Ljava/security/cert/CertificateException;
    :catchall_67
    move-exception v10

    .line 690
    if-eqz v8, :cond_6d

    .line 692
    :try_start_6a
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6e

    .line 689
    :cond_6d
    :goto_6d
    throw v10

    .line 693
    :catch_6e
    move-exception v6

    .restart local v6    # "ie":Ljava/io/IOException;
    goto :goto_6d

    .line 702
    .end local v6    # "ie":Ljava/io/IOException;
    :cond_70
    return-object v2
.end method

.method private loadCertificates()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 168
    new-instance v0, Lcom/lge/mirrorlink/certificate/DeviceCertImporter;

    sget-object v1, Lcom/lge/mirrorlink/certificate/CertificateManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/mirrorlink/certificate/DeviceCertImporter;-><init>(Landroid/content/Context;)V

    .line 174
    .local v0, "deviceCertImporter":Lcom/lge/mirrorlink/certificate/DeviceCertImporter;
    sget-object v1, Lcom/lge/mirrorlink/certificate/CertificateManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "trust_root_certificate"

    invoke-static {v1, v2, v4}, Lcom/lge/mirrorlink/certificate/CertificateManager;->loadCertificateFromPEM(Landroid/content/Context;Ljava/lang/String;Z)Ljava/security/cert/X509Certificate;

    move-result-object v1

    sput-object v1, Lcom/lge/mirrorlink/certificate/CertificateManager;->mTrustRootCertDAP:Ljava/security/cert/X509Certificate;

    .line 178
    sget-object v1, Lcom/lge/mirrorlink/certificate/CertificateManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "trust_root_certificate_cts"

    invoke-static {v1, v2, v4}, Lcom/lge/mirrorlink/certificate/CertificateManager;->loadCertificateFromPEM(Landroid/content/Context;Ljava/lang/String;Z)Ljava/security/cert/X509Certificate;

    move-result-object v1

    sput-object v1, Lcom/lge/mirrorlink/certificate/CertificateManager;->mTrustRootCertAppCert:Ljava/security/cert/X509Certificate;

    .line 183
    sget-object v1, Lcom/lge/mirrorlink/certificate/CertificateManager;->mTrustRootCertDAP:Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_27

    sget-object v1, Lcom/lge/mirrorlink/certificate/CertificateManager;->mTrustRootCertAppCert:Ljava/security/cert/X509Certificate;

    if-nez v1, :cond_31

    .line 184
    :cond_27
    const-string/jumbo v1, "MirrorLink_Cert"

    const-string/jumbo v2, "Unexpected Error : Fail to load the trust root certificate"

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return v4

    .line 188
    :cond_31
    sget-object v1, Lcom/lge/mirrorlink/certificate/CertificateManager;->mTrustRootCertDAP:Ljava/security/cert/X509Certificate;

    invoke-direct {p0, v1}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getHashValue(Ljava/security/cert/X509Certificate;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/CertificateManager;->mTrustRootHashValue:[B

    .line 189
    iget-object v1, p0, Lcom/lge/mirrorlink/certificate/CertificateManager;->mTrustRootHashValue:[B

    if-nez v1, :cond_47

    .line 190
    const-string/jumbo v1, "MirrorLink_Cert"

    const-string/jumbo v2, "Unexpected Error : Fail to get hash value of root certificate"

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return v4

    .line 194
    :cond_47
    const-string/jumbo v1, "MirrorLink_Cert"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "success to load Trust Root Certificate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/mirrorlink/certificate/CertificateManager;->mTrustRootHashValue:[B

    invoke-static {v3}, Lcom/lge/mirrorlink/common/ExtLog;->BytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    if-eqz v0, :cond_72

    .line 202
    const-string/jumbo v1, "device_certificate"

    invoke-virtual {v0, v1, v5}, Lcom/lge/mirrorlink/certificate/DeviceCertImporter;->importCert(Ljava/lang/String;Z)Ljava/security/cert/X509Certificate;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/CertificateManager;->mDeviceCert:Ljava/security/cert/X509Certificate;

    .line 204
    :cond_72
    iget-object v1, p0, Lcom/lge/mirrorlink/certificate/CertificateManager;->mDeviceCert:Ljava/security/cert/X509Certificate;

    if-nez v1, :cond_81

    .line 205
    sget-object v1, Lcom/lge/mirrorlink/certificate/CertificateManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "device_certificate"

    invoke-static {v1, v2, v5}, Lcom/lge/mirrorlink/certificate/CertificateManager;->loadCertificateFromPEM(Landroid/content/Context;Ljava/lang/String;Z)Ljava/security/cert/X509Certificate;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/CertificateManager;->mDeviceCert:Ljava/security/cert/X509Certificate;

    .line 209
    :cond_81
    iget-object v1, p0, Lcom/lge/mirrorlink/certificate/CertificateManager;->mDeviceCert:Ljava/security/cert/X509Certificate;

    if-nez v1, :cond_8f

    .line 210
    const-string/jumbo v1, "MirrorLink_Cert"

    const-string/jumbo v2, "Unexpected Error : Fail to load the device certificate"

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return v4

    .line 213
    :cond_8f
    const-string/jumbo v1, "MirrorLink_Cert"

    const-string/jumbo v2, "success to load Device Certificate"

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    if-eqz v0, :cond_a3

    .line 237
    const-string/jumbo v1, "manufacturer_certificate"

    invoke-virtual {v0, v1, v4}, Lcom/lge/mirrorlink/certificate/DeviceCertImporter;->importCert(Ljava/lang/String;Z)Ljava/security/cert/X509Certificate;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/CertificateManager;->mManufacturerCert:Ljava/security/cert/X509Certificate;

    .line 239
    :cond_a3
    iget-object v1, p0, Lcom/lge/mirrorlink/certificate/CertificateManager;->mManufacturerCert:Ljava/security/cert/X509Certificate;

    if-nez v1, :cond_b2

    .line 240
    sget-object v1, Lcom/lge/mirrorlink/certificate/CertificateManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "manufacturer_certificate"

    invoke-static {v1, v2, v4}, Lcom/lge/mirrorlink/certificate/CertificateManager;->loadCertificateFromPEM(Landroid/content/Context;Ljava/lang/String;Z)Ljava/security/cert/X509Certificate;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/CertificateManager;->mManufacturerCert:Ljava/security/cert/X509Certificate;

    .line 244
    :cond_b2
    iget-object v1, p0, Lcom/lge/mirrorlink/certificate/CertificateManager;->mManufacturerCert:Ljava/security/cert/X509Certificate;

    if-nez v1, :cond_c0

    .line 245
    const-string/jumbo v1, "MirrorLink_Cert"

    const-string/jumbo v2, "Unexpected Error : Fail to load the manufacturer certificate"

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return v4

    .line 248
    :cond_c0
    const-string/jumbo v1, "MirrorLink_Cert"

    const-string/jumbo v2, "success to load Manufacturer Certificate"

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-static {}, Lcom/lge/mirrorlink/certificate/CertificateManager;->loadApplicationKeyPair()V

    .line 252
    return v5
.end method

.method private static loadKeyStoreFromPFX(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "keyFile"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 645
    invoke-static {p0, p1}, Lcom/lge/mirrorlink/certificate/CertificateManager;->openRawResourceFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 647
    .local v5, "is":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 648
    .local v6, "kstore":Ljava/security/KeyStore;
    const/4 v0, 0x0

    .line 650
    .local v0, "chPassword":[C
    :try_start_6
    const-string/jumbo v7, "PKCS12"

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .line 651
    .local v6, "kstore":Ljava/security/KeyStore;
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 652
    .local v0, "chPassword":[C
    invoke-virtual {v6, v5, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_14
    .catch Ljava/security/KeyStoreException; {:try_start_6 .. :try_end_14} :catch_76
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_14} :catch_56
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_14} :catch_36
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_14} :catch_15

    .line 653
    return-object v6

    .line 660
    .end local v0    # "chPassword":[C
    .end local v6    # "kstore":Ljava/security/KeyStore;
    :catch_15
    move-exception v1

    .line 661
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v7, "MirrorLink_Cert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "loadKeyStoreFromPFX:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 663
    .end local v1    # "e":Ljava/io/IOException;
    :goto_34
    const/4 v7, 0x0

    return-object v7

    .line 658
    :catch_36
    move-exception v4

    .line 659
    .local v4, "e":Ljava/security/cert/CertificateException;
    const-string/jumbo v7, "MirrorLink_Cert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "loadKeyStoreFromPFX:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_34

    .line 656
    .end local v4    # "e":Ljava/security/cert/CertificateException;
    :catch_56
    move-exception v3

    .line 657
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v7, "MirrorLink_Cert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "loadKeyStoreFromPFX:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_34

    .line 654
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_76
    move-exception v2

    .line 655
    .local v2, "e":Ljava/security/KeyStoreException;
    const-string/jumbo v7, "MirrorLink_Cert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "loadKeyStoreFromPFX:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/security/KeyStoreException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_34
.end method

.method private static loadPrivateKeyFromPEM(Landroid/content/Context;Ljava/lang/String;)Ljava/security/PrivateKey;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "keyFile"    # Ljava/lang/String;

    .prologue
    .line 549
    const/4 v6, 0x0

    .line 550
    .local v6, "privateKey":Ljava/security/PrivateKey;
    const/4 v3, 0x0

    .line 553
    .local v3, "is":Ljava/io/InputStream;
    :try_start_2
    invoke-static {p0, p1}, Lcom/lge/mirrorlink/certificate/CertificateManager;->openRawResourceFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 555
    .local v3, "is":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 556
    .local v0, "certiString":Ljava/lang/String;
    invoke-static {v3}, Lcom/lge/mirrorlink/certificate/CertificateManager;->extractPrivateKey(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .local v0, "certiString":Ljava/lang/String;
    if-eqz v0, :cond_5c

    .line 557
    const/4 v9, 0x0

    invoke-static {v0, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    .line 560
    .local v7, "privateKeyBytes":[B
    const-string/jumbo v9, "RSA"

    invoke-static {v9}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 561
    .local v4, "keyFactory":Ljava/security/KeyFactory;
    new-instance v8, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v8, v7}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 562
    .local v8, "privateKeySpec":Ljava/security/spec/KeySpec;
    invoke-virtual {v4, v8}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v6

    .line 564
    .local v6, "privateKey":Ljava/security/PrivateKey;
    const-string/jumbo v9, "MirrorLink_Cert"

    const-string/jumbo v10, "loadPrivateKey ----------------------------------"

    invoke-static {v9, v10}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string/jumbo v9, "MirrorLink_Cert"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "privateKey format"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v6}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string/jumbo v9, "MirrorLink_Cert"

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const-string/jumbo v9, "MirrorLink_Cert"

    const-string/jumbo v10, "-------------------------------------------------"

    invoke-static {v9, v10}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_5c} :catch_8c
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_5c} :catch_64
    .catchall {:try_start_2 .. :try_end_5c} :catchall_b4

    .line 574
    .end local v4    # "keyFactory":Ljava/security/KeyFactory;
    .end local v6    # "privateKey":Ljava/security/PrivateKey;
    .end local v7    # "privateKeyBytes":[B
    .end local v8    # "privateKeySpec":Ljava/security/spec/KeySpec;
    :cond_5c
    if-eqz v3, :cond_61

    .line 576
    :try_start_5e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    .line 582
    .end local v0    # "certiString":Ljava/lang/String;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local p1    # "keyFile":Ljava/lang/String;
    :cond_61
    :goto_61
    return-object v6

    .line 577
    .restart local v0    # "certiString":Ljava/lang/String;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local p1    # "keyFile":Ljava/lang/String;
    :catch_62
    move-exception v1

    .local v1, "ie":Ljava/io/IOException;
    goto :goto_61

    .line 571
    .end local v0    # "certiString":Ljava/lang/String;
    .end local v1    # "ie":Ljava/io/IOException;
    .end local v3    # "is":Ljava/io/InputStream;
    :catch_64
    move-exception v2

    .line 572
    .local v2, "ikse":Ljava/security/spec/InvalidKeySpecException;
    :try_start_65
    const-string/jumbo v9, "MirrorLink_Cert"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "loadPrivateKeyFromPEM : Fail to load "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez p1, :cond_79

    const-string/jumbo p1, "null"

    .end local p1    # "keyFile":Ljava/lang/String;
    :cond_79
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_84
    .catchall {:try_start_65 .. :try_end_84} :catchall_b4

    .line 574
    if-eqz v3, :cond_61

    .line 576
    :try_start_86
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8a

    goto :goto_61

    .line 577
    :catch_8a
    move-exception v1

    .restart local v1    # "ie":Ljava/io/IOException;
    goto :goto_61

    .line 569
    .end local v1    # "ie":Ljava/io/IOException;
    .end local v2    # "ikse":Ljava/security/spec/InvalidKeySpecException;
    .restart local p1    # "keyFile":Ljava/lang/String;
    :catch_8c
    move-exception v5

    .line 570
    .local v5, "nsae":Ljava/security/NoSuchAlgorithmException;
    :try_start_8d
    const-string/jumbo v9, "MirrorLink_Cert"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "loadPrivateKeyFromPEM : Fail to load "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez p1, :cond_a1

    const-string/jumbo p1, "null"

    .end local p1    # "keyFile":Ljava/lang/String;
    :cond_a1
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v5}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_ac
    .catchall {:try_start_8d .. :try_end_ac} :catchall_b4

    .line 574
    if-eqz v3, :cond_61

    .line 576
    :try_start_ae
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_b2

    goto :goto_61

    .line 577
    :catch_b2
    move-exception v1

    .restart local v1    # "ie":Ljava/io/IOException;
    goto :goto_61

    .line 573
    .end local v1    # "ie":Ljava/io/IOException;
    .end local v5    # "nsae":Ljava/security/NoSuchAlgorithmException;
    :catchall_b4
    move-exception v9

    .line 574
    if-eqz v3, :cond_ba

    .line 576
    :try_start_b7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_ba} :catch_bb

    .line 573
    :cond_ba
    :goto_ba
    throw v9

    .line 577
    :catch_bb
    move-exception v1

    .restart local v1    # "ie":Ljava/io/IOException;
    goto :goto_ba
.end method

.method private static loadPrivateKeyFromPFX(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "keyFile"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 587
    const/4 v5, 0x0

    .line 590
    .local v5, "privatekey":Ljava/security/PrivateKey;
    invoke-static {p0, p1, p2}, Lcom/lge/mirrorlink/certificate/CertificateManager;->loadKeyStoreFromPFX(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 591
    .local v3, "kstore":Ljava/security/KeyStore;
    if-nez v3, :cond_9

    .line 592
    return-object v7

    .line 597
    :cond_9
    :try_start_9
    invoke-static {v3}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getAlias(Ljava/security/KeyStore;)Ljava/lang/String;

    move-result-object v1

    .line 598
    .local v1, "ALIAS":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-virtual {v3, v1, v7}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/security/PrivateKey;

    move-object v5, v0

    .line 599
    .local v5, "privatekey":Ljava/security/PrivateKey;
    const-string/jumbo v7, "MirrorLink_Cert"

    const-string/jumbo v8, "loadPrivateKey ----------------------------------"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string/jumbo v7, "MirrorLink_Cert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "key format"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v5}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const-string/jumbo v7, "MirrorLink_Cert"

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string/jumbo v7, "MirrorLink_Cert"

    const-string/jumbo v8, "-------------------------------------------------"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/security/KeyStoreException; {:try_start_9 .. :try_end_53} :catch_9f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_53} :catch_7e
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_9 .. :try_end_53} :catch_5d

    .line 612
    .end local v1    # "ALIAS":Ljava/lang/String;
    .end local v5    # "privatekey":Ljava/security/PrivateKey;
    .end local p1    # "keyFile":Ljava/lang/String;
    :goto_53
    const-string/jumbo v7, "MirrorLink_Cert"

    const-string/jumbo v8, " ..... loadPrivateKey end"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    return-object v5

    .line 609
    .restart local p1    # "keyFile":Ljava/lang/String;
    :catch_5d
    move-exception v6

    .line 610
    .local v6, "uke":Ljava/security/UnrecoverableKeyException;
    const-string/jumbo v7, "MirrorLink_Cert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "loadPrivateKeyFromPFX : Fail to load "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez p1, :cond_72

    const-string/jumbo p1, "null"

    .end local p1    # "keyFile":Ljava/lang/String;
    :cond_72
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_53

    .line 607
    .end local v6    # "uke":Ljava/security/UnrecoverableKeyException;
    .restart local p1    # "keyFile":Ljava/lang/String;
    :catch_7e
    move-exception v4

    .line 608
    .local v4, "nsae":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v7, "MirrorLink_Cert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "loadPrivateKeyFromPFX : Fail to load "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez p1, :cond_93

    const-string/jumbo p1, "null"

    .end local p1    # "keyFile":Ljava/lang/String;
    :cond_93
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_53

    .line 605
    .end local v4    # "nsae":Ljava/security/NoSuchAlgorithmException;
    .restart local p1    # "keyFile":Ljava/lang/String;
    :catch_9f
    move-exception v2

    .line 606
    .local v2, "kse":Ljava/security/KeyStoreException;
    const-string/jumbo v7, "MirrorLink_Cert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "loadPrivateKeyFromPFX : Fail to load "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez p1, :cond_b4

    const-string/jumbo p1, "null"

    .end local p1    # "keyFile":Ljava/lang/String;
    :cond_b4
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_53
.end method

.method private static openRawResourceFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 809
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 810
    :cond_5
    return-object v2

    .line 812
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 813
    .local v0, "res":Landroid/content/res/Resources;
    const-string/jumbo v2, "raw"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 814
    .local v1, "res_id":I
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    return-object v2
.end method

.method public static parseOCSPResponse([BLjava/math/BigInteger;Lcom/lge/mirrorlink/certificate/OCSPResponseResult;)I
    .registers 37
    .param p0, "respdata"    # [B
    .param p1, "nonce"    # Ljava/math/BigInteger;
    .param p2, "result"    # Lcom/lge/mirrorlink/certificate/OCSPResponseResult;

    .prologue
    .line 880
    :try_start_0
    new-instance v24, Lorg/bouncycastle/ocsp/OCSPResp;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/bouncycastle/ocsp/OCSPResp;-><init>([B)V

    .line 882
    .local v24, "resp":Lorg/bouncycastle/ocsp/OCSPResp;
    invoke-virtual/range {v24 .. v24}, Lorg/bouncycastle/ocsp/OCSPResp;->getStatus()I

    move-result v31

    if-eqz v31, :cond_32

    .line 883
    const-string/jumbo v31, "MirrorLink_Cert"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "ocsp resp Status : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v24 .. v24}, Lorg/bouncycastle/ocsp/OCSPResp;->getStatus()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    invoke-virtual/range {v24 .. v24}, Lorg/bouncycastle/ocsp/OCSPResp;->getStatus()I

    move-result v31

    return v31

    .line 888
    :cond_32
    invoke-virtual/range {v24 .. v24}, Lorg/bouncycastle/ocsp/OCSPResp;->getResponseObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/ocsp/BasicOCSPResp;

    .line 890
    .local v6, "brep":Lorg/bouncycastle/ocsp/BasicOCSPResp;
    const-string/jumbo v31, "MirrorLink_Cert"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "parse OCSP response resp status:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v24 .. v24}, Lorg/bouncycastle/ocsp/OCSPResp;->getStatus()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    const-string/jumbo v31, "BC"

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Lorg/bouncycastle/ocsp/BasicOCSPResp;->getCerts(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v7

    .line 893
    .local v7, "chain":[Ljava/security/cert/X509Certificate;
    if-eqz v7, :cond_66

    array-length v0, v7

    move/from16 v31, v0

    if-nez v31, :cond_72

    .line 894
    :cond_66
    const-string/jumbo v31, "MirrorLink_Cert"

    const-string/jumbo v32, "ocsp resp has no certificate"

    invoke-static/range {v31 .. v32}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    const/16 v31, -0x4

    return v31

    .line 897
    :cond_72
    const/16 v31, 0x0

    aget-object v31, v7, v31

    invoke-virtual/range {v31 .. v31}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v31

    const-string/jumbo v32, "BC"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v6, v0, v1}, Lorg/bouncycastle/ocsp/BasicOCSPResp;->verify(Ljava/security/PublicKey;Ljava/lang/String;)Z

    move-result v30

    .line 899
    .local v30, "verify":Z
    const-string/jumbo v31, "MirrorLink_Cert"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "parse OCSP response certificate verify:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, " issuer:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x0

    aget-object v33, v7, v33

    invoke-virtual/range {v33 .. v33}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b6} :catch_2fd
    .catch Lorg/bouncycastle/ocsp/OCSPException; {:try_start_0 .. :try_end_b6} :catch_3fb
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_b6} :catch_432

    .line 902
    :try_start_b6
    sget-object v31, Lcom/lge/mirrorlink/certificate/CertificateManager;->mTrustRootCertAppCert:Ljava/security/cert/X509Certificate;

    const/16 v32, 0x0

    aget-object v32, v7, v32

    invoke-static/range {v31 .. v32}, Lcom/lge/mirrorlink/certificate/CertificateManager;->checkTrustChain(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    move-result v31

    if-nez v31, :cond_e8

    .line 903
    sget-object v31, Lcom/lge/mirrorlink/certificate/CertificateManager;->mTrustRootCertDAP:Ljava/security/cert/X509Certificate;

    const/16 v32, 0x0

    aget-object v32, v7, v32

    invoke-static/range {v31 .. v32}, Lcom/lge/mirrorlink/certificate/CertificateManager;->checkTrustChain(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    move-result v31

    if-nez v31, :cond_e8

    .line 904
    const-string/jumbo v31, "MirrorLink_Cert"

    const-string/jumbo v32, "ocsp result trust chain failed"

    invoke-static/range {v31 .. v32}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d7
    .catch Ljavax/crypto/BadPaddingException; {:try_start_b6 .. :try_end_d7} :catch_da
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_d7} :catch_2fd
    .catch Lorg/bouncycastle/ocsp/OCSPException; {:try_start_b6 .. :try_end_d7} :catch_3fb
    .catch Ljava/security/NoSuchProviderException; {:try_start_b6 .. :try_end_d7} :catch_432

    .line 905
    const/16 v31, -0x6

    return v31

    .line 908
    :catch_da
    move-exception v10

    .line 910
    .local v10, "e":Ljavax/crypto/BadPaddingException;
    :try_start_db
    const-string/jumbo v31, "MirrorLink_Cert"

    const-string/jumbo v32, "Ignore BadPaddingException in checking AppCert Trust Chain"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v10}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 913
    .end local v10    # "e":Ljavax/crypto/BadPaddingException;
    :cond_e8
    if-eqz p1, :cond_13f

    .line 914
    sget-object v31, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_nonce:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v31 .. v31}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Lorg/bouncycastle/ocsp/BasicOCSPResp;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v16

    .line 916
    .local v16, "noncerep":[B
    if-nez v16, :cond_104

    .line 917
    const-string/jumbo v31, "MirrorLink_Cert"

    const-string/jumbo v32, "ocsp resp nonce not found in OCSP Response"

    invoke-static/range {v31 .. v32}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    const/16 v31, -0x3

    return v31

    .line 921
    :cond_104
    new-instance v3, Lorg/bouncycastle/asn1/ASN1InputStream;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 922
    .local v3, "ain":Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v19

    .line 924
    .local v19, "oct":Lorg/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v15

    .line 925
    .local v15, "nonceOctets":[B
    if-nez v15, :cond_125

    .line 926
    const-string/jumbo v31, "MirrorLink_Cert"

    const-string/jumbo v32, "ocsp resp nonce is null in OCSP Response"

    invoke-static/range {v31 .. v32}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    const/16 v31, -0x3

    return v31

    .line 929
    :cond_125
    new-instance v25, Ljava/math/BigInteger;

    move-object/from16 v0, v25

    invoke-direct {v0, v15}, Ljava/math/BigInteger;-><init>([B)V

    .line 930
    .local v25, "respNonce":Ljava/math/BigInteger;
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v31

    if-nez v31, :cond_30e

    .line 931
    const-string/jumbo v31, "MirrorLink_Cert"

    const-string/jumbo v32, "ocsp resp nonce OK"

    invoke-static/range {v31 .. v32}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    .end local v3    # "ain":Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v15    # "nonceOctets":[B
    .end local v16    # "noncerep":[B
    .end local v19    # "oct":Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v25    # "respNonce":Ljava/math/BigInteger;
    :cond_13f
    if-eqz v6, :cond_1de

    .line 941
    const-string/jumbo v31, "1.3.6.1.4.1.41577.1.1"

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Lorg/bouncycastle/ocsp/BasicOCSPResp;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v23

    .line 942
    .local v23, "queryPeriod":[B
    if-eqz v23, :cond_178

    .line 943
    invoke-static/range {v23 .. v23}, Lcom/lge/mirrorlink/certificate/ASN1Util;->getDERIntValue([B)I

    move-result v22

    .line 944
    .local v22, "period":I
    const-string/jumbo v31, "MirrorLink_Cert"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "query period:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    if-eqz p2, :cond_178

    if-ltz v22, :cond_178

    .line 946
    move/from16 v0, v22

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/mirrorlink/certificate/OCSPResponseResult;->queryPeriod:I

    .line 950
    .end local v22    # "period":I
    :cond_178
    const-string/jumbo v31, "1.3.6.1.4.1.41577.1.2"

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Lorg/bouncycastle/ocsp/BasicOCSPResp;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v9

    .line 951
    .local v9, "driveGrace":[B
    if-eqz v9, :cond_1ab

    .line 952
    invoke-static {v9}, Lcom/lge/mirrorlink/certificate/ASN1Util;->getDERIntValue([B)I

    move-result v8

    .line 953
    .local v8, "drive":I
    const-string/jumbo v31, "MirrorLink_Cert"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "drive grace:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    if-eqz p2, :cond_1ab

    if-ltz v8, :cond_1ab

    .line 955
    move-object/from16 v0, p2

    iput v8, v0, Lcom/lge/mirrorlink/certificate/OCSPResponseResult;->driveGrace:I

    .line 959
    .end local v8    # "drive":I
    :cond_1ab
    const-string/jumbo v31, "1.3.6.1.4.1.41577.1.3"

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Lorg/bouncycastle/ocsp/BasicOCSPResp;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v5

    .line 960
    .local v5, "baseGrace":[B
    if-eqz v5, :cond_1de

    .line 961
    invoke-static {v5}, Lcom/lge/mirrorlink/certificate/ASN1Util;->getDERIntValue([B)I

    move-result v4

    .line 962
    .local v4, "base":I
    const-string/jumbo v31, "MirrorLink_Cert"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "base grace:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    if-eqz p2, :cond_1de

    if-ltz v4, :cond_1de

    .line 964
    move-object/from16 v0, p2

    iput v4, v0, Lcom/lge/mirrorlink/certificate/OCSPResponseResult;->baseGrace:I

    .line 969
    .end local v4    # "base":I
    .end local v5    # "baseGrace":[B
    .end local v9    # "driveGrace":[B
    .end local v23    # "queryPeriod":[B
    :cond_1de
    invoke-virtual {v6}, Lorg/bouncycastle/ocsp/BasicOCSPResp;->getResponses()[Lorg/bouncycastle/ocsp/SingleResp;

    move-result-object v28

    .line 970
    .local v28, "singleResps":[Lorg/bouncycastle/ocsp/SingleResp;
    if-eqz v28, :cond_411

    .line 971
    const/16 v31, 0x0

    aget-object v27, v28, v31

    .line 973
    .local v27, "singleResp":Lorg/bouncycastle/ocsp/SingleResp;
    const/16 v31, 0x0

    aget-object v31, v28, v31

    invoke-virtual/range {v31 .. v31}, Lorg/bouncycastle/ocsp/SingleResp;->getCertStatus()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/bouncycastle/ocsp/CertificateStatus;

    .line 974
    .local v29, "status":Lorg/bouncycastle/ocsp/CertificateStatus;
    if-nez v29, :cond_370

    .line 975
    const-string/jumbo v31, "MirrorLink_Cert"

    const-string/jumbo v32, "ocsp resp CertStatus OK"

    invoke-static/range {v31 .. v32}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1fe
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v12, v0, :cond_411

    .line 989
    const-string/jumbo v31, "MirrorLink_Cert"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "ocsp resp certid:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    aget-object v33, v28, v12

    invoke-virtual/range {v33 .. v33}, Lorg/bouncycastle/ocsp/SingleResp;->getCertID()Lorg/bouncycastle/ocsp/CertificateID;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    const-string/jumbo v31, "MirrorLink_Cert"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "ocsp resp certstatus:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    aget-object v33, v28, v12

    invoke-virtual/range {v33 .. v33}, Lorg/bouncycastle/ocsp/SingleResp;->getCertStatus()Ljava/lang/Object;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    const-string/jumbo v31, "MirrorLink_Cert"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "ocsp resp thisupdate:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    aget-object v33, v28, v12

    invoke-virtual/range {v33 .. v33}, Lorg/bouncycastle/ocsp/SingleResp;->getThisUpdate()Ljava/util/Date;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    const-string/jumbo v31, "MirrorLink_Cert"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "ocsp resp nextupdate:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    aget-object v33, v28, v12

    invoke-virtual/range {v33 .. v33}, Lorg/bouncycastle/ocsp/SingleResp;->getNextUpdate()Ljava/util/Date;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    if-eqz p2, :cond_295

    .line 995
    aget-object v31, v28, v12

    invoke-virtual/range {v31 .. v31}, Lorg/bouncycastle/ocsp/SingleResp;->getThisUpdate()Ljava/util/Date;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/mirrorlink/certificate/OCSPResponseResult;->thisUpdate:Ljava/util/Date;

    .line 998
    :cond_295
    aget-object v31, v28, v12

    invoke-virtual/range {v31 .. v31}, Lorg/bouncycastle/ocsp/SingleResp;->getSingleExtensions()Lorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v11

    .line 999
    .local v11, "exts":Lorg/bouncycastle/asn1/x509/X509Extensions;
    const-string/jumbo v32, "MirrorLink_Cert"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "ocsp resp extensions:"

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    if-nez v11, :cond_3bf

    const-string/jumbo v31, "null"

    :goto_2b3
    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    aget-object v31, v28, v12

    invoke-virtual/range {v31 .. v31}, Lorg/bouncycastle/ocsp/SingleResp;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v21

    .line 1001
    .local v21, "oids":Ljava/util/Set;
    if-eqz v21, :cond_3c4

    .line 1002
    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 1003
    .local v14, "iter":Ljava/util/Iterator;
    :goto_2d2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_3c4

    .line 1004
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 1005
    .local v20, "oid":Ljava/lang/String;
    const-string/jumbo v31, "MirrorLink_Cert"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "ocsp resp coid:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2fc
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_2fc} :catch_2fd
    .catch Lorg/bouncycastle/ocsp/OCSPException; {:try_start_db .. :try_end_2fc} :catch_3fb
    .catch Ljava/security/NoSuchProviderException; {:try_start_db .. :try_end_2fc} :catch_432

    goto :goto_2d2

    .line 1022
    .end local v6    # "brep":Lorg/bouncycastle/ocsp/BasicOCSPResp;
    .end local v7    # "chain":[Ljava/security/cert/X509Certificate;
    .end local v11    # "exts":Lorg/bouncycastle/asn1/x509/X509Extensions;
    .end local v12    # "i":I
    .end local v14    # "iter":Ljava/util/Iterator;
    .end local v20    # "oid":Ljava/lang/String;
    .end local v21    # "oids":Ljava/util/Set;
    .end local v24    # "resp":Lorg/bouncycastle/ocsp/OCSPResp;
    .end local v27    # "singleResp":Lorg/bouncycastle/ocsp/SingleResp;
    .end local v28    # "singleResps":[Lorg/bouncycastle/ocsp/SingleResp;
    .end local v29    # "status":Lorg/bouncycastle/ocsp/CertificateStatus;
    .end local v30    # "verify":Z
    :catch_2fd
    move-exception v13

    .line 1023
    .local v13, "ioe":Ljava/io/IOException;
    const-string/jumbo v31, "MirrorLink_Cert"

    const-string/jumbo v32, "IOException:"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v13}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1030
    .end local v13    # "ioe":Ljava/io/IOException;
    :goto_30b
    const/16 v31, -0x4

    return v31

    .line 933
    .restart local v3    # "ain":Lorg/bouncycastle/asn1/ASN1InputStream;
    .restart local v6    # "brep":Lorg/bouncycastle/ocsp/BasicOCSPResp;
    .restart local v7    # "chain":[Ljava/security/cert/X509Certificate;
    .restart local v15    # "nonceOctets":[B
    .restart local v16    # "noncerep":[B
    .restart local v19    # "oct":Lorg/bouncycastle/asn1/ASN1OctetString;
    .restart local v24    # "resp":Lorg/bouncycastle/ocsp/OCSPResp;
    .restart local v25    # "respNonce":Ljava/math/BigInteger;
    .restart local v30    # "verify":Z
    :cond_30e
    :try_start_30e
    const-string/jumbo v31, "MirrorLink_Cert"

    const-string/jumbo v32, "ocsp resp nonce check Failed"

    invoke-static/range {v31 .. v32}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    const-string/jumbo v31, "MirrorLink_Cert"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "response nonce :["

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x10

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, "]"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    const-string/jumbo v31, "MirrorLink_Cert"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "requested nonce:["

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, "]"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    const/16 v31, -0x3

    return v31

    .line 977
    .end local v3    # "ain":Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v15    # "nonceOctets":[B
    .end local v16    # "noncerep":[B
    .end local v19    # "oct":Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v25    # "respNonce":Ljava/math/BigInteger;
    .restart local v27    # "singleResp":Lorg/bouncycastle/ocsp/SingleResp;
    .restart local v28    # "singleResps":[Lorg/bouncycastle/ocsp/SingleResp;
    .restart local v29    # "status":Lorg/bouncycastle/ocsp/CertificateStatus;
    :cond_370
    const-string/jumbo v31, "MirrorLink_Cert"

    const-string/jumbo v32, "ocsp resp CertStatus check Failed"

    invoke-static/range {v31 .. v32}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    move-object/from16 v0, v29

    instance-of v0, v0, Lorg/bouncycastle/ocsp/RevokedStatus;

    move/from16 v31, v0

    if-eqz v31, :cond_3a8

    .line 979
    move-object/from16 v0, v29

    check-cast v0, Lorg/bouncycastle/ocsp/RevokedStatus;

    move-object/from16 v26, v0

    .line 980
    .local v26, "revStatus":Lorg/bouncycastle/ocsp/RevokedStatus;
    const-string/jumbo v31, "MirrorLink_Cert"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "ocsp resp RevokedInfo:time:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v26 .. v26}, Lorg/bouncycastle/ocsp/RevokedStatus;->getRevocationTime()Ljava/util/Date;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    const/16 v31, -0x2

    return v31

    .line 982
    .end local v26    # "revStatus":Lorg/bouncycastle/ocsp/RevokedStatus;
    :cond_3a8
    move-object/from16 v0, v29

    instance-of v0, v0, Lorg/bouncycastle/ocsp/UnknownStatus;

    move/from16 v31, v0

    if-eqz v31, :cond_3bc

    .line 983
    const-string/jumbo v31, "MirrorLink_Cert"

    const-string/jumbo v32, "ocsp resp UnknownInfo"

    invoke-static/range {v31 .. v32}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    const/16 v31, -0x5

    return v31

    .line 986
    :cond_3bc
    const/16 v31, -0x4

    return v31

    .line 999
    .restart local v11    # "exts":Lorg/bouncycastle/asn1/x509/X509Extensions;
    .restart local v12    # "i":I
    :cond_3bf
    const-string/jumbo v31, "not null"

    goto/16 :goto_2b3

    .line 1008
    .restart local v21    # "oids":Ljava/util/Set;
    :cond_3c4
    aget-object v31, v28, v12

    invoke-virtual/range {v31 .. v31}, Lorg/bouncycastle/ocsp/SingleResp;->getNonCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v21

    .line 1009
    if-eqz v21, :cond_40d

    .line 1010
    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 1011
    .restart local v14    # "iter":Ljava/util/Iterator;
    :goto_3d0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_40d

    .line 1012
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 1013
    .restart local v20    # "oid":Ljava/lang/String;
    const-string/jumbo v31, "MirrorLink_Cert"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "ocsp resp ncoid:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3fa
    .catch Ljava/io/IOException; {:try_start_30e .. :try_end_3fa} :catch_2fd
    .catch Lorg/bouncycastle/ocsp/OCSPException; {:try_start_30e .. :try_end_3fa} :catch_3fb
    .catch Ljava/security/NoSuchProviderException; {:try_start_30e .. :try_end_3fa} :catch_432

    goto :goto_3d0

    .line 1024
    .end local v6    # "brep":Lorg/bouncycastle/ocsp/BasicOCSPResp;
    .end local v7    # "chain":[Ljava/security/cert/X509Certificate;
    .end local v11    # "exts":Lorg/bouncycastle/asn1/x509/X509Extensions;
    .end local v12    # "i":I
    .end local v14    # "iter":Ljava/util/Iterator;
    .end local v20    # "oid":Ljava/lang/String;
    .end local v21    # "oids":Ljava/util/Set;
    .end local v24    # "resp":Lorg/bouncycastle/ocsp/OCSPResp;
    .end local v27    # "singleResp":Lorg/bouncycastle/ocsp/SingleResp;
    .end local v28    # "singleResps":[Lorg/bouncycastle/ocsp/SingleResp;
    .end local v29    # "status":Lorg/bouncycastle/ocsp/CertificateStatus;
    .end local v30    # "verify":Z
    :catch_3fb
    move-exception v18

    .line 1025
    .local v18, "ocspe":Lorg/bouncycastle/ocsp/OCSPException;
    const-string/jumbo v31, "MirrorLink_Cert"

    const-string/jumbo v32, "OCSPException:"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30b

    .line 988
    .end local v18    # "ocspe":Lorg/bouncycastle/ocsp/OCSPException;
    .restart local v6    # "brep":Lorg/bouncycastle/ocsp/BasicOCSPResp;
    .restart local v7    # "chain":[Ljava/security/cert/X509Certificate;
    .restart local v11    # "exts":Lorg/bouncycastle/asn1/x509/X509Extensions;
    .restart local v12    # "i":I
    .restart local v21    # "oids":Ljava/util/Set;
    .restart local v24    # "resp":Lorg/bouncycastle/ocsp/OCSPResp;
    .restart local v27    # "singleResp":Lorg/bouncycastle/ocsp/SingleResp;
    .restart local v28    # "singleResps":[Lorg/bouncycastle/ocsp/SingleResp;
    .restart local v29    # "status":Lorg/bouncycastle/ocsp/CertificateStatus;
    .restart local v30    # "verify":Z
    :cond_40d
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1fe

    .line 1019
    .end local v11    # "exts":Lorg/bouncycastle/asn1/x509/X509Extensions;
    .end local v12    # "i":I
    .end local v21    # "oids":Ljava/util/Set;
    .end local v27    # "singleResp":Lorg/bouncycastle/ocsp/SingleResp;
    .end local v29    # "status":Lorg/bouncycastle/ocsp/CertificateStatus;
    :cond_411
    :try_start_411
    const-string/jumbo v31, "MirrorLink_Cert"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "ocsp resp Status : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v24 .. v24}, Lorg/bouncycastle/ocsp/OCSPResp;->getStatus()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42f
    .catch Ljava/io/IOException; {:try_start_411 .. :try_end_42f} :catch_2fd
    .catch Lorg/bouncycastle/ocsp/OCSPException; {:try_start_411 .. :try_end_42f} :catch_3fb
    .catch Ljava/security/NoSuchProviderException; {:try_start_411 .. :try_end_42f} :catch_432

    .line 1021
    const/16 v31, 0x0

    return v31

    .line 1026
    .end local v6    # "brep":Lorg/bouncycastle/ocsp/BasicOCSPResp;
    .end local v7    # "chain":[Ljava/security/cert/X509Certificate;
    .end local v24    # "resp":Lorg/bouncycastle/ocsp/OCSPResp;
    .end local v28    # "singleResps":[Lorg/bouncycastle/ocsp/SingleResp;
    .end local v30    # "verify":Z
    :catch_432
    move-exception v17

    .line 1027
    .local v17, "nspe":Ljava/security/NoSuchProviderException;
    const-string/jumbo v31, "MirrorLink_Cert"

    const-string/jumbo v32, "NoSuchProviderException:"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30b
.end method

.method public static setBaseGrace(I)V
    .registers 5
    .param p0, "period"    # I

    .prologue
    .line 1062
    sput p0, Lcom/lge/mirrorlink/certificate/CertificateManager;->baseGrace:I

    .line 1063
    sget-object v0, Lcom/lge/mirrorlink/certificate/CertificateManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/lge/mirrorlink/certificate/CertificateManager;->queryPeriod:I

    sget v2, Lcom/lge/mirrorlink/certificate/CertificateManager;->driveGrace:I

    sget v3, Lcom/lge/mirrorlink/certificate/CertificateManager;->baseGrace:I

    invoke-static {v0, v1, v2, v3}, Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;->storeOCSPQueryPeriod(Landroid/content/Context;III)Z

    .line 1060
    return-void
.end method

.method public static setDAPNonce([B)V
    .registers 2
    .param p0, "nonce"    # [B

    .prologue
    .line 447
    if-eqz p0, :cond_d

    .line 448
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/mirrorlink/certificate/CertificateManager;->mDAPNonce:Ljava/lang/String;

    .line 446
    :cond_d
    return-void
.end method

.method public static setDriveGrace(I)V
    .registers 5
    .param p0, "period"    # I

    .prologue
    .line 1056
    sput p0, Lcom/lge/mirrorlink/certificate/CertificateManager;->driveGrace:I

    .line 1057
    sget-object v0, Lcom/lge/mirrorlink/certificate/CertificateManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/lge/mirrorlink/certificate/CertificateManager;->queryPeriod:I

    sget v2, Lcom/lge/mirrorlink/certificate/CertificateManager;->driveGrace:I

    sget v3, Lcom/lge/mirrorlink/certificate/CertificateManager;->baseGrace:I

    invoke-static {v0, v1, v2, v3}, Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;->storeOCSPQueryPeriod(Landroid/content/Context;III)Z

    .line 1054
    return-void
.end method

.method public static setQueryPeriod(I)V
    .registers 5
    .param p0, "period"    # I

    .prologue
    .line 1050
    sput p0, Lcom/lge/mirrorlink/certificate/CertificateManager;->queryPeriod:I

    .line 1051
    sget-object v0, Lcom/lge/mirrorlink/certificate/CertificateManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/lge/mirrorlink/certificate/CertificateManager;->queryPeriod:I

    sget v2, Lcom/lge/mirrorlink/certificate/CertificateManager;->driveGrace:I

    sget v3, Lcom/lge/mirrorlink/certificate/CertificateManager;->baseGrace:I

    invoke-static {v0, v1, v2, v3}, Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;->storeOCSPQueryPeriod(Landroid/content/Context;III)Z

    .line 1048
    return-void
.end method

.method private static verifyCertificate(Ljava/security/cert/X509Certificate;ZLjava/lang/String;)Z
    .registers 14
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "requireEKU"    # Z
    .param p2, "certFileName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 746
    const-string/jumbo v7, "MirrorLink_Cert"

    const-string/jumbo v8, "-------- verifyCertificate --------------------------------------"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    if-nez p0, :cond_35

    .line 749
    const-string/jumbo v7, "MirrorLink_Cert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "verifyCertificate : Fail to load "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez p2, :cond_20

    const-string/jumbo p2, "null"

    .end local p2    # "certFileName":Ljava/lang/String;
    :cond_20
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    const-string/jumbo v7, "MirrorLink_Cert"

    const-string/jumbo v8, "---------------------------------------------------------------"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    return v10

    .line 754
    .restart local p2    # "certFileName":Ljava/lang/String;
    :cond_35
    const-string/jumbo v8, "MirrorLink_Cert"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, ">> File loaded : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez p2, :cond_a2

    const-string/jumbo v7, "null"

    :goto_49
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    const-string/jumbo v7, "MirrorLink_Cert"

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const-string/jumbo v7, "MirrorLink_Cert"

    const-string/jumbo v8, "---------------------------------------------------------------"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    .line 759
    .local v5, "key":Ljava/security/PublicKey;
    const-string/jumbo v7, "X.509"

    invoke-interface {v5}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a4

    .line 760
    const-string/jumbo v7, "MirrorLink_Cert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unsupported public key encoding format("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ") : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v5}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    return v10

    .end local v5    # "key":Ljava/security/PublicKey;
    :cond_a2
    move-object v7, p2

    .line 754
    goto :goto_49

    .line 764
    .restart local v5    # "key":Ljava/security/PublicKey;
    :cond_a4
    if-eqz p1, :cond_159

    .line 767
    const/4 v1, 0x0

    .line 768
    .local v1, "EKUlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 770
    .local v0, "EKUMatched":Z
    :try_start_a8
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v1

    .line 771
    .local v1, "EKUlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_14f

    .line 772
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 774
    .local v2, "EKUlistSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_b3
    if-ge v4, v2, :cond_ec

    .line 775
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 776
    .local v6, "strEKU":Ljava/lang/String;
    if-eqz v6, :cond_f8

    const-string/jumbo v7, "2.23.133.8.3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f8

    .line 783
    const-string/jumbo v7, "MirrorLink_Cert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Matched EKU found["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_eb
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_a8 .. :try_end_eb} :catch_144

    .line 784
    const/4 v0, 0x1

    .line 795
    .end local v1    # "EKUlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "EKUlistSize":I
    .end local v4    # "i":I
    .end local v6    # "strEKU":Ljava/lang/String;
    :cond_ec
    :goto_ec
    if-nez v0, :cond_159

    .line 796
    const-string/jumbo v7, "MirrorLink_Cert"

    const-string/jumbo v8, "No proper EKU 2.23.133.8.3"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    return v10

    .line 777
    .restart local v1    # "EKUlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "EKUlistSize":I
    .restart local v4    # "i":I
    .restart local v6    # "strEKU":Ljava/lang/String;
    :cond_f8
    if-nez v6, :cond_11e

    .line 778
    :try_start_fa
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

    .line 774
    :goto_11b
    add-int/lit8 v4, v4, 0x1

    goto :goto_b3

    .line 780
    :cond_11e
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
    :try_end_143
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_fa .. :try_end_143} :catch_144

    goto :goto_11b

    .line 791
    .end local v1    # "EKUlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "EKUlistSize":I
    .end local v4    # "i":I
    .end local v6    # "strEKU":Ljava/lang/String;
    :catch_144
    move-exception v3

    .line 792
    .local v3, "e":Ljava/security/cert/CertificateParsingException;
    const-string/jumbo v7, "MirrorLink_Cert"

    const-string/jumbo v8, "Parsing EKU Failed"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ec

    .line 789
    .end local v3    # "e":Ljava/security/cert/CertificateParsingException;
    .restart local v1    # "EKUlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_14f
    :try_start_14f
    const-string/jumbo v7, "MirrorLink_Cert"

    const-string/jumbo v8, "No EKU(Extended Key Usage) in X.509 Certificate"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_158
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_14f .. :try_end_158} :catch_144

    goto :goto_ec

    .line 801
    .end local v0    # "EKUMatched":Z
    .end local v1    # "EKUlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_159
    const-string/jumbo v7, "MirrorLink_Cert"

    const-string/jumbo v8, "loadCertificateFromCert ended"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    const-string/jumbo v7, "MirrorLink_Cert"

    const-string/jumbo v8, "---------------------------------------------------------------"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    const/4 v7, 0x1

    return v7
.end method

.method public static verifyTrustChain(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z
    .registers 6
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "chain"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 257
    sget-object v1, Lcom/lge/mirrorlink/certificate/CertificateManager;->mTrustRootCertAppCert:Ljava/security/cert/X509Certificate;

    if-nez v1, :cond_f

    .line 258
    const-string/jumbo v1, "MirrorLink_Cert"

    const-string/jumbo v2, "verifyTrustChain:no Trust Root Exist"

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return v3

    .line 261
    :cond_f
    if-nez p0, :cond_1b

    .line 262
    const-string/jumbo v1, "MirrorLink_Cert"

    const-string/jumbo v2, "verifyTrustChain:no certificate is null"

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return v3

    .line 265
    :cond_1b
    if-nez p1, :cond_3a

    .line 267
    :try_start_1d
    sget-object v1, Lcom/lge/mirrorlink/certificate/CertificateManager;->mTrustRootCertAppCert:Ljava/security/cert/X509Certificate;

    invoke-static {v1, p0}, Lcom/lge/mirrorlink/certificate/CertificateManager;->checkTrustChain(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 268
    sget-object v1, Lcom/lge/mirrorlink/certificate/CertificateManager;->mTrustRootCertDAP:Ljava/security/cert/X509Certificate;

    invoke-static {v1, p0}, Lcom/lge/mirrorlink/certificate/CertificateManager;->checkTrustChain(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z
    :try_end_2a
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1d .. :try_end_2a} :catch_2e

    move-result v1

    if-nez v1, :cond_38

    .line 269
    return v3

    .line 272
    :catch_2e
    move-exception v0

    .line 274
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    const-string/jumbo v1, "MirrorLink_Cert"

    const-string/jumbo v2, "Ignore BadPaddingException in checking AppCert Trust Chain"

    invoke-static {v1, v2, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 292
    .end local v0    # "e":Ljavax/crypto/BadPaddingException;
    :cond_38
    :goto_38
    const/4 v1, 0x1

    return v1

    .line 277
    :cond_3a
    invoke-static {p1, p0}, Lcom/lge/mirrorlink/certificate/CertificateManager;->checkTrustChain(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 278
    return v3

    .line 282
    :cond_41
    :try_start_41
    sget-object v1, Lcom/lge/mirrorlink/certificate/CertificateManager;->mTrustRootCertAppCert:Ljava/security/cert/X509Certificate;

    invoke-static {v1, p1}, Lcom/lge/mirrorlink/certificate/CertificateManager;->checkTrustChain(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 283
    sget-object v1, Lcom/lge/mirrorlink/certificate/CertificateManager;->mTrustRootCertDAP:Ljava/security/cert/X509Certificate;

    invoke-static {v1, p1}, Lcom/lge/mirrorlink/certificate/CertificateManager;->checkTrustChain(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z
    :try_end_4e
    .catch Ljavax/crypto/BadPaddingException; {:try_start_41 .. :try_end_4e} :catch_52

    move-result v1

    if-nez v1, :cond_38

    .line 284
    return v3

    .line 287
    :catch_52
    move-exception v0

    .line 289
    .restart local v0    # "e":Ljavax/crypto/BadPaddingException;
    const-string/jumbo v1, "MirrorLink_Cert"

    const-string/jumbo v2, "Ignore BadPaddingException in checking AppCert Trust Chain"

    invoke-static {v1, v2, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_38
.end method


# virtual methods
.method public checkTrustRootHashValue([B)Z
    .registers 5
    .param p1, "trustRootID"    # [B

    .prologue
    .line 298
    const-string/jumbo v0, "MirrorLink_Cert"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "trustRootID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/lge/mirrorlink/common/ExtLog;->BytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " local TrustRootHashValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/certificate/CertificateManager;->mTrustRootHashValue:[B

    invoke-static {v2}, Lcom/lge/mirrorlink/common/ExtLog;->BytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    if-eqz p1, :cond_44

    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/CertificateManager;->mTrustRootHashValue:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 300
    const-string/jumbo v0, "MirrorLink_Cert"

    const-string/jumbo v1, "trustRootID is same"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const/4 v0, 0x1

    return v0

    .line 303
    :cond_44
    const-string/jumbo v0, "MirrorLink_Cert"

    const-string/jumbo v1, "trustRootID is different"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public getApplicationPublicKey(Ljava/lang/String;)[B
    .registers 4
    .param p1, "compId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 337
    if-nez p1, :cond_4

    .line 338
    return-object v1

    .line 340
    :cond_4
    const-string/jumbo v0, "TerminalMode:UPnP-Server"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string/jumbo v0, "TerminalMode:VNC-Server"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 341
    :cond_16
    sget-object v0, Lcom/lge/mirrorlink/certificate/CertificateManager;->appPublicKey:Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getEncoded()[B

    move-result-object v0

    return-object v0

    .line 343
    :cond_1d
    return-object v1
.end method

.method public getDevicePrivateKey()Ljava/security/PrivateKey;
    .registers 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/CertificateManager;->mDevicePrivateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public getEncodedDeviceCertificate()[B
    .registers 4

    .prologue
    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/lge/mirrorlink/certificate/CertificateManager;->mDeviceCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B
    :try_end_5
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 323
    :catch_7
    move-exception v0

    .line 324
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    const-string/jumbo v1, "MirrorLink_Cert"

    const-string/jumbo v2, "getEncodedManufacturerCertificate : CertificateEncodingException"

    invoke-static {v1, v2, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 327
    const/4 v1, 0x0

    return-object v1
.end method

.method public getEncodedManufacturerCertificate()[B
    .registers 4

    .prologue
    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/lge/mirrorlink/certificate/CertificateManager;->mManufacturerCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B
    :try_end_5
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 312
    :catch_7
    move-exception v0

    .line 313
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    const-string/jumbo v1, "MirrorLink_Cert"

    const-string/jumbo v2, "getEncodedManufacturerCertificate : CertificateEncodingException"

    invoke-static {v1, v2, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 316
    const/4 v1, 0x0

    return-object v1
.end method
