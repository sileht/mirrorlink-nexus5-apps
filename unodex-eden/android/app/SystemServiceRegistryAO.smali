.class public Landroid/app/SystemServiceRegistryAO;
.super Ljava/lang/Object;
.source "SystemServiceRegistryAO.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Landroid/app/SystemServiceRegistryAO;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    :try_start_0
    invoke-static {}, Landroid/app/SystemServiceRegistryAO;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Landroid/app/SystemServiceRegistryAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$android_app_SystemServiceRegistryAO$1$78411637proceed(Landroid/content/Context;Landroid/os/Handler;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/app/ActivityManager;
    .registers 5
    .param p0, "this"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic ajc$around$android_app_SystemServiceRegistryAO$2$87d7151aproceed(Landroid/app/ContextImpl;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/AudioManager;
    .registers 4
    .param p0, "this"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic ajc$around$android_app_SystemServiceRegistryAO$3$656197faproceed(Landroid/content/Context;Landroid/os/Handler;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/app/WallpaperManager;
    .registers 5
    .param p0, "this"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    return-object v0
.end method

.method static synthetic ajc$around$android_app_SystemServiceRegistryAO$4$1e9e6fcdproceed(Landroid/content/Context;Landroid/net/IConnectivityManager;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/ConnectivityManager;
    .registers 5
    .param p0, "this"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic ajc$around$android_app_SystemServiceRegistryAO$5$72770ccfproceed(Landroid/content/Context;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/app/StatusBarManager;
    .registers 4
    .param p0, "this"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 53
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic ajc$around$android_app_SystemServiceRegistryAO$6$5b299152proceed(Landroid/app/ContextImpl;Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/Object;
    .registers 5
    .param p0, "this"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessMethod$android_app_SystemServiceRegistryAO$android_app_ContextImpl$getOuterContext(Landroid/app/ContextImpl;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Landroid/app/SystemServiceRegistryAO;

    invoke-direct {v0}, Landroid/app/SystemServiceRegistryAO;-><init>()V

    sput-object v0, Landroid/app/SystemServiceRegistryAO;->ajc$perSingletonInstance:Landroid/app/SystemServiceRegistryAO;

    return-void
.end method

.method public static aspectOf()Landroid/app/SystemServiceRegistryAO;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Landroid/app/SystemServiceRegistryAO;->ajc$perSingletonInstance:Landroid/app/SystemServiceRegistryAO;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "android_app_SystemServiceRegistryAO"

    sget-object v2, Landroid/app/SystemServiceRegistryAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Landroid/app/SystemServiceRegistryAO;->ajc$perSingletonInstance:Landroid/app/SystemServiceRegistryAO;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Landroid/app/SystemServiceRegistryAO;->ajc$perSingletonInstance:Landroid/app/SystemServiceRegistryAO;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$android_app_SystemServiceRegistryAO$1$78411637(Landroid/content/Context;Landroid/os/Handler;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/app/ActivityManager;
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ctx,handler,ajc$aroundClosure"
        value = "(args(ctx, handler) && (within(SystemServiceRegistry) && call(ActivityManager.new(Context, Handler))))"
    .end annotation

    .prologue
    .line 26
    new-instance v0, Landroid/app/ActivityManagerEx;

    invoke-direct {v0, p1, p2}, Landroid/app/ActivityManagerEx;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-object v0
.end method

.method public ajc$around$android_app_SystemServiceRegistryAO$2$87d7151a(Landroid/app/ContextImpl;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/AudioManager;
    .registers 4
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ctx,ajc$aroundClosure"
        value = "(args(ctx) && (within(SystemServiceRegistry) && call(AudioManager.new(Context))))"
    .end annotation

    .prologue
    .line 33
    new-instance v0, Landroid/media/AudioManagerEx;

    invoke-direct {v0, p1}, Landroid/media/AudioManagerEx;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public ajc$around$android_app_SystemServiceRegistryAO$3$656197fa(Landroid/content/Context;Landroid/os/Handler;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/app/WallpaperManager;
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ctx,handler,ajc$aroundClosure"
        value = "(args(ctx, handler) && (within(SystemServiceRegistry) && call(WallpaperManager.new(Context, Handler))))"
    .end annotation

    .prologue
    .line 40
    new-instance v0, Landroid/app/WallpaperManagerEx;

    invoke-direct {v0, p1, p2}, Landroid/app/WallpaperManagerEx;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-object v0
.end method

.method public ajc$around$android_app_SystemServiceRegistryAO$4$1e9e6fcd(Landroid/content/Context;Landroid/net/IConnectivityManager;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/net/ConnectivityManager;
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/IConnectivityManager;
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ctx,service,ajc$aroundClosure"
        value = "(args(ctx, service) && (within(SystemServiceRegistry) && call(ConnectivityManager.new(Context, IConnectivityManager))))"
    .end annotation

    .prologue
    .line 47
    new-instance v0, Landroid/net/ConnectivityManagerEx;

    invoke-direct {v0, p1, p2}, Landroid/net/ConnectivityManagerEx;-><init>(Landroid/content/Context;Landroid/net/IConnectivityManager;)V

    return-object v0
.end method

.method public ajc$around$android_app_SystemServiceRegistryAO$5$72770ccf(Landroid/content/Context;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/app/StatusBarManager;
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ctx,ajc$aroundClosure"
        value = "(args(ctx) && (within(SystemServiceRegistry) && call(StatusBarManager.new(Context))))"
    .end annotation

    .prologue
    .line 54
    new-instance v0, Landroid/app/StatusBarManagerEx;

    invoke-direct {v0, p1}, Landroid/app/StatusBarManagerEx;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public ajc$around$android_app_SystemServiceRegistryAO$6$5b299152(Landroid/app/ContextImpl;Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/Object;
    .registers 6
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ctx,name,ajc$aroundClosure"
        value = "(args(ctx, name) && execution(public static Object SystemServiceRegistry.getSystemService(ContextImpl, String)))"
    .end annotation

    .prologue
    .line 62
    const-string v0, "KR"

    sget-object v1, Lcom/lge/os/Build$CA_TARGET;->COUNTRY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 63
    const-string v0, "LGU"

    sget-object v1, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 65
    const-string v0, "operator.dm"

    .line 64
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 65
    if-eqz v0, :cond_25

    .line 66
    invoke-static {p1}, Landroid/app/SystemServiceRegistryAO;->ajc$inlineAccessMethod$android_app_SystemServiceRegistryAO$android_app_ContextImpl$getOuterContext(Landroid/app/ContextImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/telephony/LGNetworkMonitor;->getInstance(Landroid/content/Context;)Lcom/lge/telephony/LGNetworkMonitor;

    move-result-object v0

    .line 71
    :goto_24
    return-object v0

    :cond_25
    invoke-static {p1, p2, p3}, Landroid/app/SystemServiceRegistryAO;->ajc$around$android_app_SystemServiceRegistryAO$6$5b299152proceed(Landroid/app/ContextImpl;Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_24
.end method
