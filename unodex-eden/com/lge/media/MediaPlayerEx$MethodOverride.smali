.class public Lcom/lge/media/MediaPlayerEx$MethodOverride;
.super Ljava/lang/Object;
.source "MediaPlayerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/media/MediaPlayerEx;
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

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/media/MediaPlayerEx$MethodOverride;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 798
    :try_start_0
    invoke-static {}, Lcom/lge/media/MediaPlayerEx$MethodOverride;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/media/MediaPlayerEx$MethodOverride;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_media_MediaPlayerEx$MethodOverride$1$25526619proceed(Landroid/content/Context;ILorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;
    .registers 6
    .param p0, "this"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 802
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p2, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_media_MediaPlayerEx$MethodOverride$2$9dea6028proceed(Landroid/net/Uri;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 4
    .param p0, "this"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 809
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->intValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/media/MediaPlayerEx$MethodOverride;

    invoke-direct {v0}, Lcom/lge/media/MediaPlayerEx$MethodOverride;-><init>()V

    sput-object v0, Lcom/lge/media/MediaPlayerEx$MethodOverride;->ajc$perSingletonInstance:Lcom/lge/media/MediaPlayerEx$MethodOverride;

    return-void
.end method

.method public static aspectOf()Lcom/lge/media/MediaPlayerEx$MethodOverride;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/media/MediaPlayerEx$MethodOverride;->ajc$perSingletonInstance:Lcom/lge/media/MediaPlayerEx$MethodOverride;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_media_MediaPlayerEx$MethodOverride"

    sget-object v2, Lcom/lge/media/MediaPlayerEx$MethodOverride;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/media/MediaPlayerEx$MethodOverride;->ajc$perSingletonInstance:Lcom/lge/media/MediaPlayerEx$MethodOverride;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/media/MediaPlayerEx$MethodOverride;->ajc$perSingletonInstance:Lcom/lge/media/MediaPlayerEx$MethodOverride;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_lge_media_MediaPlayerEx$MethodOverride$1$25526619(Landroid/content/Context;ILorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/Uri;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "context,type,ajc$aroundClosure"
        value = "(withincode(* MediaPlayer.setDataSource(..)) && (call(* RingtoneManager.getActualDefaultRingtoneUri(..)) && args(context, type)))"
    .end annotation

    .prologue
    .line 803
    invoke-static {p1, p2}, Lcom/lge/media/RingtoneManagerEx;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$com_lge_media_MediaPlayerEx$MethodOverride$2$9dea6028(Landroid/net/Uri;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "uri,ajc$aroundClosure"
        value = "(withincode(* MediaPlayer.setDataSource(..)) && (call(* RingtoneManager.getDefaultType(..)) && args(uri)))"
    .end annotation

    .prologue
    .line 810
    invoke-static {p1}, Lcom/lge/media/RingtoneManagerEx;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method
