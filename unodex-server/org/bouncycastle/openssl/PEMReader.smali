.class public Lorg/bouncycastle/openssl/PEMReader;
.super Lorg/bouncycastle/util/io/pem/PemReader;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/openssl/PEMReader$1;,
        Lorg/bouncycastle/openssl/PEMReader$DSAKeyPairParser;,
        Lorg/bouncycastle/openssl/PEMReader$ECDSAKeyPairParser;,
        Lorg/bouncycastle/openssl/PEMReader$ECNamedCurveSpecParser;,
        Lorg/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;,
        Lorg/bouncycastle/openssl/PEMReader$KeyPairParser;,
        Lorg/bouncycastle/openssl/PEMReader$PKCS10CertificationRequestParser;,
        Lorg/bouncycastle/openssl/PEMReader$PKCS7Parser;,
        Lorg/bouncycastle/openssl/PEMReader$PrivateKeyParser;,
        Lorg/bouncycastle/openssl/PEMReader$PublicKeyParser;,
        Lorg/bouncycastle/openssl/PEMReader$RSAKeyPairParser;,
        Lorg/bouncycastle/openssl/PEMReader$RSAPublicKeyParser;,
        Lorg/bouncycastle/openssl/PEMReader$X509AttributeCertificateParser;,
        Lorg/bouncycastle/openssl/PEMReader$X509CRLParser;,
        Lorg/bouncycastle/openssl/PEMReader$X509CertificateParser;
    }
.end annotation


# instance fields
.field private pFinder:Lorg/bouncycastle/openssl/PasswordFinder;

