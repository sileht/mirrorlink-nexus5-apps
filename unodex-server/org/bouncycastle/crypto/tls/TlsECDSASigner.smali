.class public Lorg/bouncycastle/crypto/tls/TlsECDSASigner;
.super Lorg/bouncycastle/crypto/tls/TlsDSASigner;
.source "Unknown"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/TlsDSASigner;-><init>()V

    return-void
.end method


# virtual methods
.method protected createDSAImpl()Lorg/bouncycastle/crypto/DSA;
    .registers 2

    new-instance v0, Lorg/bouncycastle/crypto/signers/ECDSASigner;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/signers/ECDSASigner;-><init>()V

    return-object v0
.end method

.method public isValidPublicKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Z
    .registers 3

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    return v0
.end method
