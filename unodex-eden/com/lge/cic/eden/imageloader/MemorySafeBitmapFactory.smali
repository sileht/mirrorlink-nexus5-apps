.class public Lcom/lge/cic/eden/imageloader/MemorySafeBitmapFactory;
.super Ljava/lang/Object;
.source "MemorySafeBitmapFactory.java"


# static fields
.field private static final OOM_TRY_CNT:I = 0xa

.field private static final logger:Lcom/lge/cic/eden/utils/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const-class v0, Lcom/lge/cic/eden/imageloader/MemorySafeBitmapFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/imageloader/MemorySafeBitmapFactory;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateInSampleSize(IIII)I
    .registers 9
    .param p1, "oriWidth"    # I
    .param p2, "oriHeight"    # I
    .param p3, "reqWidth"    # I
    .param p4, "reqHeight"    # I

    .prologue
    .line 20
    move v0, p2

    .line 21
    .local v0, "height":I
    move v2, p1

    .line 22
    .local v2, "width":I
    const/4 v1, 0x1

    .line 24
    .local v1, "inSampleSize":I
    if-gt v0, p4, :cond_7

    if-le v2, p3, :cond_13

    .line 27
    :cond_7
    :goto_7
    mul-int/lit8 v3, v1, 0x2

    div-int v3, v0, v3

    if-gt v3, p4, :cond_14

    .line 28
    mul-int/lit8 v3, v1, 0x2

    div-int v3, v2, v3

    .line 27
    if-gt v3, p3, :cond_14

    .line 32
    :cond_13
    return v1

    .line 29
    :cond_14
    shl-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method public createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    .registers 19
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "m"    # Landroid/graphics/Matrix;
    .param p7, "filter"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    .line 37
    const/4 v7, 0x0

    .line 38
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    const/16 v0, 0xa

    if-lt v10, v0, :cond_10

    .line 61
    :cond_6
    if-nez v7, :cond_5d

    .line 62
    const-string v9, "out-of-memory when create a bitmap"

    .line 63
    .local v9, "errorMsg":Ljava/lang/String;
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0, v9}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    .end local v9    # "errorMsg":Ljava/lang/String;
    :cond_10
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    move v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    :try_start_1a
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 41
    if-nez v7, :cond_41

    .line 42
    const-string v9, "NullPointerException: created Bitmap is null"

    .line 44
    .restart local v9    # "errorMsg":Ljava/lang/String;
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_28
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1a .. :try_end_28} :catch_28
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_28} :catch_46

    .line 46
    .end local v9    # "errorMsg":Ljava/lang/String;
    :catch_28
    move-exception v8

    .line 47
    .local v8, "e":Ljava/lang/OutOfMemoryError;
    sget-object v0, Lcom/lge/cic/eden/imageloader/MemorySafeBitmapFactory;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OutOfMemoryError: createBitmap, try cnt: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 48
    const/4 v7, 0x0

    .line 50
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 56
    .end local v8    # "e":Ljava/lang/OutOfMemoryError;
    :cond_41
    if-nez v7, :cond_6

    .line 38
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 51
    :catch_46
    move-exception v8

    .line 52
    .local v8, "e":Ljava/lang/NullPointerException;
    sget-object v0, Lcom/lge/cic/eden/imageloader/MemorySafeBitmapFactory;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NullPointerException: createBitmap, try cnt: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 53
    const/4 v0, 0x0

    .line 65
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :goto_5c
    return-object v0

    :cond_5d
    move-object v0, v7

    goto :goto_5c
.end method

