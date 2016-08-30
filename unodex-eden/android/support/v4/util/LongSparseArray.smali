.class public Landroid/support/v4/util/LongSparseArray;
.super Ljava/lang/Object;
.source "LongSparseArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[J

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/support/v4/util/LongSparseArray;-><init>(I)V

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "initialCapacity"    # I

    .prologue
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v1, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    .line 45
    invoke-static {p1}, Landroid/support/v4/util/LongSparseArray;->idealLongArraySize(I)I

    move-result p1

    .line 47
    new-array v0, p1, [J

    iput-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    .line 48
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 49
    iput v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    .line 50
    return-void
.end method

.method private static binarySearch([JIIJ)I
    .registers 12
    .param p0, "a"    # [J
    .param p1, "start"    # I
    .param p2, "len"    # I
    .param p3, "key"    # J

    .prologue
    .line 335
    add-int v1, p1, p2

    .local v1, "high":I
    add-int/lit8 v2, p1, -0x1

    .line 337
    .local v2, "low":I
    :goto_4
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_17

    .line 338
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 340
    .local v0, "guess":I
    aget-wide v4, p0, v0

    cmp-long v3, v4, p3

    if-gez v3, :cond_15

    .line 341
    move v2, v0

    goto :goto_4

    .line 343
    :cond_15
    move v1, v0

    goto :goto_4

    .line 346
    .end local v0    # "guess":I
    :cond_17
    add-int v3, p1, p2

    if-ne v1, v3, :cond_20

    .line 347
    add-int v3, p1, p2

    xor-int/lit8 v1, v3, -0x1

    .line 351
    .end local v1    # "high":I
    :cond_1f
    :goto_1f
    return v1

    .line 348
    .restart local v1    # "high":I
    :cond_20
    aget-wide v4, p0, v1

    cmp-long v3, v4, p3

    if-eqz v3, :cond_1f

    .line 351
    xor-int/lit8 v1, v1, -0x1

    goto :goto_1f
.end method

.method private gc()V
    .registers 9

    .prologue
    .line 123
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    iget v2, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    .line 124
    .local v2, "n":I
    const/4 v3, 0x0

    .line 125
    .local v3, "o":I
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    .line 126
    .local v1, "keys":[J
    iget-object v5, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 128
    .local v5, "values":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    if-ge v0, v2, :cond_20

    .line 129
    aget-object v4, v5, v0

    .line 131
    .local v4, "val":Ljava/lang/Object;
    sget-object v6, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v4, v6, :cond_1d

    .line 132
    if-eq v0, v3, :cond_1b

    .line 133
    aget-wide v6, v1, v0

    aput-wide v6, v1, v3

    .line 134
    aput-object v4, v5, v3

    .line 135
    const/4 v6, 0x0

    aput-object v6, v5, v0

    .line 138
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    .line 128
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 142
    .end local v4    # "val":Ljava/lang/Object;
    :cond_20
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    .line 143
    iput v3, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    .line 146
    return-void
.end method

.method public static idealByteArraySize(I)I
    .registers 4
    .param p0, "need"    # I

    .prologue
    const/4 v2, 0x1

    .line 355
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_2
    const/16 v1, 0x20

    if-ge v0, v1, :cond_10

    .line 356
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_11

    .line 357
    shl-int v1, v2, v0

    add-int/lit8 p0, v1, -0xc

    .line 359
    .end local p0    # "need":I
    :cond_10
    return p0

    .line 355
    .restart local p0    # "need":I
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static idealLongArraySize(I)I
    .registers 2
    .param p0, "need"    # I

    .prologue
    .line 363
    mul-int/lit8 v0, p0, 0x8

    invoke-static {v0}, Landroid/support/v4/util/LongSparseArray;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    return v0
.end method


# virtual methods
.method public append(JLjava/lang/Object;)V
    .registers 11
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    .local p3, "value":Ljava/lang/Object;, "TE;"
    const/4 v6, 0x0

    .line 305
    iget v4, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    if-eqz v4, :cond_15

    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    iget v5, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    add-int/lit8 v5, v5, -0x1

    aget-wide v4, v4, v5

    cmp-long v4, p1, v4

    if-gtz v4, :cond_15

    .line 306
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 332
    :goto_14
    return-void

    .line 310
    :cond_15
    iget-boolean v4, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v4, :cond_23

    iget v4, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    iget-object v5, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    array-length v5, v5

    if-lt v4, v5, :cond_23

    .line 311
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 314
    :cond_23
    iget v3, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    .line 315
    .local v3, "pos":I
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    array-length v4, v4

    if-lt v3, v4, :cond_48

    .line 316
    add-int/lit8 v4, v3, 0x1

    invoke-static {v4}, Landroid/support/v4/util/LongSparseArray;->idealLongArraySize(I)I

    move-result v0

    .line 318
    .local v0, "n":I
    new-array v1, v0, [J

    .line 319
    .local v1, "nkeys":[J
    new-array v2, v0, [Ljava/lang/Object;

    .line 322
    .local v2, "nvalues":[Ljava/lang/Object;
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    iget-object v5, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    array-length v5, v5

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    iput-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    .line 326
    iput-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 329
    .end local v0    # "n":I
    .end local v1    # "nkeys":[J
    .end local v2    # "nvalues":[Ljava/lang/Object;
    :cond_48
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    aput-wide p1, v4, v3

    .line 330
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v4, v3

    .line 331
    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    goto :goto_14
.end method

.method public clear()V
    .registers 6

    .prologue
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    const/4 v4, 0x0

    .line 289
    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    .line 290
    .local v1, "n":I
    iget-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 292
    .local v2, "values":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    if-ge v0, v1, :cond_e

    .line 293
    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 296
    :cond_e
    iput v4, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    .line 297
    iput-boolean v4, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    .line 298
    return-void
.end method

.method public clone()Landroid/support/v4/util/LongSparseArray;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/LongSparseArray",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    const/4 v1, 0x0

    .line 57
    .local v1, "clone":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/support/v4/util/LongSparseArray;

    move-object v1, v0

    .line 58
    iget-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    invoke-virtual {v2}, [J->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    iput-object v2, v1, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    .line 59
    iget-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    invoke-virtual {v2}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    iput-object v2, v1, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1d} :catch_1e

    .line 63
    :goto_1d
    return-object v1

    .line 60
    :catch_1e
    move-exception v2

    goto :goto_1d
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    invoke-virtual {p0}, Landroid/support/v4/util/LongSparseArray;->clone()Landroid/support/v4/util/LongSparseArray;

    move-result-object v0

    return-object v0
.end method

.method public delete(J)V
    .registers 8
    .param p1, "key"    # J

    .prologue
    .line 93
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    const/4 v2, 0x0

    iget v3, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    invoke-static {v1, v2, v3, p1, p2}, Landroid/support/v4/util/LongSparseArray;->binarySearch([JIIJ)I

    move-result v0

    .line 95
    .local v0, "i":I
    if-ltz v0, :cond_1c

    .line 96
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_1c

    .line 97
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    sget-object v2, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 98
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    .line 101
    :cond_1c
    return-void
.end method

.method public get(J)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    .local p3, "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    const/4 v2, 0x0

    iget v3, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    invoke-static {v1, v2, v3, p1, p2}, Landroid/support/v4/util/LongSparseArray;->binarySearch([JIIJ)I

    move-result v0

    .line 82
    .local v0, "i":I
    if-ltz v0, :cond_13

    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_14

    .line 85
    .end local p3    # "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    :cond_13
    :goto_13
    return-object p3

    .restart local p3    # "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    :cond_14
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object p3, v1, v0

    goto :goto_13
.end method

.method public indexOfKey(J)I
    .registers 6
    .param p1, "key"    # J

    .prologue
    .line 258
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 259
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 262
    :cond_7
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    invoke-static {v0, v1, v2, p1, p2}, Landroid/support/v4/util/LongSparseArray;->binarySearch([JIIJ)I

    move-result v0

    return v0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 274
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget-boolean v1, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v1, :cond_7

    .line 275
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 278
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    if-ge v0, v1, :cond_16

    .line 279
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_13

    .line 282
    .end local v0    # "i":I
    :goto_12
    return v0

    .line 278
    .restart local v0    # "i":I
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 282
    :cond_16
    const/4 v0, -0x1

    goto :goto_12
.end method

.method public keyAt(I)J
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 218
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 219
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 222
    :cond_7
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public put(JLjava/lang/Object;)V
    .registers 13
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    .local p3, "value":Ljava/lang/Object;, "TE;"
    const/4 v6, 0x0

    .line 154
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    iget v5, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    invoke-static {v4, v6, v5, p1, p2}, Landroid/support/v4/util/LongSparseArray;->binarySearch([JIIJ)I

    move-result v0

    .line 156
    .local v0, "i":I
    if-ltz v0, :cond_10

    .line 157
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v4, v0

    .line 198
    :goto_f
    return-void

    .line 159
    :cond_10
    xor-int/lit8 v0, v0, -0x1

    .line 161
    iget v4, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    if-ge v0, v4, :cond_27

    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v4, v4, v0

    sget-object v5, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v4, v5, :cond_27

    .line 162
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    aput-wide p1, v4, v0

    .line 163
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v4, v0

    goto :goto_f

    .line 167
    :cond_27
    iget-boolean v4, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v4, :cond_3f

    iget v4, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    iget-object v5, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    array-length v5, v5

    if-lt v4, v5, :cond_3f

    .line 168
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 171
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    iget v5, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    invoke-static {v4, v6, v5, p1, p2}, Landroid/support/v4/util/LongSparseArray;->binarySearch([JIIJ)I

    move-result v4

    xor-int/lit8 v0, v4, -0x1

    .line 174
    :cond_3f
    iget v4, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    iget-object v5, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    array-length v5, v5

    if-lt v4, v5, :cond_66

    .line 175
    iget v4, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Landroid/support/v4/util/LongSparseArray;->idealLongArraySize(I)I

    move-result v1

    .line 177
    .local v1, "n":I
    new-array v2, v1, [J

    .line 178
    .local v2, "nkeys":[J
    new-array v3, v1, [Ljava/lang/Object;

    .line 181
    .local v3, "nvalues":[Ljava/lang/Object;
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    iget-object v5, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    iput-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    .line 185
    iput-object v3, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 188
    .end local v1    # "n":I
    .end local v2    # "nkeys":[J
    .end local v3    # "nvalues":[Ljava/lang/Object;
    :cond_66
    iget v4, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    sub-int/2addr v4, v0

    if-eqz v4, :cond_83

    .line 190
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    iget-object v5, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    :cond_83
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    aput-wide p1, v4, v0

    .line 195
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v4, v0

    .line 196
    iget v4, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    goto/16 :goto_f
.end method

.method public remove(J)V
    .registers 4
    .param p1, "key"    # J

    .prologue
    .line 107
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/util/LongSparseArray;->delete(J)V

    .line 108
    return-void
.end method

.method public removeAt(I)V
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 114
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v0, v1, :cond_11

    .line 115
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    aput-object v1, v0, p1

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    .line 118
    :cond_11
    return-void
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 246
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 249
    :cond_7
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 250
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 205
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 206
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 209
    :cond_7
    iget v0, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    return v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 233
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 236
    :cond_7
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
