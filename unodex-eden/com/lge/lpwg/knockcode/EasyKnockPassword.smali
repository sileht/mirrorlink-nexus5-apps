.class public Lcom/lge/lpwg/knockcode/EasyKnockPassword;
.super Ljava/lang/Object;
.source "EasyKnockPassword.java"


# static fields
.field static final CLUSTERING_THRESHOLD_VALUE:D = 0.1296

.field static final THRESHOLD_VALUE:D = 0.04

.field private static distanceMat:[D

.field private static mIsRotatationFixed:Z

.field private static mScreenDPI:I

.field static radiusSquared:D

.field public static rotate:[[I

.field public static twoSequenceVals:[[I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 18
    const/16 v0, 0xc

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_8e

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_96

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_9e

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_a6

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_ae

    aput-object v1, v0, v4

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_b6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_be

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 19
    new-array v2, v3, [I

    fill-array-data v2, :array_c6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_ce

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_d6

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_de

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_e6

    aput-object v2, v0, v1

    .line 18
    sput-object v0, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->twoSequenceVals:[[I

    .line 24
    new-array v0, v4, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_ee

    aput-object v1, v0, v5

    new-array v1, v4, [I

    fill-array-data v1, :array_fa

    aput-object v1, v0, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_106

    aput-object v1, v0, v3

    .line 25
    new-array v1, v4, [I

    fill-array-data v1, :array_112

    aput-object v1, v0, v7

    .line 24
    sput-object v0, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->rotate:[[I

    .line 27
    sput v5, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->mScreenDPI:I

    .line 31
    return-void

    .line 18
    nop

    :array_8e
    .array-data 4
        0x1
        0x2
    .end array-data

    :array_96
    .array-data 4
        0x1
        0x3
    .end array-data

    :array_9e
    .array-data 4
        0x1
        0x4
    .end array-data

    :array_a6
    .array-data 4
        0x2
        0x1
    .end array-data

    :array_ae
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_b6
    .array-data 4
        0x2
        0x4
    .end array-data

    :array_be
    .array-data 4
        0x3
        0x1
    .end array-data

    .line 19
    :array_c6
    .array-data 4
        0x3
        0x2
    .end array-data

    :array_ce
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_d6
    .array-data 4
        0x4
        0x1
    .end array-data

    :array_de
    .array-data 4
        0x4
        0x2
    .end array-data

    :array_e6
    .array-data 4
        0x4
        0x3
    .end array-data

    .line 24
    :array_ee
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data

    :array_fa
    .array-data 4
        0x3
        0x1
        0x4
        0x2
    .end array-data

    :array_106
    .array-data 4
        0x4
        0x3
        0x2
        0x1
    .end array-data

    .line 25
    :array_112
    .array-data 4
        0x2
        0x4
        0x1
        0x3
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method private static copyNewResult(Ljava/util/List;Ljava/util/List;I)[I
    .registers 11
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[I>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;I)[I"
        }
    .end annotation

    .prologue
    .line 398
    .local p0, "newResult":Ljava/util/List;, "Ljava/util/List<[I>;"
    .local p1, "diffIndex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .line 399
    .local v4, "numItems":I
    mul-int v7, v4, p2

    mul-int/lit8 v7, v7, 0x4

    add-int/lit8 v7, v7, 0x1

    new-array v6, v7, [I

    .line 400
    .local v6, "result":[I
    const/4 v7, 0x0

    aput v4, v6, v7

    .line 401
    const/4 v2, 0x1

    .line 403
    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-lt v1, v4, :cond_14

    .line 418
    return-object v6

    .line 404
    :cond_14
    const/4 v0, 0x0

    .line 405
    .local v0, "curIndex":I
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 406
    .local v5, "numList":[I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-lt v3, v7, :cond_31

    .line 413
    :goto_24
    if-lt v0, p2, :cond_40

    .line 403
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 408
    :cond_29
    aget v7, v5, v3

    aput v7, v6, v2

    .line 409
    add-int/lit8 v0, v0, 0x1

    .line 410
    add-int/lit8 v2, v2, 0x1

    .line 407
    :cond_31
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v0, v7, :cond_29

    .line 406
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 414
    :cond_40
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    aget v7, v5, v7

    aput v7, v6, v2

    .line 415
    add-int/lit8 v2, v2, 0x1

    .line 413
    add-int/lit8 v0, v0, 0x1

    goto :goto_24
.end method

.method private static createUntrimmedResult(I[II[ZI)[I
    .registers 11
    .param p0, "size"    # I
    .param p1, "result"    # [I
    .param p2, "changeIndex"    # I
    .param p3, "possibleDirection"    # [Z
    .param p4, "count"    # I

    .prologue
    const/4 v5, 0x0

    .line 357
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    aget v3, p1, v5

    if-lt v1, v3, :cond_15

    .line 363
    mul-int v3, p4, p0

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [I

    .line 364
    .local v2, "untrimmedResult":[I
    aput p4, v2, v5

    .line 365
    const/4 v0, 0x1

    .line 366
    .local v0, "curIndex":I
    const/4 v1, 0x0

    :goto_10
    aget v3, p1, v5

    if-lt v1, v3, :cond_2f

    .line 373
    return-object v2

    .line 358
    .end local v0    # "curIndex":I
    .end local v2    # "untrimmedResult":[I
    :cond_15
    mul-int v3, v1, p0

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, p2

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x4

    .line 359
    mul-int v4, v1, p0

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p2

    aget v4, p1, v4

    add-int/2addr v3, v4

    .line 358
    aget-boolean v3, p3, v3

    .line 359
    if-eqz v3, :cond_2c

    .line 360
    add-int/lit8 p4, p4, 0x1

    .line 357
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 367
    .restart local v0    # "curIndex":I
    .restart local v2    # "untrimmedResult":[I
    :cond_2f
    mul-int v3, v1, p0

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, p2

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x4

    .line 368
    mul-int v4, v1, p0

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p2

    aget v4, p1, v4

    add-int/2addr v3, v4

    .line 367
    aget-boolean v3, p3, v3

    .line 368
    if-eqz v3, :cond_4c

    .line 369
    mul-int v3, v1, p0

    add-int/lit8 v3, v3, 0x1

    invoke-static {p1, v3, v2, v0, p0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 370
    add-int/2addr v0, p0

    .line 366
    :cond_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_10
.end method

.method private static fillArray([IIIIII)V
    .registers 8
    .param p0, "toFill"    # [I
    .param p1, "val1"    # I
    .param p2, "val2"    # I
    .param p3, "startPoint"    # I
    .param p4, "changeIndex"    # I
    .param p5, "length"    # I

    .prologue
    .line 147
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    if-le v0, p4, :cond_6

    .line 150
    :goto_3
    if-lt v0, p5, :cond_d

    .line 153
    return-void

    .line 148
    :cond_6
    add-int v1, p3, v0

    aput p1, p0, v1

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 151
    :cond_d
    add-int v1, p3, v0

    aput p2, p0, v1

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private static generateFinalCandidates(Ljava/util/List;Ljava/util/List;Ljava/util/List;IZ[Z)[I
    .registers 13
    .param p3, "size"    # I
    .param p4, "rotation"    # Z
    .param p5, "orientation"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[I>;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/lpwg/knockcode/EasyKnockPoint;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;IZ[Z)[I"
        }
    .end annotation

    .prologue
    .line 310
    .local p0, "newResult":Ljava/util/List;, "Ljava/util/List<[I>;"
    .local p1, "easyKnock":Ljava/util/List;, "Ljava/util/List<Lcom/lge/lpwg/knockcode/EasyKnockPoint;>;"
    .local p2, "diffIndex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p0, p2, p3}, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->copyNewResult(Ljava/util/List;Ljava/util/List;I)[I

    move-result-object v3

    .line 311
    .local v3, "result":[I
    invoke-static {v3, p3}, Lcom/lge/lpwg/knockcode/RotatedBoolean;->addRotations([II)V

    .line 312
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 314
    .local v4, "changeIndex":I
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/lpwg/knockcode/EasyKnockPoint;

    add-int/lit8 v1, v4, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/lpwg/knockcode/EasyKnockPoint;

    invoke-static {v0, v1}, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->getFirstOrientation(Lcom/lge/lpwg/knockcode/EasyKnockPoint;Lcom/lge/lpwg/knockcode/EasyKnockPoint;)[Z

    move-result-object v5

    .line 315
    .local v5, "possibleDirection":[Z
    if-eqz p4, :cond_2c

    .line 316
    invoke-static {p1, p3, v3, v4, v5}, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->generateRrotatedResult(Ljava/util/List;I[II[Z)[I

    move-result-object v3

    move-object v6, v3

    .line 318
    .end local v3    # "result":[I
    .local v6, "result":[I
    :goto_2b
    return-object v6

    .end local v6    # "result":[I
    .restart local v3    # "result":[I
    :cond_2c
    move-object v0, p1

    move v1, p3

    move-object v2, p5

    invoke-static/range {v0 .. v5}, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->generateRotationFixeddResult(Ljava/util/List;I[Z[II[Z)[I

    move-result-object v3

    move-object v6, v3

    .end local v3    # "result":[I
    .restart local v6    # "result":[I
    goto :goto_2b
.end method

.method private static generateMultiOrientation(I[ZII[I)[I
    .registers 13
    .param p0, "size"    # I
    .param p1, "orientation"    # [Z
    .param p2, "count"    # I
    .param p3, "orientationCount"    # I
    .param p4, "result"    # [I

    .prologue
    .line 183
    move-object v5, p4

    .line 184
    .local v5, "tmpResult":[I
    mul-int v6, p2, p0

    mul-int/2addr v6, p3

    add-int/lit8 v6, v6, 0x1

    new-array p4, v6, [I

    .line 185
    const/4 v6, 0x0

    mul-int v7, p2, p3

    aput v7, p4, v6

    .line 186
    mul-int v0, p0, p2

    .line 187
    .local v0, "baseIndex":I
    const/4 v1, 0x1

    .line 188
    .local v1, "curIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    const/4 v6, 0x4

    if-lt v2, v6, :cond_15

    .line 197
    return-object p4

    .line 189
    :cond_15
    aget-boolean v6, p1, v2

    if-eqz v6, :cond_20

    .line 190
    sget-object v6, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->rotate:[[I

    aget-object v4, v6, v2

    .line 191
    .local v4, "rotated":[I
    const/4 v3, 0x1

    .local v3, "j":I
    :goto_1e
    if-le v3, v0, :cond_23

    .line 188
    .end local v3    # "j":I
    .end local v4    # "rotated":[I
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 192
    .restart local v3    # "j":I
    .restart local v4    # "rotated":[I
    :cond_23
    aget v6, v5, v3

    add-int/lit8 v6, v6, -0x1

    aget v6, v4, v6

    aput v6, p4, v1

    .line 193
    add-int/lit8 v1, v1, 0x1

    .line 191
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e
.end method

.method private static generateRotationFixeddResult(Ljava/util/List;I[Z[II[Z)[I
    .registers 20
    .param p1, "size"    # I
    .param p2, "orientation"    # [Z
    .param p3, "result"    # [I
    .param p4, "changeIndex"    # I
    .param p5, "possibleDirection"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/lpwg/knockcode/EasyKnockPoint;",
            ">;I[Z[II[Z)[I"
        }
    .end annotation

    .prologue
    .line 325
    .local p0, "easyKnock":Ljava/util/List;, "Ljava/util/List<Lcom/lge/lpwg/knockcode/EasyKnockPoint;>;"
    const/4 v4, 0x0

    .line 326
    .local v4, "count":I
    move-object/from16 v0, p3

    move/from16 v1, p4

    move-object/from16 v2, p5

    invoke-static {p1, v0, v1, v2, v4}, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->createUntrimmedResult(I[II[ZI)[I

    move-result-object v11

    .line 327
    .local v11, "untrimmedResult":[I
    invoke-static {v11, p0}, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->trimResult([ILjava/util/List;)[I

    move-result-object v10

    .line 328
    .local v10, "trimmedResult":[I
    const/4 v12, 0x0

    aget v4, v10, v12

    .line 330
    const/4 v8, 0x0

    .line 331
    .local v8, "orientationCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_14
    const/4 v12, 0x4

    if-lt v6, v12, :cond_37

    .line 336
    const/4 v12, 0x1

    if-ne v8, v12, :cond_1f

    const/4 v12, 0x0

    aget-boolean v12, p2, v12

    if-nez v12, :cond_36

    .line 337
    :cond_1f
    mul-int v12, v4, p1

    mul-int/2addr v12, v8

    add-int/lit8 v12, v12, 0x1

    new-array v0, v12, [I

    move-object/from16 p3, v0

    .line 338
    const/4 v12, 0x0

    mul-int v13, v4, v8

    aput v13, p3, v12

    .line 339
    mul-int v3, p1, v4

    .line 340
    .local v3, "baseIndex":I
    const/4 v5, 0x1

    .line 341
    .local v5, "curIndex2":I
    const/4 v6, 0x0

    :goto_31
    const/4 v12, 0x4

    if-lt v6, v12, :cond_40

    move-object/from16 v10, p3

    .line 352
    .end local v3    # "baseIndex":I
    .end local v5    # "curIndex2":I
    .end local v10    # "trimmedResult":[I
    :cond_36
    return-object v10

    .line 332
    .restart local v10    # "trimmedResult":[I
    :cond_37
    aget-boolean v12, p2, v6

    if-eqz v12, :cond_3d

    .line 333
    add-int/lit8 v8, v8, 0x1

    .line 331
    :cond_3d
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 342
    .restart local v3    # "baseIndex":I
    .restart local v5    # "curIndex2":I
    :cond_40
    aget-boolean v12, p2, v6

    if-eqz v12, :cond_4b

    .line 343
    sget-object v12, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->rotate:[[I

    aget-object v9, v12, v6

    .line 344
    .local v9, "rotated":[I
    const/4 v7, 0x1

    .local v7, "j":I
    :goto_49
    if-le v7, v3, :cond_4e

    .line 341
    .end local v7    # "j":I
    .end local v9    # "rotated":[I
    :cond_4b
    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    .line 345
    .restart local v7    # "j":I
    .restart local v9    # "rotated":[I
    :cond_4e
    aget v12, v10, v7

    add-int/lit8 v12, v12, -0x1

    aget v12, v9, v12

    aput v12, p3, v5

    .line 346
    add-int/lit8 v5, v5, 0x1

    .line 344
    add-int/lit8 v7, v7, 0x1

    goto :goto_49
.end method

.method private static generateRrotatedResult(Ljava/util/List;I[II[Z)[I
    .registers 12
    .param p1, "size"    # I
    .param p2, "result"    # [I
    .param p3, "changeIndex"    # I
    .param p4, "possibleDirection"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/lpwg/knockcode/EasyKnockPoint;",
            ">;I[II[Z)[I"
        }
    .end annotation

    .prologue
    .local p0, "easyKnock":Ljava/util/List;, "Ljava/util/List<Lcom/lge/lpwg/knockcode/EasyKnockPoint;>;"
    const/4 v6, 0x0

    .line 378
    move-object v0, p2

    .line 379
    .local v0, "RrotatedResult":[I
    new-array v3, p1, [I

    .line 380
    .local v3, "tmp":[I
    const/4 v1, 0x1

    .line 381
    .local v1, "curIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    aget v4, v0, v6

    if-lt v2, v4, :cond_f

    .line 394
    invoke-static {v0, p0}, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->trimResult([ILjava/util/List;)[I

    move-result-object v4

    return-object v4

    .line 382
    :cond_f
    mul-int v4, v2, p1

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, p3

    aget v4, v0, v4

    mul-int/lit8 v4, v4, 0x4

    .line 383
    mul-int v5, v2, p1

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v5, p3

    aget v5, v0, v5

    add-int/2addr v4, v5

    .line 382
    aget-boolean v4, p4, v4

    .line 383
    if-eqz v4, :cond_2b

    .line 384
    mul-int v4, v2, p1

    add-int/lit8 v4, v4, 0x1

    if-ne v1, v4, :cond_2e

    .line 385
    add-int/2addr v1, p1

    .line 381
    :cond_2b
    :goto_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 387
    :cond_2e
    mul-int v4, v2, p1

    add-int/lit8 v4, v4, 0x1

    invoke-static {v0, v4, v3, v6, p1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 388
    mul-int v4, v2, p1

    add-int/lit8 v4, v4, 0x1

    invoke-static {v0, v1, v0, v4, p1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 389
    invoke-static {v3, v6, v0, v1, p1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 390
    add-int/2addr v1, p1

    goto :goto_2b
.end method

.method private static generateTwoSequence(IZII[Z)[I
    .registers 16
    .param p0, "size"    # I
    .param p1, "rotation"    # Z
    .param p2, "count"    # I
    .param p3, "changeIndex"    # I
    .param p4, "possibleDirections"    # [Z

    .prologue
    .line 202
    if-nez p1, :cond_14

    .line 203
    mul-int v1, p0, p2

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [I

    .line 208
    .local v0, "result":[I
    :goto_8
    const/4 v3, 0x1

    .line 209
    .local v3, "indexFront":I
    mul-int v1, p0, p2

    add-int/lit8 v7, v1, 0x1

    .line 211
    .local v7, "indexBack":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_e
    sget-object v1, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->twoSequenceVals:[[I

    array-length v1, v1

    if-lt v10, v1, :cond_20

    .line 224
    return-object v0

    .line 205
    .end local v0    # "result":[I
    .end local v3    # "indexFront":I
    .end local v7    # "indexBack":I
    .end local v10    # "i":I
    :cond_14
    mul-int/lit8 v1, p0, 0xc

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [I

    .line 206
    .restart local v0    # "result":[I
    const/4 v1, 0x0

    const/16 v2, 0xc

    aput v2, v0, v1

    goto :goto_8

    .line 212
    .restart local v3    # "indexFront":I
    .restart local v7    # "indexBack":I
    .restart local v10    # "i":I
    :cond_20
    sget-object v1, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->twoSequenceVals:[[I

    aget-object v1, v1, v10

    const/4 v2, 0x0

    aget v1, v1, v2

    mul-int/lit8 v1, v1, 0x4

    sget-object v2, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->twoSequenceVals:[[I

    aget-object v2, v2, v10

    const/4 v4, 0x1

    aget v2, v2, v4

    add-int/2addr v1, v2

    aget-boolean v1, p4, v1

    if-eqz v1, :cond_4c

    .line 213
    sget-object v1, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->twoSequenceVals:[[I

    aget-object v1, v1, v10

    const/4 v2, 0x0

    aget v1, v1, v2

    sget-object v2, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->twoSequenceVals:[[I

    aget-object v2, v2, v10

    const/4 v4, 0x1

    aget v2, v2, v4

    move v4, p3

    move v5, p0

    invoke-static/range {v0 .. v5}, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->fillArray([IIIIII)V

    .line 215
    add-int/2addr v3, p0

    .line 211
    :cond_49
    :goto_49
    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    .line 217
    :cond_4c
    if-eqz p1, :cond_49

    .line 218
    sget-object v1, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->twoSequenceVals:[[I

    aget-object v1, v1, v10

    const/4 v2, 0x0

    aget v5, v1, v2

    sget-object v1, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->twoSequenceVals:[[I

    aget-object v1, v1, v10

    const/4 v2, 0x1

    aget v6, v1, v2

    move-object v4, v0

    move v8, p3

    move v9, p0

    invoke-static/range {v4 .. v9}, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->fillArray([IIIIII)V

    .line 220
    add-int/2addr v7, p0

    goto :goto_49
.end method

.method public static getAnswers(Ljava/util/ArrayList;ZZZZ)[I
    .registers 9
    .param p1, "orientation0"    # Z
    .param p2, "orientation90"    # Z
    .param p3, "orientation180"    # Z
    .param p4, "orientation270"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/lpwg/knockcode/EasyKnockPoint;",
            ">;ZZZZ)[I"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "coords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/lpwg/knockcode/EasyKnockPoint;>;"
    const/4 v1, 0x4

    new-array v0, v1, [Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    const/4 v1, 0x1

    aput-boolean p2, v0, v1

    const/4 v1, 0x2

    aput-boolean p3, v0, v1

    const/4 v1, 0x3

    aput-boolean p4, v0, v1

    .line 85
    .local v0, "orientation":[Z
    sget-wide v2, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->radiusSquared:D

    sget-boolean v1, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->mIsRotatationFixed:Z

    invoke-static {p0, v2, v3, v1, v0}, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->getResult(Ljava/util/List;DZ[Z)[I

    move-result-object v1

    return-object v1
.end method

.method public static getAnswers(Ljava/util/List;IZ)[I
    .registers 9
    .param p1, "dpi"    # I
    .param p2, "rotation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/lpwg/knockcode/EasyKnockPoint;",
            ">;IZ)[I"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "coords":Ljava/util/List;, "Ljava/util/List<Lcom/lge/lpwg/knockcode/EasyKnockPoint;>;"
    sput p1, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->mScreenDPI:I

    .line 50
    sput-boolean p2, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->mIsRotatationFixed:Z

    .line 52
    sget v0, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->mScreenDPI:I

    int-to-double v0, v0

    const-wide v2, 0x3fd1a36e2eb1c433L    # 0.2756

    mul-double/2addr v0, v2

    sput-wide v0, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->radiusSquared:D

    .line 53
    sget-wide v0, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->radiusSquared:D

    sget-wide v2, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->radiusSquared:D

    mul-double/2addr v0, v2

    sput-wide v0, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->radiusSquared:D

    .line 54
    sget-wide v0, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->radiusSquared:D

    sget-boolean v2, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->mIsRotatationFixed:Z

    const/4 v3, 0x4

    new-array v3, v3, [Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    invoke-static {p0, v0, v1, v2, v3}, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->getResult(Ljava/util/List;DZ[Z)[I

    move-result-object v0

    return-object v0
.end method

.method public static getAnswers(Ljava/util/List;[ZIZ)[I
    .registers 9
    .param p1, "orientations"    # [Z
    .param p2, "dpi"    # I
    .param p3, "rotation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/lpwg/knockcode/EasyKnockPoint;",
            ">;[ZIZ)[I"
        }
    .end annotation

    .prologue
    .local p0, "coords":Ljava/util/List;, "Ljava/util/List<Lcom/lge/lpwg/knockcode/EasyKnockPoint;>;"
    const/4 v4, 0x4

    .line 58
    sput p2, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->mScreenDPI:I

    .line 59
    sput-boolean p3, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->mIsRotatationFixed:Z

    .line 61
    sget v0, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->mScreenDPI:I

    int-to-double v0, v0

    const-wide v2, 0x3fd1a36e2eb1c433L    # 0.2756

    mul-double/2addr v0, v2

    sput-wide v0, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->radiusSquared:D

    .line 62
    sget-wide v0, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->radiusSquared:D

    sget-wide v2, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->radiusSquared:D

    mul-double/2addr v0, v2

    sput-wide v0, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->radiusSquared:D

    .line 63
    if-eqz p1, :cond_1e

    if-eqz p1, :cond_25

    array-length v0, p1

    if-eq v0, v4, :cond_25

    .line 64
    :cond_1e
    const/4 p1, 0x0

    .line 65
    new-array p1, v4, [Z

    .end local p1    # "orientations":[Z
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, p1, v0

    .line 67
    .restart local p1    # "orientations":[Z
    :cond_25
    sget-wide v0, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->radiusSquared:D

    sget-boolean v2, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->mIsRotatationFixed:Z

    invoke-static {p0, v0, v1, v2, p1}, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->getResult(Ljava/util/List;DZ[Z)[I

    move-result-object v0

    return-object v0
.end method

.method protected static getCandidates(Ljava/util/List;Ljava/util/List;Z[Z)[I
    .registers 5
    .param p2, "rotation"    # Z
    .param p3, "orientation"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/lpwg/knockcode/EasyKnockPoint;",
            ">;Z[Z)[I"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, "diffIndex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p1, "touchPoints":Ljava/util/List;, "Ljava/util/List<Lcom/lge/lpwg/knockcode/EasyKnockPoint;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_1e

    .line 235
    invoke-static {p1, p0, p2, p3}, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->getMultiSequence(Ljava/util/List;Ljava/util/List;Z[Z)[I

    move-result-object v0

    :goto_b
    return-object v0

    .line 231
    :pswitch_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->getOneSequence(I)[I

    move-result-object v0

    goto :goto_b

    .line 233
    :pswitch_15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0, p1, p0, p2, p3}, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->getTwoSequence(ILjava/util/List;Ljava/util/List;Z[Z)[I

    move-result-object v0

    goto :goto_b

    .line 229
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_c
        :pswitch_15
    .end packed-switch
.end method

.method public static getFirstOrientation(Lcom/lge/lpwg/knockcode/EasyKnockPoint;Lcom/lge/lpwg/knockcode/EasyKnockPoint;)[Z
    .registers 12
    .param p0, "a0"    # Lcom/lge/lpwg/knockcode/EasyKnockPoint;
    .param p1, "a1"    # Lcom/lge/lpwg/knockcode/EasyKnockPoint;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 249
    iget v4, p1, Lcom/lge/lpwg/knockcode/EasyKnockPoint;->x:F

    iget v5, p0, Lcom/lge/lpwg/knockcode/EasyKnockPoint;->x:F

    sub-float v1, v4, v5

    .line 250
    .local v1, "p0x":F
    iget v4, p1, Lcom/lge/lpwg/knockcode/EasyKnockPoint;->y:F

    iget v5, p0, Lcom/lge/lpwg/knockcode/EasyKnockPoint;->y:F

    sub-float v2, v4, v5

    .line 251
    .local v2, "p0y":F
    mul-float v4, v1, v1

    mul-float v5, v2, v2

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    div-float v0, v1, v4

    .line 252
    .local v0, "cosAngle":F
    const/16 v4, 0x14

    new-array v3, v4, [Z

    .line 253
    .local v3, "result":[Z
    float-to-double v4, v0

    const-wide v6, 0x3febb645a1cac083L    # 0.866

    cmpl-double v4, v4, v6

    if-lez v4, :cond_4d

    .line 254
    const/4 v4, 0x6

    aput-boolean v8, v3, v4

    .line 255
    const/16 v4, 0x10

    aput-boolean v8, v3, v4

    .line 269
    :cond_30
    :goto_30
    float-to-double v4, v0

    const-wide v6, 0x3fd09374bc6a7efaL    # 0.259

    cmpl-double v4, v4, v6

    if-lez v4, :cond_85

    float-to-double v4, v0

    const-wide v6, 0x3feee978d4fdf3b6L    # 0.966

    cmpg-double v4, v4, v6

    if-gez v4, :cond_85

    .line 270
    cmpl-float v4, v2, v9

    if-lez v4, :cond_80

    .line 271
    const/16 v4, 0x8

    aput-boolean v8, v3, v4

    .line 282
    :cond_4c
    :goto_4c
    return-object v3

    .line 256
    :cond_4d
    float-to-double v4, v0

    const-wide v6, -0x401449ba5e353f7dL    # -0.866

    cmpg-double v4, v4, v6

    if-gez v4, :cond_60

    .line 257
    const/16 v4, 0x9

    aput-boolean v8, v3, v4

    .line 258
    const/16 v4, 0x13

    aput-boolean v8, v3, v4

    goto :goto_30

    .line 259
    :cond_60
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_30

    .line 260
    cmpl-float v4, v2, v9

    if-lez v4, :cond_77

    .line 261
    const/4 v4, 0x7

    aput-boolean v8, v3, v4

    .line 262
    const/16 v4, 0xc

    aput-boolean v8, v3, v4

    goto :goto_30

    .line 264
    :cond_77
    const/16 v4, 0xd

    aput-boolean v8, v3, v4

    .line 265
    const/16 v4, 0x12

    aput-boolean v8, v3, v4

    goto :goto_30

    .line 273
    :cond_80
    const/16 v4, 0xe

    aput-boolean v8, v3, v4

    goto :goto_4c

    .line 275
    :cond_85
    float-to-double v4, v0

    const-wide v6, -0x402f6c8b43958106L    # -0.259

    cmpg-double v4, v4, v6

    if-gez v4, :cond_4c

    float-to-double v4, v0

    const-wide v6, -0x401116872b020c4aL    # -0.966

    cmpl-double v4, v4, v6

    if-lez v4, :cond_4c

    .line 276
    cmpl-float v4, v2, v9

    if-lez v4, :cond_a2

    .line 277
    const/16 v4, 0xb

    aput-boolean v8, v3, v4

    goto :goto_4c

    .line 279
    :cond_a2
    const/16 v4, 0x11

    aput-boolean v8, v3, v4

    goto :goto_4c
.end method

.method protected static getIndexList(Ljava/util/List;D)Ljava/util/ArrayList;
    .registers 8
    .param p1, "radiusSquare"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/lpwg/knockcode/EasyKnockPoint;",
            ">;D)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "easyKnock":Ljava/util/List;, "Ljava/util/List<Lcom/lge/lpwg/knockcode/EasyKnockPoint;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v2, "removedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, -0x1

    .line 117
    .local v0, "curIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt v1, v3, :cond_20

    .line 123
    const/4 v3, -0x1

    if-ne v0, v3, :cond_3f

    .line 124
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    :goto_1f
    return-object v2

    .line 118
    :cond_20
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/lpwg/knockcode/EasyKnockPoint;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/lpwg/knockcode/EasyKnockPoint;

    invoke-static {v3, v4, p1, p2}, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->isNeighbor(Lcom/lge/lpwg/knockcode/EasyKnockPoint;Lcom/lge/lpwg/knockcode/EasyKnockPoint;D)Z

    move-result v3

    if-nez v3, :cond_3c

    .line 119
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    move v0, v1

    .line 117
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 126
    :cond_3f
    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f
.end method

.method private static getMultiSequence(Ljava/util/List;Ljava/util/List;Z[Z)[I
    .registers 11
    .param p2, "rotation"    # Z
    .param p3, "orientation"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/lpwg/knockcode/EasyKnockPoint;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z[Z)[I"
        }
    .end annotation

    .prologue
    .local p0, "easyKnock":Ljava/util/List;, "Ljava/util/List<Lcom/lge/lpwg/knockcode/EasyKnockPoint;>;"
    .local p1, "diffIndex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 289
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4b

    .line 291
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/lpwg/knockcode/EasyKnockPoint;

    .line 292
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/lpwg/knockcode/EasyKnockPoint;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/lpwg/knockcode/EasyKnockPoint;

    .line 291
    invoke-static {v1, v2, v3}, Lcom/lge/lpwg/knockcode/RotatedBoolean;->getStrictSequence(Lcom/lge/lpwg/knockcode/EasyKnockPoint;Lcom/lge/lpwg/knockcode/EasyKnockPoint;Lcom/lge/lpwg/knockcode/EasyKnockPoint;)Ljava/util/List;

    move-result-object v0

    .line 303
    .local v0, "newResult":Ljava/util/List;, "Ljava/util/List<[I>;"
    :cond_3e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->generateFinalCandidates(Ljava/util/List;Ljava/util/List;Ljava/util/List;IZ[Z)[I

    move-result-object v1

    return-object v1

    .line 295
    .end local v0    # "newResult":Ljava/util/List;, "Ljava/util/List<[I>;"
    :cond_4b
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/lpwg/knockcode/EasyKnockPoint;

    .line 296
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/lpwg/knockcode/EasyKnockPoint;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/lpwg/knockcode/EasyKnockPoint;

    .line 295
    invoke-static {v1, v2, v3}, Lcom/lge/lpwg/knockcode/RotatedBoolean;->getStrictSequence(Lcom/lge/lpwg/knockcode/EasyKnockPoint;Lcom/lge/lpwg/knockcode/EasyKnockPoint;Lcom/lge/lpwg/knockcode/EasyKnockPoint;)Ljava/util/List;

    move-result-object v0

    .line 297
    .restart local v0    # "newResult":Ljava/util/List;, "Ljava/util/List<[I>;"
    const/4 v6, 0x3

    .local v6, "i":I
    :goto_80
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_3e

    .line 299
    add-int/lit8 v1, v6, -0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/lpwg/knockcode/EasyKnockPoint;

    .line 300
    add-int/lit8 v2, v6, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/lpwg/knockcode/EasyKnockPoint;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/lpwg/knockcode/EasyKnockPoint;

    .line 299
    invoke-static {v0, v1, v2, v3}, Lcom/lge/lpwg/knockcode/RotatedBoolean;->getNextSequence(Ljava/util/List;Lcom/lge/lpwg/knockcode/EasyKnockPoint;Lcom/lge/lpwg/knockcode/EasyKnockPoint;Lcom/lge/lpwg/knockcode/EasyKnockPoint;)Ljava/util/List;

    move-result-object v0

    .line 297
    add-int/lit8 v6, v6, 0x1

    goto :goto_80
.end method

.method protected static getOneSequence(I)[I
    .registers 7
    .param p0, "size"    # I

    .prologue
    const/4 v5, 0x4

    .line 132
    mul-int/lit8 v4, p0, 0x4

    add-int/lit8 v4, v4, 0x1

    new-array v3, v4, [I

    .line 133
    .local v3, "result":[I
    const/4 v4, 0x0

    aput v5, v3, v4

    .line 134
    const/4 v1, 0x1

    .line 135
    .local v1, "index":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_c
    if-le v0, v5, :cond_f

    .line 141
    return-object v3

    .line 136
    :cond_f
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_10
    if-lt v2, p0, :cond_15

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 137
    :cond_15
    aput v0, v3, v1

    .line 138
    add-int/lit8 v1, v1, 0x1

    .line 136
    add-int/lit8 v2, v2, 0x1

    goto :goto_10
.end method

.method public static getResult(Ljava/util/List;DZ[Z)[I
    .registers 8
    .param p1, "radiusSquare"    # D
    .param p3, "rotation"    # Z
    .param p4, "orientation"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/lpwg/knockcode/EasyKnockPoint;",
            ">;DZ[Z)[I"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "coords":Ljava/util/List;, "Ljava/util/List<Lcom/lge/lpwg/knockcode/EasyKnockPoint;>;"
    invoke-static {p0, p1, p2}, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->getIndexList(Ljava/util/List;D)Ljava/util/ArrayList;

    move-result-object v0

    .line 101
    .local v0, "indexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v0, p0, p3, p4}, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->getCandidates(Ljava/util/List;Ljava/util/List;Z[Z)[I

    move-result-object v1

    return-object v1
.end method

.method protected static getTwoSequence(ILjava/util/List;Ljava/util/List;Z[Z)[I
    .registers 14
    .param p0, "size"    # I
    .param p3, "rotation"    # Z
    .param p4, "orientation"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/lge/lpwg/knockcode/EasyKnockPoint;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z[Z)[I"
        }
    .end annotation

    .prologue
    .local p1, "touchPoints":Ljava/util/List;, "Ljava/util/List<Lcom/lge/lpwg/knockcode/EasyKnockPoint;>;"
    .local p2, "diffIndex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .line 157
    const/4 v1, 0x0

    .line 158
    .local v1, "count":I
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 160
    .local v0, "changeIndex":I
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/lpwg/knockcode/EasyKnockPoint;

    .line 161
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/lpwg/knockcode/EasyKnockPoint;

    .line 160
    invoke-static {v6, v7}, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->getFirstOrientation(Lcom/lge/lpwg/knockcode/EasyKnockPoint;Lcom/lge/lpwg/knockcode/EasyKnockPoint;)[Z

    move-result-object v4

    .line 162
    .local v4, "possibleDirections":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_33
    const/16 v6, 0x14

    if-lt v2, v6, :cond_4e

    .line 167
    const/4 v3, 0x0

    .line 168
    .local v3, "orientationCount":I
    const/4 v2, 0x0

    :goto_39
    const/4 v6, 0x4

    if-lt v2, v6, :cond_57

    .line 174
    invoke-static {p0, p3, v1, v0, v4}, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->generateTwoSequence(IZII[Z)[I

    move-result-object v5

    .line 176
    .local v5, "result":[I
    if-nez p3, :cond_4d

    const/4 v6, 0x1

    if-ne v3, v6, :cond_49

    aget-boolean v6, p4, v8

    if-nez v6, :cond_4d

    .line 177
    :cond_49
    invoke-static {p0, p4, v1, v3, v5}, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->generateMultiOrientation(I[ZII[I)[I

    move-result-object v5

    .line 179
    :cond_4d
    return-object v5

    .line 163
    .end local v3    # "orientationCount":I
    .end local v5    # "result":[I
    :cond_4e
    aget-boolean v6, v4, v2

    if-eqz v6, :cond_54

    .line 164
    add-int/lit8 v1, v1, 0x1

    .line 162
    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 169
    .restart local v3    # "orientationCount":I
    :cond_57
    aget-boolean v6, p4, v2

    if-eqz v6, :cond_5d

    .line 170
    add-int/lit8 v3, v3, 0x1

    .line 168
    :cond_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_39
.end method

.method protected static isNeighbor(Lcom/lge/lpwg/knockcode/EasyKnockPoint;Lcom/lge/lpwg/knockcode/EasyKnockPoint;D)Z
    .registers 8
    .param p0, "a1"    # Lcom/lge/lpwg/knockcode/EasyKnockPoint;
    .param p1, "a2"    # Lcom/lge/lpwg/knockcode/EasyKnockPoint;
    .param p2, "radiusSquared"    # D

    .prologue
    .line 491
    iget v2, p0, Lcom/lge/lpwg/knockcode/EasyKnockPoint;->x:F

    iget v3, p1, Lcom/lge/lpwg/knockcode/EasyKnockPoint;->x:F

    sub-float v0, v2, v3

    .line 492
    .local v0, "xd":F
    iget v2, p0, Lcom/lge/lpwg/knockcode/EasyKnockPoint;->y:F

    iget v3, p1, Lcom/lge/lpwg/knockcode/EasyKnockPoint;->y:F

    sub-float v1, v2, v3

    .line 493
    .local v1, "yd":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    cmpg-double v2, v2, p2

    if-gez v2, :cond_18

    const/4 v2, 0x1

    :goto_17
    return v2

    :cond_18
    const/4 v2, 0x0

    goto :goto_17
.end method

.method private static obtainDistMax(Ljava/util/List;I)D
    .registers 12
    .param p1, "pointSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/lpwg/knockcode/EasyKnockPoint;",
            ">;I)D"
        }
    .end annotation

    .prologue
    .line 441
    .local p0, "easyKnock":Ljava/util/List;, "Ljava/util/List<Lcom/lge/lpwg/knockcode/EasyKnockPoint;>;"
    const-wide/16 v0, 0x1

    .line 442
    .local v0, "distMax":D
    mul-int v6, p1, p1

    new-array v6, v6, [D

    sput-object v6, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->distanceMat:[D

    .line 443
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    add-int/lit8 v6, p1, -0x1

    if-lt v2, v6, :cond_e

    .line 453
    return-wide v0

    .line 444
    :cond_e
    add-int/lit8 v3, v2, 0x1

    .local v3, "j":I
    :goto_10
    if-lt v3, p1, :cond_15

    .line 443
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 445
    :cond_15
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/lpwg/knockcode/EasyKnockPoint;

    iget v7, v6, Lcom/lge/lpwg/knockcode/EasyKnockPoint;->x:F

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/lpwg/knockcode/EasyKnockPoint;

    iget v6, v6, Lcom/lge/lpwg/knockcode/EasyKnockPoint;->x:F

    sub-float v4, v7, v6

    .line 446
    .local v4, "pdelta_x":F
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/lpwg/knockcode/EasyKnockPoint;

    iget v7, v6, Lcom/lge/lpwg/knockcode/EasyKnockPoint;->y:F

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/lpwg/knockcode/EasyKnockPoint;

    iget v6, v6, Lcom/lge/lpwg/knockcode/EasyKnockPoint;->y:F

    sub-float v5, v7, v6

    .line 447
    .local v5, "pdelta_y":F
    sget-object v6, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->distanceMat:[D

    mul-int v7, v2, p1

    add-int/2addr v7, v3

    mul-float v8, v4, v4

    mul-float v9, v5, v5

    add-float/2addr v8, v9

    float-to-double v8, v8

    aput-wide v8, v6, v7

    .line 448
    sget-object v6, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->distanceMat:[D

    mul-int v7, v2, p1

    add-int/2addr v7, v3

    aget-wide v6, v6, v7

    cmpg-double v6, v0, v6

    if-gez v6, :cond_58

    .line 449
    sget-object v6, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->distanceMat:[D

    mul-int v7, v2, p1

    add-int/2addr v7, v3

    aget-wide v0, v6, v7

    .line 444
    :cond_58
    add-int/lit8 v3, v3, 0x1

    goto :goto_10
.end method

.method private static setAddress([II[II[I)I
    .registers 12
    .param p0, "result"    # [I
    .param p1, "pointSize"    # I
    .param p2, "sameClusterList"    # [I
    .param p3, "sameClusterListCnt"    # I
    .param p4, "address"    # [I

    .prologue
    .line 457
    const/4 v0, 0x0

    .line 458
    .local v0, "addressCnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/4 v4, 0x0

    aget v4, p0, v4

    if-lt v1, v4, :cond_8

    .line 472
    return v0

    .line 459
    :cond_8
    const/4 v3, 0x1

    .line 460
    .local v3, "rightClustered":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_a
    if-lt v2, p3, :cond_15

    .line 467
    :goto_c
    if-eqz v3, :cond_12

    .line 468
    aput v1, p4, v0

    .line 469
    add-int/lit8 v0, v0, 0x1

    .line 458
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 461
    :cond_15
    mul-int v4, v1, p1

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v5, v2, 0x2

    aget v5, p2, v5

    add-int/2addr v4, v5

    aget v4, p0, v4

    mul-int v5, v1, p1

    add-int/lit8 v5, v5, 0x1

    .line 462
    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    aget v6, p2, v6

    add-int/2addr v5, v6

    aget v5, p0, v5

    .line 461
    if-eq v4, v5, :cond_31

    .line 463
    const/4 v3, 0x0

    .line 464
    goto :goto_c

    .line 460
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_a
.end method

.method private static setSameClusterList(DI[I)I
    .registers 14
    .param p0, "distMax"    # D
    .param p2, "pointSize"    # I
    .param p3, "sameClusterList"    # [I

    .prologue
    .line 476
    const/4 v2, 0x0

    .line 477
    .local v2, "sameClusterListCnt":I
    sget-wide v6, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->radiusSquared:D

    const-wide v8, 0x3fa47ae147ae147bL    # 0.04

    mul-double/2addr v8, p0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 478
    .local v4, "threshold":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    add-int/lit8 v3, p2, -0x1

    if-lt v0, v3, :cond_13

    .line 487
    return v2

    .line 479
    :cond_13
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_15
    if-lt v1, p2, :cond_1a

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 480
    :cond_1a
    sget-object v3, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->distanceMat:[D

    mul-int v6, v0, p2

    add-int/2addr v6, v1

    aget-wide v6, v3, v6

    cmpg-double v3, v6, v4

    if-gez v3, :cond_31

    .line 481
    mul-int/lit8 v3, v2, 0x2

    aput v0, p3, v3

    .line 482
    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x1

    aput v1, p3, v3

    .line 483
    add-int/lit8 v2, v2, 0x1

    .line 479
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_15
.end method

.method private static trimResult([ILjava/util/List;)[I
    .registers 13
    .param p0, "result"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/List",
            "<",
            "Lcom/lge/lpwg/knockcode/EasyKnockPoint;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .local p1, "easyKnock":Ljava/util/List;, "Ljava/util/List<Lcom/lge/lpwg/knockcode/EasyKnockPoint;>;"
    const/4 v10, 0x0

    .line 423
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 425
    .local v6, "pointSize":I
    invoke-static {p1, v6}, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->obtainDistMax(Ljava/util/List;I)D

    move-result-wide v2

    .line 426
    .local v2, "distMax":D
    mul-int v9, v6, v6

    new-array v7, v9, [I

    .line 427
    .local v7, "sameClusterList":[I
    invoke-static {v2, v3, v6, v7}, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->setSameClusterList(DI[I)I

    move-result v8

    .line 429
    .local v8, "sameClusterListCnt":I
    aget v9, p0, v10

    new-array v0, v9, [I

    .line 430
    .local v0, "address":[I
    invoke-static {p0, v6, v7, v8, v0}, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->setAddress([II[II[I)I

    move-result v1

    .line 432
    .local v1, "addressCnt":I
    mul-int v9, v1, v6

    add-int/lit8 v9, v9, 0x1

    new-array v5, v9, [I

    .line 433
    .local v5, "newResult":[I
    aput v1, v5, v10

    .line 434
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_22
    if-lt v4, v1, :cond_25

    .line 437
    return-object v5

    .line 435
    :cond_25
    aget v9, v0, v4

    mul-int/2addr v9, v6

    add-int/lit8 v9, v9, 0x1

    mul-int v10, v4, v6

    add-int/lit8 v10, v10, 0x1

    invoke-static {p0, v9, v5, v10, v6}, Ljava/lang/System;->arraycopy([II[III)V

    .line 434
    add-int/lit8 v4, v4, 0x1

    goto :goto_22
.end method