.method public decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 10
    .param p1, "pathName"    # Ljava/lang/String;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    const/16 v4, 0xa

    if-lt v3, v4, :cond_1d

    .line 92
    :cond_6
    if-nez v0, :cond_6f

    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "out-of-memory when load a "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "errorMsg":Ljava/lang/String;
    new-instance v4, Ljava/lang/OutOfMemoryError;

    invoke-direct {v4, v2}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 73
    .end local v2    # "errorMsg":Ljava/lang/String;
    :cond_1d
    :try_start_1d
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 74
    if-nez v0, :cond_6a

    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "File not found in path "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    .restart local v2    # "errorMsg":Ljava/lang/String;
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-direct {v4, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_38
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d .. :try_end_38} :catch_38

    .line 79
    .end local v2    # "errorMsg":Ljava/lang/String;
    :catch_38
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "decode file "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", try cnt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    .restart local v2    # "errorMsg":Ljava/lang/String;
    sget-object v4, Lcom/lge/cic/eden/imageloader/MemorySafeBitmapFactory;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "OutOfMemoryError: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x0

    .line 84
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 87
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    .end local v2    # "errorMsg":Ljava/lang/String;
    :cond_6a
    if-nez v0, :cond_6

    .line 71
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 96
    :cond_6f
    return-object v0
.end method

.method public decodeFileWithGravity(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 19
    .param p1, "pathName"    # Ljava/lang/String;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual/range {p0 .. p2}, Lcom/lge/cic/eden/imageloader/MemorySafeBitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 102
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-nez v2, :cond_8

    move-object v9, v2

    .line 148
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    :goto_7
    return-object v9

    .line 106
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_8
    const/4 v11, 0x0

    .line 108
    .local v11, "exifInterface":Landroid/media/ExifInterface;
    :try_start_9
    new-instance v12, Landroid/media/ExifInterface;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_10} :catch_15

    .end local v11    # "exifInterface":Landroid/media/ExifInterface;
    .local v12, "exifInterface":Landroid/media/ExifInterface;
    move-object v11, v12

    .line 113
    .end local v12    # "exifInterface":Landroid/media/ExifInterface;
    .restart local v11    # "exifInterface":Landroid/media/ExifInterface;
    :goto_11
    if-nez v11, :cond_2d

    move-object v9, v2

    .line 114
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v9    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_7

    .line 109
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    :catch_15
    move-exception v10

    .line 110
    .local v10, "e":Ljava/io/IOException;
    sget-object v1, Lcom/lge/cic/eden/imageloader/MemorySafeBitmapFactory;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IOException: extract ExifInterface from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v10}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_11

    .line 117
    .end local v10    # "e":Ljava/io/IOException;
    :cond_2d
    const-string v1, "Orientation"

    const/4 v3, 0x1

    invoke-virtual {v11, v1, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v13

    .line 119
    .local v13, "exifOrientation":I
    const/4 v14, 0x0

    .line 120
    .local v14, "rotate":I
    packed-switch v13, :pswitch_data_66

    .line 134
    :goto_38
    :pswitch_38
    if-eqz v14, :cond_5a

    .line 135
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 136
    .local v5, "width":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 138
    .local v6, "height":I
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 139
    .local v7, "matrix":Landroid/graphics/Matrix;
    int-to-float v1, v14

    invoke-virtual {v7, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 141
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/lge/cic/eden/imageloader/MemorySafeBitmapFactory;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 142
    .local v15, "rotatebmp":Landroid/graphics/Bitmap;
    if-eqz v15, :cond_5a

    .line 143
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 144
    move-object v2, v15

    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v15    # "rotatebmp":Landroid/graphics/Bitmap;
    :cond_5a
    move-object v9, v2

    .line 148
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v9    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_7

    .line 122
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    :pswitch_5c
    const/16 v14, 0x5a

    .line 123
    goto :goto_38

    .line 126
    :pswitch_5f
    const/16 v14, 0xb4

    .line 127
    goto :goto_38

    .line 130
    :pswitch_62
    const/16 v14, 0x10e

    goto :goto_38

    .line 120
    nop

    :pswitch_data_66
    .packed-switch 0x3
        :pswitch_5f
        :pswitch_38
        :pswitch_38
        :pswitch_5c
        :pswitch_38
        :pswitch_62
    .end packed-switch
.end method
