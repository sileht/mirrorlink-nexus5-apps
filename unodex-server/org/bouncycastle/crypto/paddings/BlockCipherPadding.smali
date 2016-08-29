.class public interface abstract Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;
.super Ljava/lang/Object;
.source "Unknown"


# virtual methods
.method public abstract addPadding([BI)I
.end method

.method public abstract getPaddingName()Ljava/lang/String;
.end method

.method public abstract init(Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract padCount([B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation
.end method
