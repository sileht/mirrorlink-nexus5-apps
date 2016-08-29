.class public Lorg/bouncycastle/crypto/modes/gcm/BasicGCMExponentiator;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/modes/gcm/GCMExponentiator;


# instance fields
.field private x:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exponentiateX(J[B)V
    .registers 15

    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->oneAsBytes()[B

    move-result-object v3

    cmp-long v0, p1, v8

    if-gtz v0, :cond_30

    move v0, v1

    :goto_d
    if-nez v0, :cond_2a

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/BasicGCMExponentiator;->x:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v4

    :cond_15
    const-wide/16 v6, 0x1

    and-long/2addr v6, p1

    cmp-long v0, v6, v8

    if-eqz v0, :cond_1f

    invoke-static {v3, v4}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiply([B[B)V

    :cond_1f
    invoke-static {v4, v4}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiply([B[B)V

    ushr-long/2addr p1, v1

    cmp-long v0, p1, v8

    if-lez v0, :cond_32

    move v0, v1

    :goto_28
    if-nez v0, :cond_15

    :cond_2a
    const/16 v0, 0x10

    invoke-static {v3, v2, p3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_30
    move v0, v2

    goto :goto_d

    :cond_32
    move v0, v2

    goto :goto_28
.end method

.method public init([B)V
    .registers 3

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/BasicGCMExponentiator;->x:[B

    return-void
.end method