.field private final parsers:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 4

    const-string/jumbo v0, "BC"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/bouncycastle/openssl/PEMReader;-><init>(Ljava/io/Reader;Lorg/bouncycastle/openssl/PasswordFinder;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Lorg/bouncycastle/openssl/PasswordFinder;)V
    .registers 4

    const-string/jumbo v0, "BC"

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/openssl/PEMReader;-><init>(Ljava/io/Reader;Lorg/bouncycastle/openssl/PasswordFinder;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Lorg/bouncycastle/openssl/PasswordFinder;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3, p3}, Lorg/bouncycastle/openssl/PEMReader;-><init>(Ljava/io/Reader;Lorg/bouncycastle/openssl/PasswordFinder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Lorg/bouncycastle/openssl/PasswordFinder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lorg/bouncycastle/util/io/pem/PemReader;-><init>(Ljava/io/Reader;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    iput-object p2, p0, Lorg/bouncycastle/openssl/PEMReader;->pFinder:Lorg/bouncycastle/openssl/PasswordFinder;

    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string/jumbo v1, "CERTIFICATE REQUEST"

    new-instance v2, Lorg/bouncycastle/openssl/PEMReader$PKCS10CertificationRequestParser;

    invoke-direct {v2, p0, v3}, Lorg/bouncycastle/openssl/PEMReader$PKCS10CertificationRequestParser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Lorg/bouncycastle/openssl/PEMReader$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string/jumbo v1, "NEW CERTIFICATE REQUEST"

    new-instance v2, Lorg/bouncycastle/openssl/PEMReader$PKCS10CertificationRequestParser;

    invoke-direct {v2, p0, v3}, Lorg/bouncycastle/openssl/PEMReader$PKCS10CertificationRequestParser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Lorg/bouncycastle/openssl/PEMReader$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string/jumbo v1, "CERTIFICATE"

    new-instance v2, Lorg/bouncycastle/openssl/PEMReader$X509CertificateParser;

    invoke-direct {v2, p0, p4}, Lorg/bouncycastle/openssl/PEMReader$X509CertificateParser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string/jumbo v1, "X509 CERTIFICATE"

    new-instance v2, Lorg/bouncycastle/openssl/PEMReader$X509CertificateParser;

    invoke-direct {v2, p0, p4}, Lorg/bouncycastle/openssl/PEMReader$X509CertificateParser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string/jumbo v1, "X509 CRL"

    new-instance v2, Lorg/bouncycastle/openssl/PEMReader$X509CRLParser;

    invoke-direct {v2, p0, p4}, Lorg/bouncycastle/openssl/PEMReader$X509CRLParser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string/jumbo v1, "PKCS7"

    new-instance v2, Lorg/bouncycastle/openssl/PEMReader$PKCS7Parser;

    invoke-direct {v2, p0, v3}, Lorg/bouncycastle/openssl/PEMReader$PKCS7Parser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Lorg/bouncycastle/openssl/PEMReader$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string/jumbo v1, "ATTRIBUTE CERTIFICATE"

    new-instance v2, Lorg/bouncycastle/openssl/PEMReader$X509AttributeCertificateParser;

    invoke-direct {v2, p0, v3}, Lorg/bouncycastle/openssl/PEMReader$X509AttributeCertificateParser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Lorg/bouncycastle/openssl/PEMReader$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string/jumbo v1, "EC PARAMETERS"

    new-instance v2, Lorg/bouncycastle/openssl/PEMReader$ECNamedCurveSpecParser;

    invoke-direct {v2, p0, v3}, Lorg/bouncycastle/openssl/PEMReader$ECNamedCurveSpecParser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Lorg/bouncycastle/openssl/PEMReader$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string/jumbo v1, "PUBLIC KEY"

    new-instance v2, Lorg/bouncycastle/openssl/PEMReader$PublicKeyParser;

    invoke-direct {v2, p0, p4}, Lorg/bouncycastle/openssl/PEMReader$PublicKeyParser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string/jumbo v1, "RSA PUBLIC KEY"

    new-instance v2, Lorg/bouncycastle/openssl/PEMReader$RSAPublicKeyParser;

    invoke-direct {v2, p0, p4}, Lorg/bouncycastle/openssl/PEMReader$RSAPublicKeyParser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string/jumbo v1, "RSA PRIVATE KEY"

    new-instance v2, Lorg/bouncycastle/openssl/PEMReader$RSAKeyPairParser;

    invoke-direct {v2, p0, p3, p4}, Lorg/bouncycastle/openssl/PEMReader$RSAKeyPairParser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string/jumbo v1, "DSA PRIVATE KEY"

    new-instance v2, Lorg/bouncycastle/openssl/PEMReader$DSAKeyPairParser;

    invoke-direct {v2, p0, p3, p4}, Lorg/bouncycastle/openssl/PEMReader$DSAKeyPairParser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string/jumbo v1, "EC PRIVATE KEY"

    new-instance v2, Lorg/bouncycastle/openssl/PEMReader$ECDSAKeyPairParser;

    invoke-direct {v2, p0, p3, p4}, Lorg/bouncycastle/openssl/PEMReader$ECDSAKeyPairParser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string/jumbo v1, "ENCRYPTED PRIVATE KEY"

    new-instance v2, Lorg/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;

    invoke-direct {v2, p0, p3, p4}, Lorg/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string/jumbo v1, "PRIVATE KEY"

    new-instance v2, Lorg/bouncycastle/openssl/PEMReader$PrivateKeyParser;

    invoke-direct {v2, p0, p4}, Lorg/bouncycastle/openssl/PEMReader$PrivateKeyParser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$400(Lorg/bouncycastle/openssl/PEMReader;)Lorg/bouncycastle/openssl/PasswordFinder;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMReader;->pFinder:Lorg/bouncycastle/openssl/PasswordFinder;

    return-object v0
.end method

.method static crypt(ZLjava/lang/String;[B[CLjava/lang/String;[B)[B
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_d

    :cond_3
    move v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/openssl/PEMReader;->crypt(ZLjava/security/Provider;[B[CLjava/lang/String;[B)[B

    move-result-object v0

    return-object v0

    :cond_d
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v0, Lorg/bouncycastle/openssl/EncryptionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cannot find provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/openssl/EncryptionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static crypt(ZLjava/security/Provider;[B[CLjava/lang/String;[B)[B
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x80

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/16 v8, 0x8

    const/4 v4, 0x0

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string/jumbo v1, "CBC"

    const-string/jumbo v0, "PKCS5Padding"

    const-string/jumbo v7, "-CFB"

    invoke-virtual {p4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_67

    :goto_1b
    const-string/jumbo v7, "-ECB"

    invoke-virtual {p4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6e

    :cond_24
    const-string/jumbo v1, "ECB"

    move-object v2, v3

    :goto_28
    const-string/jumbo v3, "-OFB"

    invoke-virtual {p4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_81

    :goto_31
    const-string/jumbo v3, "DES-EDE"

    invoke-virtual {p4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_88

    const-string/jumbo v3, "DES-"

    invoke-virtual {p4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d4

    const-string/jumbo v3, "BF-"

    invoke-virtual {p4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e0

    const-string/jumbo v3, "RC2-"

    invoke-virtual {p4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_ea

    const-string/jumbo v3, "AES-"

    invoke-virtual {p4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11e

    new-instance v0, Lorg/bouncycastle/openssl/EncryptionException;

    const-string/jumbo v1, "unknown encryption with private key"

    invoke-direct {v0, v1}, Lorg/bouncycastle/openssl/EncryptionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_67
    const-string/jumbo v1, "CFB"

    const-string/jumbo v0, "NoPadding"

    goto :goto_1b

    :cond_6e
    const-string/jumbo v7, "DES-EDE"

    invoke-virtual {v7, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_24

    const-string/jumbo v7, "DES-EDE3"

    invoke-virtual {v7, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_24

    goto :goto_28

    :cond_81
    const-string/jumbo v1, "OFB"

    const-string/jumbo v0, "NoPadding"

    goto :goto_31

    :cond_88
    const-string/jumbo v6, "DESede"

    const-string/jumbo v3, "DES-EDE3"

    invoke-virtual {p4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d2

    move v3, v4

    :goto_95
    const/16 v4, 0x18

    invoke-static {p3, v6, v4, p5, v3}, Lorg/bouncycastle/openssl/PEMReader;->getKey([CLjava/lang/String;I[BZ)Ljavax/crypto/SecretKey;

    move-result-object v3

    move-object v4, v2

    move-object v2, v3

    move-object v3, v6

    :goto_9e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_c1
    invoke-static {v0, p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    if-nez p0, :cond_c8

    const/4 v5, 0x2

    :cond_c8
    if-eqz v4, :cond_162

    invoke-virtual {v0, v5, v2, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    :goto_cd
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_d0} :catch_167

    move-result-object v0

    return-object v0

    :cond_d2
    move v3, v5

    goto :goto_95

    :cond_d4
    const-string/jumbo v4, "DES"

    invoke-static {p3, v4, v8, p5}, Lorg/bouncycastle/openssl/PEMReader;->getKey([CLjava/lang/String;I[B)Ljavax/crypto/SecretKey;

    move-result-object v3

    :goto_db
    move-object v9, v3

    move-object v3, v4

    move-object v4, v2

    move-object v2, v9

    goto :goto_9e

    :cond_e0
    const-string/jumbo v4, "Blowfish"

    const/16 v3, 0x10

    invoke-static {p3, v4, v3, p5}, Lorg/bouncycastle/openssl/PEMReader;->getKey([CLjava/lang/String;I[B)Ljavax/crypto/SecretKey;

    move-result-object v3

    goto :goto_db

    :cond_ea
    const-string/jumbo v7, "RC2"

    const-string/jumbo v3, "RC2-40-"

    invoke-virtual {p4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_112

    const-string/jumbo v3, "RC2-64-"

    invoke-virtual {p4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_115

    move v3, v6

    :goto_100
    div-int/lit8 v4, v3, 0x8

    invoke-static {p3, v7, v4, p5}, Lorg/bouncycastle/openssl/PEMReader;->getKey([CLjava/lang/String;I[B)Ljavax/crypto/SecretKey;

    move-result-object v4

    if-eqz v2, :cond_118

    new-instance v2, Ljavax/crypto/spec/RC2ParameterSpec;

    invoke-direct {v2, v3, p5}, Ljavax/crypto/spec/RC2ParameterSpec;-><init>(I[B)V

    :goto_10d
    move-object v3, v7

    move-object v9, v4

    move-object v4, v2

    move-object v2, v9

    goto :goto_9e

    :cond_112
    const/16 v3, 0x28

    goto :goto_100

    :cond_115
    const/16 v3, 0x40

    goto :goto_100

    :cond_118
    new-instance v2, Ljavax/crypto/spec/RC2ParameterSpec;

    invoke-direct {v2, v3}, Ljavax/crypto/spec/RC2ParameterSpec;-><init>(I)V

    goto :goto_10d

    :cond_11e
    const-string/jumbo v7, "AES"

    array-length v3, p5

    if-gt v3, v8, :cond_148

    :goto_124
    const-string/jumbo v3, "AES-128-"

    invoke-virtual {p4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_151

    const-string/jumbo v3, "AES-192-"

    invoke-virtual {p4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14f

    const-string/jumbo v3, "AES-256-"

    invoke-virtual {p4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15f

    new-instance v0, Lorg/bouncycastle/openssl/EncryptionException;

    const-string/jumbo v1, "unknown AES encryption with private key"

    invoke-direct {v0, v1}, Lorg/bouncycastle/openssl/EncryptionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_148
    new-array v3, v8, [B

    invoke-static {p5, v4, v3, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p5, v3

    goto :goto_124

    :cond_14f
    const/16 v6, 0xc0

    :cond_151
    :goto_151
    const-string/jumbo v3, "AES"

    div-int/lit8 v4, v6, 0x8

    invoke-static {p3, v3, v4, p5}, Lorg/bouncycastle/openssl/PEMReader;->getKey([CLjava/lang/String;I[B)Ljavax/crypto/SecretKey;

    move-result-object v3

    move-object v4, v2

    move-object v2, v3

    move-object v3, v7

    goto/16 :goto_9e

    :cond_15f
    const/16 v6, 0x100

    goto :goto_151

    :cond_162
    :try_start_162
    invoke-virtual {v0, v5, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_165
    .catch Ljava/lang/Exception; {:try_start_162 .. :try_end_165} :catch_167

    goto/16 :goto_cd

    :catch_167
    move-exception v0

    new-instance v1, Lorg/bouncycastle/openssl/EncryptionException;

    const-string/jumbo v2, "exception using cipher - please check password and data."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/openssl/EncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static generateSecretKeyForPKCS5Scheme2(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;
    .registers 7

    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0}, Lorg/bouncycastle/openssl/PEMUtilities;->getKeySize(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {v1, v0, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method private static getKey([CLjava/lang/String;I[B)Ljavax/crypto/SecretKey;
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/bouncycastle/openssl/PEMReader;->getKey([CLjava/lang/String;I[BZ)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method private static getKey([CLjava/lang/String;I[BZ)Ljavax/crypto/SecretKey;
    .registers 9

    const/4 v3, 0x0

    new-instance v0, Lorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;-><init>()V

    invoke-static {p0}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->init([B[B)V

    mul-int/lit8 v1, p2, 0x8

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    if-nez p4, :cond_21

    :cond_1b
    :goto_1b
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, v0, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1

    :cond_21
    array-length v1, v0

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1b

    const/16 v1, 0x10

    const/16 v2, 0x8

    invoke-static {v0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1b
.end method


# virtual methods
.method public readObject()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/openssl/PEMReader;->readPemObject()Lorg/bouncycastle/util/io/pem/PemObject;

    move-result-object v1

    if-nez v1, :cond_8

    return-object v0

    :cond_8
    invoke-virtual {v1}, Lorg/bouncycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unrecognised object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2e
    iget-object v2, p0, Lorg/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/util/io/pem/PemObjectParser;

    invoke-interface {v0, v1}, Lorg/bouncycastle/util/io/pem/PemObjectParser;->parseObject(Lorg/bouncycastle/util/io/pem/PemObject;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
