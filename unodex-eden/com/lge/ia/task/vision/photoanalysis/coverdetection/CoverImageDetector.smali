.class public Lcom/lge/ia/task/vision/photoanalysis/coverdetection/CoverImageDetector;
.super Ljava/lang/Object;
.source "CoverImageDetector.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-string v0, "CoverImageDetection"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeCalcEntropy(Ljava/nio/ByteBuffer;II)F
.end method


# virtual methods
.method public calcEntropy(Ljava/nio/ByteBuffer;II)F
    .registers 5
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 8
    invoke-static {p1, p2, p3}, Lcom/lge/ia/task/vision/photoanalysis/coverdetection/CoverImageDetector;->nativeCalcEntropy(Ljava/nio/ByteBuffer;II)F

    move-result v0

    return v0
.end method
