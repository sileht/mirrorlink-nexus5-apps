.class public Lcom/lge/cic/engine/face/FaceEngine;
.super Ljava/lang/Object;
.source "FaceEngine.java"


# instance fields
.field private nativeAddr:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 10
    invoke-static {}, Lcom/lge/cic/engine/face/NativeLoader;->getInstance()Lcom/lge/cic/engine/face/NativeLoader;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/cic/engine/face/FaceEngine;->nativeAddr:J

    .line 22
    return-void
.end method

.method private native nativeCalcFaceInfo(JLandroid/graphics/Bitmap;)[Lcom/lge/cic/engine/face/FaceInfo;
.end method

.method private native nativeClearDB(J)I
.end method

.method private native nativeCreate(Ljava/lang/String;)J
.end method

.method private native nativeRelease(J)I
.end method


# virtual methods
.method public calcFaceInfo(Landroid/graphics/Bitmap;)Ljava/util/ArrayList;
    .registers 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/engine/face/FaceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v0, "faceInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/engine/face/FaceInfo;>;"
    iget-wide v4, p0, Lcom/lge/cic/engine/face/FaceEngine;->nativeAddr:J

    invoke-direct {p0, v4, v5, p1}, Lcom/lge/cic/engine/face/FaceEngine;->nativeCalcFaceInfo(JLandroid/graphics/Bitmap;)[Lcom/lge/cic/engine/face/FaceInfo;

    move-result-object v1

    .line 45
    .local v1, "faceInfos":[Lcom/lge/cic/engine/face/FaceInfo;
    if-eqz v1, :cond_11

    .line 46
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    array-length v3, v1

    if-lt v2, v3, :cond_12

    .line 50
    .end local v2    # "i":I
    :cond_11
    return-object v0

    .line 47
    .restart local v2    # "i":I
    :cond_12
    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v2, v2, 0x1

    goto :goto_e
.end method

.method public create(Ljava/lang/String;)Z
    .registers 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/lge/cic/engine/face/FaceEngine;->release()V

    .line 27
    invoke-direct {p0, p1}, Lcom/lge/cic/engine/face/FaceEngine;->nativeCreate(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/cic/engine/face/FaceEngine;->nativeAddr:J

    .line 28
    iget-wide v0, p0, Lcom/lge/cic/engine/face/FaceEngine;->nativeAddr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    .line 29
    const/4 v0, 0x1

    .line 31
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public release()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 35
    iget-wide v0, p0, Lcom/lge/cic/engine/face/FaceEngine;->nativeAddr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 36
    iget-wide v0, p0, Lcom/lge/cic/engine/face/FaceEngine;->nativeAddr:J

    invoke-direct {p0, v0, v1}, Lcom/lge/cic/engine/face/FaceEngine;->nativeRelease(J)I

    .line 37
    iput-wide v2, p0, Lcom/lge/cic/engine/face/FaceEngine;->nativeAddr:J

    .line 39
    :cond_f
    return-void
.end method
