.class public Lcom/lge/media/MediaScannerEx;
.super Landroid/media/MediaScanner;
.source "MediaScannerEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/media/MediaScannerEx$InterTypeDeclarations;,
        Lcom/lge/media/MediaScannerEx$MethodOverride;,
        Lcom/lge/media/MediaScannerEx$MyMediaScannerClientAO;,
        Lcom/lge/media/MediaScannerEx$PrivateAccess;
    }
.end annotation


# static fields
.field static final CAMERA_DIR:Ljava/lang/String; = "/dcim/"

.field static final EXTERNAL_STORAGE_SDCARD:Ljava/lang/String; = "/storage/external_SD"

.field static final EXTERNAL_STORAGE_SDCARD_ID:Ljava/lang/String; = "131073"

.field static LGE_PRIVATE_LOG:Z = false

.field static final SCREENSHOT_DIR:Ljava/lang/String; = "/pictures/screenshots/"

.field static final TAG:Ljava/lang/String; = "MediaScannerEx"

.field static final VOICERECORDING_DIR:Ljava/lang/String; = "/my_sounds/"

.field static settingFinished:Z


# instance fields
.field final mALARM_CHECK:I

.field private mAudioUri:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mDefaultAlarmAlertFilename:Ljava/lang/String;

.field private mDefaultNotificationFilename:Ljava/lang/String;

.field private mDefaultRingtoneFilename:Ljava/lang/String;

.field private mDefaultTimerAlertFilename:Ljava/lang/String;

.field private mFileCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaScanner$FileEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFilesUri:Landroid/net/Uri;

.field mIsScanDir:Z

.field private mMediaProvider:Landroid/content/IContentProvider;

.field final mNOTIFICAION_CHECK:I

.field private mPackageName:Ljava/lang/String;

.field final mRINGTONE_CHECK:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/media/MediaScannerEx;->settingFinished:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0, p1}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->ajc$interFieldInit$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$mDefaultRingtoneFilename(Lcom/lge/media/MediaScannerEx;)V

    invoke-static {p0}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->ajc$interFieldInit$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$mDefaultNotificationFilename(Lcom/lge/media/MediaScannerEx;)V

    invoke-static {p0}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->ajc$interFieldInit$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$mDefaultAlarmAlertFilename(Lcom/lge/media/MediaScannerEx;)V

    invoke-static {p0}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->ajc$interFieldInit$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$mPackageName(Lcom/lge/media/MediaScannerEx;)V

    invoke-static {p0}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->ajc$interFieldInit$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$mMediaProvider(Lcom/lge/media/MediaScannerEx;)V

    invoke-static {p0}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->ajc$interFieldInit$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$mAudioUri(Lcom/lge/media/MediaScannerEx;)V

    invoke-static {p0}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->ajc$interFieldInit$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$mFilesUri(Lcom/lge/media/MediaScannerEx;)V

    invoke-static {p0}, Lcom/lge/media/MediaScannerEx$InterTypeDeclarations;->ajc$interFieldInit$com_lge_media_MediaScannerEx$InterTypeDeclarations$com_lge_media_MediaScannerEx$mFileCache(Lcom/lge/media/MediaScannerEx;)V

    invoke-static {p0}, Lcom/lge/media/MediaScannerEx$InterTypeDeclarations;->ajc$interFieldInit$com_lge_media_MediaScannerEx$InterTypeDeclarations$com_lge_media_MediaScannerEx$mDefaultTimerAlertFilename(Lcom/lge/media/MediaScannerEx;)V

    .line 68
    iput-boolean v2, p0, Lcom/lge/media/MediaScannerEx;->mIsScanDir:Z

    .line 126
    iput v2, p0, Lcom/lge/media/MediaScannerEx;->mRINGTONE_CHECK:I

    .line 127
    iput v3, p0, Lcom/lge/media/MediaScannerEx;->mNOTIFICAION_CHECK:I

    .line 128
    const/4 v1, 0x2

    iput v1, p0, Lcom/lge/media/MediaScannerEx;->mALARM_CHECK:I

    .line 78
    iput-object p1, p0, Lcom/lge/media/MediaScannerEx;->mContext:Landroid/content/Context;

    .line 80
    const-string v1, "lge_private_log_preferences"

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 81
    .local v0, "lge_private_log_prefs":Landroid/content/SharedPreferences;
    const-string v1, "enabled_lge_private_log"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/lge/media/MediaScannerEx;->LGE_PRIVATE_LOG:Z

    .line 83
    invoke-static {p0}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->ajc$interMethodDispatch1$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$setDefaultRingtoneFileNames(Lcom/lge/media/MediaScannerEx;)V

    .line 84
    return-void
