.class public final Lcom/lge/lgdrm/DrmRight;
.super Ljava/lang/Object;
.source "DrmRight.java"


# instance fields
.field private constraintsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private filename:Ljava/lang/String;

.field private index:I

.field private metering:Z

.field private mid:Ljava/lang/String;

.field private permission:I

.field private previewContent:I

.field private unlimited:Z

.field private useLeft:Ljava/lang/String;

.field private validFor:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmRight;->constraintsMap:Ljava/util/HashMap;

    .line 188
    return-void
.end method

.method protected constructor <init>(Lcom/lge/lgdrm/DrmContent;Landroid/content/Context;)V
    .registers 4
    .param p1, "content"    # Lcom/lge/lgdrm/DrmContent;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmRight;->constraintsMap:Ljava/util/HashMap;

    .line 199
    iget-object v0, p1, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/lgdrm/DrmRight;->filename:Ljava/lang/String;

    .line 200
    iget v0, p1, Lcom/lge/lgdrm/DrmContent;->index:I

    iput v0, p0, Lcom/lge/lgdrm/DrmRight;->index:I

    .line 201
    iget v0, p1, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    iput v0, p0, Lcom/lge/lgdrm/DrmRight;->previewContent:I

    .line 202
    iget v0, p1, Lcom/lge/lgdrm/DrmContent;->permisson:I

    iput v0, p0, Lcom/lge/lgdrm/DrmRight;->permission:I

    .line 203
    iput-object p2, p0, Lcom/lge/lgdrm/DrmRight;->context:Landroid/content/Context;

    .line 204
    return-void
.end method

