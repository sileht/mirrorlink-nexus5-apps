.class public Lorg/bouncycastle/util/encoders/BufferedDecoder;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field protected buf:[B

.field protected bufOff:I

.field protected translator:Lorg/bouncycastle/util/encoders/Translator;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/util/encoders/Translator;I)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->translator:Lorg/bouncycastle/util/encoders/Translator;

    invoke-interface {p1}, Lorg/bouncycastle/util/encoders/Translator;->getEncodedBlockSize()I

    move-result v0

    rem-int v0, p2, v0

    if-nez v0, :cond_15

    new-array v0, p2, [B

    iput-object v0, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->buf:[B

    iput v1, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->bufOff:I

    return-void

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "buffer size not multiple of input block size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public processByte(B[BI)I
    .registers 10

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->buf:[B

    iget v1, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->bufOff:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->bufOff:I

    int-to-byte v3, p1

    aput-byte v3, v0, v1

    iget v0, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->bufOff:I

    iget-object v1, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->buf:[B

    array-length v1, v1

    if-eq v0, v1, :cond_14

    :goto_13
    return v2

    :cond_14
    iget-object v0, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->translator:Lorg/bouncycastle/util/encoders/Translator;

    iget-object v1, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->buf:[B

    iget-object v3, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->buf:[B

    array-length v3, v3

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lorg/bouncycastle/util/encoders/Translator;->decode([BII[BI)I

    move-result v0

    iput v2, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->bufOff:I

    move v2, v0

    goto :goto_13
.end method

.method public processBytes([BII[BI)I
    .registers 15

    const/4 v2, 0x0

    if-ltz p3, :cond_f

    iget-object v0, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->buf:[B

    array-length v0, v0

    iget v1, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->bufOff:I

    sub-int v6, v0, v1

    if-gt p3, v6, :cond_18

    :goto_c
    if-nez p3, :cond_4c

    :goto_e
    return v2

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t have a negative input length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    iget-object v0, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->buf:[B

    iget v1, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->bufOff:I

    invoke-static {p1, p2, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->translator:Lorg/bouncycastle/util/encoders/Translator;

    iget-object v1, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->buf:[B

    iget-object v3, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->buf:[B

    array-length v3, v3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/bouncycastle/util/encoders/Translator;->decode([BII[BI)I

    move-result v0

    add-int/lit8 v7, v0, 0x0

    iput v2, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->bufOff:I

    sub-int v8, p3, v6

    add-int v2, p2, v6

    add-int v5, p5, v7

    iget-object v0, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->buf:[B

    array-length v0, v0

    rem-int v0, v8, v0

    sub-int v3, v8, v0

    iget-object v0, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->translator:Lorg/bouncycastle/util/encoders/Translator;

    move-object v1, p1

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lorg/bouncycastle/util/encoders/Translator;->decode([BII[BI)I

    move-result v0

    add-int/2addr v0, v7

    sub-int p3, v8, v3

    add-int p2, v2, v3

    move v2, v0

    goto :goto_c

    :cond_4c
    iget-object v0, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->buf:[B

    iget v1, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->bufOff:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->bufOff:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->bufOff:I

    goto :goto_e
.end method
