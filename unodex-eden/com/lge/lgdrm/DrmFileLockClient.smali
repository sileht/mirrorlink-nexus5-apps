.class public Lcom/lge/lgdrm/DrmFileLockClient;
.super Ljava/lang/Object;
.source "DrmFileLockClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/lgdrm/DrmFileLockClient$OnEventListener;
    }
.end annotation


# static fields
.field public static final FILE_IO_UNIT_128KB:I = 0x20000

.field public static final FILE_IO_UNIT_16KB:I = 0x4000

.field public static final FILE_IO_UNIT_1KB:I = 0x400

.field public static final FILE_IO_UNIT_256KB:I = 0x40000

.field public static final FILE_IO_UNIT_2KB:I = 0x800

.field public static final FILE_IO_UNIT_32KB:I = 0x8000

.field public static final FILE_IO_UNIT_4KB:I = 0x1000

.field public static final FILE_IO_UNIT_64KB:I = 0x10000

.field public static final FILE_IO_UNIT_8KB:I = 0x2000

.field public static final LOCK_FILE_COMPLETE:I = 0xa

.field public static final LOCK_FILE_ERROR:I = -0xa

.field public static final SRC_FILE_MODIFIED_ERROR:I = -0x1e

.field private static final TAG:Ljava/lang/String; = "DrmFileLockClient"

.field public static final UNLOCK_FILE_COMPLETE:I = 0x14

.field public static final UNLOCK_FILE_ERROR:I = -0x14


# instance fields
.field private final FILE_SIZE_TO_OBSERVE:I

.field private mDstFilePath:Ljava/lang/String;

.field private mLockSessionID:J

.field private mObserver:Landroid/os/FileObserver;

.field private mOnEventListener:Lcom/lge/lgdrm/DrmFileLockClient$OnEventListener;

.field private mSrcFilePath:Ljava/lang/String;

.field private mSrcFileSize:J

.field private mStartTime:J

.field private mUnlockSessionID:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-wide v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mLockSessionID:J

    .line 115
    iput-wide v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mUnlockSessionID:J

    .line 116
    iput-object v2, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mSrcFilePath:Ljava/lang/String;

    .line 117
    iput-object v2, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mDstFilePath:Ljava/lang/String;

    .line 118
    iput-wide v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mSrcFileSize:J

    .line 119
    iput-wide v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mStartTime:J

    .line 120
    const/high16 v0, 0xa00000

    iput v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->FILE_SIZE_TO_OBSERVE:I

    .line 121
    iput-object v2, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mObserver:Landroid/os/FileObserver;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/lge/lgdrm/DrmFileLockClient;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mSrcFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/lgdrm/DrmFileLockClient;I)V
    .registers 2

    .prologue
    .line 814
    invoke-direct {p0, p1}, Lcom/lge/lgdrm/DrmFileLockClient;->sendEventToListener(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/lge/lgdrm/DrmFileLockClient;)J
    .registers 3

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mLockSessionID:J

    return-wide v0
.end method

.method static synthetic access$3(Lcom/lge/lgdrm/DrmFileLockClient;)Landroid/os/FileObserver;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mObserver:Landroid/os/FileObserver;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lge/lgdrm/DrmFileLockClient;Landroid/os/FileObserver;)V
    .registers 2

    .prologue
    .line 121
    iput-object p1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mObserver:Landroid/os/FileObserver;

    return-void
.end method

.method private cleanSessions()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 795
    iget-wide v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mLockSessionID:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    .line 796
    iget-wide v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mLockSessionID:J

    invoke-virtual {p0, v0, v1}, Lcom/lge/lgdrm/DrmFileLockClient;->abortFileLockSession(J)I

    .line 797
    iget-wide v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mLockSessionID:J

    invoke-virtual {p0, v0, v1}, Lcom/lge/lgdrm/DrmFileLockClient;->closeFileLockSession(J)I

    .line 800
    :cond_12
    iget-wide v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mUnlockSessionID:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_22

    .line 801
    iget-wide v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mUnlockSessionID:J

    invoke-virtual {p0, v0, v1}, Lcom/lge/lgdrm/DrmFileLockClient;->abortFileUnlockSession(J)I

    .line 802
    iget-wide v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mUnlockSessionID:J

    invoke-virtual {p0, v0, v1}, Lcom/lge/lgdrm/DrmFileLockClient;->closeFileUnlockSession(J)I

    .line 804
    :cond_22
    return-void
