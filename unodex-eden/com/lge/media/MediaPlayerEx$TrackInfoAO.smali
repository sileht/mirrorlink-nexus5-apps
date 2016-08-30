.class public Lcom/lge/media/MediaPlayerEx$TrackInfoAO;
.super Ljava/lang/Object;
.source "MediaPlayerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/media/MediaPlayerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackInfoAO"
.end annotation

.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/media/MediaPlayerEx$TrackInfoAO;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 787
    :try_start_0
    invoke-static {}, Lcom/lge/media/MediaPlayerEx$TrackInfoAO;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/media/MediaPlayerEx$TrackInfoAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_media_MediaPlayerEx$TrackInfoAO$1$8cac1314proceed(Landroid/media/MediaPlayer$TrackInfo;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaFormat;
    .registers 4
    .param p0, "this"    # Landroid/media/MediaPlayer$TrackInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 790
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFormat;

    return-object v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/media/MediaPlayerEx$TrackInfoAO;

    invoke-direct {v0}, Lcom/lge/media/MediaPlayerEx$TrackInfoAO;-><init>()V

    sput-object v0, Lcom/lge/media/MediaPlayerEx$TrackInfoAO;->ajc$perSingletonInstance:Lcom/lge/media/MediaPlayerEx$TrackInfoAO;

    return-void
.end method

.method public static aspectOf()Lcom/lge/media/MediaPlayerEx$TrackInfoAO;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/media/MediaPlayerEx$TrackInfoAO;->ajc$perSingletonInstance:Lcom/lge/media/MediaPlayerEx$TrackInfoAO;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_media_MediaPlayerEx$TrackInfoAO"

    sget-object v2, Lcom/lge/media/MediaPlayerEx$TrackInfoAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/media/MediaPlayerEx$TrackInfoAO;->ajc$perSingletonInstance:Lcom/lge/media/MediaPlayerEx$TrackInfoAO;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/media/MediaPlayerEx$TrackInfoAO;->ajc$perSingletonInstance:Lcom/lge/media/MediaPlayerEx$TrackInfoAO;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_lge_media_MediaPlayerEx$TrackInfoAO$1$8cac1314(Landroid/media/MediaPlayer$TrackInfo;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaFormat;
    .registers 5
    .param p1, "obj"    # Landroid/media/MediaPlayer$TrackInfo;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(execution(* MediaPlayer.TrackInfo.getFormat()) && this(obj))"
    .end annotation

    .prologue
    .line 791
    invoke-static {p1}, Landroid/media/MediaPlayer$TrackInfo;->ajc$get$mTrackType(Landroid/media/MediaPlayer$TrackInfo;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_d

    .line 792
    invoke-static {p1}, Landroid/media/MediaPlayer$TrackInfo;->ajc$get$mFormat(Landroid/media/MediaPlayer$TrackInfo;)Landroid/media/MediaFormat;

    move-result-object v0

    .line 794
    :goto_c
    return-object v0

    :cond_d
    invoke-static {p1, p2}, Lcom/lge/media/MediaPlayerEx$TrackInfoAO;->ajc$around$com_lge_media_MediaPlayerEx$TrackInfoAO$1$8cac1314proceed(Landroid/media/MediaPlayer$TrackInfo;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaFormat;

    move-result-object v0

    goto :goto_c
.end method
