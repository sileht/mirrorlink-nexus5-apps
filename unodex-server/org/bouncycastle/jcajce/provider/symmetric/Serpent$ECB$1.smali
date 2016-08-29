.class Lorg/bouncycastle/jcajce/provider/symmetric/Serpent$ECB$1;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/jcajce/provider/symmetric/util/BlockCipherProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/Serpent$ECB;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lorg/bouncycastle/crypto/BlockCipher;
    .registers 2

    new-instance v0, Lorg/bouncycastle/crypto/engines/SerpentEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;-><init>()V

    return-object v0
.end method
