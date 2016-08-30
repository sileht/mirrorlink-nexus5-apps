.class public Lcom/lge/bnr/framework/LGBackupZip;
.super Ljava/lang/Object;
.source "LGBackupZip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x800

.field private static final COMPRESSION_LEVEL:I = 0x0

.field public static final EXTERNAL_STORAGE:Ljava/lang/String; = "/external@"

.field private static final FS:C

.field public static final INTERNAL_STORAGE:Ljava/lang/String; = "/internal@"

.field private static final LOG_TAG:Ljava/lang/String; = "[BNRZip]"

.field public static final ONLYEXTERNAL_STORAGE:Ljava/lang/String; = "/onlyExternal@"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lcom/lge/bnr/framework/LGBackupZip;->FS:C

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calculateProgressRatio(Ljava/util/List;I)Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;
    .registers 19
    .param p2, "progressRange"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;I)",
            "Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/bnr/framework/LGBackupException;
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "pSrcFileList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v10, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v13}, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;-><init>(Lcom/lge/bnr/framework/LGBackupZip;I)V

    .line 61
    .local v10, "progress":Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;
    invoke-direct/range {p0 .. p1}, Lcom/lge/bnr/framework/LGBackupZip;->getTotalFileSize(Ljava/util/List;)J

    move-result-wide v6

    .line 63
    .local v6, "lTotalFileSize":J
    const/4 v12, 0x0

    .line 64
    .local v12, "total_Progress":I
    const/4 v8, 0x0

    .line 65
    .local v8, "max":I
    const/4 v9, 0x0

    .line 66
    .local v9, "max_index":I
    const/4 v2, 0x0

    .line 68
    .local v2, "belowOneCnt":B
    const-wide/16 v14, 0x0

    cmp-long v13, v6, v14

    if-gtz v13, :cond_21

    .line 69
    new-instance v13, Lcom/lge/bnr/framework/LGBackupException;

    sget-object v14, Lcom/lge/bnr/framework/LGBackupErrorCode;->LBFILEMGR_FILE_NOT_FOUND:Lcom/lge/bnr/framework/LGBackupErrorCode;

    invoke-direct {v13, v14}, Lcom/lge/bnr/framework/LGBackupException;-><init>(Lcom/lge/bnr/framework/LGBackupErrorCode;)V

    throw v13

    .line 73
    :cond_21
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_22
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    if-lt v3, v13, :cond_48

    .line 88
    move/from16 v0, p2

    if-le v12, v0, :cond_40

    .line 89
    const/4 v3, 0x0

    :goto_2d
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    if-lt v3, v13, :cond_7d

    .line 96
    # getter for: Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->maxProgress:[I
    invoke-static {v10}, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->access$0(Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;)[I

    move-result-object v13

    # getter for: Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->maxProgress:[I
    invoke-static {v10}, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->access$0(Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;)[I

    move-result-object v14

    aget v14, v14, v9

    sub-int/2addr v14, v2

    aput v14, v13, v9

    .line 99
    :cond_40
    const/4 v3, 0x0

    :goto_41
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    if-lt v3, v13, :cond_8f

    .line 113
    return-object v10

    .line 75
    :cond_48
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 77
    .local v4, "filesize":J
    # getter for: Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->maxProgress:[I
    invoke-static {v10}, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->access$0(Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;)[I

    move-result-object v13

    move/from16 v0, p2

    int-to-long v14, v0

    mul-long/2addr v14, v4

    div-long/2addr v14, v6

    long-to-int v14, v14

    aput v14, v13, v3

    .line 79
    # getter for: Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->maxProgress:[I
    invoke-static {v10}, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->access$0(Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;)[I

    move-result-object v13

    aget v13, v13, v3

    const/4 v14, 0x1

    if-ge v13, v14, :cond_73

    .line 80
    # getter for: Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->maxProgress:[I
    invoke-static {v10}, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->access$0(Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;)[I

    move-result-object v13

    const/4 v14, 0x1

    aput v14, v13, v3

    .line 81
    add-int/lit8 v13, v2, 0x1

    int-to-byte v2, v13

    .line 84
    :cond_73
    # getter for: Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->maxProgress:[I
    invoke-static {v10}, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->access$0(Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;)[I

    move-result-object v13

    aget v13, v13, v3

    add-int/2addr v12, v13

    .line 73
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 90
    .end local v4    # "filesize":J
    :cond_7d
    # getter for: Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->maxProgress:[I
    invoke-static {v10}, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->access$0(Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;)[I

    move-result-object v13

    aget v13, v13, v3

    if-le v13, v8, :cond_8c

    .line 91
    # getter for: Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->maxProgress:[I
    invoke-static {v10}, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->access$0(Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;)[I

    move-result-object v13

    aget v8, v13, v3

    .line 92
    move v9, v3

    .line 89
    :cond_8c
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 100
    :cond_8f
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 102
    .restart local v4    # "filesize":J
    const-wide/16 v14, 0x800

    div-long v14, v4, v14

    long-to-int v11, v14

    .line 104
    .local v11, "step":I
    # getter for: Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->maxProgress:[I
    invoke-static {v10}, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->access$0(Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;)[I

    move-result-object v13

    aget v13, v13, v3

    if-gtz v13, :cond_af

    .line 106
    # getter for: Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->maxProgress:[I
    invoke-static {v10}, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->access$0(Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;)[I

    move-result-object v13

    const/4 v14, 0x1

    aput v14, v13, v3

    .line 109
    :cond_af
    # getter for: Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->stepPerOneProgress:[I
    invoke-static {v10}, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->access$1(Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;)[I

    move-result-object v13

    # getter for: Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->maxProgress:[I
    invoke-static {v10}, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->access$0(Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;)[I

    move-result-object v14

    aget v14, v14, v3

    div-int v14, v11, v14

    aput v14, v13, v3

    .line 99
    add-int/lit8 v3, v3, 0x1

    goto :goto_41
.end method

.method private getTotalFileSize(Ljava/util/List;)J
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "pSrcFileList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const-wide/16 v0, 0x0

    .line 49
    .local v0, "lTotalFileSize":J
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_d

    .line 53
    return-wide v0

    .line 49
    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 50
    .local v2, "srcFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v0, v4

    goto :goto_6
.end method

.method private writeByteStreamToAIDL(Ljava/lang/String;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;Lcom/lge/bnr/framework/IBNRFrameworkAPI;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "baos"    # Ljava/io/ByteArrayOutputStream;
    .param p4, "bnr"    # Lcom/lge/bnr/framework/IBNRFrameworkAPI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 122
    .local v0, "zipOutput":[B
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 124
    array-length v1, v0

    if-lez v1, :cond_f

    .line 126
    array-length v1, v0

    invoke-interface {p4, p1, p2, v0, v1}, Lcom/lge/bnr/framework/IBNRFrameworkAPI;->transferByteArray(Ljava/lang/String;Ljava/lang/String;[BI)V

    .line 127
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 129
    :cond_f
    return-void
.end method


# virtual methods
.method public closeStreamSilently(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "pInStreamObj"    # Ljava/io/InputStream;

    .prologue
    .line 418
    if-eqz p1, :cond_5

    .line 420
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 425
    :cond_5
    :goto_5
    return-void

    .line 421
    :catch_6
    move-exception v0

    .line 422
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5
.end method

.method public closeStreamSilently(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "pOutStreamObj"    # Ljava/io/OutputStream;

    .prologue
    .line 408
    if-eqz p1, :cond_5

    .line 410
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 415
    :cond_5
    :goto_5
    return-void

    .line 411
    :catch_6
    move-exception v0

    .line 412
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5
.end method

.method public unzip(Ljava/lang/String;Ljava/lang/String;Lcom/lge/bnr/framework/IBNRFrameworkAPI;Ljava/lang/String;JJII)Ljava/util/ArrayList;
    .registers 44
    .param p1, "pZipFileName"    # Ljava/lang/String;
    .param p2, "pUnZipDirPath"    # Ljava/lang/String;
    .param p3, "bnr"    # Lcom/lge/bnr/framework/IBNRFrameworkAPI;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "offset"    # J
    .param p7, "zipSrcLength"    # J
    .param p9, "startProgress"    # I
    .param p10, "endProgress"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/lge/bnr/framework/IBNRFrameworkAPI;",
            "Ljava/lang/String;",
            "JJII)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/bnr/framework/LGBackupException;
        }
    .end annotation

    .prologue
    .line 268
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v20, "sUnzipFileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v18, 0x0

    .line 270
    .local v18, "pfd":Landroid/os/ParcelFileDescriptor;
    const/16 v26, 0x0

    .line 271
    .local v26, "zipInputStream":Ljava/util/zip/ZipInputStream;
    const/4 v12, 0x0

    .line 272
    .local v12, "fis":Ljava/io/FileInputStream;
    const/4 v14, 0x0

    .line 274
    .local v14, "fos":Ljava/io/FileOutputStream;
    move/from16 v4, p9

    .line 276
    .local v4, "accumulateProgress":I
    const-wide/16 v22, 0x0

    .line 278
    .local v22, "stepPerOneProgress":J
    const-wide/16 v28, 0x1

    mul-long v10, p7, v28

    .line 280
    .local v10, "estimateZipOutLength":J
    sub-int v7, p10, p9

    .line 282
    .local v7, "completeProgress":I
    const/16 v28, 0x1

    move/from16 v0, v28

    if-ge v7, v0, :cond_21

    .line 283
    const/16 p9, 0x0

    .line 284
    const/16 p10, 0x64

    .line 285
    sub-int v7, p10, p9

    .line 288
    :cond_21
    const-wide/16 v28, 0x200

    div-long v28, v10, v28

    int-to-long v0, v7

    move-wide/from16 v30, v0

    div-long v22, v28, v30

    .line 290
    const-wide/16 v24, 0x0

    .line 294
    .local v24, "writeCnt":J
    :try_start_2c
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-wide/from16 v2, p5

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/bnr/framework/IBNRFrameworkAPI;->getRemoteFd(Ljava/lang/String;J)Landroid/os/ParcelFileDescriptor;
    :try_end_35
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_35} :catch_2dd
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_35} :catch_23e
    .catchall {:try_start_2c .. :try_end_35} :catchall_221

    move-result-object v18

    .line 296
    if-nez v18, :cond_80

    .line 380
    const-string v28, "JGZIP"

    const-string v29, "unZipfile = finally"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    if-eqz v18, :cond_53

    .line 384
    :try_start_41
    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_5f
    .catchall {:try_start_41 .. :try_end_44} :catchall_74

    .line 387
    if-eqz v26, :cond_49

    .line 388
    :try_start_46
    invoke-virtual/range {v26 .. v26}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_56
    .catchall {:try_start_46 .. :try_end_49} :catchall_74

    .line 398
    :cond_49
    :goto_49
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 399
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    .line 297
    :cond_53
    :goto_53
    const/16 v20, 0x0

    .line 404
    .end local v20    # "sUnzipFileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_55
    return-object v20

    .line 391
    .restart local v20    # "sUnzipFileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_56
    move-exception v28

    :try_start_57
    const-string v28, "JGZIP"

    const-string v29, "zipInputStream close exception"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5e} :catch_5f
    .catchall {:try_start_57 .. :try_end_5e} :catchall_74

    goto :goto_49

    .line 394
    :catch_5f
    move-exception v8

    .line 395
    .local v8, "e":Ljava/io/IOException;
    :try_start_60
    const-string v28, "JGZIP"

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catchall {:try_start_60 .. :try_end_69} :catchall_74

    .line 398
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 399
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    goto :goto_53

    .line 397
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_74
    move-exception v28

    .line 398
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 399
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    .line 400
    throw v28

    .line 300
    :cond_80
    :try_start_80
    new-instance v13, Ljava/io/FileInputStream;

    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_8b
    .catch Ljava/io/FileNotFoundException; {:try_start_80 .. :try_end_8b} :catch_2dd
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_8b} :catch_23e
    .catchall {:try_start_80 .. :try_end_8b} :catchall_221

    .line 302
    .end local v12    # "fis":Ljava/io/FileInputStream;
    .local v13, "fis":Ljava/io/FileInputStream;
    :try_start_8b
    new-instance v27, Ljava/util/zip/ZipInputStream;

    move-object/from16 v0, v27

    invoke-direct {v0, v13}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_92
    .catch Ljava/io/FileNotFoundException; {:try_start_8b .. :try_end_92} :catch_2e0
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_92} :catch_2c5
    .catchall {:try_start_8b .. :try_end_92} :catchall_2ad

    .end local v26    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .local v27, "zipInputStream":Ljava/util/zip/ZipInputStream;
    move-object v15, v14

    .line 306
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .local v15, "fos":Ljava/io/FileOutputStream;
    :goto_93
    if-nez v27, :cond_e1

    .line 380
    const-string v28, "JGZIP"

    const-string v29, "unZipfile = finally"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    if-eqz v18, :cond_b0

    .line 384
    :try_start_9e
    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_c0
    .catchall {:try_start_9e .. :try_end_a1} :catchall_d5

    .line 387
    if-eqz v27, :cond_a6

    .line 388
    :try_start_a3
    invoke-virtual/range {v27 .. v27}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_b7
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_d5

    .line 398
    :cond_a6
    :goto_a6
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 399
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    .line 307
    :cond_b0
    :goto_b0
    const/16 v20, 0x0

    move-object v14, v15

    .end local v15    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    move-object v12, v13

    .end local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    move-object/from16 v26, v27

    .end local v27    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v26    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    goto :goto_55

    .line 391
    .end local v12    # "fis":Ljava/io/FileInputStream;
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .end local v26    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "fos":Ljava/io/FileOutputStream;
    .restart local v27    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catch_b7
    move-exception v28

    :try_start_b8
    const-string v28, "JGZIP"

    const-string v29, "zipInputStream close exception"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bf} :catch_c0
    .catchall {:try_start_b8 .. :try_end_bf} :catchall_d5

    goto :goto_a6

    .line 394
    :catch_c0
    move-exception v8

    .line 395
    .restart local v8    # "e":Ljava/io/IOException;
    :try_start_c1
    const-string v28, "JGZIP"

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ca
    .catchall {:try_start_c1 .. :try_end_ca} :catchall_d5

    .line 398
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 399
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    goto :goto_b0

    .line 397
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_d5
    move-exception v28

    .line 398
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 399
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    .line 400
    throw v28

    .line 310
    :cond_e1
    :try_start_e1
    invoke-virtual/range {v27 .. v27}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v9

    .line 312
    .local v9, "entry":Ljava/util/zip/ZipEntry;
    if-nez v9, :cond_118

    .line 313
    const-string v28, "JGZIP"

    const-string v29, "no more Zip file entry"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, p10

    invoke-interface {v0, v1, v2}, Lcom/lge/bnr/framework/IBNRFrameworkAPI;->setRestoreProgress(Ljava/lang/String;I)V
    :try_end_f7
    .catch Ljava/io/FileNotFoundException; {:try_start_e1 .. :try_end_f7} :catch_2e4
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_f7} :catch_2c9
    .catchall {:try_start_e1 .. :try_end_f7} :catchall_2b1

    .line 380
    const-string v28, "JGZIP"

    const-string v29, "unZipfile = finally"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    if-eqz v18, :cond_112

    .line 384
    :try_start_100
    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_103
    .catch Ljava/io/IOException; {:try_start_100 .. :try_end_103} :catch_28b
    .catchall {:try_start_100 .. :try_end_103} :catchall_2a1

    .line 387
    if-eqz v27, :cond_108

    .line 388
    :try_start_105
    invoke-virtual/range {v27 .. v27}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_108} :catch_281
    .catchall {:try_start_105 .. :try_end_108} :catchall_2a1

    .line 398
    :cond_108
    :goto_108
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 399
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    :cond_112
    :goto_112
    move-object v14, v15

    .end local v15    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    move-object v12, v13

    .end local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    move-object/from16 v26, v27

    .line 404
    .end local v27    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v26    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_55

    .line 318
    .end local v12    # "fis":Ljava/io/FileInputStream;
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .end local v26    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "fos":Ljava/io/FileOutputStream;
    .restart local v27    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :cond_118
    :try_start_118
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v19

    .line 319
    .local v19, "sCurrentEntry":Ljava/lang/String;
    const-string v28, "JGZIP"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "sCurrentEntry "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    if-nez p2, :cond_18f

    .line 324
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 329
    .local v21, "targetFile":Ljava/io/File;
    :goto_13f
    new-instance v17, Ljava/io/File;

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 331
    .local v17, "parentFile":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v28

    if-nez v28, :cond_155

    .line 332
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdirs()Z

    .line 334
    :cond_155
    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, v21

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_15c
    .catch Ljava/io/FileNotFoundException; {:try_start_118 .. :try_end_15c} :catch_2e4
    .catch Ljava/io/IOException; {:try_start_118 .. :try_end_15c} :catch_2c9
    .catchall {:try_start_118 .. :try_end_15c} :catchall_2b1

    .line 336
    .end local v15    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    const/16 v16, 0x0

    .line 337
    .local v16, "iCount":I
    const/16 v28, 0x800

    :try_start_160
    move/from16 v0, v28

    new-array v6, v0, [B
    :try_end_164
    .catch Ljava/io/FileNotFoundException; {:try_start_160 .. :try_end_164} :catch_2eb
    .catch Ljava/io/IOException; {:try_start_160 .. :try_end_164} :catch_2d0
    .catchall {:try_start_160 .. :try_end_164} :catchall_2b8

    .line 339
    .local v6, "buffer":[B
    if-eqz v27, :cond_17e

    move v5, v4

    .line 340
    .end local v4    # "accumulateProgress":I
    .local v5, "accumulateProgress":I
    :cond_167
    :goto_167
    const/16 v28, 0x0

    const/16 v29, 0x800

    :try_start_16b
    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v6, v1, v2}, Ljava/util/zip/ZipInputStream;->read([BII)I
    :try_end_174
    .catch Ljava/io/FileNotFoundException; {:try_start_16b .. :try_end_174} :catch_204
    .catch Ljava/io/IOException; {:try_start_16b .. :try_end_174} :catch_2d6
    .catchall {:try_start_16b .. :try_end_174} :catchall_2be

    move-result v16

    const/16 v28, -0x1

    move/from16 v0, v16

    move/from16 v1, v28

    if-ne v0, v1, :cond_1b4

    move v4, v5

    .line 363
    .end local v5    # "accumulateProgress":I
    .restart local v4    # "accumulateProgress":I
    :cond_17e
    :try_start_17e
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 365
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18c
    .catch Ljava/io/FileNotFoundException; {:try_start_17e .. :try_end_18c} :catch_2eb
    .catch Ljava/io/IOException; {:try_start_17e .. :try_end_18c} :catch_2d0
    .catchall {:try_start_17e .. :try_end_18c} :catchall_2b8

    move-object v15, v14

    .line 304
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_93

    .line 326
    .end local v6    # "buffer":[B
    .end local v16    # "iCount":I
    .end local v17    # "parentFile":Ljava/io/File;
    .end local v21    # "targetFile":Ljava/io/File;
    :cond_18f
    :try_start_18f
    new-instance v21, Ljava/io/File;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-char v29, Lcom/lge/bnr/framework/LGBackupZip;->FS:C

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1b3
    .catch Ljava/io/FileNotFoundException; {:try_start_18f .. :try_end_1b3} :catch_2e4
    .catch Ljava/io/IOException; {:try_start_18f .. :try_end_1b3} :catch_2c9
    .catchall {:try_start_18f .. :try_end_1b3} :catchall_2b1

    .restart local v21    # "targetFile":Ljava/io/File;
    goto :goto_13f

    .line 343
    .end local v4    # "accumulateProgress":I
    .end local v15    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "accumulateProgress":I
    .restart local v6    # "buffer":[B
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "iCount":I
    .restart local v17    # "parentFile":Ljava/io/File;
    :cond_1b4
    const/16 v28, 0x0

    :try_start_1b6
    move/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v14, v6, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1bd
    .catch Ljava/io/IOException; {:try_start_1b6 .. :try_end_1bd} :catch_1ed
    .catch Ljava/io/FileNotFoundException; {:try_start_1b6 .. :try_end_1bd} :catch_204
    .catchall {:try_start_1b6 .. :try_end_1bd} :catchall_2be

    .line 351
    const-wide/16 v28, 0x1

    add-long v24, v24, v28

    cmp-long v28, v24, v22

    if-nez v28, :cond_167

    .line 352
    move/from16 v0, p10

    if-ge v5, v0, :cond_2f1

    .line 353
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "accumulateProgress":I
    .restart local v4    # "accumulateProgress":I
    :try_start_1cb
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-interface {v0, v1, v5}, Lcom/lge/bnr/framework/IBNRFrameworkAPI;->setRestoreProgress(Ljava/lang/String;I)V

    .line 354
    const-string v28, "JGZIP"

    .line 355
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "bnr.setRestoreProgress(packageName, accumulateProgress) "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 355
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 354
    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e8
    .catch Ljava/io/FileNotFoundException; {:try_start_1cb .. :try_end_1e8} :catch_2eb
    .catch Ljava/io/IOException; {:try_start_1cb .. :try_end_1e8} :catch_2d0
    .catchall {:try_start_1cb .. :try_end_1e8} :catchall_2b8

    .line 358
    :goto_1e8
    const-wide/16 v24, 0x0

    move v5, v4

    .end local v4    # "accumulateProgress":I
    .restart local v5    # "accumulateProgress":I
    goto/16 :goto_167

    .line 344
    :catch_1ed
    move-exception v8

    .line 345
    .restart local v8    # "e":Ljava/io/IOException;
    :try_start_1ee
    const-string v28, "JGZIP"

    const-string v29, "removed sd card or no space"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 347
    new-instance v28, Lcom/lge/bnr/framework/LGBackupException;

    sget-object v29, Lcom/lge/bnr/framework/LGBackupErrorCode;->LBFILEMGR_FAIL_TO_WRITE:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 348
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v30

    .line 347
    invoke-direct/range {v28 .. v30}, Lcom/lge/bnr/framework/LGBackupException;-><init>(Lcom/lge/bnr/framework/LGBackupErrorCode;Ljava/lang/String;)V

    throw v28
    :try_end_204
    .catch Ljava/io/FileNotFoundException; {:try_start_1ee .. :try_end_204} :catch_204
    .catch Ljava/io/IOException; {:try_start_1ee .. :try_end_204} :catch_2d6
    .catchall {:try_start_1ee .. :try_end_204} :catchall_2be

    .line 369
    .end local v8    # "e":Ljava/io/IOException;
    :catch_204
    move-exception v8

    move v4, v5

    .end local v5    # "accumulateProgress":I
    .restart local v4    # "accumulateProgress":I
    move-object v12, v13

    .end local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    move-object/from16 v26, v27

    .line 370
    .end local v6    # "buffer":[B
    .end local v9    # "entry":Ljava/util/zip/ZipEntry;
    .end local v16    # "iCount":I
    .end local v17    # "parentFile":Ljava/io/File;
    .end local v19    # "sCurrentEntry":Ljava/lang/String;
    .end local v21    # "targetFile":Ljava/io/File;
    .end local v27    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .local v8, "e":Ljava/io/FileNotFoundException;
    .restart local v26    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :goto_209
    :try_start_209
    const-string v28, "JGZIP"

    const-string v29, "unZipfile = FileNotFoundException"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    .line 372
    new-instance v28, Lcom/lge/bnr/framework/LGBackupException;

    sget-object v29, Lcom/lge/bnr/framework/LGBackupErrorCode;->LBFILEMGR_FILE_NOT_FOUND:Lcom/lge/bnr/framework/LGBackupErrorCode;

    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v28 .. v30}, Lcom/lge/bnr/framework/LGBackupException;-><init>(Lcom/lge/bnr/framework/LGBackupErrorCode;Ljava/lang/String;)V

    throw v28
    :try_end_221
    .catchall {:try_start_209 .. :try_end_221} :catchall_221

    .line 379
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    :catchall_221
    move-exception v28

    .line 380
    :goto_222
    const-string v29, "JGZIP"

    const-string v30, "unZipfile = finally"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    if-eqz v18, :cond_23d

    .line 384
    :try_start_22b
    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_22e
    .catch Ljava/io/IOException; {:try_start_22b .. :try_end_22e} :catch_260
    .catchall {:try_start_22b .. :try_end_22e} :catchall_275

    .line 387
    if-eqz v26, :cond_233

    .line 388
    :try_start_230
    invoke-virtual/range {v26 .. v26}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_233
    .catch Ljava/io/IOException; {:try_start_230 .. :try_end_233} :catch_257
    .catchall {:try_start_230 .. :try_end_233} :catchall_275

    .line 398
    :cond_233
    :goto_233
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 399
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    .line 402
    :cond_23d
    :goto_23d
    throw v28

    .line 373
    :catch_23e
    move-exception v8

    .line 374
    .local v8, "e":Ljava/io/IOException;
    :goto_23f
    :try_start_23f
    const-string v28, "JGZIP"

    const-string v29, "unZipfile = IOException"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    .line 376
    new-instance v28, Lcom/lge/bnr/framework/LGBackupException;

    sget-object v29, Lcom/lge/bnr/framework/LGBackupErrorCode;->LBFILEMGR_FAIL_TO_READ:Lcom/lge/bnr/framework/LGBackupErrorCode;

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v28 .. v30}, Lcom/lge/bnr/framework/LGBackupException;-><init>(Lcom/lge/bnr/framework/LGBackupErrorCode;Ljava/lang/String;)V

    throw v28
    :try_end_257
    .catchall {:try_start_23f .. :try_end_257} :catchall_221

    .line 391
    .end local v8    # "e":Ljava/io/IOException;
    :catch_257
    move-exception v29

    :try_start_258
    const-string v29, "JGZIP"

    const-string v30, "zipInputStream close exception"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25f
    .catch Ljava/io/IOException; {:try_start_258 .. :try_end_25f} :catch_260
    .catchall {:try_start_258 .. :try_end_25f} :catchall_275

    goto :goto_233

    .line 394
    :catch_260
    move-exception v8

    .line 395
    .restart local v8    # "e":Ljava/io/IOException;
    :try_start_261
    const-string v29, "JGZIP"

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26a
    .catchall {:try_start_261 .. :try_end_26a} :catchall_275

    .line 398
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 399
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    goto :goto_23d

    .line 397
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_275
    move-exception v28

    .line 398
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 399
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    .line 400
    throw v28

    .line 391
    .end local v12    # "fis":Ljava/io/FileInputStream;
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .end local v26    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "fos":Ljava/io/FileOutputStream;
    .restart local v27    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catch_281
    move-exception v28

    :try_start_282
    const-string v28, "JGZIP"

    const-string v29, "zipInputStream close exception"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_289
    .catch Ljava/io/IOException; {:try_start_282 .. :try_end_289} :catch_28b
    .catchall {:try_start_282 .. :try_end_289} :catchall_2a1

    goto/16 :goto_108

    .line 394
    :catch_28b
    move-exception v8

    .line 395
    .restart local v8    # "e":Ljava/io/IOException;
    :try_start_28c
    const-string v28, "JGZIP"

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_295
    .catchall {:try_start_28c .. :try_end_295} :catchall_2a1

    .line 398
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 399
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    goto/16 :goto_112

    .line 397
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_2a1
    move-exception v28

    .line 398
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 399
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    .line 400
    throw v28

    .line 379
    .end local v9    # "entry":Ljava/util/zip/ZipEntry;
    .end local v15    # "fos":Ljava/io/FileOutputStream;
    .end local v27    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v26    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catchall_2ad
    move-exception v28

    move-object v12, v13

    .end local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_222

    .end local v12    # "fis":Ljava/io/FileInputStream;
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .end local v26    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "fos":Ljava/io/FileOutputStream;
    .restart local v27    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catchall_2b1
    move-exception v28

    move-object v14, v15

    .end local v15    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    move-object v12, v13

    .end local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    move-object/from16 v26, v27

    .end local v27    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v26    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_222

    .end local v12    # "fis":Ljava/io/FileInputStream;
    .end local v26    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v16    # "iCount":I
    .restart local v17    # "parentFile":Ljava/io/File;
    .restart local v19    # "sCurrentEntry":Ljava/lang/String;
    .restart local v21    # "targetFile":Ljava/io/File;
    .restart local v27    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catchall_2b8
    move-exception v28

    move-object v12, v13

    .end local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    move-object/from16 v26, v27

    .end local v27    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v26    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_222

    .end local v4    # "accumulateProgress":I
    .end local v12    # "fis":Ljava/io/FileInputStream;
    .end local v26    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v5    # "accumulateProgress":I
    .restart local v6    # "buffer":[B
    .restart local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v27    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catchall_2be
    move-exception v28

    move v4, v5

    .end local v5    # "accumulateProgress":I
    .restart local v4    # "accumulateProgress":I
    move-object v12, v13

    .end local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    move-object/from16 v26, v27

    .end local v27    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v26    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_222

    .line 373
    .end local v6    # "buffer":[B
    .end local v9    # "entry":Ljava/util/zip/ZipEntry;
    .end local v12    # "fis":Ljava/io/FileInputStream;
    .end local v16    # "iCount":I
    .end local v17    # "parentFile":Ljava/io/File;
    .end local v19    # "sCurrentEntry":Ljava/lang/String;
    .end local v21    # "targetFile":Ljava/io/File;
    .restart local v13    # "fis":Ljava/io/FileInputStream;
    :catch_2c5
    move-exception v8

    move-object v12, v13

    .end local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_23f

    .end local v12    # "fis":Ljava/io/FileInputStream;
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .end local v26    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "fos":Ljava/io/FileOutputStream;
    .restart local v27    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catch_2c9
    move-exception v8

    move-object v14, v15

    .end local v15    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    move-object v12, v13

    .end local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    move-object/from16 v26, v27

    .end local v27    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v26    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_23f

    .end local v12    # "fis":Ljava/io/FileInputStream;
    .end local v26    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v16    # "iCount":I
    .restart local v17    # "parentFile":Ljava/io/File;
    .restart local v19    # "sCurrentEntry":Ljava/lang/String;
    .restart local v21    # "targetFile":Ljava/io/File;
    .restart local v27    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catch_2d0
    move-exception v8

    move-object v12, v13

    .end local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    move-object/from16 v26, v27

    .end local v27    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v26    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_23f

    .end local v4    # "accumulateProgress":I
    .end local v12    # "fis":Ljava/io/FileInputStream;
    .end local v26    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v5    # "accumulateProgress":I
    .restart local v6    # "buffer":[B
    .restart local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v27    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catch_2d6
    move-exception v8

    move v4, v5

    .end local v5    # "accumulateProgress":I
    .restart local v4    # "accumulateProgress":I
    move-object v12, v13

    .end local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    move-object/from16 v26, v27

    .end local v27    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v26    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_23f

    .line 369
    .end local v6    # "buffer":[B
    .end local v9    # "entry":Ljava/util/zip/ZipEntry;
    .end local v16    # "iCount":I
    .end local v17    # "parentFile":Ljava/io/File;
    .end local v19    # "sCurrentEntry":Ljava/lang/String;
    .end local v21    # "targetFile":Ljava/io/File;
    :catch_2dd
    move-exception v8

    goto/16 :goto_209

    .end local v12    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "fis":Ljava/io/FileInputStream;
    :catch_2e0
    move-exception v8

    move-object v12, v13

    .end local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_209

    .end local v12    # "fis":Ljava/io/FileInputStream;
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .end local v26    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "fos":Ljava/io/FileOutputStream;
    .restart local v27    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catch_2e4
    move-exception v8

    move-object v14, v15

    .end local v15    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    move-object v12, v13

    .end local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    move-object/from16 v26, v27

    .end local v27    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v26    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_209

    .end local v12    # "fis":Ljava/io/FileInputStream;
    .end local v26    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v16    # "iCount":I
    .restart local v17    # "parentFile":Ljava/io/File;
    .restart local v19    # "sCurrentEntry":Ljava/lang/String;
    .restart local v21    # "targetFile":Ljava/io/File;
    .restart local v27    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catch_2eb
    move-exception v8

    move-object v12, v13

    .end local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    move-object/from16 v26, v27

    .end local v27    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v26    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_209

    .end local v4    # "accumulateProgress":I
    .end local v12    # "fis":Ljava/io/FileInputStream;
    .end local v26    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v5    # "accumulateProgress":I
    .restart local v6    # "buffer":[B
    .restart local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v27    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :cond_2f1
    move v4, v5

    .end local v5    # "accumulateProgress":I
    .restart local v4    # "accumulateProgress":I
    goto/16 :goto_1e8
.end method

.method public zipAIDL(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/lge/bnr/framework/IBNRFrameworkAPI;Ljava/lang/String;II)V
    .registers 36
    .param p1, "pZipFileName"    # Ljava/lang/String;
    .param p3, "rootPath"    # Ljava/lang/String;
    .param p4, "bnr"    # Lcom/lge/bnr/framework/IBNRFrameworkAPI;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "startProgress"    # I
    .param p7, "endProgress"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/lge/bnr/framework/IBNRFrameworkAPI;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/bnr/framework/LGBackupException;
        }
    .end annotation

    .prologue
    .line 136
    .local p2, "pSrcFileList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/16 v20, 0x0

    .line 137
    .local v20, "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    const/4 v13, 0x0

    .line 138
    .local v13, "inputStream":Ljava/io/BufferedInputStream;
    const/4 v5, 0x0

    .line 139
    .local v5, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v12, 0x0

    .line 140
    .local v12, "iEntryCount":I
    const/4 v10, 0x0

    .line 141
    .local v10, "fileIndex":I
    const/4 v15, 0x0

    .line 143
    .local v15, "numWriteCnt":I
    sub-int v8, p7, p6

    .line 145
    .local v8, "completeProgress":I
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ge v8, v0, :cond_15

    .line 146
    const/16 p6, 0x0

    .line 147
    const/16 p7, 0x64

    .line 148
    sub-int v8, p7, p6

    .line 151
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v8}, Lcom/lge/bnr/framework/LGBackupZip;->calculateProgressRatio(Ljava/util/List;I)Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;

    move-result-object v16

    .line 153
    .local v16, "progress":Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;
    move/from16 v4, p6

    .line 156
    .local v4, "accumulateProgress":I
    :try_start_1f
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_24} :catch_2ed
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_24} :catch_2e2
    .catchall {:try_start_1f .. :try_end_24} :catchall_222

    .line 157
    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_24
    new-instance v21, Ljava/util/zip/ZipOutputStream;

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_2b} :catch_2f0
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2b} :catch_2e4
    .catchall {:try_start_24 .. :try_end_2b} :catchall_2d1

    .line 158
    .end local v20    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .local v21, "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    const/16 v22, 0x0

    :try_start_2d
    invoke-virtual/range {v21 .. v22}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    .line 160
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_33} :catch_20b
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_33} :catch_27b
    .catchall {:try_start_2d .. :try_end_33} :catchall_2d5

    move-result-object v22

    move-object v14, v13

    .end local v13    # "inputStream":Ljava/io/BufferedInputStream;
    .local v14, "inputStream":Ljava/io/BufferedInputStream;
    :cond_35
    :goto_35
    :try_start_35
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z
    :try_end_38
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_38} :catch_2f4
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_2e7
    .catchall {:try_start_35 .. :try_end_38} :catchall_2db

    move-result v23

    if-nez v23, :cond_64

    .line 249
    const/16 v22, 0x0

    sput-boolean v22, Lcom/lge/bnr/framework/LGBackupAgent;->isCancle:Z

    .line 250
    const-string v22, "JGZIP"

    const-string v23, "Zipfile = finally"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    if-eqz v21, :cond_58

    if-lez v12, :cond_58

    .line 253
    :try_start_4a
    invoke-virtual/range {v21 .. v21}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 254
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/lge/bnr/framework/LGBackupZip;->writeByteStreamToAIDL(Ljava/lang/String;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;Lcom/lge/bnr/framework/IBNRFrameworkAPI;)V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_58} :catch_2b1
    .catchall {:try_start_4a .. :try_end_58} :catchall_2c5

    .line 259
    :cond_58
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 260
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    :goto_62
    move-object v13, v14

    .line 263
    .end local v14    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v13    # "inputStream":Ljava/io/BufferedInputStream;
    :goto_63
    return-void

    .line 160
    .end local v13    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v14    # "inputStream":Ljava/io/BufferedInputStream;
    :cond_64
    :try_start_64
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/io/File;

    .line 161
    .local v17, "srcfile":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_35

    .line 165
    const-string v23, "JGZIP"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "File "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " Size "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v13, Ljava/io/BufferedInputStream;

    new-instance v23, Ljava/io/FileInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v23

    invoke-direct {v13, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_aa
    .catch Ljava/io/FileNotFoundException; {:try_start_64 .. :try_end_aa} :catch_2f4
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_aa} :catch_2e7
    .catchall {:try_start_64 .. :try_end_aa} :catchall_2db

    .line 168
    .end local v14    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v13    # "inputStream":Ljava/io/BufferedInputStream;
    const/16 v19, 0x0

    .line 169
    .local v19, "zipEntyPath":Ljava/lang/String;
    if-nez p3, :cond_cf

    .line 170
    :try_start_ae
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    .line 174
    :goto_b2
    const-string v23, "JGZIP"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "zipEntyPath "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    if-nez v19, :cond_dc

    move-object v14, v13

    .line 177
    .end local v13    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v14    # "inputStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_35

    .line 172
    .end local v14    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v13    # "inputStream":Ljava/io/BufferedInputStream;
    :cond_cf
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_b2

    .line 179
    :cond_dc
    new-instance v18, Ljava/util/zip/ZipEntry;

    invoke-direct/range {v18 .. v19}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 180
    .local v18, "zentry":Ljava/util/zip/ZipEntry;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 181
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 182
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "file count = "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipEntry;->setComment(Ljava/lang/String;)V
    :try_end_11b
    .catch Ljava/io/FileNotFoundException; {:try_start_ae .. :try_end_11b} :catch_20b
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_11b} :catch_27b
    .catchall {:try_start_ae .. :try_end_11b} :catchall_2d5

    .line 184
    if-nez v21, :cond_166

    .line 249
    const/16 v22, 0x0

    sput-boolean v22, Lcom/lge/bnr/framework/LGBackupAgent;->isCancle:Z

    .line 250
    const-string v22, "JGZIP"

    const-string v23, "Zipfile = finally"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    if-eqz v21, :cond_13a

    if-lez v12, :cond_13a

    .line 253
    :try_start_12c
    invoke-virtual/range {v21 .. v21}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 254
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/lge/bnr/framework/LGBackupZip;->writeByteStreamToAIDL(Ljava/lang/String;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;Lcom/lge/bnr/framework/IBNRFrameworkAPI;)V
    :try_end_13a
    .catch Ljava/io/IOException; {:try_start_12c .. :try_end_13a} :catch_146
    .catchall {:try_start_12c .. :try_end_13a} :catchall_15a

    .line 259
    :cond_13a
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 260
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    goto/16 :goto_63

    .line 257
    :catch_146
    move-exception v22

    :try_start_147
    const-string v22, "[BNRZip]"

    const-string v23, "file_close exception"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14e
    .catchall {:try_start_147 .. :try_end_14e} :catchall_15a

    .line 259
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 260
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    goto/16 :goto_63

    .line 258
    :catchall_15a
    move-exception v22

    .line 259
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 260
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    .line 261
    throw v22

    .line 187
    :cond_166
    :try_start_166
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 189
    const/4 v11, 0x0

    .line 190
    .local v11, "iCount":I
    const/16 v23, 0x800

    move/from16 v0, v23

    new-array v7, v0, [B

    .line 192
    .local v7, "buffer":[B
    :cond_174
    :goto_174
    const/16 v23, 0x0

    const/16 v24, 0x800

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v13, v7, v0, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v11

    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v11, v0, :cond_1e3

    .line 228
    add-int/lit8 v10, v10, 0x1

    .line 229
    const-string v23, "JGZIP"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "filindex "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 230
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 229
    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    if-ne v10, v0, :cond_1cd

    move/from16 v0, p7

    if-eq v4, v0, :cond_1cd

    .line 233
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move/from16 v2, p7

    invoke-interface {v0, v1, v2}, Lcom/lge/bnr/framework/IBNRFrameworkAPI;->setBackupProgress(Ljava/lang/String;I)V

    .line 236
    :cond_1cd
    invoke-virtual {v13}, Ljava/io/BufferedInputStream;->close()V

    .line 237
    invoke-virtual/range {v21 .. v21}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 238
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/lge/bnr/framework/LGBackupZip;->writeByteStreamToAIDL(Ljava/lang/String;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;Lcom/lge/bnr/framework/IBNRFrameworkAPI;)V
    :try_end_1de
    .catch Ljava/io/FileNotFoundException; {:try_start_166 .. :try_end_1de} :catch_20b
    .catch Ljava/io/IOException; {:try_start_166 .. :try_end_1de} :catch_27b
    .catchall {:try_start_166 .. :try_end_1de} :catchall_2d5

    .line 239
    add-int/lit8 v12, v12, 0x1

    move-object v14, v13

    .end local v13    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v14    # "inputStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_35

    .line 195
    .end local v14    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v13    # "inputStream":Ljava/io/BufferedInputStream;
    :cond_1e3
    :try_start_1e3
    sget-boolean v23, Lcom/lge/bnr/framework/LGBackupAgent;->isCancle:Z

    if-eqz v23, :cond_24b

    .line 196
    new-instance v22, Lcom/lge/bnr/framework/LGBackupException;

    sget-object v23, Lcom/lge/bnr/framework/LGBackupErrorCode;->ETC_CANCEL_ALL:Lcom/lge/bnr/framework/LGBackupErrorCode;

    const-string v24, "cancle"

    invoke-direct/range {v22 .. v24}, Lcom/lge/bnr/framework/LGBackupException;-><init>(Lcom/lge/bnr/framework/LGBackupErrorCode;Ljava/lang/String;)V

    throw v22
    :try_end_1f1
    .catch Ljava/io/IOException; {:try_start_1e3 .. :try_end_1f1} :catch_1f1
    .catch Ljava/io/FileNotFoundException; {:try_start_1e3 .. :try_end_1f1} :catch_20b
    .catchall {:try_start_1e3 .. :try_end_1f1} :catchall_2d5

    .line 203
    :catch_1f1
    move-exception v9

    .line 204
    .local v9, "e":Ljava/io/IOException;
    :try_start_1f2
    const-string v22, "JGZIP"

    const-string v23, "removed sd card or no space"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f9
    .catch Ljava/io/FileNotFoundException; {:try_start_1f2 .. :try_end_1f9} :catch_20b
    .catch Ljava/io/IOException; {:try_start_1f2 .. :try_end_1f9} :catch_27b
    .catchall {:try_start_1f2 .. :try_end_1f9} :catchall_2d5

    .line 206
    :try_start_1f9
    invoke-virtual {v13}, Ljava/io/BufferedInputStream;->close()V

    .line 207
    invoke-virtual/range {v21 .. v21}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_1ff
    .catch Ljava/io/IOException; {:try_start_1f9 .. :try_end_1ff} :catch_2fb
    .catch Ljava/io/FileNotFoundException; {:try_start_1f9 .. :try_end_1ff} :catch_20b
    .catchall {:try_start_1f9 .. :try_end_1ff} :catchall_2d5

    .line 211
    :goto_1ff
    :try_start_1ff
    new-instance v22, Lcom/lge/bnr/framework/LGBackupException;

    sget-object v23, Lcom/lge/bnr/framework/LGBackupErrorCode;->LBFILEMGR_FAIL_TO_WRITE:Lcom/lge/bnr/framework/LGBackupErrorCode;

    .line 212
    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v24

    .line 211
    invoke-direct/range {v22 .. v24}, Lcom/lge/bnr/framework/LGBackupException;-><init>(Lcom/lge/bnr/framework/LGBackupErrorCode;Ljava/lang/String;)V

    throw v22
    :try_end_20b
    .catch Ljava/io/FileNotFoundException; {:try_start_1ff .. :try_end_20b} :catch_20b
    .catch Ljava/io/IOException; {:try_start_1ff .. :try_end_20b} :catch_27b
    .catchall {:try_start_1ff .. :try_end_20b} :catchall_2d5

    .line 242
    .end local v7    # "buffer":[B
    .end local v9    # "e":Ljava/io/IOException;
    .end local v11    # "iCount":I
    .end local v17    # "srcfile":Ljava/io/File;
    .end local v18    # "zentry":Ljava/util/zip/ZipEntry;
    .end local v19    # "zipEntyPath":Ljava/lang/String;
    :catch_20b
    move-exception v9

    move-object v5, v6

    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v20, v21

    .line 243
    .end local v21    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .local v9, "e":Ljava/io/FileNotFoundException;
    .restart local v20    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    :goto_20f
    :try_start_20f
    const-string v22, "JGZIP"

    const-string v23, "Zipfile = FileNotFoundException"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v22, Lcom/lge/bnr/framework/LGBackupException;

    sget-object v23, Lcom/lge/bnr/framework/LGBackupErrorCode;->LBFILEMGR_FILE_NOT_FOUND:Lcom/lge/bnr/framework/LGBackupErrorCode;

    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Lcom/lge/bnr/framework/LGBackupException;-><init>(Lcom/lge/bnr/framework/LGBackupErrorCode;Ljava/lang/String;)V

    throw v22
    :try_end_222
    .catchall {:try_start_20f .. :try_end_222} :catchall_222

    .line 248
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    :catchall_222
    move-exception v22

    .line 249
    :goto_223
    const/16 v23, 0x0

    sput-boolean v23, Lcom/lge/bnr/framework/LGBackupAgent;->isCancle:Z

    .line 250
    const-string v23, "JGZIP"

    const-string v24, "Zipfile = finally"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    if-eqz v20, :cond_240

    if-lez v12, :cond_240

    .line 253
    :try_start_232
    invoke-virtual/range {v20 .. v20}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 254
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/lge/bnr/framework/LGBackupZip;->writeByteStreamToAIDL(Ljava/lang/String;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;Lcom/lge/bnr/framework/IBNRFrameworkAPI;)V
    :try_end_240
    .catch Ljava/io/IOException; {:try_start_232 .. :try_end_240} :catch_292
    .catchall {:try_start_232 .. :try_end_240} :catchall_2a5

    .line 259
    :cond_240
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 260
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    .line 262
    :goto_24a
    throw v22

    .line 200
    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v20    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "buffer":[B
    .restart local v11    # "iCount":I
    .restart local v17    # "srcfile":Ljava/io/File;
    .restart local v18    # "zentry":Ljava/util/zip/ZipEntry;
    .restart local v19    # "zipEntyPath":Ljava/lang/String;
    .restart local v21    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    :cond_24b
    const/16 v23, 0x0

    :try_start_24d
    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v7, v1, v11}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 201
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/lge/bnr/framework/LGBackupZip;->writeByteStreamToAIDL(Ljava/lang/String;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;Lcom/lge/bnr/framework/IBNRFrameworkAPI;)V
    :try_end_25f
    .catch Ljava/io/IOException; {:try_start_24d .. :try_end_25f} :catch_1f1
    .catch Ljava/io/FileNotFoundException; {:try_start_24d .. :try_end_25f} :catch_20b
    .catchall {:try_start_24d .. :try_end_25f} :catchall_2d5

    .line 215
    add-int/lit8 v15, v15, 0x1

    .line 217
    :try_start_261
    # getter for: Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->stepPerOneProgress:[I
    invoke-static/range {v16 .. v16}, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->access$1(Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;)[I

    move-result-object v23

    aget v23, v23, v10

    move/from16 v0, v23

    if-lt v15, v0, :cond_174

    .line 218
    add-int/lit8 v4, v4, 0x1

    .line 219
    const/4 v15, 0x0

    .line 220
    move/from16 v0, p7

    if-ge v4, v0, :cond_174

    .line 221
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-interface {v0, v1, v4}, Lcom/lge/bnr/framework/IBNRFrameworkAPI;->setBackupProgress(Ljava/lang/String;I)V
    :try_end_279
    .catch Ljava/io/FileNotFoundException; {:try_start_261 .. :try_end_279} :catch_20b
    .catch Ljava/io/IOException; {:try_start_261 .. :try_end_279} :catch_27b
    .catchall {:try_start_261 .. :try_end_279} :catchall_2d5

    goto/16 :goto_174

    .line 245
    .end local v7    # "buffer":[B
    .end local v11    # "iCount":I
    .end local v17    # "srcfile":Ljava/io/File;
    .end local v18    # "zentry":Ljava/util/zip/ZipEntry;
    .end local v19    # "zipEntyPath":Ljava/lang/String;
    :catch_27b
    move-exception v9

    move-object v5, v6

    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v20, v21

    .line 246
    .end local v21    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .local v9, "e":Ljava/io/IOException;
    .restart local v20    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    :goto_27f
    :try_start_27f
    const-string v22, "JGZIP"

    const-string v23, "Zipfile = IOException"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    new-instance v22, Lcom/lge/bnr/framework/LGBackupException;

    sget-object v23, Lcom/lge/bnr/framework/LGBackupErrorCode;->LBFILEMGR_FAIL_TO_READ:Lcom/lge/bnr/framework/LGBackupErrorCode;

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Lcom/lge/bnr/framework/LGBackupException;-><init>(Lcom/lge/bnr/framework/LGBackupErrorCode;Ljava/lang/String;)V

    throw v22
    :try_end_292
    .catchall {:try_start_27f .. :try_end_292} :catchall_222

    .line 257
    .end local v9    # "e":Ljava/io/IOException;
    :catch_292
    move-exception v23

    :try_start_293
    const-string v23, "[BNRZip]"

    const-string v24, "file_close exception"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29a
    .catchall {:try_start_293 .. :try_end_29a} :catchall_2a5

    .line 259
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 260
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    goto :goto_24a

    .line 258
    :catchall_2a5
    move-exception v22

    .line 259
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 260
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    .line 261
    throw v22

    .line 257
    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v13    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v20    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v14    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v21    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    :catch_2b1
    move-exception v22

    :try_start_2b2
    const-string v22, "[BNRZip]"

    const-string v23, "file_close exception"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b9
    .catchall {:try_start_2b2 .. :try_end_2b9} :catchall_2c5

    .line 259
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 260
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    goto/16 :goto_62

    .line 258
    :catchall_2c5
    move-exception v22

    .line 259
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 260
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    .line 261
    throw v22

    .line 248
    .end local v14    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v21    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .restart local v13    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v20    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    :catchall_2d1
    move-exception v22

    move-object v5, v6

    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_223

    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v20    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v21    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    :catchall_2d5
    move-exception v22

    move-object v5, v6

    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v20, v21

    .end local v21    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .restart local v20    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    goto/16 :goto_223

    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v13    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v20    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v14    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v21    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    :catchall_2db
    move-exception v22

    move-object v5, v6

    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object v13, v14

    .end local v14    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v13    # "inputStream":Ljava/io/BufferedInputStream;
    move-object/from16 v20, v21

    .end local v21    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .restart local v20    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    goto/16 :goto_223

    .line 245
    :catch_2e2
    move-exception v9

    goto :goto_27f

    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_2e4
    move-exception v9

    move-object v5, v6

    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_27f

    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v13    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v20    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v14    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v21    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    :catch_2e7
    move-exception v9

    move-object v5, v6

    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object v13, v14

    .end local v14    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v13    # "inputStream":Ljava/io/BufferedInputStream;
    move-object/from16 v20, v21

    .end local v21    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .restart local v20    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    goto :goto_27f

    .line 242
    :catch_2ed
    move-exception v9

    goto/16 :goto_20f

    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_2f0
    move-exception v9

    move-object v5, v6

    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_20f

    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v13    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v20    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v14    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v21    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    :catch_2f4
    move-exception v9

    move-object v5, v6

    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object v13, v14

    .end local v14    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v13    # "inputStream":Ljava/io/BufferedInputStream;
    move-object/from16 v20, v21

    .end local v21    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .restart local v20    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    goto/16 :goto_20f

    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v20    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "buffer":[B
    .restart local v9    # "e":Ljava/io/IOException;
    .restart local v11    # "iCount":I
    .restart local v17    # "srcfile":Ljava/io/File;
    .restart local v18    # "zentry":Ljava/util/zip/ZipEntry;
    .restart local v19    # "zipEntyPath":Ljava/lang/String;
    .restart local v21    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    :catch_2fb
    move-exception v22

    goto/16 :goto_1ff
.end method
