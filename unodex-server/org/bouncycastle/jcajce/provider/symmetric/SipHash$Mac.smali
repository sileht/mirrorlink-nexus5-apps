.class public Lorg/bouncycastle/jcajce/provider/symmetric/SipHash$Mac;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/SipHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mac"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Lorg/bouncycastle/crypto/macs/SipHash;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/macs/SipHash;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lorg/bouncycastle/crypto/Mac;)V

    return-void
.end method