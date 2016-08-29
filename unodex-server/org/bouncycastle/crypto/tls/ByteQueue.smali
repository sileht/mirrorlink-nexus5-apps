.class public Lorg/bouncycastle/crypto/tls/ByteQueue;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static final INITBUFSIZE:I = 0x400


# instance fields
.field private available:I

.field private databuf:[B

.field private skipped:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/ByteQueue;->databuf:[B

    iput v1, p0, Lorg/bouncycastle/crypto/tls/ByteQueue;->skipped:I

    iput v1, p0, Lorg/bouncycastle/crypto/tls/ByteQueue;->available:I

    return-void
.end method

.method public static final nextTwoPow(I)I
    .registers 3

    shr-int/lit8 v0, p0, 0x1

    or-int/2addr v0, p0

    shr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public addData([BII)V
    .registers 9

    const/4 v4, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/tls/ByteQueue;->skipped:I

    iget v1, p0, Lorg/bouncycastle/crypto/tls/ByteQueue;->available:I

    add-int/2addr v0, v1

    add-int/2addr v0, p3

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/ByteQueue;->databuf:[B

    array-length v1, v1

    if-gt v0, v1, :cond_1c

    :goto_c
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/ByteQueue;->databuf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/tls/ByteQueue;->skipped:I

    iget v2, p0, Lorg/bouncycastle/crypto/tls/ByteQueue;->available:I

    add-int/2addr v1, v2

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/crypto/tls/ByteQueue;->available:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/bouncycastle/crypto/tls/ByteQueue;->available:I

    return-void

    :cond_1c
    array-length v0, p1

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;->nextTwoPow(I)I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/ByteQueue;->databuf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/tls/ByteQueue;->skipped:I

    iget v3, p0, Lorg/bouncycastle/crypto/tls/ByteQueue;->available:I

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v4, p0, Lorg/bouncycastle/crypto/tls/ByteQueue;->skipped:I

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/ByteQueue;->databuf:[B

    goto :goto_c
.end method

.method public read([BIII)V
    .registers 8

    iget v0, p0, Lorg/bouncycastle/crypto/tls/ByteQueue;->available:I

    sub-int/2addr v0, p4

    if-lt v0, p3, :cond_12

    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_1b

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/ByteQueue;->databuf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/tls/ByteQueue;->skipped:I

    add-int/2addr v1, p4

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_12
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsRuntimeException;

    const-string/jumbo v1, "Not enough data to read"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Buffer size of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is too small for a read of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeData(I)V
    .registers 7

    const/4 v4, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/tls/ByteQueue;->available:I

    if-gt p1, v0, :cond_19

    iget v0, p0, Lorg/bouncycastle/crypto/tls/ByteQueue;->available:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/bouncycastle/crypto/tls/ByteQueue;->available:I

    iget v0, p0, Lorg/bouncycastle/crypto/tls/ByteQueue;->skipped:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/bouncycastle/crypto/tls/ByteQueue;->skipped:I

    iget v0, p0, Lorg/bouncycastle/crypto/tls/ByteQueue;->skipped:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/ByteQueue;->databuf:[B

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_40

    :goto_18
    return-void

    :cond_19
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bytes, only got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/crypto/tls/ByteQueue;->available:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/ByteQueue;->databuf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/tls/ByteQueue;->skipped:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/ByteQueue;->databuf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/tls/ByteQueue;->available:I

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v4, p0, Lorg/bouncycastle/crypto/tls/ByteQueue;->skipped:I

    goto :goto_18
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/crypto/tls/ByteQueue;->available:I

    return v0
.end method
