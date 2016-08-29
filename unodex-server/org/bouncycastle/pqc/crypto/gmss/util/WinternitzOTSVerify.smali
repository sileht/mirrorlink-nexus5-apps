.class public Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private messDigestOTS:Lorg/bouncycastle/crypto/Digest;

.field private w:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method


# virtual methods
.method public Verify([B[B)[B
    .registers 29

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v13

    new-array v4, v13, [B

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    array-length v6, v0

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v5, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    new-array v14, v4, [B

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v5, 0x0

    invoke-interface {v4, v14, v5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    shl-int/lit8 v4, v13, 0x3

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/lit8 v5, v5, -0x1

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    div-int v15, v4, v5

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int v4, v15, v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->getLog(I)I

    move-result v16

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int v4, v4, v16

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    div-int/2addr v4, v5

    add-int/2addr v4, v15

    mul-int/2addr v4, v13

    move-object/from16 v0, p2

    array-length v5, v0

    if-ne v4, v5, :cond_9c

    new-array v0, v4, [B

    move-object/from16 v17, v0

    const/4 v7, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    const/16 v5, 0x8

    rem-int v4, v5, v4

    if-eqz v4, :cond_9e

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    const/16 v5, 0x8

    if-lt v4, v5, :cond_164

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    const/16 v5, 0x39

    if-lt v4, v5, :cond_2e1

    :cond_7a
    new-array v4, v13, [B

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v5, 0x0

    move-object/from16 v0, v17

    array-length v6, v0

    move-object/from16 v0, v17

    invoke-interface {v4, v0, v5, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    new-array v4, v4, [B

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v6, 0x0

    invoke-interface {v5, v4, v6}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object v4

    :cond_9c
    const/4 v4, 0x0

    return-object v4

    :cond_9e
    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    const/16 v5, 0x8

    div-int v11, v5, v4

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    const/4 v5, 0x1

    shl-int v4, v5, v4

    add-int/lit8 v12, v4, -0x1

    new-array v5, v13, [B

    const/4 v4, 0x0

    :goto_b2
    array-length v8, v14

    if-lt v4, v8, :cond_e7

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int v4, v15, v4

    sub-int v7, v4, v7

    const/4 v4, 0x0

    move v8, v7

    move v7, v6

    move v6, v4

    :goto_c1
    move/from16 v0, v16

    if-ge v6, v0, :cond_7a

    and-int v4, v8, v12

    mul-int v9, v7, v13

    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v9, v5, v10, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_cf
    if-lt v4, v12, :cond_145

    const/4 v4, 0x0

    mul-int v9, v7, v13

    move-object/from16 v0, v17

    invoke-static {v5, v4, v0, v9, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-int/2addr v8, v4

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/2addr v4, v6

    move v6, v4

    goto :goto_c1

    :cond_e7
    const/4 v8, 0x0

    move v9, v8

    :goto_e9
    if-lt v9, v11, :cond_ee

    add-int/lit8 v4, v4, 0x1

    goto :goto_b2

    :cond_ee
    aget-byte v8, v14, v4

    and-int/2addr v8, v12

    add-int v10, v7, v8

    mul-int v7, v6, v13

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-static {v0, v7, v5, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v7, v5

    move v5, v8

    :goto_100
    if-lt v5, v12, :cond_11d

    const/4 v5, 0x0

    mul-int v8, v6, v13

    move-object/from16 v0, v17

    invoke-static {v7, v5, v0, v8, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v5, v14, v4

    move-object/from16 v0, p0

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-int/2addr v5, v8

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, v14, v4

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v9, 0x1

    move v9, v5

    move-object v5, v7

    move v7, v10

    goto :goto_e9

    :cond_11d
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/16 v18, 0x0

    array-length v0, v7

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v8, v7, v0, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v7}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v7

    new-array v7, v7, [B

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v8, v7, v0}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_100

    :cond_145
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v10, 0x0

    array-length v11, v5

    invoke-interface {v9, v5, v10, v11}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    new-array v5, v5, [B

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v10, 0x0

    invoke-interface {v9, v5, v10}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_cf

    :cond_164
    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    div-int v18, v13, v4

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    const/4 v5, 0x1

    shl-int v4, v5, v4

    add-int/lit8 v19, v4, -0x1

    new-array v8, v13, [B

    const/4 v5, 0x0

    const/4 v4, 0x0

    move v12, v4

    move v9, v6

    move v10, v7

    :goto_17a
    move/from16 v0, v18

    if-lt v12, v0, :cond_1cf

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    rem-int v11, v13, v4

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    move-wide/from16 v24, v6

    move v6, v4

    move v7, v5

    move-wide/from16 v4, v24

    :goto_18d
    if-lt v6, v11, :cond_25f

    shl-int/lit8 v11, v11, 0x3

    const/4 v6, 0x0

    move v7, v6

    move v6, v9

    move-object/from16 v24, v8

    move-wide v8, v4

    move-object/from16 v5, v24

    :goto_199
    if-lt v7, v11, :cond_272

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int v4, v15, v4

    sub-int v7, v4, v10

    const/4 v4, 0x0

    move v8, v7

    move v7, v6

    move v6, v4

    :goto_1a7
    move/from16 v0, v16

    if-ge v6, v0, :cond_7a

    and-int v4, v8, v19

    mul-int v9, v7, v13

    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v9, v5, v10, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1b5
    move/from16 v0, v19

    if-lt v4, v0, :cond_2c2

    const/4 v4, 0x0

    mul-int v9, v7, v13

    move-object/from16 v0, v17

    invoke-static {v5, v4, v0, v9, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-int/2addr v8, v4

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/2addr v4, v6

    move v6, v4

    goto :goto_1a7

    :cond_1cf
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    :goto_1d2
    move-object/from16 v0, p0

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    if-lt v4, v11, :cond_1ec

    const/4 v4, 0x0

    move v11, v10

    move v10, v9

    move-object/from16 v24, v8

    move-wide v8, v6

    move-object/from16 v6, v24

    move v7, v4

    :goto_1e1
    const/16 v4, 0x8

    if-lt v7, v4, :cond_1fe

    add-int/lit8 v4, v12, 0x1

    move v12, v4

    move-object v8, v6

    move v9, v10

    move v10, v11

    goto :goto_17a

    :cond_1ec
    aget-byte v11, v14, v5

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v20, v4, 0x3

    shl-int v11, v11, v20

    int-to-long v0, v11

    move-wide/from16 v20, v0

    xor-long v6, v6, v20

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d2

    :cond_1fe
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    and-long v20, v20, v8

    move-wide/from16 v0, v20

    long-to-int v4, v0

    add-int/2addr v11, v4

    mul-int v20, v10, v13

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v6, v2, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_216
    move/from16 v0, v19

    if-lt v4, v0, :cond_22f

    const/4 v4, 0x0

    mul-int v20, v10, v13

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v6, v4, v0, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-long/2addr v8, v4

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_1e1

    :cond_22f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    array-length v0, v6

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v6, v1, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v6}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    new-array v6, v6, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v0, v6, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_216

    :cond_25f
    aget-byte v12, v14, v7

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v18, v6, 0x3

    shl-int v12, v12, v18

    int-to-long v0, v12

    move-wide/from16 v20, v0

    xor-long v4, v4, v20

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_18d

    :cond_272
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    and-long v20, v20, v8

    move-wide/from16 v0, v20

    long-to-int v4, v0

    add-int/2addr v10, v4

    mul-int v12, v6, v13

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v12, v5, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_285
    move/from16 v0, v19

    if-lt v4, v0, :cond_2a0

    const/4 v4, 0x0

    mul-int v12, v6, v13

    move-object/from16 v0, v17

    invoke-static {v5, v4, v0, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-long/2addr v8, v4

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/2addr v4, v7

    move v7, v4

    goto/16 :goto_199

    :cond_2a0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v14, 0x0

    array-length v0, v5

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-interface {v12, v5, v14, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    new-array v5, v5, [B

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v14, 0x0

    invoke-interface {v12, v5, v14}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_285

    :cond_2c2
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v10, 0x0

    array-length v11, v5

    invoke-interface {v9, v5, v10, v11}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    new-array v5, v5, [B

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v10, 0x0

    invoke-interface {v9, v5, v10}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1b5

    :cond_2e1
    shl-int/lit8 v4, v13, 0x3

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    sub-int v18, v4, v5

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    const/4 v5, 0x1

    shl-int v4, v5, v4

    add-int/lit8 v19, v4, -0x1

    new-array v8, v13, [B

    const/4 v4, 0x0

    move v5, v6

    move v6, v7

    move/from16 v24, v4

    move-object v4, v8

    move/from16 v8, v24

    :goto_2fc
    move/from16 v0, v18

    if-le v8, v0, :cond_34f

    ushr-int/lit8 v7, v8, 0x3

    if-lt v7, v13, :cond_3cc

    :goto_304
    move-object/from16 v0, p0

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int v7, v15, v7

    sub-int/2addr v7, v6

    const/4 v6, 0x0

    move v9, v6

    move v10, v5

    move v11, v7

    move-object v6, v4

    :goto_310
    move/from16 v0, v16

    if-ge v9, v0, :cond_7a

    and-int v4, v11, v19

    int-to-long v4, v4

    mul-int v7, v10, v13

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v7, v6, v8, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-wide/from16 v24, v4

    move-object v5, v6

    move-wide/from16 v6, v24

    :goto_324
    move/from16 v0, v19

    int-to-long v14, v0

    cmp-long v4, v6, v14

    if-ltz v4, :cond_42d

    const/4 v4, 0x1

    :goto_32c
    if-nez v4, :cond_430

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v8, 0x0

    array-length v12, v5

    invoke-interface {v4, v5, v8, v12}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    new-array v8, v4, [B

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v5, 0x0

    invoke-interface {v4, v8, v5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const-wide/16 v4, 0x1

    add-long/2addr v4, v6

    move-wide v6, v4

    move-object v5, v8

    goto :goto_324

    :cond_34f
    ushr-int/lit8 v7, v8, 0x3

    rem-int/lit8 v9, v8, 0x8

    move-object/from16 v0, p0

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int v12, v8, v10

    add-int/lit8 v8, v12, 0x7

    ushr-int/lit8 v20, v8, 0x3

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    :goto_360
    move/from16 v0, v20

    if-lt v7, v0, :cond_3a3

    ushr-long v8, v10, v9

    move/from16 v0, v19

    int-to-long v10, v0

    and-long/2addr v8, v10

    int-to-long v6, v6

    add-long/2addr v6, v8

    long-to-int v10, v6

    mul-int v6, v5, v13

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v6, v4, v7, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-wide v6, v8

    move-object v8, v4

    :goto_377
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v4, v6, v20

    if-ltz v4, :cond_3bb

    const/4 v4, 0x1

    :goto_381
    if-nez v4, :cond_3bd

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v9, 0x0

    array-length v11, v8

    invoke-interface {v4, v8, v9, v11}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    new-array v4, v4, [B

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v9, 0x0

    invoke-interface {v8, v4, v9}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    move-object v8, v4

    goto :goto_377

    :cond_3a3
    aget-byte v21, v14, v7

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    shl-int/lit8 v22, v8, 0x3

    shl-int v21, v21, v22

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    xor-long v10, v10, v22

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_360

    :cond_3bb
    const/4 v4, 0x0

    goto :goto_381

    :cond_3bd
    const/4 v4, 0x0

    mul-int v6, v5, v13

    move-object/from16 v0, v17

    invoke-static {v8, v4, v0, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, 0x1

    move-object v4, v8

    move v6, v10

    move v8, v12

    goto/16 :goto_2fc

    :cond_3cc
    rem-int/lit8 v9, v8, 0x8

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    :goto_3d1
    if-lt v7, v13, :cond_40d

    ushr-long v8, v10, v9

    move/from16 v0, v19

    int-to-long v10, v0

    and-long/2addr v8, v10

    int-to-long v6, v6

    add-long/2addr v6, v8

    long-to-int v6, v6

    mul-int v7, v5, v13

    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v7, v4, v10, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3e4
    move/from16 v0, v19

    int-to-long v10, v0

    cmp-long v7, v8, v10

    if-ltz v7, :cond_41f

    const/4 v7, 0x1

    :goto_3ec
    if-nez v7, :cond_421

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v10, 0x0

    array-length v11, v4

    invoke-interface {v7, v4, v10, v11}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    new-array v4, v4, [B

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v10, 0x0

    invoke-interface {v7, v4, v10}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    goto :goto_3e4

    :cond_40d
    aget-byte v12, v14, v7

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v18, v8, 0x3

    shl-int v12, v12, v18

    int-to-long v0, v12

    move-wide/from16 v20, v0

    xor-long v10, v10, v20

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_3d1

    :cond_41f
    const/4 v7, 0x0

    goto :goto_3ec

    :cond_421
    const/4 v7, 0x0

    mul-int v8, v5, v13

    move-object/from16 v0, v17

    invoke-static {v4, v7, v0, v8, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_304

    :cond_42d
    const/4 v4, 0x0

    goto/16 :goto_32c

    :cond_430
    const/4 v4, 0x0

    mul-int v6, v10, v13

    move-object/from16 v0, v17

    invoke-static {v5, v4, v0, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-int v7, v11, v4

    add-int/lit8 v6, v10, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/2addr v4, v9

    move v9, v4

    move v10, v6

    move v11, v7

    move-object v6, v5

    goto/16 :goto_310
.end method

.method public getLog(I)I
    .registers 4

    const/4 v1, 0x1

    const/4 v0, 0x2

    :goto_2
    if-lt v0, p1, :cond_5

    return v1

    :cond_5
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public getSignatureLength()I
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    shl-int/lit8 v1, v0, 0x3

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v1, v2

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    div-int/2addr v1, v2

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int v2, v1, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->getLog(I)I

    move-result v2

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    div-int/2addr v2, v3

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    return v0
.end method
