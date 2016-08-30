.class public Lcom/lge/media/MediaHTTPServiceAO;
.super Ljava/lang/Object;
.source "MediaHTTPServiceAO.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/media/MediaHTTPServiceAO;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7
    :try_start_0
    invoke-static {}, Lcom/lge/media/MediaHTTPServiceAO;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/media/MediaHTTPServiceAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_media_MediaHTTPServiceAO$1$5290a8feproceed(Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaHTTPConnection;
    .registers 2
    .param p0, "this"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 10
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaHTTPConnection;

    return-object v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/media/MediaHTTPServiceAO;

    invoke-direct {v0}, Lcom/lge/media/MediaHTTPServiceAO;-><init>()V

    sput-object v0, Lcom/lge/media/MediaHTTPServiceAO;->ajc$perSingletonInstance:Lcom/lge/media/MediaHTTPServiceAO;

    return-void
.end method

.method public static aspectOf()Lcom/lge/media/MediaHTTPServiceAO;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/media/MediaHTTPServiceAO;->ajc$perSingletonInstance:Lcom/lge/media/MediaHTTPServiceAO;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_media_MediaHTTPServiceAO"

    sget-object v2, Lcom/lge/media/MediaHTTPServiceAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/media/MediaHTTPServiceAO;->ajc$perSingletonInstance:Lcom/lge/media/MediaHTTPServiceAO;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/media/MediaHTTPServiceAO;->ajc$perSingletonInstance:Lcom/lge/media/MediaHTTPServiceAO;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_lge_media_MediaHTTPServiceAO$1$5290a8fe(Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/MediaHTTPConnection;
    .registers 3
    .param p1, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "(within(MediaHTTPService) && call(MediaHTTPConnection.new()))"
    .end annotation

    .prologue
    .line 11
    new-instance v0, Lcom/lge/media/MediaHTTPConnectionEx;

    invoke-direct {v0}, Lcom/lge/media/MediaHTTPConnectionEx;-><init>()V

    return-object v0
.end method