.end method

.method public static getUserInfo()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 743
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_6

    .line 744
    const/4 v0, 0x0

    .line 751
    :goto_5
    return-object v0

    .line 747
    :cond_6
    invoke-static {}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_14

    .line 748
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 751
    :cond_14
    invoke-static {}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeGetUserInfo()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static isFileLockAllowed(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 7
    .param p0, "srcFile"    # Ljava/lang/String;
    .param p1, "srcMimeType"    # Ljava/lang/String;
    .param p2, "srcMediaType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 229
    sget-boolean v2, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v2, :cond_7

    .line 250
    :cond_6
    :goto_6
    return v0

    .line 233
    :cond_7
    invoke-static {}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeAuthCaller()Z

    move-result v2

    if-nez v2, :cond_15

    .line 234
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_15
    if-nez p0, :cond_1f

    .line 238
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter srcFile is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_1f
    if-nez p1, :cond_29

    .line 242
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter srcMimeType is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_29
    if-eq p2, v1, :cond_4c

    const/4 v2, 0x2

    if-eq p2, v2, :cond_4c

    const/4 v2, 0x3

    if-eq p2, v2, :cond_4c

    .line 246
    const-string v1, "DrmFileLockClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isFileLockAllowed() : srcMediaType is invalid. ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 250
    :cond_4c
    invoke-static {p0, p1, p2}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeIsFileLockAllowed(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_6
.end method

.method public static isFileUnlockAllowed(Ljava/lang/String;)Z
    .registers 3
    .param p0, "srcFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 518
    sget-boolean v1, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v1, :cond_6

    .line 530
    :cond_5
    :goto_5
    return v0

    .line 522
    :cond_6
    invoke-static {}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeAuthCaller()Z

    move-result v1

    if-nez v1, :cond_14

    .line 523
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :cond_14
    if-nez p0, :cond_1e

    .line 527
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter srcFile is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 530
    :cond_1e
    invoke-static {p0}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeIsFileUnlockAllowed(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method private static native nativeAbortFileLockSession(J)I
.end method

.method private static native nativeAbortFileUnlockSession(J)I
.end method

.method private static native nativeAuthCaller()Z
.end method

.method private static native nativeCloseFileLockSession(J)I
.end method

.method private static native nativeCloseFileUnlockSession(J)I
.end method

.method private static native nativeFileLock(J)I
.end method

.method private static native nativeFileUnlock(J)I
.end method

.method private static native nativeGetUserInfo()Ljava/lang/String;
.end method

.method private static native nativeIsFileLockAllowed(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method private static native nativeIsFileUnlockAllowed(Ljava/lang/String;)I
.end method

.method private static native nativeOpenFileLockSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)J
.end method

.method private static native nativeOpenFileUnlockSession(Ljava/lang/String;Ljava/lang/String;II)J
.end method

.method private static native nativeSetUserInfo(Ljava/lang/String;)I
.end method

.method private needToObserve()Z
    .registers 5

    .prologue
    .line 807
    iget-wide v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mSrcFileSize:J

    const-wide/32 v2, 0xa00000

    cmp-long v0, v0, v2

    if-lez v0, :cond_b

    .line 808
    const/4 v0, 0x1

    .line 810
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private sendEventToListener(I)V
    .registers 3
    .param p1, "event"    # I

    .prologue
    .line 815
    iget-object v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mOnEventListener:Lcom/lge/lgdrm/DrmFileLockClient$OnEventListener;

    if-eqz v0, :cond_9

    .line 816
    iget-object v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mOnEventListener:Lcom/lge/lgdrm/DrmFileLockClient$OnEventListener;

    invoke-interface {v0, p0, p1}, Lcom/lge/lgdrm/DrmFileLockClient$OnEventListener;->onEvent(Lcom/lge/lgdrm/DrmFileLockClient;I)V

    .line 818
    :cond_9
    return-void
.end method

.method public static setUserInfo(Ljava/lang/String;)I
    .registers 4
    .param p0, "userInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 768
    sget-boolean v1, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v1, :cond_6

    .line 769
    const/4 v0, -0x1

    .line 782
    :goto_5
    return v0

    .line 772
    :cond_6
    invoke-static {}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeAuthCaller()Z

    move-result v1

    if-nez v1, :cond_14

    .line 773
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Need proper permission to access drm"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 776
    :cond_14
    if-nez p0, :cond_1e

    .line 777
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Parameter userInfo is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 780
    :cond_1e
    invoke-static {p0}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeSetUserInfo(Ljava/lang/String;)I

    move-result v0

    .line 782
    .local v0, "nResult":I
    goto :goto_5
.end method


# virtual methods
.method public abortFileLockSession(J)I
    .registers 8
    .param p1, "sessionID"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 444
    sget-boolean v1, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v1, :cond_6

    .line 459
    :goto_5
    return v0

    .line 448
    :cond_6
    invoke-static {}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeAuthCaller()Z

    move-result v1

    if-nez v1, :cond_14

    .line 449
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Need proper permission to access drm"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 452
    :cond_14
    const-wide/16 v2, -0x1

    cmp-long v1, p1, v2

    if-eqz v1, :cond_26

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-eqz v1, :cond_26

    iget-wide v2, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mLockSessionID:J

    cmp-long v1, p1, v2

    if-eqz v1, :cond_2e

    .line 453
    :cond_26
    const-string v1, "DrmFileLockClient"

    const-string v2, "abortFileLockSession() : sessionID is invalid."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 457
    :cond_2e
    iget-wide v2, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mLockSessionID:J

    invoke-static {v2, v3}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeAbortFileLockSession(J)I

    move-result v0

    .line 459
    .local v0, "nResult":I
    goto :goto_5
.end method

.method public abortFileUnlockSession(J)I
    .registers 8
    .param p1, "sessionID"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 678
    sget-boolean v1, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v1, :cond_6

    .line 693
    :goto_5
    return v0

    .line 682
    :cond_6
    invoke-static {}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeAuthCaller()Z

    move-result v1

    if-nez v1, :cond_14

    .line 683
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Need proper permission to access drm"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 686
    :cond_14
    const-wide/16 v2, -0x1

    cmp-long v1, p1, v2

    if-eqz v1, :cond_26

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-eqz v1, :cond_26

    iget-wide v2, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mUnlockSessionID:J

    cmp-long v1, p1, v2

    if-eqz v1, :cond_2e

    .line 687
    :cond_26
    const-string v1, "DrmFileLockClient"

    const-string v2, "abortFileUnlockSession() : sessionID is invalid."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 691
    :cond_2e
    iget-wide v2, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mUnlockSessionID:J

    invoke-static {v2, v3}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeAbortFileUnlockSession(J)I

    move-result v0

    .line 693
    .local v0, "nResult":I
    goto :goto_5
.end method

.method public closeFileLockSession(J)I
    .registers 10
    .param p1, "sessionID"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    const-wide/16 v4, 0x0

    .line 481
    sget-boolean v1, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v1, :cond_8

    .line 502
    :cond_7
    :goto_7
    return v0

    .line 485
    :cond_8
    invoke-static {}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeAuthCaller()Z

    move-result v1

    if-nez v1, :cond_16

    .line 486
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Need proper permission to access drm"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 489
    :cond_16
    const-wide/16 v2, -0x1

    cmp-long v1, p1, v2

    if-eqz v1, :cond_26

    cmp-long v1, p1, v4

    if-eqz v1, :cond_26

    iget-wide v2, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mLockSessionID:J

    cmp-long v1, p1, v2

    if-eqz v1, :cond_2e

    .line 490
    :cond_26
    const-string v1, "DrmFileLockClient"

    const-string v2, "closeFileLockSession() : sessionID is invalid."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 494
    :cond_2e
    iget-wide v2, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mLockSessionID:J

    invoke-static {v2, v3}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeCloseFileLockSession(J)I

    move-result v0

    .line 495
    .local v0, "nResult":I
    iput-wide v4, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mLockSessionID:J

    .line 496
    iput-wide v4, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mStartTime:J

    .line 497
    iget-object v1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mObserver:Landroid/os/FileObserver;

    if-eqz v1, :cond_7

    .line 498
    iget-object v1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mObserver:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->stopWatching()V

    .line 499
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mObserver:Landroid/os/FileObserver;

    .line 500
    const-string v1, "DrmFileLockClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Stop observation : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mSrcFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public closeFileUnlockSession(J)I
    .registers 10
    .param p1, "sessionID"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    const-wide/16 v4, 0x0

    .line 714
    sget-boolean v1, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v1, :cond_8

    .line 731
    :goto_7
    return v0

    .line 718
    :cond_8
    invoke-static {}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeAuthCaller()Z

    move-result v1

    if-nez v1, :cond_16

    .line 719
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Need proper permission to access drm"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 722
    :cond_16
    const-wide/16 v2, -0x1

    cmp-long v1, p1, v2

    if-eqz v1, :cond_26

    cmp-long v1, p1, v4

    if-eqz v1, :cond_26

    iget-wide v2, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mUnlockSessionID:J

    cmp-long v1, p1, v2

    if-eqz v1, :cond_2e

    .line 723
    :cond_26
    const-string v1, "DrmFileLockClient"

    const-string v2, "closeFileUnlockSession() : sessionID is invalid."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 727
    :cond_2e
    iget-wide v2, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mUnlockSessionID:J

    invoke-static {v2, v3}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeCloseFileUnlockSession(J)I

    move-result v0

    .line 728
    .local v0, "nResult":I
    iput-wide v4, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mUnlockSessionID:J

    .line 729
    iput-wide v4, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mStartTime:J

    goto :goto_7
.end method

.method public fileLock(J)I
    .registers 8
    .param p1, "sessionID"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 385
    sget-boolean v2, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v2, :cond_7

    move v0, v1

    .line 428
    :goto_6
    return v0

    .line 389
    :cond_7
    invoke-static {}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeAuthCaller()Z

    move-result v2

    if-nez v2, :cond_15

    .line 390
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Need proper permission to access drm"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 393
    :cond_15
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-eqz v2, :cond_27

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-eqz v2, :cond_27

    iget-wide v2, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mLockSessionID:J

    cmp-long v2, p1, v2

    if-eqz v2, :cond_30

    .line 394
    :cond_27
    const-string v2, "DrmFileLockClient"

    const-string v3, "fileLock() : sessionID is invalid."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 395
    goto :goto_6

    .line 398
    :cond_30
    invoke-direct {p0}, Lcom/lge/lgdrm/DrmFileLockClient;->needToObserve()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 399
    new-instance v2, Lcom/lge/lgdrm/DrmFileLockClient$1;

    iget-object v3, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mSrcFilePath:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/lge/lgdrm/DrmFileLockClient$1;-><init>(Lcom/lge/lgdrm/DrmFileLockClient;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mObserver:Landroid/os/FileObserver;

    .line 417
    iget-object v2, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mObserver:Landroid/os/FileObserver;

    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    .line 418
    const-string v2, "DrmFileLockClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Start observation : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mSrcFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_5a
    iget-wide v2, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mLockSessionID:J

    invoke-static {v2, v3}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeFileLock(J)I

    move-result v0

    .line 422
    .local v0, "nResult":I
    if-ne v1, v0, :cond_68

    .line 423
    const/16 v1, -0xa

    invoke-direct {p0, v1}, Lcom/lge/lgdrm/DrmFileLockClient;->sendEventToListener(I)V

    goto :goto_6

    .line 425
    :cond_68
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/lge/lgdrm/DrmFileLockClient;->sendEventToListener(I)V

    goto :goto_6
.end method

.method public fileUnlock(J)I
    .registers 8
    .param p1, "sessionID"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 642
    sget-boolean v2, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v2, :cond_7

    move v0, v1

    .line 662
    :goto_6
    return v0

    .line 646
    :cond_7
    invoke-static {}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeAuthCaller()Z

    move-result v2

    if-nez v2, :cond_15

    .line 647
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Need proper permission to access drm"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 650
    :cond_15
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-eqz v2, :cond_27

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-eqz v2, :cond_27

    iget-wide v2, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mUnlockSessionID:J

    cmp-long v2, p1, v2

    if-eqz v2, :cond_30

    .line 651
    :cond_27
    const-string v2, "DrmFileLockClient"

    const-string v3, "fileUnlock() : sessionID is invalid."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 652
    goto :goto_6

    .line 655
    :cond_30
    iget-wide v2, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mUnlockSessionID:J

    invoke-static {v2, v3}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeFileUnlock(J)I

    move-result v0

    .line 656
    .local v0, "nResult":I
    if-ne v1, v0, :cond_3e

    .line 657
    const/16 v1, -0x14

    invoke-direct {p0, v1}, Lcom/lge/lgdrm/DrmFileLockClient;->sendEventToListener(I)V

    goto :goto_6

    .line 659
    :cond_3e
    const/16 v1, 0x14

    invoke-direct {p0, v1}, Lcom/lge/lgdrm/DrmFileLockClient;->sendEventToListener(I)V

    goto :goto_6
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 788
    :try_start_0
    invoke-direct {p0}, Lcom/lge/lgdrm/DrmFileLockClient;->cleanSessions()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 790
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 792
    return-void

    .line 789
    :catchall_7
    move-exception v0

    .line 790
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 791
    throw v0
.end method

.method public getDstFilePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mDstFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getRemainingTime(J)J
    .registers 18
    .param p1, "sessionID"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 183
    sget-boolean v10, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v10, :cond_7

    .line 184
    const-wide/16 v6, -0x1

    .line 209
    :goto_6
    return-wide v6

    .line 187
    :cond_7
    invoke-static {}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeAuthCaller()Z

    move-result v10

    if-nez v10, :cond_15

    .line 188
    new-instance v10, Ljava/lang/SecurityException;

    const-string v11, "Need proper permission to access drm"

    invoke-direct {v10, v11}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 191
    :cond_15
    const-wide/16 v10, -0x1

    cmp-long v10, p1, v10

    if-eqz v10, :cond_2d

    const-wide/16 v10, 0x0

    cmp-long v10, p1, v10

    if-eqz v10, :cond_2d

    iget-wide v10, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mLockSessionID:J

    cmp-long v10, p1, v10

    if-eqz v10, :cond_37

    iget-wide v10, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mUnlockSessionID:J

    cmp-long v10, p1, v10

    if-eqz v10, :cond_37

    .line 192
    :cond_2d
    const-string v10, "DrmFileLockClient"

    const-string v11, "getRemainingTime() : sessionID is invalid."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-wide/16 v6, -0x1

    goto :goto_6

    .line 196
    :cond_37
    iget-wide v8, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mSrcFileSize:J

    .line 197
    .local v8, "totalSize":J
    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mDstFilePath:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 198
    .local v0, "currentSize":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-eqz v10, :cond_50

    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-nez v10, :cond_5a

    .line 199
    :cond_50
    const-string v10, "DrmFileLockClient"

    const-string v11, "getRemainingTime() : file size is wrong"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-wide/16 v6, -0x1

    goto :goto_6

    .line 202
    :cond_5a
    const-wide/16 v10, 0x800

    add-long/2addr v8, v10

    .line 205
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 206
    .local v4, "now":J
    iget-wide v10, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mStartTime:J

    sub-long v2, v4, v10

    .line 207
    .local v2, "elapsedTime":J
    long-to-double v10, v8

    long-to-double v12, v0

    div-double/2addr v10, v12

    long-to-double v12, v2

    mul-double/2addr v10, v12

    double-to-long v10, v10

    sub-long v6, v10, v2

    .line 209
    .local v6, "result":J
    goto :goto_6
.end method

.method public getSrcFilePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mSrcFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public openFileLockSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J
    .registers 15
    .param p1, "srcFile"    # Ljava/lang/String;
    .param p2, "dstFile"    # Ljava/lang/String;
    .param p3, "srcMimeType"    # Ljava/lang/String;
    .param p4, "srcMediaType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 278
    const-wide/16 v8, 0x0

    .line 281
    .local v8, "nResult":J
    const/high16 v5, 0x40000

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    :try_start_a
    invoke-virtual/range {v0 .. v6}, Lcom/lge/lgdrm/DrmFileLockClient;->openFileLockSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)J
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_d} :catch_f

    move-result-wide v8

    .line 286
    return-wide v8

    .line 282
    :catch_f
    move-exception v7

    .line 283
    .local v7, "e":Ljava/lang/SecurityException;
    throw v7
.end method

.method public openFileLockSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)J
    .registers 12
    .param p1, "srcFile"    # Ljava/lang/String;
    .param p2, "dstFile"    # Ljava/lang/String;
    .param p3, "srcMimeType"    # Ljava/lang/String;
    .param p4, "srcMediaType"    # I
    .param p5, "ioUnitSize"    # I
    .param p6, "sleepUSec"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 321
    sget-boolean v2, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v2, :cond_9

    .line 322
    const-wide/16 v0, -0x1

    .line 369
    :cond_8
    :goto_8
    return-wide v0

    .line 325
    :cond_9
    invoke-static {}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeAuthCaller()Z

    move-result v2

    if-nez v2, :cond_17

    .line 326
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_17
    if-nez p1, :cond_21

    .line 330
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter srcFile is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_21
    if-nez p2, :cond_2b

    .line 334
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter dstFile is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_2b
    if-nez p3, :cond_35

    .line 338
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter srcMimeType is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_35
    const/4 v2, 0x1

    if-eq p4, v2, :cond_59

    const/4 v2, 0x2

    if-eq p4, v2, :cond_59

    const/4 v2, 0x3

    if-eq p4, v2, :cond_59

    .line 342
    const-string v2, "DrmFileLockClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "openFileLockSession() : srcMediaType is invalid. ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 347
    :cond_59
    const/16 v2, 0x400

    if-eq p5, v2, :cond_86

    const/16 v2, 0x800

    if-eq p5, v2, :cond_86

    .line 348
    const/16 v2, 0x1000

    if-eq p5, v2, :cond_86

    const/16 v2, 0x2000

    if-eq p5, v2, :cond_86

    .line 349
    const/16 v2, 0x4000

    if-eq p5, v2, :cond_86

    const v2, 0x8000

    if-eq p5, v2, :cond_86

    .line 350
    const/high16 v2, 0x10000

    if-eq p5, v2, :cond_86

    const/high16 v2, 0x20000

    if-eq p5, v2, :cond_86

    .line 351
    const/high16 v2, 0x40000

    if-eq p5, v2, :cond_86

    .line 352
    const-string v2, "DrmFileLockClient"

    const-string v3, "openFileLockSession() : file unit size is wrong"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 356
    :cond_86
    if-ltz p6, :cond_8

    .line 360
    invoke-static/range {p1 .. p6}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeOpenFileLockSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mLockSessionID:J

    .line 362
    iput-object p1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mSrcFilePath:Ljava/lang/String;

    .line 363
    iput-object p2, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mDstFilePath:Ljava/lang/String;

    .line 365
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mSrcFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mSrcFileSize:J

    .line 367
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mStartTime:J

    .line 369
    iget-wide v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mLockSessionID:J

    goto/16 :goto_8
.end method

.method public openFileUnlockSession(Ljava/lang/String;Ljava/lang/String;)J
    .registers 8
    .param p1, "srcFile"    # Ljava/lang/String;
    .param p2, "dstFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 550
    const-wide/16 v2, 0x0

    .line 553
    .local v2, "nResult":J
    const/high16 v1, 0x40000

    const/4 v4, 0x0

    :try_start_5
    invoke-virtual {p0, p1, p2, v1, v4}, Lcom/lge/lgdrm/DrmFileLockClient;->openFileUnlockSession(Ljava/lang/String;Ljava/lang/String;II)J
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_8} :catch_a

    move-result-wide v2

    .line 558
    return-wide v2

    .line 554
    :catch_a
    move-exception v0

    .line 555
    .local v0, "e":Ljava/lang/SecurityException;
    throw v0
