.class public Lorg/bouncycastle/operator/bc/BcAESSymmetricKeyWrapper;
.super Lorg/bouncycastle/operator/bc/BcSymmetricKeyWrapper;
.source "Unknown"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/params/KeyParameter;)V
    .registers 4

    invoke-static {p1}, Lorg/bouncycastle/operator/bc/AESUtil;->determineKeyEncAlg(Lorg/bouncycastle/crypto/params/KeyParameter;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/engines/AESWrapEngine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/AESWrapEngine;-><init>()V

    invoke-direct {p0, v0, v1, p1}, Lorg/bouncycastle/operator/bc/BcSymmetricKeyWrapper;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/crypto/Wrapper;Lorg/bouncycastle/crypto/params/KeyParameter;)V

    return-void
.end method
