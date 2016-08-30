.class public Lcom/lge/media/MediaScannerEx$InterTypeDeclarations;
.super Ljava/lang/Object;
.source "MediaScannerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/media/MediaScannerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InterTypeDeclarations"
.end annotation

.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/media/MediaScannerEx$InterTypeDeclarations;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 646
    :try_start_0
    invoke-static {}, Lcom/lge/media/MediaScannerEx$InterTypeDeclarations;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/media/MediaScannerEx$InterTypeDeclarations;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$InterTypeDeclarations$android_media_MediaScanner$mExtStorageRingtonesPath(Landroid/media/MediaScanner;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Landroid/media/MediaScanner;->ajc$get$mExtStorageRingtonesPath(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$InterTypeDeclarations$com_lge_media_MediaScannerEx$mDefaultTimerAlertFilename(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/lge/media/MediaScannerEx;->ajc$get$mDefaultTimerAlertFilename(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$InterTypeDeclarations$com_lge_media_MediaScannerEx$mFileCache(Lcom/lge/media/MediaScannerEx;)Ljava/util/HashMap;
    .registers 2

    invoke-static {p0}, Lcom/lge/media/MediaScannerEx;->ajc$get$mFileCache(Lcom/lge/media/MediaScannerEx;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static ajc$interFieldInit$com_lge_media_MediaScannerEx$InterTypeDeclarations$android_media_MediaScanner$mExtStorageRingtonesPath(Landroid/media/MediaScanner;)V
    .registers 1

    .prologue
    .line 647
    return-void
.end method

.method public static ajc$interFieldInit$com_lge_media_MediaScannerEx$InterTypeDeclarations$com_lge_media_MediaScannerEx$mDefaultTimerAlertFilename(Lcom/lge/media/MediaScannerEx;)V
    .registers 1

    .prologue
    .line 649
    return-void
.end method

.method public static ajc$interFieldInit$com_lge_media_MediaScannerEx$InterTypeDeclarations$com_lge_media_MediaScannerEx$mFileCache(Lcom/lge/media/MediaScannerEx;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lge/media/MediaScannerEx;",
            ")V"
        }
    .end annotation

    .prologue
    .line 648
    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_media_MediaScannerEx$InterTypeDeclarations$android_media_MediaScanner$mExtStorageRingtonesPath(Landroid/media/MediaScanner;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/media/MediaScanner;->ajc$set$mExtStorageRingtonesPath(Landroid/media/MediaScanner;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_media_MediaScannerEx$InterTypeDeclarations$com_lge_media_MediaScannerEx$mDefaultTimerAlertFilename(Lcom/lge/media/MediaScannerEx;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/lge/media/MediaScannerEx;->ajc$set$mDefaultTimerAlertFilename(Lcom/lge/media/MediaScannerEx;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_media_MediaScannerEx$InterTypeDeclarations$com_lge_media_MediaScannerEx$mFileCache(Lcom/lge/media/MediaScannerEx;Ljava/util/HashMap;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/lge/media/MediaScannerEx;->ajc$set$mFileCache(Lcom/lge/media/MediaScannerEx;Ljava/util/HashMap;)V

    return-void
.end method

.method public static ajc$interMethod$com_lge_media_MediaScannerEx$InterTypeDeclarations$android_media_MediaScanner$scanDir(Landroid/media/MediaScanner;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 19
    .param p0, "ajc$this_"    # Landroid/media/MediaScanner;
    .param p1, "directories"    # [Ljava/lang/String;
    .param p2, "volumeName"    # Ljava/lang/String;

    .prologue
    .line 657
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 658
    .local v10, "start":J
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/media/MediaScanner;->ajc$privMethod$com_lge_media_MediaScannerEx$InterTypeDeclarations$android_media_MediaScanner$initialize(Ljava/lang/String;)V

    .line 659
    const/4 v3, 0x0

    aget-object v3, p1, v3

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12}, Landroid/media/MediaScanner;->ajc$privMethod$com_lge_media_MediaScannerEx$InterTypeDeclarations$android_media_MediaScanner$prescan(Ljava/lang/String;Z)V

    .line 660
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 662
    .local v6, "prescan":J
    invoke-static {}, Landroid/media/MediaScanner;->ajc$get$ENABLE_BULK_INSERTS()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 664
    new-instance v3, Landroid/media/MediaInserter;

    invoke-static/range {p0 .. p0}, Landroid/media/MediaScanner;->ajc$get$mMediaProvider(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v12

    invoke-static/range {p0 .. p0}, Landroid/media/MediaScanner;->ajc$get$mPackageName(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x64

    invoke-direct {v3, v12, v13, v14}, Landroid/media/MediaInserter;-><init>(Landroid/content/IContentProvider;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Landroid/media/MediaScanner;->ajc$set$mMediaInserter(Landroid/media/MediaScanner;Landroid/media/MediaInserter;)V

    .line 667
    :cond_32
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-static/range {p0 .. p0}, Landroid/media/MediaScanner;->ajc$get$mClient(Landroid/media/MediaScanner;)Landroid/media/MediaScanner$MyMediaScannerClient;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12}, Landroid/media/MediaScanner;->ajc$privMethod$com_lge_media_MediaScannerEx$InterTypeDeclarations$android_media_MediaScanner$processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 669
    invoke-static {}, Landroid/media/MediaScanner;->ajc$get$ENABLE_BULK_INSERTS()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 671
    invoke-static/range {p0 .. p0}, Landroid/media/MediaScanner;->ajc$get$mMediaInserter(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaInserter;->flushAll()V

    .line 672
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Landroid/media/MediaScanner;->ajc$set$mMediaInserter(Landroid/media/MediaScanner;Landroid/media/MediaInserter;)V

    .line 675
    :cond_51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 676
    .local v8, "scan":J
    invoke-virtual/range {p0 .. p1}, Landroid/media/MediaScanner;->ajc$privMethod$com_lge_media_MediaScannerEx$InterTypeDeclarations$android_media_MediaScanner$postscan([Ljava/lang/String;)V

    .line 677
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 680
    .local v4, "end":J
    invoke-static {}, Landroid/media/MediaScanner;->ajc$get$TAG()Ljava/lang/String;

    move-result-object v3

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, " prescan time: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v14, v6, v10

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ms\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    invoke-static {}, Landroid/media/MediaScanner;->ajc$get$TAG()Ljava/lang/String;

    move-result-object v3

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "    scan time: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v14, v8, v6

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ms\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    invoke-static {}, Landroid/media/MediaScanner;->ajc$get$TAG()Ljava/lang/String;

    move-result-object v3

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "postscan time: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v14, v4, v8

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ms\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    invoke-static {}, Landroid/media/MediaScanner;->ajc$get$TAG()Ljava/lang/String;

    move-result-object v3

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "   total time: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v14, v4, v10

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ms\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d4
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_d4} :catch_d8
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_d4} :catch_e6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d4} :catch_f4
    .catchall {:try_start_0 .. :try_end_d4} :catchall_102

    .line 694
    invoke-virtual/range {p0 .. p0}, Landroid/media/MediaScanner;->ajc$privMethod$com_lge_media_MediaScannerEx$InterTypeDeclarations$android_media_MediaScanner$releaseResources()V

    .line 696
    .end local v4    # "end":J
    .end local v6    # "prescan":J
    .end local v8    # "scan":J
    .end local v10    # "start":J
    :goto_d7
    return-void

    .line 685
    :catch_d8
    move-exception v2

    .line 687
    .local v2, "e":Landroid/database/SQLException;
    :try_start_d9
    invoke-static {}, Landroid/media/MediaScanner;->ajc$get$TAG()Ljava/lang/String;

    move-result-object v3

    const-string v12, "SQLException in MediaScanner.scan()"

    invoke-static {v3, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e2
    .catchall {:try_start_d9 .. :try_end_e2} :catchall_102

    .line 694
    invoke-virtual/range {p0 .. p0}, Landroid/media/MediaScanner;->ajc$privMethod$com_lge_media_MediaScannerEx$InterTypeDeclarations$android_media_MediaScanner$releaseResources()V

    goto :goto_d7

    .line 688
    .end local v2    # "e":Landroid/database/SQLException;
    :catch_e6
    move-exception v2

    .line 690
    .local v2, "e":Ljava/lang/UnsupportedOperationException;
    :try_start_e7
    invoke-static {}, Landroid/media/MediaScanner;->ajc$get$TAG()Ljava/lang/String;

    move-result-object v3

    const-string v12, "UnsupportedOperationException in MediaScanner.scan()"

    invoke-static {v3, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f0
    .catchall {:try_start_e7 .. :try_end_f0} :catchall_102

    .line 694
    invoke-virtual/range {p0 .. p0}, Landroid/media/MediaScanner;->ajc$privMethod$com_lge_media_MediaScannerEx$InterTypeDeclarations$android_media_MediaScanner$releaseResources()V

    goto :goto_d7

    .line 691
    .end local v2    # "e":Ljava/lang/UnsupportedOperationException;
    :catch_f4
    move-exception v2

    .line 692
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_f5
    invoke-static {}, Landroid/media/MediaScanner;->ajc$get$TAG()Ljava/lang/String;

    move-result-object v3

    const-string v12, "RemoteException in MediaScanner.scan()"

    invoke-static {v3, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_fe
    .catchall {:try_start_f5 .. :try_end_fe} :catchall_102

    .line 694
    invoke-virtual/range {p0 .. p0}, Landroid/media/MediaScanner;->ajc$privMethod$com_lge_media_MediaScannerEx$InterTypeDeclarations$android_media_MediaScanner$releaseResources()V

    goto :goto_d7

    .line 693
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_102
    move-exception v3

    .line 694
    invoke-virtual/range {p0 .. p0}, Landroid/media/MediaScanner;->ajc$privMethod$com_lge_media_MediaScannerEx$InterTypeDeclarations$android_media_MediaScanner$releaseResources()V

    .line 695
    throw v3
.end method

.method public static ajc$interMethod$com_lge_media_MediaScannerEx$InterTypeDeclarations$com_lge_media_MediaScannerEx$scanDir(Lcom/lge/media/MediaScannerEx;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "ajc$this_"    # Lcom/lge/media/MediaScannerEx;
    .param p1, "directories"    # [Ljava/lang/String;
    .param p2, "volumeName"    # Ljava/lang/String;

    .prologue
    .line 705
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-lt v0, v1, :cond_e

    .line 713
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/media/MediaScannerEx;->mIsScanDir:Z

    .line 714
    invoke-static {p0, p1, p2}, Lcom/lge/media/MediaScannerEx$InterTypeDeclarations;->ajc$interMethod$com_lge_media_MediaScannerEx$InterTypeDeclarations$android_media_MediaScanner$scanDir(Landroid/media/MediaScanner;[Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/media/MediaScannerEx;->mIsScanDir:Z

    .line 716
    return-void

    .line 706
    :cond_e
    sget-boolean v1, Lcom/lge/media/MediaScannerEx;->LGE_PRIVATE_LOG:Z

    if-eqz v1, :cond_35

    .line 707
    const-string v1, "MediaScannerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MediaScanner] scanDir()["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :goto_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 709
    :cond_35
    const-string v1, "MediaScannerEx"

    const-string v2, "[MediaScanner] scanDir()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_media_MediaScannerEx$InterTypeDeclarations$android_media_MediaScanner$scanDir(Landroid/media/MediaScanner;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "ajc$this_"    # Landroid/media/MediaScanner;
    .param p1, "directories"    # [Ljava/lang/String;
    .param p2, "volumeName"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaScanner;->scanDir([Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_media_MediaScannerEx$InterTypeDeclarations$com_lge_media_MediaScannerEx$scanDir(Lcom/lge/media/MediaScannerEx;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "ajc$this_"    # Lcom/lge/media/MediaScannerEx;
    .param p1, "directories"    # [Ljava/lang/String;
    .param p2, "volumeName"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/lge/media/MediaScannerEx;->scanDir([Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/media/MediaScannerEx$InterTypeDeclarations;

    invoke-direct {v0}, Lcom/lge/media/MediaScannerEx$InterTypeDeclarations;-><init>()V

    sput-object v0, Lcom/lge/media/MediaScannerEx$InterTypeDeclarations;->ajc$perSingletonInstance:Lcom/lge/media/MediaScannerEx$InterTypeDeclarations;

    return-void
.end method

.method public static aspectOf()Lcom/lge/media/MediaScannerEx$InterTypeDeclarations;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/media/MediaScannerEx$InterTypeDeclarations;->ajc$perSingletonInstance:Lcom/lge/media/MediaScannerEx$InterTypeDeclarations;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_media_MediaScannerEx$InterTypeDeclarations"

    sget-object v2, Lcom/lge/media/MediaScannerEx$InterTypeDeclarations;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/media/MediaScannerEx$InterTypeDeclarations;->ajc$perSingletonInstance:Lcom/lge/media/MediaScannerEx$InterTypeDeclarations;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/media/MediaScannerEx$InterTypeDeclarations;->ajc$perSingletonInstance:Lcom/lge/media/MediaScannerEx$InterTypeDeclarations;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
