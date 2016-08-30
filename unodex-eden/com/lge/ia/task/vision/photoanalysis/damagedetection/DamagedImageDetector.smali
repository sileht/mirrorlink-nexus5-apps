.class public Lcom/lge/ia/task/vision/photoanalysis/damagedetection/DamagedImageDetector;
.super Ljava/lang/Object;
.source "DamagedImageDetector.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const-string v0, "DamagedImageDetection"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static detect(Ljava/nio/ByteBuffer;II)F
    .registers 4
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 7
    invoke-static {p0, p1, p2}, Lcom/lge/ia/task/vision/photoanalysis/damagedetection/DamagedImageDetector;->nativeDetect(Ljava/nio/ByteBuffer;II)F

    move-result v0

    return v0
.end method

.method private static native nativeDetect(Ljava/nio/ByteBuffer;II)F
.end method
