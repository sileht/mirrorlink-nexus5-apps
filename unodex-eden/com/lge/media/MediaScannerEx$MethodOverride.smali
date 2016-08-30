.class public Lcom/lge/media/MediaScannerEx$MethodOverride;
.super Ljava/lang/Object;
.source "MediaScannerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/media/MediaScannerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MethodOverride"
.end annotation

.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/media/MediaScannerEx$MethodOverride;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 769
    :try_start_0
    invoke-static {}, Lcom/lge/media/MediaScannerEx$MethodOverride;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/media/MediaScannerEx$MethodOverride;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_media_MediaScannerEx$MethodOverride$3$76046a3proceed(Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 4
    .param p0, "this"    # Lcom/lge/media/MediaScannerEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 782
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_media_MediaScannerEx$MethodOverride$4$5daef748proceed(Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 4
    .param p0, "this"    # Lcom/lge/media/MediaScannerEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 793
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$com_lge_media_MediaScannerEx$MethodOverride$5$ddd5e3c0proceed(Lcom/lge/media/MediaScannerEx;Ljava/lang/String;ZLorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 7
    .param p0, "this"    # Lcom/lge/media/MediaScannerEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 802
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p3, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_media_MediaScannerEx$MethodOverride$6$f3703bd2proceed(Lcom/lge/media/MediaScannerEx;[Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 5
    .param p0, "this"    # Lcom/lge/media/MediaScannerEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 891
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_media_MediaScannerEx$MethodOverride$7$1a840fa1proceed(Lcom/lge/media/MediaScannerEx;Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaScanner$FileEntry;
    .registers 5
    .param p0, "this"    # Lcom/lge/media/MediaScannerEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 920
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaScanner$FileEntry;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_lge_media_MediaScannerEx$MethodOverride$com_lge_media_MediaScannerEx$CAMERA_DIR()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/media/MediaScannerEx;->CAMERA_DIR:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_lge_media_MediaScannerEx$MethodOverride$com_lge_media_MediaScannerEx$EXTERNAL_STORAGE_SDCARD()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/media/MediaScannerEx;->EXTERNAL_STORAGE_SDCARD:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_lge_media_MediaScannerEx$MethodOverride$com_lge_media_MediaScannerEx$EXTERNAL_STORAGE_SDCARD_ID()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/media/MediaScannerEx;->EXTERNAL_STORAGE_SDCARD_ID:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_lge_media_MediaScannerEx$MethodOverride$com_lge_media_MediaScannerEx$SCREENSHOT_DIR()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/media/MediaScannerEx;->SCREENSHOT_DIR:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_lge_media_MediaScannerEx$MethodOverride$com_lge_media_MediaScannerEx$TAG()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/media/MediaScannerEx;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_lge_media_MediaScannerEx$MethodOverride$com_lge_media_MediaScannerEx$VOICERECORDING_DIR()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/media/MediaScannerEx;->VOICERECORDING_DIR:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_lge_media_MediaScannerEx$MethodOverride$com_lge_media_MediaScannerEx$mALARM_CHECK(Lcom/lge/media/MediaScannerEx;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/lge/media/MediaScannerEx;->mALARM_CHECK:I

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_lge_media_MediaScannerEx$MethodOverride$com_lge_media_MediaScannerEx$mIsScanDir(Lcom/lge/media/MediaScannerEx;)Z
    .registers 2

    .prologue
    .line 1
    iget-boolean v0, p0, Lcom/lge/media/MediaScannerEx;->mIsScanDir:Z

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_lge_media_MediaScannerEx$MethodOverride$com_lge_media_MediaScannerEx$mNOTIFICAION_CHECK(Lcom/lge/media/MediaScannerEx;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/lge/media/MediaScannerEx;->mNOTIFICAION_CHECK:I

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_lge_media_MediaScannerEx$MethodOverride$com_lge_media_MediaScannerEx$mRINGTONE_CHECK(Lcom/lge/media/MediaScannerEx;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/lge/media/MediaScannerEx;->mRINGTONE_CHECK:I

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_lge_media_MediaScannerEx$MethodOverride$com_lge_media_MediaScannerEx$settingFinished()Z
    .registers 1

    .prologue
    .line 1
    sget-boolean v0, Lcom/lge/media/MediaScannerEx;->settingFinished:Z

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_lge_media_MediaScannerEx$MethodOverride$com_lge_media_MediaScannerEx$CAMERA_DIR(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/lge/media/MediaScannerEx;->CAMERA_DIR:Ljava/lang/String;

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_lge_media_MediaScannerEx$MethodOverride$com_lge_media_MediaScannerEx$EXTERNAL_STORAGE_SDCARD(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/lge/media/MediaScannerEx;->EXTERNAL_STORAGE_SDCARD:Ljava/lang/String;

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_lge_media_MediaScannerEx$MethodOverride$com_lge_media_MediaScannerEx$EXTERNAL_STORAGE_SDCARD_ID(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/lge/media/MediaScannerEx;->EXTERNAL_STORAGE_SDCARD_ID:Ljava/lang/String;

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_lge_media_MediaScannerEx$MethodOverride$com_lge_media_MediaScannerEx$SCREENSHOT_DIR(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/lge/media/MediaScannerEx;->SCREENSHOT_DIR:Ljava/lang/String;

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_lge_media_MediaScannerEx$MethodOverride$com_lge_media_MediaScannerEx$TAG(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/lge/media/MediaScannerEx;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_lge_media_MediaScannerEx$MethodOverride$com_lge_media_MediaScannerEx$VOICERECORDING_DIR(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/lge/media/MediaScannerEx;->VOICERECORDING_DIR:Ljava/lang/String;

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_lge_media_MediaScannerEx$MethodOverride$com_lge_media_MediaScannerEx$mALARM_CHECK(Lcom/lge/media/MediaScannerEx;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/lge/media/MediaScannerEx;->mALARM_CHECK:I

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_lge_media_MediaScannerEx$MethodOverride$com_lge_media_MediaScannerEx$mIsScanDir(Lcom/lge/media/MediaScannerEx;Z)V
    .registers 2

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/lge/media/MediaScannerEx;->mIsScanDir:Z

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_lge_media_MediaScannerEx$MethodOverride$com_lge_media_MediaScannerEx$mNOTIFICAION_CHECK(Lcom/lge/media/MediaScannerEx;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/lge/media/MediaScannerEx;->mNOTIFICAION_CHECK:I

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_lge_media_MediaScannerEx$MethodOverride$com_lge_media_MediaScannerEx$mRINGTONE_CHECK(Lcom/lge/media/MediaScannerEx;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/lge/media/MediaScannerEx;->mRINGTONE_CHECK:I

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_lge_media_MediaScannerEx$MethodOverride$com_lge_media_MediaScannerEx$settingFinished(Z)V
    .registers 1

    .prologue
    .line 1
    sput-boolean p0, Lcom/lge/media/MediaScannerEx;->settingFinished:Z

    return-void
.end method

.method public static synthetic ajc$inlineAccessMethod$com_lge_media_MediaScannerEx$MethodOverride$com_lge_media_MediaScannerEx$isDefaultSoundPathScanning(Lcom/lge/media/MediaScannerEx;[Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/media/MediaScannerEx;->isDefaultSoundPathScanning([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$inlineAccessMethod$com_lge_media_MediaScannerEx$MethodOverride$com_lge_media_MediaScannerEx$isDefaultSoundSettingDB(Lcom/lge/media/MediaScannerEx;I)Z
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/media/MediaScannerEx;->isDefaultSoundSettingDB(I)Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$inlineAccessMethod$com_lge_media_MediaScannerEx$MethodOverride$com_lge_media_MediaScannerEx$setDefaultSound(Lcom/lge/media/MediaScannerEx;ZZZ)V
    .registers 4

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/lge/media/MediaScannerEx;->setDefaultSound(ZZZ)V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/media/MediaScannerEx$MethodOverride;

    invoke-direct {v0}, Lcom/lge/media/MediaScannerEx$MethodOverride;-><init>()V

    sput-object v0, Lcom/lge/media/MediaScannerEx$MethodOverride;->ajc$perSingletonInstance:Lcom/lge/media/MediaScannerEx$MethodOverride;

    return-void
.end method

.method public static aspectOf()Lcom/lge/media/MediaScannerEx$MethodOverride;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/media/MediaScannerEx$MethodOverride;->ajc$perSingletonInstance:Lcom/lge/media/MediaScannerEx$MethodOverride;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_media_MediaScannerEx$MethodOverride"

    sget-object v2, Lcom/lge/media/MediaScannerEx$MethodOverride;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/media/MediaScannerEx$MethodOverride;->ajc$perSingletonInstance:Lcom/lge/media/MediaScannerEx$MethodOverride;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/media/MediaScannerEx$MethodOverride;->ajc$perSingletonInstance:Lcom/lge/media/MediaScannerEx$MethodOverride;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$com_lge_media_MediaScannerEx$MethodOverride$1$30a51a01(Landroid/media/MediaScanner;)V
    .registers 4
    .param p1, "obj"    # Landroid/media/MediaScanner;
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "obj"
        value = "(this(obj) && initialization(MediaScanner.new(..)))"
    .end annotation

    .prologue
    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/media/MediaScanner;->ajc$get$mExternalStoragePath(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/media/MediaScanner;->ajc$get$RINGTONES_DIR()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/lge/media/MediaScannerEx$InterTypeDeclarations;->ajc$interFieldSetDispatch$com_lge_media_MediaScannerEx$InterTypeDeclarations$android_media_MediaScanner$mExtStorageRingtonesPath(Landroid/media/MediaScanner;Ljava/lang/String;)V

    .line 773
    return-void
.end method

.method public ajc$after$com_lge_media_MediaScannerEx$MethodOverride$2$415a4227(Landroid/media/MediaScanner;Landroid/media/MediaScanner$MyMediaScannerClient;)V
    .registers 3
    .param p1, "outer"    # Landroid/media/MediaScanner;
    .param p2, "inner"    # Landroid/media/MediaScanner$MyMediaScannerClient;
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "outer,inner"
        value = "(execution(MediaScanner.MyMediaScannerClient.new(..)) && (this(inner) && args(outer, ..)))"
    .end annotation

    .prologue
    .line 777
    invoke-static {p2, p1}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;->ajc$interFieldSetDispatch$com_lge_media_MediaScannerEx$MyMediaScannerClientAO$android_media_MediaScanner$MyMediaScannerClient$mOuter(Landroid/media/MediaScanner$MyMediaScannerClient;Landroid/media/MediaScanner;)V

    .line 778
    return-void
.end method

.method public ajc$around$com_lge_media_MediaScannerEx$MethodOverride$3$76046a3(Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 5
    .param p1, "obj"    # Lcom/lge/media/MediaScannerEx;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(this(obj) && execution(private void MediaScanner.setDefaultRingtoneFileNames()))"
    .end annotation

    .prologue
    .line 783
    invoke-static {p1, p2}, Lcom/lge/media/MediaScannerEx$MethodOverride;->ajc$around$com_lge_media_MediaScannerEx$MethodOverride$3$76046a3proceed(Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)V

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/media/MediaScanner;->ajc$get$DEFAULT_RINGTONE_PROPERTY_PREFIX()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "timer_alert"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/lge/media/MediaScannerEx$InterTypeDeclarations;->ajc$interFieldSetDispatch$com_lge_media_MediaScannerEx$InterTypeDeclarations$com_lge_media_MediaScannerEx$mDefaultTimerAlertFilename(Lcom/lge/media/MediaScannerEx;Ljava/lang/String;)V

    .line 785
    invoke-static {p1}, Lcom/lge/media/MediaScannerEx$InterTypeDeclarations;->ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$InterTypeDeclarations$com_lge_media_MediaScannerEx$mDefaultTimerAlertFilename(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 786
    const-string v0, "MediaScannerEx"

    const-string v1, "[MediaScanner] setDefaultRingtoneFileNames mDefaultTimerAlertFilename Read Fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    invoke-static {p1}, Landroid/media/MediaScanner;->ajc$get$mDefaultAlarmAlertFilename(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/lge/media/MediaScannerEx$InterTypeDeclarations;->ajc$interFieldSetDispatch$com_lge_media_MediaScannerEx$InterTypeDeclarations$com_lge_media_MediaScannerEx$mDefaultTimerAlertFilename(Lcom/lge/media/MediaScannerEx;Ljava/lang/String;)V

    .line 789
    :cond_39
    return-void
.end method

.method public ajc$around$com_lge_media_MediaScannerEx$MethodOverride$4$5daef748(Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 4
    .param p1, "obj"    # Lcom/lge/media/MediaScannerEx;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(this(obj) && execution(private boolean MediaScanner.isDrmEnabled()))"
    .end annotation

    .prologue
    .line 794
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_DRM:Z

    if-eqz v0, :cond_6

    .line 795
    const/4 v0, 0x1

    .line 797
    :goto_5
    return v0

    :cond_6
    invoke-static {p1, p2}, Lcom/lge/media/MediaScannerEx$MethodOverride;->ajc$around$com_lge_media_MediaScannerEx$MethodOverride$4$5daef748proceed(Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    goto :goto_5
.end method

.method public ajc$around$com_lge_media_MediaScannerEx$MethodOverride$5$ddd5e3c0(Lcom/lge/media/MediaScannerEx;Ljava/lang/String;ZLorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 25
    .param p1, "obj"    # Lcom/lge/media/MediaScannerEx;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "prescanFiles"    # Z
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,filePath,prescanFiles,ajc$aroundClosure"
        value = "(this(obj) && (args(filePath, prescanFiles) && execution(private void MediaScanner.prescan(String, boolean))))"
    .end annotation

    .prologue
    .line 804
    const/4 v15, 0x0

    .line 805
    .local v15, "c":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 806
    .local v6, "where":Ljava/lang/String;
    const/4 v7, 0x0

    .line 807
    .local v7, "selectionArgs":[Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/lge/media/MediaScannerEx$InterTypeDeclarations;->ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$InterTypeDeclarations$com_lge_media_MediaScannerEx$mFileCache(Lcom/lge/media/MediaScannerEx;)Ljava/util/HashMap;

    move-result-object v2

    if-nez v2, :cond_9f

    .line 808
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/lge/media/MediaScannerEx$InterTypeDeclarations;->ajc$interFieldSetDispatch$com_lge_media_MediaScannerEx$InterTypeDeclarations$com_lge_media_MediaScannerEx$mFileCache(Lcom/lge/media/MediaScannerEx;Ljava/util/HashMap;)V

    .line 814
    :goto_13
    invoke-static/range {p1 .. p4}, Lcom/lge/media/MediaScannerEx$MethodOverride;->ajc$around$com_lge_media_MediaScannerEx$MethodOverride$5$ddd5e3c0proceed(Lcom/lge/media/MediaScannerEx;Ljava/lang/String;ZLorg/aspectj/runtime/internal/AroundClosure;)V

    .line 817
    invoke-static/range {p1 .. p1}, Lcom/lge/media/MediaScannerEx$MethodOverride;->ajc$inlineAccessFieldGet$com_lge_media_MediaScannerEx$MethodOverride$com_lge_media_MediaScannerEx$mIsScanDir(Lcom/lge/media/MediaScannerEx;)Z

    move-result v2

    if-eqz v2, :cond_b3

    .line 818
    if-eqz p2, :cond_a8

    .line 820
    const-string v6, "_id>? AND _data>=? AND _data<?"

    .line 823
    const/4 v2, 0x3

    new-array v7, v2, [Ljava/lang/String;

    .end local v7    # "selectionArgs":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v7, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    .line 840
    .restart local v7    # "selectionArgs":[Ljava/lang/String;
    :goto_54
    if-eqz p3, :cond_99

    .line 841
    const-wide/high16 v18, -0x8000000000000000L

    .line 842
    .local v18, "lastId":J
    :try_start_58
    invoke-static/range {p1 .. p1}, Landroid/media/MediaScanner;->ajc$get$mFilesUri(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "limit"

    const-string v5, "1000"

    invoke-virtual {v2, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 845
    .local v4, "limitUri":Landroid/net/Uri;
    :cond_6c
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    .line 846
    if-eqz v15, :cond_84

    .line 847
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 848
    const/4 v15, 0x0

    .line 850
    :cond_84
    invoke-static/range {p1 .. p1}, Landroid/media/MediaScanner;->ajc$get$mMediaProvider(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Landroid/media/MediaScanner;->ajc$get$mPackageName(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/media/MediaScanner;->ajc$get$FILES_PRESCAN_PROJECTION()[Ljava/lang/String;

    move-result-object v5

    .line 851
    const-string v8, "_id"

    const/4 v9, 0x0

    .line 850
    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_96
    .catchall {:try_start_58 .. :try_end_96} :catchall_121

    move-result-object v15

    .line 852
    if-nez v15, :cond_ce

    .line 882
    .end local v4    # "limitUri":Landroid/net/Uri;
    .end local v18    # "lastId":J
    :cond_99
    if-eqz v15, :cond_9e

    .line 883
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 887
    :cond_9e
    return-void

    .line 810
    :cond_9f
    invoke-static/range {p1 .. p1}, Lcom/lge/media/MediaScannerEx$InterTypeDeclarations;->ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$InterTypeDeclarations$com_lge_media_MediaScannerEx$mFileCache(Lcom/lge/media/MediaScannerEx;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_13

    .line 825
    :cond_a8
    const-string v6, "_id>?"

    .line 826
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    .end local v7    # "selectionArgs":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v7, v2

    .line 828
    .restart local v7    # "selectionArgs":[Ljava/lang/String;
    goto :goto_54

    .line 829
    :cond_b3
    if-eqz p2, :cond_c3

    .line 831
    const-string v6, "_id>? AND _data=?"

    .line 833
    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/String;

    .end local v7    # "selectionArgs":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v7, v2

    const/4 v2, 0x1

    aput-object p2, v7, v2

    .line 834
    .restart local v7    # "selectionArgs":[Ljava/lang/String;
    goto :goto_54

    .line 835
    :cond_c3
    const-string v6, "_id>?"

    .line 836
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    .end local v7    # "selectionArgs":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v7, v2

    .restart local v7    # "selectionArgs":[Ljava/lang/String;
    goto :goto_54

    .line 856
    .restart local v4    # "limitUri":Landroid/net/Uri;
    .restart local v18    # "lastId":J
    :cond_ce
    :try_start_ce
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v17

    .line 858
    .local v17, "num":I
    if-eqz v17, :cond_99

    .line 862
    :cond_d4
    :goto_d4
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 863
    invoke-static {}, Landroid/media/MediaScanner;->ajc$get$FILES_PRESCAN_ID_COLUMN_INDEX()I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 864
    .local v9, "rowId":J
    invoke-static {}, Landroid/media/MediaScanner;->ajc$get$FILES_PRESCAN_PATH_COLUMN_INDEX()I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 865
    .local v11, "path":Ljava/lang/String;
    invoke-static {}, Landroid/media/MediaScanner;->ajc$get$FILES_PRESCAN_FORMAT_COLUMN_INDEX()I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 866
    .local v14, "format":I
    invoke-static {}, Landroid/media/MediaScanner;->ajc$get$FILES_PRESCAN_DATE_MODIFIED_COLUMN_INDEX()I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 867
    .local v12, "lastModified":J
    move-wide/from16 v18, v9

    .line 869
    if-eqz v11, :cond_d4

    const-string v2, "/"

    invoke-virtual {v11, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d4

    .line 870
    move-object/from16 v16, v11

    .line 871
    .local v16, "key":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/media/MediaScanner;->ajc$get$mCaseInsensitivePaths(Landroid/media/MediaScanner;)Z

    move-result v2

    if-eqz v2, :cond_112

    .line 872
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    .line 874
    :cond_112
    new-instance v8, Landroid/media/MediaScanner$FileEntry;

    invoke-direct/range {v8 .. v14}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V

    .line 875
    .local v8, "entry":Landroid/media/MediaScanner$FileEntry;
    invoke-static/range {p1 .. p1}, Lcom/lge/media/MediaScannerEx$InterTypeDeclarations;->ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$InterTypeDeclarations$com_lge_media_MediaScannerEx$mFileCache(Lcom/lge/media/MediaScannerEx;)Ljava/util/HashMap;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_120
    .catchall {:try_start_ce .. :try_end_120} :catchall_121

    goto :goto_d4

    .line 881
    .end local v4    # "limitUri":Landroid/net/Uri;
    .end local v8    # "entry":Landroid/media/MediaScanner$FileEntry;
    .end local v9    # "rowId":J
    .end local v11    # "path":Ljava/lang/String;
    .end local v12    # "lastModified":J
    .end local v14    # "format":I
    .end local v16    # "key":Ljava/lang/String;
    .end local v17    # "num":I
    :catchall_121
    move-exception v2

    .line 882
    if-eqz v15, :cond_127

    .line 883
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 885
    :cond_127
    throw v2
.end method

.method public ajc$around$com_lge_media_MediaScannerEx$MethodOverride$6$f3703bd2(Lcom/lge/media/MediaScannerEx;[Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 20
    .param p1, "obj"    # Lcom/lge/media/MediaScannerEx;
    .param p2, "directories"    # [Ljava/lang/String;
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,directories,ajc$aroundClosure"
        value = "(this(obj) && (args(directories) && execution(private void MediaScanner.postscan(String))))"
    .end annotation

    .prologue
    .line 893
    invoke-static/range {p1 .. p1}, Landroid/media/MediaScanner;->ajc$get$mMediaProvider(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Landroid/media/MediaScanner;->ajc$get$mPackageName(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Landroid/media/MediaScanner;->ajc$get$mFilesUri(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v4

    const-string v6, "_data is null"

    const/4 v11, 0x0

    invoke-interface {v2, v3, v4, v6, v11}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 896
    move-object/from16 v0, p2

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_51

    const/4 v2, 0x0

    aget-object v2, p2, v2

    const-string v3, "/storage/external_SD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 897
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 898
    .local v5, "values":Landroid/content/ContentValues;
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "131073"

    aput-object v3, v7, v2

    .line 899
    .local v7, "whereArgs":[Ljava/lang/String;
    const-string v2, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 900
    invoke-static/range {p1 .. p1}, Landroid/media/MediaScanner;->ajc$get$mMediaProvider(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Landroid/media/MediaScanner;->ajc$get$mPackageName(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Landroid/media/MediaScanner;->ajc$get$mFilesUri(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v4

    const-string v6, "storage_id=?"

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 903
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v7    # "whereArgs":[Ljava/lang/String;
    :cond_51
    invoke-static {}, Lcom/lge/media/MediaScannerEx$MethodOverride;->ajc$inlineAccessFieldGet$com_lge_media_MediaScannerEx$MethodOverride$com_lge_media_MediaScannerEx$settingFinished()Z

    move-result v2

    if-nez v2, :cond_8c

    invoke-static/range {p1 .. p2}, Lcom/lge/media/MediaScannerEx$MethodOverride;->ajc$inlineAccessMethod$com_lge_media_MediaScannerEx$MethodOverride$com_lge_media_MediaScannerEx$isDefaultSoundPathScanning(Lcom/lge/media/MediaScannerEx;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 904
    invoke-static/range {p1 .. p1}, Lcom/lge/media/MediaScannerEx$MethodOverride;->ajc$inlineAccessFieldGet$com_lge_media_MediaScannerEx$MethodOverride$com_lge_media_MediaScannerEx$mRINGTONE_CHECK(Lcom/lge/media/MediaScannerEx;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/lge/media/MediaScannerEx$MethodOverride;->ajc$inlineAccessMethod$com_lge_media_MediaScannerEx$MethodOverride$com_lge_media_MediaScannerEx$isDefaultSoundSettingDB(Lcom/lge/media/MediaScannerEx;I)Z

    move-result v10

    .line 905
    .local v10, "isSetRingtoneSetting":Z
    invoke-static/range {p1 .. p1}, Lcom/lge/media/MediaScannerEx$MethodOverride;->ajc$inlineAccessFieldGet$com_lge_media_MediaScannerEx$MethodOverride$com_lge_media_MediaScannerEx$mNOTIFICAION_CHECK(Lcom/lge/media/MediaScannerEx;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/lge/media/MediaScannerEx$MethodOverride;->ajc$inlineAccessMethod$com_lge_media_MediaScannerEx$MethodOverride$com_lge_media_MediaScannerEx$isDefaultSoundSettingDB(Lcom/lge/media/MediaScannerEx;I)Z

    move-result v9

    .line 906
    .local v9, "isSetNotificationSetting":Z
    invoke-static/range {p1 .. p1}, Lcom/lge/media/MediaScannerEx$MethodOverride;->ajc$inlineAccessFieldGet$com_lge_media_MediaScannerEx$MethodOverride$com_lge_media_MediaScannerEx$mALARM_CHECK(Lcom/lge/media/MediaScannerEx;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/lge/media/MediaScannerEx$MethodOverride;->ajc$inlineAccessMethod$com_lge_media_MediaScannerEx$MethodOverride$com_lge_media_MediaScannerEx$isDefaultSoundSettingDB(Lcom/lge/media/MediaScannerEx;I)Z

    move-result v8

    .line 907
    .local v8, "isSetAlarmSetting":Z
    if-eqz v10, :cond_96

    if-eqz v9, :cond_96

    if-eqz v8, :cond_96

    .line 908
    const-string v2, "MediaScannerEx"

    const-string v3, "[MediaScanner] defaultSoundSettingCheckandSetting Finished"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/lge/media/MediaScannerEx$MethodOverride;->ajc$inlineAccessFieldSet$com_lge_media_MediaScannerEx$MethodOverride$com_lge_media_MediaScannerEx$settingFinished(Z)V

    .line 914
    .end local v8    # "isSetAlarmSetting":Z
    .end local v9    # "isSetNotificationSetting":Z
    .end local v10    # "isSetRingtoneSetting":Z
    :cond_8c
    :goto_8c
    invoke-static/range {p1 .. p3}, Lcom/lge/media/MediaScannerEx$MethodOverride;->ajc$around$com_lge_media_MediaScannerEx$MethodOverride$6$f3703bd2proceed(Lcom/lge/media/MediaScannerEx;[Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)V

    .line 915
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/lge/media/MediaScannerEx$InterTypeDeclarations;->ajc$interFieldSetDispatch$com_lge_media_MediaScannerEx$InterTypeDeclarations$com_lge_media_MediaScannerEx$mFileCache(Lcom/lge/media/MediaScannerEx;Ljava/util/HashMap;)V

    .line 916
    return-void

    .line 911
    .restart local v8    # "isSetAlarmSetting":Z
    .restart local v9    # "isSetNotificationSetting":Z
    .restart local v10    # "isSetRingtoneSetting":Z
    :cond_96
    move-object/from16 v0, p1

    invoke-static {v0, v10, v9, v8}, Lcom/lge/media/MediaScannerEx$MethodOverride;->ajc$inlineAccessMethod$com_lge_media_MediaScannerEx$MethodOverride$com_lge_media_MediaScannerEx$setDefaultSound(Lcom/lge/media/MediaScannerEx;ZZZ)V

    goto :goto_8c
.end method

.method public ajc$around$com_lge_media_MediaScannerEx$MethodOverride$7$1a840fa1(Lcom/lge/media/MediaScannerEx;Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaScanner$FileEntry;
    .registers 8
    .param p1, "obj"    # Lcom/lge/media/MediaScannerEx;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,path,ajc$aroundClosure"
        value = "(this(obj) && (args(path) && execution(MediaScanner.FileEntry MediaScanner.makeEntryFor(String))))"
    .end annotation

    .prologue
    .line 922
    move-object v1, p2

    .line 923
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 925
    .local v2, "lowpath":Ljava/lang/String;
    invoke-static {p1}, Landroid/media/MediaScanner;->ajc$get$mCaseInsensitivePaths(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 926
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 928
    :cond_f
    const-string v3, "/dcim/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_31

    const-string v3, "/my_sounds/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_31

    .line 929
    invoke-static {p1}, Lcom/lge/media/MediaScannerEx$InterTypeDeclarations;->ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$InterTypeDeclarations$android_media_MediaScanner$mExtStorageRingtonesPath(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_31

    const-string v3, "/pictures/screenshots/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_36

    .line 930
    :cond_31
    invoke-static {p1, p2, p3}, Lcom/lge/media/MediaScannerEx$MethodOverride;->ajc$around$com_lge_media_MediaScannerEx$MethodOverride$7$1a840fa1proceed(Lcom/lge/media/MediaScannerEx;Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaScanner$FileEntry;

    move-result-object v0

    .line 934
    :goto_35
    return-object v0

    .line 932
    :cond_36
    invoke-static {p1}, Lcom/lge/media/MediaScannerEx$InterTypeDeclarations;->ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$InterTypeDeclarations$com_lge_media_MediaScannerEx$mFileCache(Lcom/lge/media/MediaScannerEx;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaScanner$FileEntry;

    .local v0, "entry":Landroid/media/MediaScanner$FileEntry;
    goto :goto_35
.end method