.end method

.method public openFileUnlockSession(Ljava/lang/String;Ljava/lang/String;II)J
    .registers 9
    .param p1, "srcFile"    # Ljava/lang/String;
    .param p2, "dstFile"    # Ljava/lang/String;
    .param p3, "ioUnitSize"    # I
    .param p4, "sleepUSec"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 588
    sget-boolean v2, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v2, :cond_7

    .line 626
    :cond_6
    :goto_6
    return-wide v0

    .line 592
    :cond_7
    invoke-static {}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeAuthCaller()Z

    move-result v2

    if-nez v2, :cond_15

    .line 593
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_15
    if-nez p1, :cond_1f

    .line 597
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter srcFile is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 600
    :cond_1f
    if-nez p2, :cond_29

    .line 601
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter dstFile is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 604
    :cond_29
    const/16 v2, 0x400

    if-eq p3, v2, :cond_56

    const/16 v2, 0x800

    if-eq p3, v2, :cond_56

    .line 605
    const/16 v2, 0x1000

    if-eq p3, v2, :cond_56

    const/16 v2, 0x2000

    if-eq p3, v2, :cond_56

    .line 606
    const/16 v2, 0x4000

    if-eq p3, v2, :cond_56

    const v2, 0x8000

    if-eq p3, v2, :cond_56

    .line 607
    const/high16 v2, 0x10000

    if-eq p3, v2, :cond_56

    const/high16 v2, 0x20000

    if-eq p3, v2, :cond_56

    .line 608
    const/high16 v2, 0x40000

    if-eq p3, v2, :cond_56

    .line 609
    const-string v2, "DrmFileLockClient"

    const-string v3, "openFileUnlockSession() : file unit size is wrong"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 613
    :cond_56
    if-ltz p4, :cond_6

    .line 617
    invoke-static {p1, p2, p3, p4}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeOpenFileUnlockSession(Ljava/lang/String;Ljava/lang/String;II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mUnlockSessionID:J

    .line 619
    iput-object p1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mSrcFilePath:Ljava/lang/String;

    .line 620
    iput-object p2, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mDstFilePath:Ljava/lang/String;

    .line 622
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mSrcFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mSrcFileSize:J

    .line 624
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mStartTime:J

    .line 626
    iget-wide v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mUnlockSessionID:J

    goto :goto_6
.end method

.method public declared-synchronized setOnEventListener(Lcom/lge/lgdrm/DrmFileLockClient$OnEventListener;)V
    .registers 3
    .param p1, "eventListener"    # Lcom/lge/lgdrm/DrmFileLockClient$OnEventListener;

    .prologue
    .line 149
    monitor-enter p0

    if-eqz p1, :cond_5

    .line 150
    :try_start_3
    iput-object p1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mOnEventListener:Lcom/lge/lgdrm/DrmFileLockClient$OnEventListener;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 152
    :cond_5
    monitor-exit p0

    return-void

    .line 149
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method
