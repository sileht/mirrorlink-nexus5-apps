.class public Lorg/bouncycastle/jcajce/provider/digest/Whirlpool$Digest;
.super Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;
.source "Unknown"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/digest/Whirlpool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Digest"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jcajce/provider/digest/Whirlpool$Digest;

    new-instance v2, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/digest/Whirlpool$Digest;->digest:Lorg/bouncycastle/crypto/Digest;

    check-cast v1, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;

    invoke-direct {v2, v1}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;-><init>(Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;)V

    iput-object v2, v0, Lorg/bouncycastle/jcajce/provider/digest/Whirlpool$Digest;->digest:Lorg/bouncycastle/crypto/Digest;

    return-object v0
.end method