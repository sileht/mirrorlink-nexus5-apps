.class public Lorg/bouncycastle/crypto/generators/KDF2BytesGenerator;
.super Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;
.source "Unknown"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;-><init>(ILorg/bouncycastle/crypto/Digest;)V

    return-void
.end method
