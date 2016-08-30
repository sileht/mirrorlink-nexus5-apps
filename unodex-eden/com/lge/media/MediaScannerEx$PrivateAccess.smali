.class public Lcom/lge/media/MediaScannerEx$PrivateAccess;
.super Ljava/lang/Object;
.source "MediaScannerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/media/MediaScannerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrivateAccess"
.end annotation

.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/media/MediaScannerEx$PrivateAccess;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 720
    :try_start_0
    invoke-static {}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/media/MediaScannerEx$PrivateAccess;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_media_MediaScannerEx$PrivateAccess$1$bb06d9a9proceed(Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 4
    .param p0, "this"    # Lcom/lge/media/MediaScannerEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 732
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_media_MediaScannerEx$PrivateAccess$2$b1ff5fb2proceed(Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 4
    .param p0, "this"    # Lcom/lge/media/MediaScannerEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 736
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_media_MediaScannerEx$PrivateAccess$3$4faf3852proceed(Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 4
    .param p0, "this"    # Lcom/lge/media/MediaScannerEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 740
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_media_MediaScannerEx$PrivateAccess$4$1fbc0230proceed(Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 4
    .param p0, "this"    # Lcom/lge/media/MediaScannerEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 744
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_media_MediaScannerEx$PrivateAccess$5$265158c4proceed(Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/content/IContentProvider;
    .registers 4
    .param p0, "this"    # Lcom/lge/media/MediaScannerEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 748
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IContentProvider;

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_media_MediaScannerEx$PrivateAccess$6$fe93f450proceed(Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;
    .registers 4
    .param p0, "this"    # Lcom/lge/media/MediaScannerEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 752
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_media_MediaScannerEx$PrivateAccess$7$4311d24fproceed(Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;
    .registers 4
    .param p0, "this"    # Lcom/lge/media/MediaScannerEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 756
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_media_MediaScannerEx$PrivateAccess$8$7812c1e9proceed(Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 4
    .param p0, "this"    # Lcom/lge/media/MediaScannerEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 760
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_media_MediaScannerEx$PrivateAccess$9$16c3fc8proceed(Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 4
    .param p0, "this"    # Lcom/lge/media/MediaScannerEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 764
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

.method public static synthetic ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$mAudioUri(Lcom/lge/media/MediaScannerEx;)Landroid/net/Uri;
    .registers 2

    invoke-static {p0}, Lcom/lge/media/MediaScannerEx;->ajc$get$mAudioUri(Lcom/lge/media/MediaScannerEx;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$mDefaultAlarmAlertFilename(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/lge/media/MediaScannerEx;->ajc$get$mDefaultAlarmAlertFilename(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$mDefaultNotificationFilename(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/lge/media/MediaScannerEx;->ajc$get$mDefaultNotificationFilename(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$mDefaultRingtoneFilename(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/lge/media/MediaScannerEx;->ajc$get$mDefaultRingtoneFilename(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$mFilesUri(Lcom/lge/media/MediaScannerEx;)Landroid/net/Uri;
    .registers 2

    invoke-static {p0}, Lcom/lge/media/MediaScannerEx;->ajc$get$mFilesUri(Lcom/lge/media/MediaScannerEx;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$mMediaProvider(Lcom/lge/media/MediaScannerEx;)Landroid/content/IContentProvider;
    .registers 2

    invoke-static {p0}, Lcom/lge/media/MediaScannerEx;->ajc$get$mMediaProvider(Lcom/lge/media/MediaScannerEx;)Landroid/content/IContentProvider;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$mPackageName(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/lge/media/MediaScannerEx;->ajc$get$mPackageName(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ajc$interFieldInit$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$mAudioUri(Lcom/lge/media/MediaScannerEx;)V
    .registers 1

    .prologue
    .line 726
    return-void
.end method

.method public static ajc$interFieldInit$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$mDefaultAlarmAlertFilename(Lcom/lge/media/MediaScannerEx;)V
    .registers 1

    .prologue
    .line 723
    return-void
.end method

.method public static ajc$interFieldInit$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$mDefaultNotificationFilename(Lcom/lge/media/MediaScannerEx;)V
    .registers 1

    .prologue
    .line 722
    return-void
.end method

.method public static ajc$interFieldInit$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$mDefaultRingtoneFilename(Lcom/lge/media/MediaScannerEx;)V
    .registers 1

    .prologue
    .line 721
    return-void
.end method

.method public static ajc$interFieldInit$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$mFilesUri(Lcom/lge/media/MediaScannerEx;)V
    .registers 1

    .prologue
    .line 727
    return-void
.end method

.method public static ajc$interFieldInit$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$mMediaProvider(Lcom/lge/media/MediaScannerEx;)V
    .registers 1

    .prologue
    .line 725
    return-void
.end method

.method public static ajc$interFieldInit$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$mPackageName(Lcom/lge/media/MediaScannerEx;)V
    .registers 1

    .prologue
    .line 724
    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$mAudioUri(Lcom/lge/media/MediaScannerEx;Landroid/net/Uri;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/lge/media/MediaScannerEx;->ajc$set$mAudioUri(Lcom/lge/media/MediaScannerEx;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$mDefaultAlarmAlertFilename(Lcom/lge/media/MediaScannerEx;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/lge/media/MediaScannerEx;->ajc$set$mDefaultAlarmAlertFilename(Lcom/lge/media/MediaScannerEx;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$mDefaultNotificationFilename(Lcom/lge/media/MediaScannerEx;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/lge/media/MediaScannerEx;->ajc$set$mDefaultNotificationFilename(Lcom/lge/media/MediaScannerEx;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$mDefaultRingtoneFilename(Lcom/lge/media/MediaScannerEx;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/lge/media/MediaScannerEx;->ajc$set$mDefaultRingtoneFilename(Lcom/lge/media/MediaScannerEx;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$mFilesUri(Lcom/lge/media/MediaScannerEx;Landroid/net/Uri;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/lge/media/MediaScannerEx;->ajc$set$mFilesUri(Lcom/lge/media/MediaScannerEx;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$mMediaProvider(Lcom/lge/media/MediaScannerEx;Landroid/content/IContentProvider;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/lge/media/MediaScannerEx;->ajc$set$mMediaProvider(Lcom/lge/media/MediaScannerEx;Landroid/content/IContentProvider;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$mPackageName(Lcom/lge/media/MediaScannerEx;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/lge/media/MediaScannerEx;->ajc$set$mPackageName(Lcom/lge/media/MediaScannerEx;Ljava/lang/String;)V

    return-void
.end method

.method public static ajc$interMethod$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$isDrmEnabled(Lcom/lge/media/MediaScannerEx;)Z
    .registers 4
    .param p0, "ajc$this_"    # Lcom/lge/media/MediaScannerEx;

    .prologue
    .line 730
    invoke-static {}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->aspectOf()Lcom/lge/media/MediaScannerEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    new-instance v2, Lcom/lge/media/MediaScannerEx$PrivateAccess$AjcClosure3;

    invoke-direct {v2, v1}, Lcom/lge/media/MediaScannerEx$PrivateAccess$AjcClosure3;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v2}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->ajc$around$com_lge_media_MediaScannerEx$PrivateAccess$9$16c3fc8(Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    return v0
.end method

.method public static ajc$interMethod$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$setDefaultRingtoneFileNames(Lcom/lge/media/MediaScannerEx;)V
    .registers 4
    .param p0, "ajc$this_"    # Lcom/lge/media/MediaScannerEx;

    .prologue
    .line 729
    invoke-static {}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->aspectOf()Lcom/lge/media/MediaScannerEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    new-instance v2, Lcom/lge/media/MediaScannerEx$PrivateAccess$AjcClosure1;

    invoke-direct {v2, v1}, Lcom/lge/media/MediaScannerEx$PrivateAccess$AjcClosure1;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v2}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->ajc$around$com_lge_media_MediaScannerEx$PrivateAccess$8$7812c1e9(Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$isDrmEnabled(Lcom/lge/media/MediaScannerEx;)Z
    .registers 2
    .param p0, "ajc$this_"    # Lcom/lge/media/MediaScannerEx;

    .prologue
    invoke-virtual {p0}, Lcom/lge/media/MediaScannerEx;->ajc$interMethodDispatch2$com_lge_media_MediaScannerEx$isDrmEnabled()Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$setDefaultRingtoneFileNames(Lcom/lge/media/MediaScannerEx;)V
    .registers 1
    .param p0, "ajc$this_"    # Lcom/lge/media/MediaScannerEx;

    .prologue
    invoke-virtual {p0}, Lcom/lge/media/MediaScannerEx;->ajc$interMethodDispatch2$com_lge_media_MediaScannerEx$setDefaultRingtoneFileNames()V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/media/MediaScannerEx$PrivateAccess;

    invoke-direct {v0}, Lcom/lge/media/MediaScannerEx$PrivateAccess;-><init>()V

    sput-object v0, Lcom/lge/media/MediaScannerEx$PrivateAccess;->ajc$perSingletonInstance:Lcom/lge/media/MediaScannerEx$PrivateAccess;

    return-void
.end method

.method public static aspectOf()Lcom/lge/media/MediaScannerEx$PrivateAccess;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/media/MediaScannerEx$PrivateAccess;->ajc$perSingletonInstance:Lcom/lge/media/MediaScannerEx$PrivateAccess;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_media_MediaScannerEx$PrivateAccess"

    sget-object v2, Lcom/lge/media/MediaScannerEx$PrivateAccess;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/media/MediaScannerEx$PrivateAccess;->ajc$perSingletonInstance:Lcom/lge/media/MediaScannerEx$PrivateAccess;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/media/MediaScannerEx$PrivateAccess;->ajc$perSingletonInstance:Lcom/lge/media/MediaScannerEx$PrivateAccess;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static final isDrmEnabled_aroundBody2(Lcom/lge/media/MediaScannerEx;)Z
    .registers 2
    .param p0, "ajc$this_"    # Lcom/lge/media/MediaScannerEx;

    .prologue
    .line 730
    const/4 v0, 0x0

    return v0
.end method

.method static final setDefaultRingtoneFileNames_aroundBody0(Lcom/lge/media/MediaScannerEx;)V
    .registers 1

    .prologue
    .line 729
    return-void
.end method


# virtual methods
.method public ajc$around$com_lge_media_MediaScannerEx$PrivateAccess$1$bb06d9a9(Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 4
    .param p1, "obj"    # Lcom/lge/media/MediaScannerEx;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(target(obj) && get(private final String MediaScannerEx.mDefaultRingtoneFilename))"
    .end annotation

    .prologue
    .line 733
    invoke-static {p1}, Landroid/media/MediaScanner;->ajc$get$mDefaultRingtoneFilename(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$com_lge_media_MediaScannerEx$PrivateAccess$2$b1ff5fb2(Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 4
    .param p1, "obj"    # Lcom/lge/media/MediaScannerEx;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(target(obj) && get(private final String MediaScannerEx.mDefaultNotificationFilename))"
    .end annotation

    .prologue
    .line 737
    invoke-static {p1}, Landroid/media/MediaScanner;->ajc$get$mDefaultNotificationFilename(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$com_lge_media_MediaScannerEx$PrivateAccess$3$4faf3852(Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 4
    .param p1, "obj"    # Lcom/lge/media/MediaScannerEx;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(target(obj) && get(private final String MediaScannerEx.mDefaultAlarmAlertFilename))"
    .end annotation

    .prologue
    .line 741
    invoke-static {p1}, Landroid/media/MediaScanner;->ajc$get$mDefaultAlarmAlertFilename(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$com_lge_media_MediaScannerEx$PrivateAccess$4$1fbc0230(Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 4
    .param p1, "obj"    # Lcom/lge/media/MediaScannerEx;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(target(obj) && get(private final String MediaScannerEx.mPackageName))"
    .end annotation

    .prologue
    .line 745
    invoke-static {p1}, Landroid/media/MediaScanner;->ajc$get$mPackageName(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$com_lge_media_MediaScannerEx$PrivateAccess$5$265158c4(Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/content/IContentProvider;
    .registers 4
    .param p1, "obj"    # Lcom/lge/media/MediaScannerEx;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(target(obj) && get(private final IContentProvider MediaScannerEx.mMediaProvider))"
    .end annotation

    .prologue
    .line 749
    invoke-static {p1}, Landroid/media/MediaScanner;->ajc$get$mMediaProvider(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$com_lge_media_MediaScannerEx$PrivateAccess$6$fe93f450(Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;
    .registers 4
    .param p1, "obj"    # Lcom/lge/media/MediaScannerEx;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(target(obj) && get(private final Uri MediaScannerEx.mAudioUri))"
    .end annotation

    .prologue
    .line 753
    invoke-static {p1}, Landroid/media/MediaScanner;->ajc$get$mAudioUri(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$com_lge_media_MediaScannerEx$PrivateAccess$7$4311d24f(Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;
    .registers 4
    .param p1, "obj"    # Lcom/lge/media/MediaScannerEx;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(target(obj) && get(private final Uri MediaScannerEx.mFilesUri))"
    .end annotation

    .prologue
    .line 757
    invoke-static {p1}, Landroid/media/MediaScanner;->ajc$get$mFilesUri(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$com_lge_media_MediaScannerEx$PrivateAccess$8$7812c1e9(Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 3
    .param p1, "obj"    # Lcom/lge/media/MediaScannerEx;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(target(obj) && execution(private void MediaScannerEx.setDefaultRingtoneFileNames()))"
    .end annotation

    .prologue
    .line 761
    invoke-virtual {p1}, Landroid/media/MediaScanner;->ajc$privMethod$com_lge_media_MediaScannerEx$PrivateAccess$android_media_MediaScanner$setDefaultRingtoneFileNames()V

    .line 762
    return-void
.end method

.method public ajc$around$com_lge_media_MediaScannerEx$PrivateAccess$9$16c3fc8(Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 4
    .param p1, "obj"    # Lcom/lge/media/MediaScannerEx;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(target(obj) && execution(private boolean MediaScannerEx.isDrmEnabled()))"
    .end annotation

    .prologue
    .line 765
    invoke-virtual {p1}, Landroid/media/MediaScanner;->ajc$privMethod$com_lge_media_MediaScannerEx$PrivateAccess$android_media_MediaScanner$isDrmEnabled()Z

    move-result v0

    return v0
.end method
