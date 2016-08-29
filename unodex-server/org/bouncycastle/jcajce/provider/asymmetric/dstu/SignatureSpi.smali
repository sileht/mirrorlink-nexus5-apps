.class public Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;
.super Ljava/security/SignatureSpi;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;


# static fields
.field private static DEFAULT_SBOX:[B


# instance fields
.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private signer:Lorg/bouncycastle/crypto/DSA;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x80

    new-array v0, v0, [B

    const/16 v1, 0xa

    aput-byte v1, v0, v3

    const/16 v1, 0x9

    aput-byte v1, v0, v4

    const/16 v1, 0xd

    aput-byte v1, v0, v5

    const/4 v1, 0x6

    aput-byte v1, v0, v6

    const/16 v1, 0xe

    aput-byte v1, v0, v7

    const/4 v1, 0x5

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    aput-byte v7, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    aput-byte v4, v0, v1

    const/16 v1, 0xa

    aput-byte v6, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    aput-byte v3, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    aput-byte v5, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    aput-byte v3, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    aput-byte v7, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    aput-byte v5, v0, v1

    const/16 v1, 0x19

    aput-byte v6, v0, v1

    const/16 v1, 0x1a

    aput-byte v4, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    aput-byte v7, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    aput-byte v3, v0, v1

    const/16 v1, 0x2a

    aput-byte v6, v0, v1

    const/16 v1, 0x2b

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    aput-byte v5, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    aput-byte v4, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    aput-byte v6, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    aput-byte v3, v0, v1

    const/16 v1, 0x38

    aput-byte v5, v0, v1

    const/16 v1, 0x39

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x3c

    aput-byte v7, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    aput-byte v4, v0, v1

    const/16 v1, 0x3f

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x40

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x44

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    aput-byte v5, v0, v1

    const/16 v1, 0x46

    aput-byte v3, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    aput-byte v4, v0, v1

    const/16 v1, 0x4b

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    aput-byte v7, v0, v1

    const/16 v1, 0x4e

    aput-byte v6, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    aput-byte v5, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    aput-byte v3, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    aput-byte v4, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x5c

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x5d

    aput-byte v6, v0, v1

    const/16 v1, 0x5e

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x5f

    aput-byte v7, v0, v1

    const/16 v1, 0x60

    aput-byte v6, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    aput-byte v7, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    aput-byte v5, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    aput-byte v4, v0, v1

    const/16 v1, 0x6b

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    aput-byte v3, v0, v1

    const/16 v1, 0x70

    aput-byte v4, v0, v1

    const/16 v1, 0x71

    aput-byte v5, v0, v1

    const/16 v1, 0x72

    aput-byte v6, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x7c

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x7d

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x7e

    aput-byte v3, v0, v1

    const/16 v1, 0x7f

    aput-byte v7, v0, v1

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->DEFAULT_SBOX:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/signers/DSTU4145Signer;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/signers/DSTU4145Signer;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->signer:Lorg/bouncycastle/crypto/DSA;

    return-void
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v4, 0x1

    instance-of v1, p1, Lorg/bouncycastle/jce/interfaces/ECKey;

    if-nez v1, :cond_19

    :goto_6
    new-instance v1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;

    sget-object v2, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->DEFAULT_SBOX:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;-><init>([B)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    if-nez v1, :cond_1e

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->signer:Lorg/bouncycastle/crypto/DSA;

    invoke-interface {v1, v4, v0}, Lorg/bouncycastle/crypto/DSA;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    :goto_18
    return-void

    :cond_19
    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    goto :goto_6

    :cond_1e
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->signer:Lorg/bouncycastle/crypto/DSA;

    new-instance v2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    invoke-direct {v2, v0, v3}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    invoke-interface {v1, v4, v2}, Lorg/bouncycastle/crypto/DSA;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_18
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v3, 0x0

    instance-of v0, p1, Lorg/bouncycastle/jce/interfaces/ECPublicKey;

    if-nez v0, :cond_28

    :try_start_5
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->getPublicKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object p1

    instance-of v0, p1, Lorg/bouncycastle/jce/interfaces/ECPublicKey;

    if-nez v0, :cond_45

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "can\'t recognise key type in DSA based signer"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1e} :catch_1e

    :catch_1e
    move-exception v0

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "can\'t recognise key type in DSA based signer"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    move-object v1, v0

    move-object v0, p1

    :goto_2e
    new-instance v2, Lorg/bouncycastle/crypto/digests/GOST3411Digest;

    check-cast v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->getSbox()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->expandSbox([B)[B

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;-><init>([B)V

    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->signer:Lorg/bouncycastle/crypto/DSA;

    invoke-interface {v0, v3, v1}, Lorg/bouncycastle/crypto/DSA;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void

    :cond_45
    :try_start_45
    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_1e

    move-result-object v0

    move-object v1, v0

    move-object v0, p1

    goto :goto_2e
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSign()[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    :try_start_e
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->signer:Lorg/bouncycastle/crypto/DSA;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/DSA;->generateSignature([B)[Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    array-length v0, v1

    array-length v3, v2

    if-gt v0, v3, :cond_47

    array-length v0, v2

    :goto_27
    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v3, 0x0

    array-length v4, v0

    div-int/lit8 v4, v4, 0x2

    array-length v5, v2

    sub-int/2addr v4, v5

    array-length v5, v2

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x0

    array-length v3, v0

    array-length v4, v1

    sub-int/2addr v3, v4

    array-length v4, v1

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DEROctetString;->getEncoded()[B

    move-result-object v0

    return-object v0

    :cond_47
    array-length v0, v1
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_48} :catch_49

    goto :goto_27

    :catch_49
    move-exception v0

    new-instance v1, Ljava/security/SignatureException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineUpdate(B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method protected engineUpdate([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method protected engineVerify([B)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v1, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, v1, v7}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    :try_start_f
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    array-length v2, v0

    div-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    array-length v3, v0

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v6, v0

    div-int/lit8 v6, v6, 0x2

    invoke-static {v0, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v0

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x0

    array-length v6, v0

    div-int/lit8 v6, v6, 0x2

    invoke-static {v0, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/math/BigInteger;

    const/4 v4, 0x0

    new-instance v5, Ljava/math/BigInteger;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v5, v0, v4

    const/4 v2, 0x1

    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v4, v0, v2
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_4a} :catch_55

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->signer:Lorg/bouncycastle/crypto/DSA;

    aget-object v3, v0, v7

    aget-object v0, v0, v8

    invoke-interface {v2, v1, v3, v0}, Lorg/bouncycastle/crypto/DSA;->verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v0

    return v0

    :catch_55
    move-exception v0

    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "error decoding signature bytes."

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method expandSbox([B)[B
    .registers 6

    const/16 v0, 0x80

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_5
    array-length v2, p1

    if-lt v0, v2, :cond_9

    return-object v1

    :cond_9
    mul-int/lit8 v2, v0, 0x2

    aget-byte v3, p1, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-byte v3, p1, v0

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method
