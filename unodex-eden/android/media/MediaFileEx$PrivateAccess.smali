.class public Landroid/media/MediaFileEx$PrivateAccess;
.super Ljava/lang/Object;
.source "MediaFileEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFileEx;
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

.field public static final synthetic ajc$perSingletonInstance:Landroid/media/MediaFileEx$PrivateAccess;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 193
    :try_start_0
    invoke-static {}, Landroid/media/MediaFileEx$PrivateAccess;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Landroid/media/MediaFileEx$PrivateAccess;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$android_media_MediaFileEx$PrivateAccess$1$908ab56cproceed(Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/util/HashMap;
    .registers 2
    .param p0, "this"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 200
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic ajc$around$android_media_MediaFileEx$PrivateAccess$2$4f6c7f50proceed(Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/util/HashMap;
    .registers 2
    .param p0, "this"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 205
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic ajc$around$android_media_MediaFileEx$PrivateAccess$3$696b3e08proceed(Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/util/HashMap;
    .registers 2
    .param p0, "this"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 210
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic ajc$around$android_media_MediaFileEx$PrivateAccess$4$51ee4532proceed(Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/util/HashMap;
    .registers 2
    .param p0, "this"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 215
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$android_media_MediaFileEx$PrivateAccess$android_media_MediaFileEx$sFileTypeMap()Ljava/util/HashMap;
    .registers 1

    invoke-static {}, Landroid/media/MediaFileEx;->ajc$get$sFileTypeMap()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$android_media_MediaFileEx$PrivateAccess$android_media_MediaFileEx$sFileTypeToFormatMap()Ljava/util/HashMap;
    .registers 1

    invoke-static {}, Landroid/media/MediaFileEx;->ajc$get$sFileTypeToFormatMap()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$android_media_MediaFileEx$PrivateAccess$android_media_MediaFileEx$sFormatToMimeTypeMap()Ljava/util/HashMap;
    .registers 1

    invoke-static {}, Landroid/media/MediaFileEx;->ajc$get$sFormatToMimeTypeMap()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$android_media_MediaFileEx$PrivateAccess$android_media_MediaFileEx$sMimeTypeToFormatMap()Ljava/util/HashMap;
    .registers 1

    invoke-static {}, Landroid/media/MediaFileEx;->ajc$get$sMimeTypeToFormatMap()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static ajc$interFieldInit$android_media_MediaFileEx$PrivateAccess$android_media_MediaFileEx$sFileTypeMap()V
    .registers 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 194
    return-void
.end method

.method public static ajc$interFieldInit$android_media_MediaFileEx$PrivateAccess$android_media_MediaFileEx$sFileTypeToFormatMap()V
    .registers 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 195
    return-void
.end method

.method public static ajc$interFieldInit$android_media_MediaFileEx$PrivateAccess$android_media_MediaFileEx$sFormatToMimeTypeMap()V
    .registers 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 197
    return-void
.end method

.method public static ajc$interFieldInit$android_media_MediaFileEx$PrivateAccess$android_media_MediaFileEx$sMimeTypeToFormatMap()V
    .registers 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 196
    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$android_media_MediaFileEx$PrivateAccess$android_media_MediaFileEx$sFileTypeMap(Ljava/util/HashMap;)V
    .registers 1

    invoke-static {p0}, Landroid/media/MediaFileEx;->ajc$set$sFileTypeMap(Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$android_media_MediaFileEx$PrivateAccess$android_media_MediaFileEx$sFileTypeToFormatMap(Ljava/util/HashMap;)V
    .registers 1

    invoke-static {p0}, Landroid/media/MediaFileEx;->ajc$set$sFileTypeToFormatMap(Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$android_media_MediaFileEx$PrivateAccess$android_media_MediaFileEx$sFormatToMimeTypeMap(Ljava/util/HashMap;)V
    .registers 1

    invoke-static {p0}, Landroid/media/MediaFileEx;->ajc$set$sFormatToMimeTypeMap(Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$android_media_MediaFileEx$PrivateAccess$android_media_MediaFileEx$sMimeTypeToFormatMap(Ljava/util/HashMap;)V
    .registers 1

    invoke-static {p0}, Landroid/media/MediaFileEx;->ajc$set$sMimeTypeToFormatMap(Ljava/util/HashMap;)V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Landroid/media/MediaFileEx$PrivateAccess;

    invoke-direct {v0}, Landroid/media/MediaFileEx$PrivateAccess;-><init>()V

    sput-object v0, Landroid/media/MediaFileEx$PrivateAccess;->ajc$perSingletonInstance:Landroid/media/MediaFileEx$PrivateAccess;

    return-void
.end method

.method public static aspectOf()Landroid/media/MediaFileEx$PrivateAccess;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Landroid/media/MediaFileEx$PrivateAccess;->ajc$perSingletonInstance:Landroid/media/MediaFileEx$PrivateAccess;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "android_media_MediaFileEx$PrivateAccess"

    sget-object v2, Landroid/media/MediaFileEx$PrivateAccess;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Landroid/media/MediaFileEx$PrivateAccess;->ajc$perSingletonInstance:Landroid/media/MediaFileEx$PrivateAccess;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Landroid/media/MediaFileEx$PrivateAccess;->ajc$perSingletonInstance:Landroid/media/MediaFileEx$PrivateAccess;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$android_media_MediaFileEx$PrivateAccess$1$908ab56c(Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/util/HashMap;
    .registers 3
    .param p1, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/aspectj/runtime/internal/AroundClosure;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaFile$MediaFileType;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "get(private HashMap<(String, MediaFile.MediaFileType)> MediaFileEx.sFileTypeMap)"
    .end annotation

    .prologue
    .line 201
    invoke-static {}, Landroid/media/MediaFile;->ajc$get$sFileTypeMap()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$android_media_MediaFileEx$PrivateAccess$2$4f6c7f50(Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/util/HashMap;
    .registers 3
    .param p1, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/aspectj/runtime/internal/AroundClosure;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "get(private HashMap<(String, Integer)> MediaFileEx.sFileTypeToFormatMap)"
    .end annotation

    .prologue
    .line 206
    invoke-static {}, Landroid/media/MediaFile;->ajc$get$sFileTypeToFormatMap()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$android_media_MediaFileEx$PrivateAccess$3$696b3e08(Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/util/HashMap;
    .registers 3
    .param p1, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/aspectj/runtime/internal/AroundClosure;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "get(private HashMap<(String, Integer)> MediaFileEx.sMimeTypeToFormatMap)"
    .end annotation

    .prologue
    .line 211
    invoke-static {}, Landroid/media/MediaFile;->ajc$get$sMimeTypeToFormatMap()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$android_media_MediaFileEx$PrivateAccess$4$51ee4532(Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/util/HashMap;
    .registers 3
    .param p1, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/aspectj/runtime/internal/AroundClosure;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "get(private HashMap<(Integer, String)> MediaFileEx.sFormatToMimeTypeMap)"
    .end annotation

    .prologue
    .line 216
    invoke-static {}, Landroid/media/MediaFile;->ajc$get$sFormatToMimeTypeMap()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method
