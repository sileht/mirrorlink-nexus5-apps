.class public Lcom/lge/ia/task/vision/byteimage/ByteImageNative;
.super Ljava/lang/Object;
.source "ByteImageNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/ia/task/vision/byteimage/ByteImageNative$Type;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-string v0, "ByteImage"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertBitmap2ByteBuffer(Landroid/graphics/Bitmap;Lcom/lge/ia/task/vision/byteimage/ByteImageNative$Type;)Ljava/nio/ByteBuffer;
    .registers 6
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "tyep"    # Lcom/lge/ia/task/vision/byteimage/ByteImageNative$Type;

    .prologue
    .line 15
    const/4 v0, 0x3

    .line 17
    .local v0, "channels":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    mul-int/2addr v2, v0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 18
    .local v1, "dst":Ljava/nio/ByteBuffer;
    invoke-static {p0, v1}, Lcom/lge/ia/task/vision/byteimage/ByteImageNative;->nativeConvertBitmap2ByteBuffer(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;)V

    .line 19
    return-object v1
.end method

.method public static convertBitmap2ByteBufferAndCroppedResize(Landroid/graphics/Bitmap;Lcom/lge/ia/task/vision/byteimage/ByteImageNative$Type;I)Ljava/nio/ByteBuffer;
    .registers 6
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "tyep"    # Lcom/lge/ia/task/vision/byteimage/ByteImageNative$Type;
    .param p2, "width"    # I

    .prologue
    .line 23
    const/4 v0, 0x3

    .line 25
    .local v0, "channels":I
    mul-int v2, p2, p2

    mul-int/2addr v2, v0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 26
    .local v1, "dst":Ljava/nio/ByteBuffer;
    invoke-static {p0, v1, p2}, Lcom/lge/ia/task/vision/byteimage/ByteImageNative;->nativeConvertBitmap2ByteBufferAndCroppedResize(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;I)V

    .line 27
    return-object v1
.end method

.method private static native nativeConvertBitmap2ByteBuffer(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;)V
.end method

.method private static native nativeConvertBitmap2ByteBufferAndCroppedResize(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;I)V
.end method