.end method

.method public static ajc$get$mAudioUri(Lcom/lge/media/MediaScannerEx;)Landroid/net/Uri;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/lge/media/MediaScannerEx;->mAudioUri:Landroid/net/Uri;

    return-object v0
.end method

.method public static ajc$get$mDefaultAlarmAlertFilename(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/lge/media/MediaScannerEx;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    return-object v0
.end method

.method public static ajc$get$mDefaultNotificationFilename(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/lge/media/MediaScannerEx;->mDefaultNotificationFilename:Ljava/lang/String;

    return-object v0
.end method

.method public static ajc$get$mDefaultRingtoneFilename(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/lge/media/MediaScannerEx;->mDefaultRingtoneFilename:Ljava/lang/String;

    return-object v0
.end method

.method public static ajc$get$mDefaultTimerAlertFilename(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/lge/media/MediaScannerEx;->mDefaultTimerAlertFilename:Ljava/lang/String;

    return-object v0
.end method

.method public static ajc$get$mFileCache(Lcom/lge/media/MediaScannerEx;)Ljava/util/HashMap;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/lge/media/MediaScannerEx;->mFileCache:Ljava/util/HashMap;

    return-object v0
.end method

.method public static ajc$get$mFilesUri(Lcom/lge/media/MediaScannerEx;)Landroid/net/Uri;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/lge/media/MediaScannerEx;->mFilesUri:Landroid/net/Uri;

    return-object v0
.end method

.method public static ajc$get$mMediaProvider(Lcom/lge/media/MediaScannerEx;)Landroid/content/IContentProvider;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/lge/media/MediaScannerEx;->mMediaProvider:Landroid/content/IContentProvider;

    return-object v0
.end method

.method public static ajc$get$mPackageName(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/lge/media/MediaScannerEx;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public static ajc$set$mAudioUri(Lcom/lge/media/MediaScannerEx;Landroid/net/Uri;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/media/MediaScannerEx;->mAudioUri:Landroid/net/Uri;

    return-void
.end method

.method public static ajc$set$mDefaultAlarmAlertFilename(Lcom/lge/media/MediaScannerEx;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/media/MediaScannerEx;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    return-void
.end method

.method public static ajc$set$mDefaultNotificationFilename(Lcom/lge/media/MediaScannerEx;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/media/MediaScannerEx;->mDefaultNotificationFilename:Ljava/lang/String;

    return-void
.end method

.method public static ajc$set$mDefaultRingtoneFilename(Lcom/lge/media/MediaScannerEx;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/media/MediaScannerEx;->mDefaultRingtoneFilename:Ljava/lang/String;

    return-void
.end method

.method public static ajc$set$mDefaultTimerAlertFilename(Lcom/lge/media/MediaScannerEx;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/media/MediaScannerEx;->mDefaultTimerAlertFilename:Ljava/lang/String;

    return-void
.end method

.method public static ajc$set$mFileCache(Lcom/lge/media/MediaScannerEx;Ljava/util/HashMap;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/media/MediaScannerEx;->mFileCache:Ljava/util/HashMap;

    return-void
.end method

.method public static ajc$set$mFilesUri(Lcom/lge/media/MediaScannerEx;Landroid/net/Uri;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/media/MediaScannerEx;->mFilesUri:Landroid/net/Uri;

    return-void
.end method

.method public static ajc$set$mMediaProvider(Lcom/lge/media/MediaScannerEx;Landroid/content/IContentProvider;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/media/MediaScannerEx;->mMediaProvider:Landroid/content/IContentProvider;

    return-void
.end method

.method public static ajc$set$mPackageName(Lcom/lge/media/MediaScannerEx;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/media/MediaScannerEx;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method private static final mAudioUri_aroundBody28(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;)Landroid/net/Uri;
    .registers 3

    .prologue
    .line 216
    invoke-static {p1}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$mAudioUri(Lcom/lge/media/MediaScannerEx;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static final mAudioUri_aroundBody29$advice(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx$PrivateAccess;Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;
    .registers 6
    .param p0, "ajc$this"    # Lcom/lge/media/MediaScannerEx;
    .param p1, "target"    # Lcom/lge/media/MediaScannerEx;
    .param p2, "ajc$aspectInstance"    # Lcom/lge/media/MediaScannerEx$PrivateAccess;
    .param p3, "obj"    # Lcom/lge/media/MediaScannerEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 753
    invoke-static {p3}, Landroid/media/MediaScanner;->ajc$get$mAudioUri(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static final mDefaultAlarmAlertFilename_aroundBody18(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 194
    invoke-static {p1}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$mDefaultAlarmAlertFilename(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final mDefaultAlarmAlertFilename_aroundBody19$advice(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx$PrivateAccess;Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 6
    .param p0, "ajc$this"    # Lcom/lge/media/MediaScannerEx;
    .param p1, "target"    # Lcom/lge/media/MediaScannerEx;
    .param p2, "ajc$aspectInstance"    # Lcom/lge/media/MediaScannerEx$PrivateAccess;
    .param p3, "obj"    # Lcom/lge/media/MediaScannerEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 741
    invoke-static {p3}, Landroid/media/MediaScanner;->ajc$get$mDefaultAlarmAlertFilename(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final mDefaultAlarmAlertFilename_aroundBody20(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 197
    invoke-static {p1}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$mDefaultAlarmAlertFilename(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final mDefaultAlarmAlertFilename_aroundBody21$advice(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx$PrivateAccess;Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 6
    .param p0, "ajc$this"    # Lcom/lge/media/MediaScannerEx;
    .param p1, "target"    # Lcom/lge/media/MediaScannerEx;
    .param p2, "ajc$aspectInstance"    # Lcom/lge/media/MediaScannerEx$PrivateAccess;
    .param p3, "obj"    # Lcom/lge/media/MediaScannerEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 741
    invoke-static {p3}, Landroid/media/MediaScanner;->ajc$get$mDefaultAlarmAlertFilename(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final mDefaultNotificationFilename_aroundBody10(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 186
    invoke-static {p1}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$mDefaultNotificationFilename(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final mDefaultNotificationFilename_aroundBody11$advice(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx$PrivateAccess;Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 6
    .param p0, "ajc$this"    # Lcom/lge/media/MediaScannerEx;
    .param p1, "target"    # Lcom/lge/media/MediaScannerEx;
    .param p2, "ajc$aspectInstance"    # Lcom/lge/media/MediaScannerEx$PrivateAccess;
    .param p3, "obj"    # Lcom/lge/media/MediaScannerEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 737
    invoke-static {p3}, Landroid/media/MediaScanner;->ajc$get$mDefaultNotificationFilename(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final mDefaultNotificationFilename_aroundBody12(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 188
    invoke-static {p1}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$mDefaultNotificationFilename(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final mDefaultNotificationFilename_aroundBody13$advice(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx$PrivateAccess;Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 6
    .param p0, "ajc$this"    # Lcom/lge/media/MediaScannerEx;
    .param p1, "target"    # Lcom/lge/media/MediaScannerEx;
    .param p2, "ajc$aspectInstance"    # Lcom/lge/media/MediaScannerEx$PrivateAccess;
    .param p3, "obj"    # Lcom/lge/media/MediaScannerEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 737
    invoke-static {p3}, Landroid/media/MediaScanner;->ajc$get$mDefaultNotificationFilename(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final mDefaultNotificationFilename_aroundBody14(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 189
    invoke-static {p1}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$mDefaultNotificationFilename(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final mDefaultNotificationFilename_aroundBody15$advice(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx$PrivateAccess;Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 6
    .param p0, "ajc$this"    # Lcom/lge/media/MediaScannerEx;
    .param p1, "target"    # Lcom/lge/media/MediaScannerEx;
    .param p2, "ajc$aspectInstance"    # Lcom/lge/media/MediaScannerEx$PrivateAccess;
    .param p3, "obj"    # Lcom/lge/media/MediaScannerEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 737
    invoke-static {p3}, Landroid/media/MediaScanner;->ajc$get$mDefaultNotificationFilename(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final mDefaultNotificationFilename_aroundBody16(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 190
    invoke-static {p1}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$mDefaultNotificationFilename(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final mDefaultNotificationFilename_aroundBody17$advice(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx$PrivateAccess;Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 6
    .param p0, "ajc$this"    # Lcom/lge/media/MediaScannerEx;
    .param p1, "target"    # Lcom/lge/media/MediaScannerEx;
    .param p2, "ajc$aspectInstance"    # Lcom/lge/media/MediaScannerEx$PrivateAccess;
    .param p3, "obj"    # Lcom/lge/media/MediaScannerEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 737
    invoke-static {p3}, Landroid/media/MediaScanner;->ajc$get$mDefaultNotificationFilename(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final mDefaultRingtoneFilename_aroundBody0(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 176
    invoke-static {p1}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$mDefaultRingtoneFilename(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final mDefaultRingtoneFilename_aroundBody1$advice(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx$PrivateAccess;Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 6
    .param p0, "ajc$this"    # Lcom/lge/media/MediaScannerEx;
    .param p1, "target"    # Lcom/lge/media/MediaScannerEx;
    .param p2, "ajc$aspectInstance"    # Lcom/lge/media/MediaScannerEx$PrivateAccess;
    .param p3, "obj"    # Lcom/lge/media/MediaScannerEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 733
    invoke-static {p3}, Landroid/media/MediaScanner;->ajc$get$mDefaultRingtoneFilename(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final mDefaultRingtoneFilename_aroundBody2(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 177
    invoke-static {p1}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$mDefaultRingtoneFilename(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final mDefaultRingtoneFilename_aroundBody3$advice(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx$PrivateAccess;Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 6
    .param p0, "ajc$this"    # Lcom/lge/media/MediaScannerEx;
    .param p1, "target"    # Lcom/lge/media/MediaScannerEx;
    .param p2, "ajc$aspectInstance"    # Lcom/lge/media/MediaScannerEx$PrivateAccess;
    .param p3, "obj"    # Lcom/lge/media/MediaScannerEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 733
    invoke-static {p3}, Landroid/media/MediaScanner;->ajc$get$mDefaultRingtoneFilename(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final mDefaultRingtoneFilename_aroundBody4(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 179
    invoke-static {p1}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$mDefaultRingtoneFilename(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final mDefaultRingtoneFilename_aroundBody5$advice(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx$PrivateAccess;Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 6
    .param p0, "ajc$this"    # Lcom/lge/media/MediaScannerEx;
    .param p1, "target"    # Lcom/lge/media/MediaScannerEx;
    .param p2, "ajc$aspectInstance"    # Lcom/lge/media/MediaScannerEx$PrivateAccess;
    .param p3, "obj"    # Lcom/lge/media/MediaScannerEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 733
    invoke-static {p3}, Landroid/media/MediaScanner;->ajc$get$mDefaultRingtoneFilename(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final mDefaultRingtoneFilename_aroundBody6(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 180
    invoke-static {p1}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$mDefaultRingtoneFilename(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final mDefaultRingtoneFilename_aroundBody7$advice(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx$PrivateAccess;Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 6
    .param p0, "ajc$this"    # Lcom/lge/media/MediaScannerEx;
    .param p1, "target"    # Lcom/lge/media/MediaScannerEx;
    .param p2, "ajc$aspectInstance"    # Lcom/lge/media/MediaScannerEx$PrivateAccess;
    .param p3, "obj"    # Lcom/lge/media/MediaScannerEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 733
    invoke-static {p3}, Landroid/media/MediaScanner;->ajc$get$mDefaultRingtoneFilename(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final mDefaultRingtoneFilename_aroundBody8(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 181
    invoke-static {p1}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$mDefaultRingtoneFilename(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final mDefaultRingtoneFilename_aroundBody9$advice(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx$PrivateAccess;Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 6
    .param p0, "ajc$this"    # Lcom/lge/media/MediaScannerEx;
    .param p1, "target"    # Lcom/lge/media/MediaScannerEx;
    .param p2, "ajc$aspectInstance"    # Lcom/lge/media/MediaScannerEx$PrivateAccess;
    .param p3, "obj"    # Lcom/lge/media/MediaScannerEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 733
    invoke-static {p3}, Landroid/media/MediaScanner;->ajc$get$mDefaultRingtoneFilename(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final mFilesUri_aroundBody26(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;)Landroid/net/Uri;
    .registers 3

    .prologue
    .line 210
    invoke-static {p1}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$mFilesUri(Lcom/lge/media/MediaScannerEx;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static final mFilesUri_aroundBody27$advice(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx$PrivateAccess;Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;
    .registers 6
    .param p0, "ajc$this"    # Lcom/lge/media/MediaScannerEx;
    .param p1, "target"    # Lcom/lge/media/MediaScannerEx;
    .param p2, "ajc$aspectInstance"    # Lcom/lge/media/MediaScannerEx$PrivateAccess;
    .param p3, "obj"    # Lcom/lge/media/MediaScannerEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 757
    invoke-static {p3}, Landroid/media/MediaScanner;->ajc$get$mFilesUri(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static final mMediaProvider_aroundBody22(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;)Landroid/content/IContentProvider;
    .registers 3

    .prologue
    .line 210
    invoke-static {p1}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$mMediaProvider(Lcom/lge/media/MediaScannerEx;)Landroid/content/IContentProvider;

    move-result-object v0

    return-object v0
.end method

.method private static final mMediaProvider_aroundBody23$advice(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx$PrivateAccess;Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/content/IContentProvider;
    .registers 6
    .param p0, "ajc$this"    # Lcom/lge/media/MediaScannerEx;
    .param p1, "target"    # Lcom/lge/media/MediaScannerEx;
    .param p2, "ajc$aspectInstance"    # Lcom/lge/media/MediaScannerEx$PrivateAccess;
    .param p3, "obj"    # Lcom/lge/media/MediaScannerEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 749
    invoke-static {p3}, Landroid/media/MediaScanner;->ajc$get$mMediaProvider(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v0

    return-object v0
.end method

.method private static final mPackageName_aroundBody24(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 210
    invoke-static {p1}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$mPackageName(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final mPackageName_aroundBody25$advice(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx$PrivateAccess;Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 6
    .param p0, "ajc$this"    # Lcom/lge/media/MediaScannerEx;
    .param p1, "target"    # Lcom/lge/media/MediaScannerEx;
    .param p2, "ajc$aspectInstance"    # Lcom/lge/media/MediaScannerEx$PrivateAccess;
    .param p3, "obj"    # Lcom/lge/media/MediaScannerEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 745
    invoke-static {p3}, Landroid/media/MediaScanner;->ajc$get$mPackageName(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setDefaultSoundSettingDB(Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "settingValue"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 204
    const-string v4, "_display_name=?"

    .line 205
    .local v4, "where":Ljava/lang/String;
    new-array v5, v1, [Ljava/lang/String;

    aput-object p1, v5, v0

    .line 206
    .local v5, "selectionArgs":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 208
    .local v8, "c":Landroid/database/Cursor;
    :try_start_9
    iget-object v0, p0, Lcom/lge/media/MediaScannerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 209
    .local v9, "existingDefaultValue":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 210
    invoke-static {}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->aspectOf()Lcom/lge/media/MediaScannerEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Lcom/lge/media/MediaScannerEx;->mMediaProvider_aroundBody23$advice(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx$PrivateAccess;Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/content/IContentProvider;

    move-result-object v0

    invoke-static {}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->aspectOf()Lcom/lge/media/MediaScannerEx$PrivateAccess;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, p0, v1, p0, v2}, Lcom/lge/media/MediaScannerEx;->mPackageName_aroundBody25$advice(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx$PrivateAccess;Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->aspectOf()Lcom/lge/media/MediaScannerEx$PrivateAccess;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, p0, v2, p0, v3}, Lcom/lge/media/MediaScannerEx;->mFilesUri_aroundBody27$advice(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx$PrivateAccess;Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v3, v6

    .line 211
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 210
    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 213
    if-eqz v8, :cond_87

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 214
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 215
    .local v10, "default_rowId":J
    iget-object v0, p0, Lcom/lge/media/MediaScannerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 216
    invoke-static {}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->aspectOf()Lcom/lge/media/MediaScannerEx$PrivateAccess;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, p0, v1, p0, v2}, Lcom/lge/media/MediaScannerEx;->mAudioUri_aroundBody29$advice(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx$PrivateAccess;Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-static {v0, p2, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 217
    const-string v0, "MediaScannerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MediaScanner] Set "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_87} :catch_8d
    .catchall {:try_start_9 .. :try_end_87} :catchall_a8

    .line 224
    .end local v10    # "default_rowId":J
    :cond_87
    if-eqz v8, :cond_8c

    .line 225
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 228
    .end local v9    # "existingDefaultValue":Ljava/lang/String;
    :cond_8c
    :goto_8c
    return-void

    .line 221
    :catch_8d
    move-exception v0

    :try_start_8e
    const-string v0, "MediaScannerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MediaScanner] not to set "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catchall {:try_start_8e .. :try_end_a2} :catchall_a8

    .line 224
    if-eqz v8, :cond_8c

    .line 225
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_8c

    .line 223
    :catchall_a8
    move-exception v0

    .line 224
    if-eqz v8, :cond_ae

    .line 225
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 227
    :cond_ae
    throw v0
.end method


# virtual methods
.method public ajc$interMethodDispatch2$com_lge_media_MediaScannerEx$isDrmEnabled()Z
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->ajc$interMethod$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$isDrmEnabled(Lcom/lge/media/MediaScannerEx;)Z

    move-result v0

    return v0
.end method

.method public ajc$interMethodDispatch2$com_lge_media_MediaScannerEx$setDefaultRingtoneFileNames()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->ajc$interMethod$com_lge_media_MediaScannerEx$PrivateAccess$com_lge_media_MediaScannerEx$setDefaultRingtoneFileNames(Lcom/lge/media/MediaScannerEx;)V

    return-void
.end method

.method isDefaultSoundPathScanning([Ljava/lang/String;)Z
    .registers 7
    .param p1, "directories"    # [Ljava/lang/String;

    .prologue
    .line 232
    const/4 v1, 0x0

    .line 233
    .local v1, "isDefaultSoundPath":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v2, p1

    if-lt v0, v2, :cond_6

    .line 239
    :goto_5
    return v1

    .line 234
    :cond_6
    aget-object v2, p1, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/media"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 235
    const/4 v1, 0x1

    .line 236
    goto :goto_5

    .line 233
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method isDefaultSoundSettingDB(I)Z
    .registers 11
    .param p1, "check"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 131
    const/4 v2, 0x0

    .line 132
    .local v2, "mItem_Count":I
    const/4 v3, 0x0

    .line 134
    .local v3, "settingsItem":[Ljava/lang/String;
    packed-switch p1, :pswitch_data_5e

    .line 163
    :goto_9
    const/4 v0, 0x0

    .line 164
    .local v0, "existingSetting":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-lt v1, v2, :cond_4c

    move v4, v5

    .line 170
    :cond_e
    return v4

    .line 136
    .end local v0    # "existingSetting":Ljava/lang/String;
    .end local v1    # "i":I
    :pswitch_f
    const/4 v2, 0x5

    .line 137
    new-array v3, v2, [Ljava/lang/String;

    .line 138
    const-string v6, "ringtone"

    aput-object v6, v3, v4

    .line 139
    sget-object v6, Landroid/provider/Settings$System;->DEFAULT_RINGTONE:Ljava/lang/String;

    aput-object v6, v3, v5

    .line 140
    const-string v6, "ringtone_videocall"

    aput-object v6, v3, v7

    .line 141
    const-string v6, "ringtone_sim2"

    aput-object v6, v3, v8

    .line 142
    const/4 v6, 0x4

    const-string v7, "ringtone_sim3"

    aput-object v7, v3, v6

    goto :goto_9

    .line 145
    :pswitch_28
    const/4 v2, 0x4

    .line 146
    new-array v3, v2, [Ljava/lang/String;

    .line 147
    const-string v6, "notification_sound"

    aput-object v6, v3, v4

    .line 148
    const-string v6, "notification_sound_sim2"

    aput-object v6, v3, v5

    .line 149
    const-string v6, "notification_sound_sim3"

    aput-object v6, v3, v7

    .line 150
    const-string v6, "notification_default"

    aput-object v6, v3, v8

    goto :goto_9

    .line 153
    :pswitch_3c
    const/4 v2, 0x3

    .line 154
    new-array v3, v2, [Ljava/lang/String;

    .line 155
    const-string v6, "alarm_alert"

    aput-object v6, v3, v4

    .line 156
    const-string v6, "alarm_default"

    aput-object v6, v3, v5

    .line 157
    const-string v6, "timer_alert"

    aput-object v6, v3, v7

    goto :goto_9

    .line 165
    .restart local v0    # "existingSetting":Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_4c
    iget-object v6, p0, Lcom/lge/media/MediaScannerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    aget-object v7, v3, v1

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_e

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 134
    nop

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_f
        :pswitch_28
        :pswitch_3c
    .end packed-switch
.end method

.method public scanDir([Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lcom/lge/media/MediaScannerEx$InterTypeDeclarations;->ajc$interMethod$com_lge_media_MediaScannerEx$InterTypeDeclarations$com_lge_media_MediaScannerEx$scanDir(Lcom/lge/media/MediaScannerEx;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public scanDirectories([Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "directories"    # [Ljava/lang/String;
    .param p2, "volumeName"    # Ljava/lang/String;

    .prologue
    .line 89
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-lt v0, v1, :cond_8

    .line 97
    invoke-super {p0, p1, p2}, Landroid/media/MediaScanner;->scanDirectories([Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void

    .line 90
    :cond_8
    sget-boolean v1, Lcom/lge/media/MediaScannerEx;->LGE_PRIVATE_LOG:Z

    if-eqz v1, :cond_2f

    .line 91
    const-string v1, "MediaScannerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MediaScanner] scanDirectories()["

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

    .line 89
    :goto_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 93
    :cond_2f
    const-string v1, "MediaScannerEx"

    const-string v2, "[MediaScanner] scanDirectories()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c
.end method

.method public scanMtpFile(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "volumeName"    # Ljava/lang/String;
    .param p3, "objectHandle"    # I
    .param p4, "format"    # I

    .prologue
    .line 116
    sget-boolean v0, Lcom/lge/media/MediaScannerEx;->LGE_PRIVATE_LOG:Z

    if-eqz v0, :cond_30

    .line 117
    const-string v0, "MediaScannerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MediaScanner] scanMtpFile() path = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", volumeName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", format = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_2c
    invoke-super {p0, p1, p2, p3, p4}, Landroid/media/MediaScanner;->scanMtpFile(Ljava/lang/String;Ljava/lang/String;II)V

    .line 123
    return-void

    .line 119
    :cond_30
    const-string v0, "MediaScannerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MediaScanner] scanMtpFile() volumeName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", format = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c
.end method

.method public scanSingleFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "volumeName"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 104
    sget-boolean v0, Lcom/lge/media/MediaScannerEx;->LGE_PRIVATE_LOG:Z

    if-eqz v0, :cond_27

    .line 105
    const-string v0, "MediaScannerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MediaScanner] scanSingleFile() path = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", volumeName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_22
    invoke-super {p0, p1, p2, p3}, Landroid/media/MediaScanner;->scanSingleFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 107
    :cond_27
    const-string v0, "MediaScannerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MediaScanner] scanSingleFile() volumeName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method setDefaultSound(ZZZ)V
    .registers 7
    .param p1, "isSetRingtoneSetting"    # Z
    .param p2, "isSetNotificationSetting"    # Z
    .param p3, "isSetAlarmSetting"    # Z

    .prologue
    const/4 v2, 0x0

    .line 175
    if-nez p1, :cond_4b

    .line 176
    invoke-static {}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->aspectOf()Lcom/lge/media/MediaScannerEx$PrivateAccess;

    move-result-object v0

    invoke-static {p0, p0, v0, p0, v2}, Lcom/lge/media/MediaScannerEx;->mDefaultRingtoneFilename_aroundBody1$advice(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx$PrivateAccess;Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ringtone"

    invoke-direct {p0, v0, v1}, Lcom/lge/media/MediaScannerEx;->setDefaultSoundSettingDB(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->aspectOf()Lcom/lge/media/MediaScannerEx$PrivateAccess;

    move-result-object v0

    invoke-static {p0, p0, v0, p0, v2}, Lcom/lge/media/MediaScannerEx;->mDefaultRingtoneFilename_aroundBody3$advice(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx$PrivateAccess;Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/lge/media/MediaScannerEx;->setDefaultSoundSettingDB(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->aspectOf()Lcom/lge/media/MediaScannerEx$PrivateAccess;

    move-result-object v0

    invoke-static {p0, p0, v0, p0, v2}, Lcom/lge/media/MediaScannerEx;->mDefaultRingtoneFilename_aroundBody5$advice(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx$PrivateAccess;Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ringtone_videocall"

    invoke-direct {p0, v0, v1}, Lcom/lge/media/MediaScannerEx;->setDefaultSoundSettingDB(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->aspectOf()Lcom/lge/media/MediaScannerEx$PrivateAccess;

    move-result-object v0

    invoke-static {p0, p0, v0, p0, v2}, Lcom/lge/media/MediaScannerEx;->mDefaultRingtoneFilename_aroundBody7$advice(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx$PrivateAccess;Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ringtone_sim2"

    invoke-direct {p0, v0, v1}, Lcom/lge/media/MediaScannerEx;->setDefaultSoundSettingDB(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->aspectOf()Lcom/lge/media/MediaScannerEx$PrivateAccess;

    move-result-object v0

    invoke-static {p0, p0, v0, p0, v2}, Lcom/lge/media/MediaScannerEx;->mDefaultRingtoneFilename_aroundBody9$advice(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx$PrivateAccess;Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ringtone_sim3"

    invoke-direct {p0, v0, v1}, Lcom/lge/media/MediaScannerEx;->setDefaultSoundSettingDB(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v0, "MediaScannerEx"

    const-string v1, "[MediaScanner] setDefaultSound Ringtone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_4b
    if-nez p2, :cond_88

    .line 186
    invoke-static {}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->aspectOf()Lcom/lge/media/MediaScannerEx$PrivateAccess;

    move-result-object v0

    invoke-static {p0, p0, v0, p0, v2}, Lcom/lge/media/MediaScannerEx;->mDefaultNotificationFilename_aroundBody11$advice(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx$PrivateAccess;Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "notification_sound"

    invoke-direct {p0, v0, v1}, Lcom/lge/media/MediaScannerEx;->setDefaultSoundSettingDB(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->aspectOf()Lcom/lge/media/MediaScannerEx$PrivateAccess;

    move-result-object v0

    invoke-static {p0, p0, v0, p0, v2}, Lcom/lge/media/MediaScannerEx;->mDefaultNotificationFilename_aroundBody13$advice(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx$PrivateAccess;Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "notification_sound_sim2"

    invoke-direct {p0, v0, v1}, Lcom/lge/media/MediaScannerEx;->setDefaultSoundSettingDB(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->aspectOf()Lcom/lge/media/MediaScannerEx$PrivateAccess;

    move-result-object v0

    invoke-static {p0, p0, v0, p0, v2}, Lcom/lge/media/MediaScannerEx;->mDefaultNotificationFilename_aroundBody15$advice(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx$PrivateAccess;Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "notification_sound_sim3"

    invoke-direct {p0, v0, v1}, Lcom/lge/media/MediaScannerEx;->setDefaultSoundSettingDB(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-static {}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->aspectOf()Lcom/lge/media/MediaScannerEx$PrivateAccess;

    move-result-object v0

    invoke-static {p0, p0, v0, p0, v2}, Lcom/lge/media/MediaScannerEx;->mDefaultNotificationFilename_aroundBody17$advice(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx$PrivateAccess;Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "notification_default"

    invoke-direct {p0, v0, v1}, Lcom/lge/media/MediaScannerEx;->setDefaultSoundSettingDB(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v0, "MediaScannerEx"

    const-string v1, "[MediaScanner] setDefaultSound Notificaion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_88
    if-nez p3, :cond_b4

    .line 194
    invoke-static {}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->aspectOf()Lcom/lge/media/MediaScannerEx$PrivateAccess;

    move-result-object v0

    invoke-static {p0, p0, v0, p0, v2}, Lcom/lge/media/MediaScannerEx;->mDefaultAlarmAlertFilename_aroundBody19$advice(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx$PrivateAccess;Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "alarm_alert"

    invoke-direct {p0, v0, v1}, Lcom/lge/media/MediaScannerEx;->setDefaultSoundSettingDB(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-static {p0}, Lcom/lge/media/MediaScannerEx$InterTypeDeclarations;->ajc$interFieldGetDispatch$com_lge_media_MediaScannerEx$InterTypeDeclarations$com_lge_media_MediaScannerEx$mDefaultTimerAlertFilename(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "timer_alert"

    invoke-direct {p0, v0, v1}, Lcom/lge/media/MediaScannerEx;->setDefaultSoundSettingDB(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-static {}, Lcom/lge/media/MediaScannerEx$PrivateAccess;->aspectOf()Lcom/lge/media/MediaScannerEx$PrivateAccess;

    move-result-object v0

    invoke-static {p0, p0, v0, p0, v2}, Lcom/lge/media/MediaScannerEx;->mDefaultAlarmAlertFilename_aroundBody21$advice(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx$PrivateAccess;Lcom/lge/media/MediaScannerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "alarm_default"

    invoke-direct {p0, v0, v1}, Lcom/lge/media/MediaScannerEx;->setDefaultSoundSettingDB(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v0, "MediaScannerEx"

    const-string v1, "[MediaScanner] setDefaultSound Alarm"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_b4
    return-void
.end method