.method public static getKeyByCID(Ljava/lang/String;[B[B)I
    .registers 5
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "encKey"    # [B
    .param p2, "authSeed"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x10

    .line 227
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_8

    .line 228
    const/4 v0, -0x1

    .line 248
    :goto_7
    return v0

    .line 231
    :cond_8
    invoke-static {}, Lcom/lge/lgdrm/DrmRight;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_16

    .line 232
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_16
    if-nez p0, :cond_20

    .line 236
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cid is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_20
    if-eqz p1, :cond_24

    if-nez p2, :cond_2c

    .line 239
    :cond_24
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "one of the key is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_2c
    array-length v0, p1

    if-ge v0, v1, :cond_37

    .line 242
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encKey length is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_37
    array-length v0, p2

    if-ge v0, v1, :cond_42

    .line 245
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authSeed length is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_42
    invoke-static {p0, p1, p2}, Lcom/lge/lgdrm/DrmRight;->nativeGetKeyByCID(Ljava/lang/String;[B[B)I

    move-result v0

    goto :goto_7
.end method

.method public static getRegistrationCode()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 280
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_6

    .line 281
    const/4 v0, 0x0

    .line 288
    :goto_5
    return-object v0

    .line 284
    :cond_6
    invoke-static {}, Lcom/lge/lgdrm/DrmRight;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_14

    .line 285
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_14
    invoke-static {}, Lcom/lge/lgdrm/DrmRight;->nativeGetRegistrationCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method private static native nativeAuthCaller()Z
.end method

.method private native nativeCheckMetering(Ljava/lang/String;)Z
.end method

.method private static native nativeGetKeyByCID(Ljava/lang/String;[B[B)I
.end method

.method private static native nativeGetRegistrationCode()Ljava/lang/String;
.end method

.method private native nativeGetRightInfo(Ljava/lang/String;III)I
.end method

.method private native nativeManageMetering(Ljava/lang/String;Z)I
.end method

.method private static native nativeSetRandomSample()V
.end method

.method public static setRandomSample()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 259
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_5

    .line 268
    :goto_4
    return-void

    .line 263
    :cond_5
    invoke-static {}, Lcom/lge/lgdrm/DrmRight;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_13

    .line 264
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_13
    invoke-static {}, Lcom/lge/lgdrm/DrmRight;->nativeSetRandomSample()V

    goto :goto_4
.end method

.method private setRightInfo(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "unlimited"    # Z
    .param p2, "metering"    # Z
    .param p3, "useLeft"    # Ljava/lang/String;
    .param p4, "validFor"    # Ljava/lang/String;
    .param p5, "count"    # Ljava/lang/String;
    .param p6, "dateTime"    # Ljava/lang/String;
    .param p7, "interval"    # Ljava/lang/String;
    .param p8, "timedCount"    # Ljava/lang/String;
    .param p9, "accumulated"    # Ljava/lang/String;
    .param p10, "individual"    # Ljava/lang/String;
    .param p11, "system"    # Ljava/lang/String;
    .param p12, "mid"    # Ljava/lang/String;

    .prologue
    .line 555
    iput-boolean p1, p0, Lcom/lge/lgdrm/DrmRight;->unlimited:Z

    .line 556
    invoke-direct {p0, p3}, Lcom/lge/lgdrm/DrmRight;->translateSummaryInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/lgdrm/DrmRight;->useLeft:Ljava/lang/String;

    .line 557
    invoke-direct {p0, p4}, Lcom/lge/lgdrm/DrmRight;->translateSummaryInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/lgdrm/DrmRight;->validFor:Ljava/lang/String;

    .line 558
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->constraintsMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->constraintsMap:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->constraintsMap:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->constraintsMap:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->constraintsMap:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->constraintsMap:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->constraintsMap:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    iput-boolean p2, p0, Lcom/lge/lgdrm/DrmRight;->metering:Z

    .line 566
    iput-object p12, p0, Lcom/lge/lgdrm/DrmRight;->mid:Ljava/lang/String;

    .line 567
    return-void
.end method

.method private translateSummaryInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "original"    # Ljava/lang/String;

    .prologue
    .line 507
    if-nez p1, :cond_4

    .line 508
    const/4 p1, 0x0

    .line 546
    .end local p1    # "original":Ljava/lang/String;
    :cond_3
    :goto_3
    return-object p1

    .line 511
    .restart local p1    # "original":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/lge/lgdrm/DrmRight;->context:Landroid/content/Context;

    if-eqz v4, :cond_3

    .line 516
    const/4 v0, 0x0

    .line 517
    .local v0, "count":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 518
    .local v1, "result":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, " )"

    const/4 v5, 0x1

    invoke-direct {v2, p1, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 520
    .local v2, "st":Ljava/util/StringTokenizer;
    :goto_1a
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_25

    .line 546
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 521
    :cond_25
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 522
    .local v3, "w":Ljava/lang/String;
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 523
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 525
    :cond_35
    and-int/lit8 v4, v0, 0x1

    if-nez v4, :cond_4f

    const-string v4, "day"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 526
    iget-object v4, p0, Lcom/lge/lgdrm/DrmRight;->context:Landroid/content/Context;

    sget v5, Lcom/lge/internal/R$string;->day:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    or-int/lit8 v0, v0, 0x1

    .line 528
    goto :goto_1a

    .line 529
    :cond_4f
    and-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_69

    const-string v4, "hour"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 530
    iget-object v4, p0, Lcom/lge/lgdrm/DrmRight;->context:Landroid/content/Context;

    sget v5, Lcom/lge/internal/R$string;->hour:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    or-int/lit8 v0, v0, 0x2

    .line 532
    goto :goto_1a

    .line 533
    :cond_69
    and-int/lit8 v4, v0, 0x4

    if-nez v4, :cond_83

    const-string v4, "min"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_83

    .line 534
    iget-object v4, p0, Lcom/lge/lgdrm/DrmRight;->context:Landroid/content/Context;

    sget v5, Lcom/lge/internal/R$string;->minute:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    or-int/lit8 v0, v0, 0x4

    .line 536
    goto :goto_1a

    .line 537
    :cond_83
    and-int/lit8 v4, v0, 0x8

    if-nez v4, :cond_9e

    const-string v4, "sec"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9e

    .line 538
    iget-object v4, p0, Lcom/lge/lgdrm/DrmRight;->context:Landroid/content/Context;

    sget v5, Lcom/lge/internal/R$string;->second:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    or-int/lit8 v0, v0, 0x8

    .line 540
    goto/16 :goto_1a

    .line 543
    :cond_9e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1a
.end method


# virtual methods
.method public disableMetering()I
    .registers 3

    .prologue
    .line 469
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->mid:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lge/lgdrm/DrmRight;->nativeManageMetering(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public enableMetering()I
    .registers 3

    .prologue
    .line 459
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->mid:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/lge/lgdrm/DrmRight;->nativeManageMetering(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public getConstraint(I)Ljava/lang/String;
    .registers 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/lge/lgdrm/DrmRight;->unlimited:Z

    if-eqz v0, :cond_6

    .line 430
    const/4 v0, 0x0

    .line 437
    :goto_5
    return-object v0

    .line 433
    :cond_6
    const/4 v0, 0x1

    if-lt p1, v0, :cond_c

    const/4 v0, 0x7

    if-le p1, v0, :cond_14

    .line 434
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_14
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->constraintsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_5
.end method

.method public getConstraintList()[I
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 378
    const/4 v1, 0x0

    .line 382
    .local v1, "indx":I
    iget-boolean v6, p0, Lcom/lge/lgdrm/DrmRight;->unlimited:Z

    if-eqz v6, :cond_8

    .line 404
    :cond_7
    :goto_7
    return-object v3

    .line 386
    :cond_8
    const/16 v6, 0x8

    new-array v5, v6, [I

    .line 387
    .local v5, "tmp":[I
    iget-object v6, p0, Lcom/lge/lgdrm/DrmRight;->constraintsMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 388
    .local v4, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 389
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_24

    .line 396
    if-eqz v1, :cond_7

    .line 400
    new-array v3, v1, [I

    .line 402
    .local v3, "list":[I
    invoke-static {v5, v7, v3, v7, v1}, Ljava/lang/System;->arraycopy([II[III)V

    goto :goto_7

    .line 390
    .end local v3    # "list":[I
    :cond_24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 391
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_16

    .line 392
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v1

    .line 393
    add-int/lit8 v1, v1, 0x1

    goto :goto_16
.end method

.method public getPermission()I
    .registers 2

    .prologue
    .line 335
    iget v0, p0, Lcom/lge/lgdrm/DrmRight;->permission:I

    return v0
.end method

.method public getSummaryInfo(I)Ljava/lang/String;
    .registers 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 352
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 353
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->validFor:Ljava/lang/String;

    .line 357
    :goto_5
    return-object v0

    .line 356
    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 357
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->useLeft:Ljava/lang/String;

    goto :goto_5

    .line 360
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected isMatched(Lcom/lge/lgdrm/DrmContent;)Z
    .registers 5
    .param p1, "content"    # Lcom/lge/lgdrm/DrmContent;

    .prologue
    const/4 v0, 0x0

    .line 490
    iget-object v1, p0, Lcom/lge/lgdrm/DrmRight;->filename:Ljava/lang/String;

    iget-object v2, p1, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_c

    .line 496
    :cond_b
    :goto_b
    return v0

    .line 493
    :cond_c
    iget v1, p0, Lcom/lge/lgdrm/DrmRight;->index:I

    iget v2, p1, Lcom/lge/lgdrm/DrmContent;->index:I

    if-ne v1, v2, :cond_b

    .line 496
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public isMeteringEnabled()Z
    .registers 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->mid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lge/lgdrm/DrmRight;->nativeCheckMetering(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMeteringRight()Z
    .registers 2

    .prologue
    .line 446
    iget-boolean v0, p0, Lcom/lge/lgdrm/DrmRight;->metering:Z

    return v0
.end method

.method public isUnlimited()Z
    .registers 2

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/lge/lgdrm/DrmRight;->unlimited:Z

    return v0
.end method

.method public isValidRight()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 298
    iget-object v2, p0, Lcom/lge/lgdrm/DrmRight;->filename:Ljava/lang/String;

    iget v3, p0, Lcom/lge/lgdrm/DrmRight;->index:I

    iget v4, p0, Lcom/lge/lgdrm/DrmRight;->previewContent:I

    iget v5, p0, Lcom/lge/lgdrm/DrmRight;->permission:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/lge/lgdrm/DrmRight;->nativeGetRightInfo(Ljava/lang/String;III)I

    move-result v0

    .line 300
    .local v0, "retVal":I
    if-eqz v0, :cond_1c

    .line 302
    iput-boolean v1, p0, Lcom/lge/lgdrm/DrmRight;->unlimited:Z

    .line 303
    iput-boolean v1, p0, Lcom/lge/lgdrm/DrmRight;->metering:Z

    .line 304
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lge/lgdrm/DrmRight;->mid:Ljava/lang/String;

    .line 305
    iget-object v2, p0, Lcom/lge/lgdrm/DrmRight;->constraintsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 309
    :goto_1b
    return v1

    :cond_1c
    const/4 v1, 0x1

    goto :goto_1b
.end method
