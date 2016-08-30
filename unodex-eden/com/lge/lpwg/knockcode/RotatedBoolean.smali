.class public Lcom/lge/lpwg/knockcode/RotatedBoolean;
.super Ljava/lang/Object;
.source "RotatedBoolean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/lpwg/knockcode/RotatedBoolean$ThreePointRelation;
    }
.end annotation


# static fields
.field private static final CCW:I = 0x0

.field private static final CLOCKWISE:I = 0x1

.field private static final DIAGONAL:I = 0x2

.field private static final ROTATE:[[I

.field private static final ccw_left:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ccw_right:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final clockwise_left:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final clockwise_right:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final diagonal_left:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final diagonal_right:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x4

    .line 14
    new-array v0, v3, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_50

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_5c

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_68

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_74

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/lpwg/knockcode/RotatedBoolean;->ROTATE:[[I

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/lpwg/knockcode/RotatedBoolean;->clockwise_right:Ljava/util/HashMap;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/lpwg/knockcode/RotatedBoolean;->clockwise_left:Ljava/util/HashMap;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/lpwg/knockcode/RotatedBoolean;->ccw_right:Ljava/util/HashMap;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/lpwg/knockcode/RotatedBoolean;->ccw_left:Ljava/util/HashMap;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/lpwg/knockcode/RotatedBoolean;->diagonal_right:Ljava/util/HashMap;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/lpwg/knockcode/RotatedBoolean;->diagonal_left:Ljava/util/HashMap;

    .line 25
    return-void

    .line 14
    :array_50
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data

    :array_5c
    .array-data 4
        0x2
        0x4
        0x1
        0x3
    .end array-data

    :array_68
    .array-data 4
        0x4
        0x3
        0x2
        0x1
    .end array-data

    :array_74
    .array-data 4
        0x3
        0x1
        0x4
        0x2
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    return-void
.end method

.method private static addNextSequence(Ljava/util/List;Ljava/util/List;[II)V
    .registers 9
    .param p2, "directionType"    # [I
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[I>;",
            "Ljava/util/List",
            "<[I>;[II)V"
        }
    .end annotation

    .prologue
    .line 332
    .local p0, "currentSequence":Ljava/util/List;, "Ljava/util/List<[I>;"
    .local p1, "nextSequence":Ljava/util/List;, "Ljava/util/List<[I>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_8

    .line 344
    return-void

    .line 333
    :cond_8
    aget v4, p2, v0

    if-ne v4, p3, :cond_24

    .line 334
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 335
    .local v2, "sequence":[I
    array-length v4, v2

    add-int/lit8 v4, v4, 0x1

    new-array v3, v4, [I

    .line 337
    .local v3, "toAdd":[I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_18
    array-length v4, v2

    if-lt v1, v4, :cond_27

    .line 340
    add-int/lit8 v4, v1, -0x2

    aget v4, v2, v4

    aput v4, v3, v1

    .line 341
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    .end local v1    # "j":I
    .end local v2    # "sequence":[I
    .end local v3    # "toAdd":[I
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 338
    .restart local v1    # "j":I
    .restart local v2    # "sequence":[I
    .restart local v3    # "toAdd":[I
    :cond_27
    aget v4, v2, v1

    aput v4, v3, v1

    .line 337
    add-int/lit8 v1, v1, 0x1

    goto :goto_18
.end method

.method private static addNextSequence(Ljava/util/List;Ljava/util/List;[I[IILjava/util/HashMap;)V
    .registers 11
    .param p2, "p1p2"    # [I
    .param p3, "directionType"    # [I
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[I>;",
            "Ljava/util/List",
            "<[I>;[I[II",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 347
    .local p0, "currentSequence":Ljava/util/List;, "Ljava/util/List<[I>;"
    .local p1, "nextSequence":Ljava/util/List;, "Ljava/util/List<[I>;"
    .local p5, "toAddValue":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_8

    .line 361
    return-void

    .line 348
    :cond_8
    aget v4, p3, v0

    if-ne v4, p4, :cond_3c

    .line 349
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 350
    .local v2, "sequence":[I
    array-length v4, v2

    add-int/lit8 v4, v4, 0x1

    new-array v3, v4, [I

    .line 352
    .local v3, "toAdd":[I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_18
    array-length v4, v2

    if-lt v1, v4, :cond_3f

    .line 355
    aget v4, p2, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 356
    aget v4, p2, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v1

    .line 358
    :cond_39
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    .end local v1    # "j":I
    .end local v2    # "sequence":[I
    .end local v3    # "toAdd":[I
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 353
    .restart local v1    # "j":I
    .restart local v2    # "sequence":[I
    .restart local v3    # "toAdd":[I
    :cond_3f
    aget v4, v2, v1

    aput v4, v3, v1

    .line 352
    add-int/lit8 v1, v1, 0x1

    goto :goto_18
.end method

.method public static addRotations([II)V
    .registers 10
    .param p0, "currentSequence"    # [I
    .param p1, "size"    # I

    .prologue
    const/4 v7, 0x0

    .line 461
    aget v5, p0, v7

    .line 462
    .local v5, "numSeq":I
    mul-int/lit8 v6, v5, 0x4

    aput v6, p0, v7

    .line 463
    mul-int v2, v5, p1

    .line 464
    .local v2, "fullLength":I
    add-int/lit8 v0, v2, 0x1

    .line 465
    .local v0, "curBaseIndex":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_c
    const/4 v6, 0x3

    if-le v3, v6, :cond_10

    .line 476
    return-void

    .line 466
    :cond_10
    sget-object v6, Lcom/lge/lpwg/knockcode/RotatedBoolean;->ROTATE:[[I

    aget-object v1, v6, v3

    .line 467
    .local v1, "curRotation":[I
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_15
    if-le v4, v2, :cond_1a

    .line 465
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 469
    :cond_1a
    :try_start_1a
    aget v6, p0, v4

    add-int/lit8 v6, v6, -0x1

    aget v6, v1, v6

    aput v6, p0, v0
    :try_end_22
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_22} :catch_27

    .line 473
    :goto_22
    add-int/lit8 v0, v0, 0x1

    .line 467
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :catch_27
    move-exception v6

    goto :goto_22
.end method

.method private static createDirectionToAdd(Lcom/lge/lpwg/knockcode/RotatedBoolean$ThreePointRelation;)[Z
    .registers 7
    .param p0, "threePointRelation"    # Lcom/lge/lpwg/knockcode/RotatedBoolean$ThreePointRelation;

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 364
    const/16 v1, 0x9

    new-array v0, v1, [Z

    .line 366
    .local v0, "directionsToAdd":[Z
    invoke-virtual {p0}, Lcom/lge/lpwg/knockcode/RotatedBoolean$ThreePointRelation;->isLeftTurn()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 369
    invoke-virtual {p0}, Lcom/lge/lpwg/knockcode/RotatedBoolean$ThreePointRelation;->isSideSide()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 370
    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    .line 374
    :cond_17
    invoke-virtual {p0}, Lcom/lge/lpwg/knockcode/RotatedBoolean$ThreePointRelation;->isCentDiagDiag()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 376
    aput-boolean v2, v0, v3

    .line 377
    aput-boolean v2, v0, v4

    .line 378
    aput-boolean v2, v0, v5

    .line 382
    :cond_23
    invoke-virtual {p0}, Lcom/lge/lpwg/knockcode/RotatedBoolean$ThreePointRelation;->isSideDiag()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 383
    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    .line 387
    :cond_2c
    invoke-virtual {p0}, Lcom/lge/lpwg/knockcode/RotatedBoolean$ThreePointRelation;->isDiagSide()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 388
    const/4 v1, 0x6

    aput-boolean v2, v0, v1

    .line 419
    :cond_35
    :goto_35
    return-object v0

    .line 397
    :cond_36
    invoke-virtual {p0}, Lcom/lge/lpwg/knockcode/RotatedBoolean$ThreePointRelation;->isSideSide()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 398
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 402
    :cond_3f
    invoke-virtual {p0}, Lcom/lge/lpwg/knockcode/RotatedBoolean$ThreePointRelation;->isCentDiagDiag()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 404
    aput-boolean v2, v0, v3

    .line 405
    aput-boolean v2, v0, v4

    .line 406
    aput-boolean v2, v0, v5

    .line 410
    :cond_4b
    invoke-virtual {p0}, Lcom/lge/lpwg/knockcode/RotatedBoolean$ThreePointRelation;->isSideDiag()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 411
    aput-boolean v2, v0, v2

    .line 415
    :cond_53
    invoke-virtual {p0}, Lcom/lge/lpwg/knockcode/RotatedBoolean$ThreePointRelation;->isDiagSide()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 416
    const/16 v1, 0x8

    aput-boolean v2, v0, v1

    goto :goto_35
.end method

.method private static createDirectionType(Ljava/util/List;[I)[I
    .registers 9
    .param p1, "p1p2"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[I>;[I)[I"
        }
    .end annotation

    .prologue
    .line 423
    .local p0, "currentSequence":Ljava/util/List;, "Ljava/util/List<[I>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [I

    .line 424
    .local v0, "directionType":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_e

    .line 439
    return-object v0

    .line 425
    :cond_e
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 426
    .local v4, "sequence":[I
    array-length v5, v4

    add-int/lit8 v5, v5, -0x2

    aget v2, v4, v5

    .line 427
    .local v2, "p1":I
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget v3, v4, v5

    .line 428
    .local v3, "p2":I
    mul-int/lit8 v5, v2, 0x4

    add-int/2addr v5, v3

    aput v5, p1, v1

    .line 429
    add-int v5, v2, v3

    const/4 v6, 0x5

    if-ne v5, v6, :cond_2e

    .line 430
    const/4 v5, 0x2

    aput v5, v0, v1

    .line 424
    :cond_2b
    :goto_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 432
    :cond_2e
    aget v5, p1, v1

    const/4 v6, 0x6

    if-eq v5, v6, :cond_45

    aget v5, p1, v1

    const/16 v6, 0xc

    if-eq v5, v6, :cond_45

    aget v5, p1, v1

    const/16 v6, 0x13

    if-eq v5, v6, :cond_45

    .line 433
    aget v5, p1, v1

    const/16 v6, 0xd

    if-ne v5, v6, :cond_2b

    .line 434
    :cond_45
    const/4 v5, 0x1

    aput v5, v0, v1

    goto :goto_2b
.end method

.method private static createP1P2(Ljava/util/List;)[I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[I>;)[I"
        }
    .end annotation

    .prologue
    .line 443
    .local p0, "currentSequence":Ljava/util/List;, "Ljava/util/List<[I>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    new-array v2, v5, [I

    .line 444
    .local v2, "p1p2":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v0, v5, :cond_e

    .line 450
    return-object v2

    .line 445
    :cond_e
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 446
    .local v4, "sequence":[I
    array-length v5, v4

    add-int/lit8 v5, v5, -0x2

    aget v1, v4, v5

    .line 447
    .local v1, "p1":I
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget v3, v4, v5

    .line 448
    .local v3, "p2":I
    mul-int/lit8 v5, v1, 0x4

    add-int/2addr v5, v3

    aput v5, v2, v0

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public static getFirstSequence(Lcom/lge/lpwg/knockcode/EasyKnockPoint;Lcom/lge/lpwg/knockcode/EasyKnockPoint;Lcom/lge/lpwg/knockcode/EasyKnockPoint;)Ljava/util/List;
    .registers 7
    .param p0, "a0"    # Lcom/lge/lpwg/knockcode/EasyKnockPoint;
    .param p1, "a1"    # Lcom/lge/lpwg/knockcode/EasyKnockPoint;
    .param p2, "a2"    # Lcom/lge/lpwg/knockcode/EasyKnockPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lge/lpwg/knockcode/EasyKnockPoint;",
            "Lcom/lge/lpwg/knockcode/EasyKnockPoint;",
            "Lcom/lge/lpwg/knockcode/EasyKnockPoint;",
            ")",
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v0, "nextSequence":Ljava/util/List;, "Ljava/util/List<[I>;"
    new-instance v1, Lcom/lge/lpwg/knockcode/RotatedBoolean$ThreePointRelation;

    invoke-direct {v1, p0, p1, p2}, Lcom/lge/lpwg/knockcode/RotatedBoolean$ThreePointRelation;-><init>(Lcom/lge/lpwg/knockcode/EasyKnockPoint;Lcom/lge/lpwg/knockcode/EasyKnockPoint;Lcom/lge/lpwg/knockcode/EasyKnockPoint;)V

    .line 217
    .local v1, "threePointRelation":Lcom/lge/lpwg/knockcode/RotatedBoolean$ThreePointRelation;
    invoke-virtual {v1}, Lcom/lge/lpwg/knockcode/RotatedBoolean$ThreePointRelation;->isLeftTurn()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 220
    invoke-virtual {v1}, Lcom/lge/lpwg/knockcode/RotatedBoolean$ThreePointRelation;->isSideSide()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 221
    new-array v2, v3, [I

    fill-array-data v2, :array_a4

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_1f
    invoke-virtual {v1}, Lcom/lge/lpwg/knockcode/RotatedBoolean$ThreePointRelation;->isCentDiagDiag()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 227
    new-array v2, v3, [I

    fill-array-data v2, :array_ae

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    new-array v2, v3, [I

    fill-array-data v2, :array_b8

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    new-array v2, v3, [I

    fill-array-data v2, :array_c2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_3d
    invoke-virtual {v1}, Lcom/lge/lpwg/knockcode/RotatedBoolean$ThreePointRelation;->isSideDiag()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 234
    new-array v2, v3, [I

    fill-array-data v2, :array_cc

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_4b
    invoke-virtual {v1}, Lcom/lge/lpwg/knockcode/RotatedBoolean$ThreePointRelation;->isDiagSide()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 239
    new-array v2, v3, [I

    fill-array-data v2, :array_d6

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_59
    :goto_59
    return-object v0

    .line 248
    :cond_5a
    invoke-virtual {v1}, Lcom/lge/lpwg/knockcode/RotatedBoolean$ThreePointRelation;->isSideSide()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 249
    new-array v2, v3, [I

    fill-array-data v2, :array_e0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_68
    invoke-virtual {v1}, Lcom/lge/lpwg/knockcode/RotatedBoolean$ThreePointRelation;->isCentDiagDiag()Z

    move-result v2

    if-eqz v2, :cond_86

    .line 255
    new-array v2, v3, [I

    fill-array-data v2, :array_ea

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    new-array v2, v3, [I

    fill-array-data v2, :array_f4

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    new-array v2, v3, [I

    fill-array-data v2, :array_fe

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_86
    invoke-virtual {v1}, Lcom/lge/lpwg/knockcode/RotatedBoolean$ThreePointRelation;->isSideDiag()Z

    move-result v2

    if-eqz v2, :cond_94

    .line 262
    new-array v2, v3, [I

    fill-array-data v2, :array_108

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_94
    invoke-virtual {v1}, Lcom/lge/lpwg/knockcode/RotatedBoolean$ThreePointRelation;->isDiagSide()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 267
    new-array v2, v3, [I

    fill-array-data v2, :array_112

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_59

    .line 221
    nop

    :array_a4
    .array-data 4
        0x1
        0x3
        0x4
    .end array-data

    .line 227
    :array_ae
    .array-data 4
        0x1
        0x2
        0x1
    .end array-data

    .line 228
    :array_b8
    .array-data 4
        0x1
        0x3
        0x1
    .end array-data

    .line 229
    :array_c2
    .array-data 4
        0x1
        0x4
        0x1
    .end array-data

    .line 234
    :array_cc
    .array-data 4
        0x1
        0x3
        0x2
    .end array-data

    .line 239
    :array_d6
    .array-data 4
        0x1
        0x4
        0x2
    .end array-data

    .line 249
    :array_e0
    .array-data 4
        0x1
        0x2
        0x4
    .end array-data

    .line 255
    :array_ea
    .array-data 4
        0x1
        0x2
        0x1
    .end array-data

    .line 256
    :array_f4
    .array-data 4
        0x1
        0x3
        0x1
    .end array-data

    .line 257
    :array_fe
    .array-data 4
        0x1
        0x4
        0x1
    .end array-data

    .line 262
    :array_108
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data

    .line 267
    :array_112
    .array-data 4
        0x1
        0x4
        0x3
    .end array-data
.end method

.method public static getNextSequence(Ljava/util/List;Lcom/lge/lpwg/knockcode/EasyKnockPoint;Lcom/lge/lpwg/knockcode/EasyKnockPoint;Lcom/lge/lpwg/knockcode/EasyKnockPoint;)Ljava/util/List;
    .registers 14
    .param p1, "a0"    # Lcom/lge/lpwg/knockcode/EasyKnockPoint;
    .param p2, "a1"    # Lcom/lge/lpwg/knockcode/EasyKnockPoint;
    .param p3, "a2"    # Lcom/lge/lpwg/knockcode/EasyKnockPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[I>;",
            "Lcom/lge/lpwg/knockcode/EasyKnockPoint;",
            "Lcom/lge/lpwg/knockcode/EasyKnockPoint;",
            "Lcom/lge/lpwg/knockcode/EasyKnockPoint;",
            ")",
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation

    .prologue
    .local p0, "currentSequence":Ljava/util/List;, "Ljava/util/List<[I>;"
    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 285
    invoke-static {}, Lcom/lge/lpwg/knockcode/RotatedBoolean;->initializeToAdd()V

    .line 286
    new-instance v7, Lcom/lge/lpwg/knockcode/RotatedBoolean$ThreePointRelation;

    invoke-direct {v7, p1, p2, p3}, Lcom/lge/lpwg/knockcode/RotatedBoolean$ThreePointRelation;-><init>(Lcom/lge/lpwg/knockcode/EasyKnockPoint;Lcom/lge/lpwg/knockcode/EasyKnockPoint;Lcom/lge/lpwg/knockcode/EasyKnockPoint;)V

    .line 287
    .local v7, "threePointRelation":Lcom/lge/lpwg/knockcode/RotatedBoolean$ThreePointRelation;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v1, "nextSequence":Ljava/util/List;, "Ljava/util/List<[I>;"
    invoke-static {p0}, Lcom/lge/lpwg/knockcode/RotatedBoolean;->createP1P2(Ljava/util/List;)[I

    move-result-object v2

    .line 290
    .local v2, "p1p2":[I
    invoke-static {p0, v2}, Lcom/lge/lpwg/knockcode/RotatedBoolean;->createDirectionType(Ljava/util/List;[I)[I

    move-result-object v3

    .line 291
    .local v3, "directionType":[I
    invoke-static {v7}, Lcom/lge/lpwg/knockcode/RotatedBoolean;->createDirectionToAdd(Lcom/lge/lpwg/knockcode/RotatedBoolean$ThreePointRelation;)[Z

    move-result-object v6

    .line 293
    .local v6, "directionsToAdd":[Z
    aget-boolean v0, v6, v8

    if-eqz v0, :cond_23

    .line 294
    invoke-static {p0, v1, v3, v4}, Lcom/lge/lpwg/knockcode/RotatedBoolean;->addNextSequence(Ljava/util/List;Ljava/util/List;[II)V

    .line 297
    :cond_23
    aget-boolean v0, v6, v4

    if-eqz v0, :cond_2d

    .line 298
    sget-object v5, Lcom/lge/lpwg/knockcode/RotatedBoolean;->clockwise_right:Ljava/util/HashMap;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/lge/lpwg/knockcode/RotatedBoolean;->addNextSequence(Ljava/util/List;Ljava/util/List;[I[IILjava/util/HashMap;)V

    .line 301
    :cond_2d
    aget-boolean v0, v6, v9

    if-eqz v0, :cond_37

    .line 302
    sget-object v5, Lcom/lge/lpwg/knockcode/RotatedBoolean;->clockwise_left:Ljava/util/HashMap;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/lge/lpwg/knockcode/RotatedBoolean;->addNextSequence(Ljava/util/List;Ljava/util/List;[I[IILjava/util/HashMap;)V

    .line 305
    :cond_37
    const/4 v0, 0x3

    aget-boolean v0, v6, v0

    if-eqz v0, :cond_3f

    .line 306
    invoke-static {p0, v1, v3, v8}, Lcom/lge/lpwg/knockcode/RotatedBoolean;->addNextSequence(Ljava/util/List;Ljava/util/List;[II)V

    .line 309
    :cond_3f
    const/4 v0, 0x4

    aget-boolean v0, v6, v0

    if-eqz v0, :cond_4b

    .line 310
    sget-object v5, Lcom/lge/lpwg/knockcode/RotatedBoolean;->ccw_right:Ljava/util/HashMap;

    move-object v0, p0

    move v4, v8

    invoke-static/range {v0 .. v5}, Lcom/lge/lpwg/knockcode/RotatedBoolean;->addNextSequence(Ljava/util/List;Ljava/util/List;[I[IILjava/util/HashMap;)V

    .line 313
    :cond_4b
    const/4 v0, 0x5

    aget-boolean v0, v6, v0

    if-eqz v0, :cond_57

    .line 314
    sget-object v5, Lcom/lge/lpwg/knockcode/RotatedBoolean;->ccw_left:Ljava/util/HashMap;

    move-object v0, p0

    move v4, v8

    invoke-static/range {v0 .. v5}, Lcom/lge/lpwg/knockcode/RotatedBoolean;->addNextSequence(Ljava/util/List;Ljava/util/List;[I[IILjava/util/HashMap;)V

    .line 317
    :cond_57
    const/4 v0, 0x6

    aget-boolean v0, v6, v0

    if-eqz v0, :cond_63

    .line 318
    sget-object v5, Lcom/lge/lpwg/knockcode/RotatedBoolean;->diagonal_right:Ljava/util/HashMap;

    move-object v0, p0

    move v4, v9

    invoke-static/range {v0 .. v5}, Lcom/lge/lpwg/knockcode/RotatedBoolean;->addNextSequence(Ljava/util/List;Ljava/util/List;[I[IILjava/util/HashMap;)V

    .line 321
    :cond_63
    const/4 v0, 0x7

    aget-boolean v0, v6, v0

    if-eqz v0, :cond_6b

    .line 322
    invoke-static {p0, v1, v3, v9}, Lcom/lge/lpwg/knockcode/RotatedBoolean;->addNextSequence(Ljava/util/List;Ljava/util/List;[II)V

    .line 325
    :cond_6b
    const/16 v0, 0x8

    aget-boolean v0, v6, v0

    if-eqz v0, :cond_78

    .line 326
    sget-object v5, Lcom/lge/lpwg/knockcode/RotatedBoolean;->diagonal_left:Ljava/util/HashMap;

    move-object v0, p0

    move v4, v9

    invoke-static/range {v0 .. v5}, Lcom/lge/lpwg/knockcode/RotatedBoolean;->addNextSequence(Ljava/util/List;Ljava/util/List;[I[IILjava/util/HashMap;)V

    .line 328
    :cond_78
    return-object v1
.end method

.method public static getStrictSequence(Lcom/lge/lpwg/knockcode/EasyKnockPoint;Lcom/lge/lpwg/knockcode/EasyKnockPoint;Lcom/lge/lpwg/knockcode/EasyKnockPoint;)Ljava/util/List;
    .registers 12
    .param p0, "a0"    # Lcom/lge/lpwg/knockcode/EasyKnockPoint;
    .param p1, "a1"    # Lcom/lge/lpwg/knockcode/EasyKnockPoint;
    .param p2, "a2"    # Lcom/lge/lpwg/knockcode/EasyKnockPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lge/lpwg/knockcode/EasyKnockPoint;",
            "Lcom/lge/lpwg/knockcode/EasyKnockPoint;",
            "Lcom/lge/lpwg/knockcode/EasyKnockPoint;",
            ")",
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v0, "nextSequence":Ljava/util/List;, "Ljava/util/List<[I>;"
    new-instance v1, Lcom/lge/lpwg/knockcode/RotatedBoolean$ThreePointRelation;

    invoke-direct {v1, p0, p1, p2}, Lcom/lge/lpwg/knockcode/RotatedBoolean$ThreePointRelation;-><init>(Lcom/lge/lpwg/knockcode/EasyKnockPoint;Lcom/lge/lpwg/knockcode/EasyKnockPoint;Lcom/lge/lpwg/knockcode/EasyKnockPoint;)V

    .line 172
    .local v1, "threePointRelation":Lcom/lge/lpwg/knockcode/RotatedBoolean$ThreePointRelation;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Angle : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/lge/lpwg/knockcode/RotatedBoolean$ThreePointRelation;->cosAngle:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double/2addr v4, v6

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v1}, Lcom/lge/lpwg/knockcode/RotatedBoolean$ThreePointRelation;->isStric()Z

    move-result v2

    if-eqz v2, :cond_92

    .line 174
    invoke-virtual {v1}, Lcom/lge/lpwg/knockcode/RotatedBoolean$ThreePointRelation;->is124or134()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 175
    invoke-virtual {v1}, Lcom/lge/lpwg/knockcode/RotatedBoolean$ThreePointRelation;->isLeftTurn()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 176
    new-array v2, v8, [I

    fill-array-data v2, :array_98

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    .end local v0    # "nextSequence":Ljava/util/List;, "Ljava/util/List<[I>;"
    :goto_4c
    return-object v0

    .line 178
    .restart local v0    # "nextSequence":Ljava/util/List;, "Ljava/util/List<[I>;"
    :cond_4d
    new-array v2, v8, [I

    fill-array-data v2, :array_a2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 181
    :cond_56
    invoke-virtual {v1}, Lcom/lge/lpwg/knockcode/RotatedBoolean$ThreePointRelation;->is123or132()Z

    move-result v2

    if-eqz v2, :cond_74

    .line 182
    invoke-virtual {v1}, Lcom/lge/lpwg/knockcode/RotatedBoolean$ThreePointRelation;->isLeftTurn()Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 183
    new-array v2, v8, [I

    fill-array-data v2, :array_ac

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 185
    :cond_6b
    new-array v2, v8, [I

    fill-array-data v2, :array_b6

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 188
    :cond_74
    invoke-virtual {v1}, Lcom/lge/lpwg/knockcode/RotatedBoolean$ThreePointRelation;->is142or143()Z

    move-result v2

    if-eqz v2, :cond_92

    .line 189
    invoke-virtual {v1}, Lcom/lge/lpwg/knockcode/RotatedBoolean$ThreePointRelation;->isLeftTurn()Z

    move-result v2

    if-eqz v2, :cond_89

    .line 190
    new-array v2, v8, [I

    fill-array-data v2, :array_c0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 192
    :cond_89
    new-array v2, v8, [I

    fill-array-data v2, :array_ca

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 198
    :cond_92
    invoke-static {p0, p1, p2}, Lcom/lge/lpwg/knockcode/RotatedBoolean;->getFirstSequence(Lcom/lge/lpwg/knockcode/EasyKnockPoint;Lcom/lge/lpwg/knockcode/EasyKnockPoint;Lcom/lge/lpwg/knockcode/EasyKnockPoint;)Ljava/util/List;

    move-result-object v0

    goto :goto_4c

    .line 176
    nop

    :array_98
    .array-data 4
        0x1
        0x3
        0x4
    .end array-data

    .line 178
    :array_a2
    .array-data 4
        0x1
        0x2
        0x4
    .end array-data

    .line 183
    :array_ac
    .array-data 4
        0x1
        0x3
        0x2
    .end array-data

    .line 185
    :array_b6
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data

    .line 190
    :array_c0
    .array-data 4
        0x1
        0x4
        0x2
    .end array-data

    .line 192
    :array_ca
    .array-data 4
        0x1
        0x4
        0x3
    .end array-data
.end method

.method private static initializeToAdd()V
    .registers 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 124
    sget-object v0, Lcom/lge/lpwg/knockcode/RotatedBoolean;->clockwise_right:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/lge/lpwg/knockcode/RotatedBoolean;->clockwise_right:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/lge/lpwg/knockcode/RotatedBoolean;->clockwise_right:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/lge/lpwg/knockcode/RotatedBoolean;->clockwise_right:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/lge/lpwg/knockcode/RotatedBoolean;->clockwise_left:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/lge/lpwg/knockcode/RotatedBoolean;->clockwise_left:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/lge/lpwg/knockcode/RotatedBoolean;->clockwise_left:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/lge/lpwg/knockcode/RotatedBoolean;->clockwise_left:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/lge/lpwg/knockcode/RotatedBoolean;->ccw_right:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/lge/lpwg/knockcode/RotatedBoolean;->ccw_right:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/lge/lpwg/knockcode/RotatedBoolean;->ccw_right:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/lge/lpwg/knockcode/RotatedBoolean;->ccw_right:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/lge/lpwg/knockcode/RotatedBoolean;->ccw_left:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/lge/lpwg/knockcode/RotatedBoolean;->ccw_left:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/lge/lpwg/knockcode/RotatedBoolean;->ccw_left:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/lge/lpwg/knockcode/RotatedBoolean;->ccw_left:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/lge/lpwg/knockcode/RotatedBoolean;->diagonal_right:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/lge/lpwg/knockcode/RotatedBoolean;->diagonal_right:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/lge/lpwg/knockcode/RotatedBoolean;->diagonal_right:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/lge/lpwg/knockcode/RotatedBoolean;->diagonal_right:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/lge/lpwg/knockcode/RotatedBoolean;->diagonal_left:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/lge/lpwg/knockcode/RotatedBoolean;->diagonal_left:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/lge/lpwg/knockcode/RotatedBoolean;->diagonal_left:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/lge/lpwg/knockcode/RotatedBoolean;->diagonal_left:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    return-void
.end method
