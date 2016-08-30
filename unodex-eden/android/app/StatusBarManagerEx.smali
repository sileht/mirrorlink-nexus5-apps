.class public Landroid/app/StatusBarManagerEx;
.super Landroid/app/StatusBarManager;
.source "StatusBarManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/StatusBarManagerEx$PrivateAccess;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/lge/internal/statusbar/IStatusBarServiceEx;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/app/StatusBarManager;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/app/StatusBarManagerEx$PrivateAccess;->ajc$interFieldInit$android_app_StatusBarManagerEx$PrivateAccess$android_app_StatusBarManagerEx$mContext(Landroid/app/StatusBarManagerEx;)V

    invoke-static {p0}, Landroid/app/StatusBarManagerEx$PrivateAccess;->ajc$interFieldInit$android_app_StatusBarManagerEx$PrivateAccess$android_app_StatusBarManagerEx$mToken(Landroid/app/StatusBarManagerEx;)V

    .line 21
    return-void
.end method

.method public static ajc$get$mContext(Landroid/app/StatusBarManagerEx;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Landroid/app/StatusBarManagerEx;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static ajc$get$mToken(Landroid/app/StatusBarManagerEx;)Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Landroid/app/StatusBarManagerEx;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public static ajc$set$mContext(Landroid/app/StatusBarManagerEx;Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Landroid/app/StatusBarManagerEx;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static ajc$set$mToken(Landroid/app/StatusBarManagerEx;Landroid/os/IBinder;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Landroid/app/StatusBarManagerEx;->mToken:Landroid/os/IBinder;

    return-void
.end method

.method private declared-synchronized getService()Lcom/lge/internal/statusbar/IStatusBarServiceEx;
    .registers 3

    .prologue
    .line 24
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/app/StatusBarManagerEx;->mService:Lcom/lge/internal/statusbar/IStatusBarServiceEx;

    if-nez v0, :cond_1c

    .line 26
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/lge/internal/statusbar/IStatusBarServiceEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/internal/statusbar/IStatusBarServiceEx;

    move-result-object v0

    iput-object v0, p0, Landroid/app/StatusBarManagerEx;->mService:Lcom/lge/internal/statusbar/IStatusBarServiceEx;

    .line 27
    iget-object v0, p0, Landroid/app/StatusBarManagerEx;->mService:Lcom/lge/internal/statusbar/IStatusBarServiceEx;

    if-nez v0, :cond_1c

    .line 28
    const-string v0, "StatusBarManagerEx"

    const-string v1, "warning: no STATUS_BAR_SERVICE_EX"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_1c
    iget-object v0, p0, Landroid/app/StatusBarManagerEx;->mService:Lcom/lge/internal/statusbar/IStatusBarServiceEx;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-object v0

    .line 24
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static final mContext_aroundBody2(Landroid/app/StatusBarManagerEx;Landroid/app/StatusBarManagerEx;)Landroid/content/Context;
    .registers 3

    .prologue
    .line 43
    invoke-static {p1}, Landroid/app/StatusBarManagerEx$PrivateAccess;->ajc$interFieldGetDispatch$android_app_StatusBarManagerEx$PrivateAccess$android_app_StatusBarManagerEx$mContext(Landroid/app/StatusBarManagerEx;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static final mContext_aroundBody3$advice(Landroid/app/StatusBarManagerEx;Landroid/app/StatusBarManagerEx;Landroid/app/StatusBarManagerEx$PrivateAccess;Landroid/app/StatusBarManagerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/content/Context;
    .registers 6
    .param p0, "ajc$this"    # Landroid/app/StatusBarManagerEx;
    .param p1, "target"    # Landroid/app/StatusBarManagerEx;
    .param p2, "ajc$aspectInstance"    # Landroid/app/StatusBarManagerEx$PrivateAccess;
    .param p3, "obj"    # Landroid/app/StatusBarManagerEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 81
    invoke-static {p3}, Landroid/app/StatusBarManager;->ajc$get$mContext(Landroid/app/StatusBarManager;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static final mToken_aroundBody0(Landroid/app/StatusBarManagerEx;Landroid/app/StatusBarManagerEx;)Landroid/os/IBinder;
    .registers 3

    .prologue
    .line 43
    invoke-static {p1}, Landroid/app/StatusBarManagerEx$PrivateAccess;->ajc$interFieldGetDispatch$android_app_StatusBarManagerEx$PrivateAccess$android_app_StatusBarManagerEx$mToken(Landroid/app/StatusBarManagerEx;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method private static final mToken_aroundBody1$advice(Landroid/app/StatusBarManagerEx;Landroid/app/StatusBarManagerEx;Landroid/app/StatusBarManagerEx$PrivateAccess;Landroid/app/StatusBarManagerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/os/IBinder;
    .registers 6
    .param p0, "ajc$this"    # Landroid/app/StatusBarManagerEx;
    .param p1, "target"    # Landroid/app/StatusBarManagerEx;
    .param p2, "ajc$aspectInstance"    # Landroid/app/StatusBarManagerEx$PrivateAccess;
    .param p3, "obj"    # Landroid/app/StatusBarManagerEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 85
    invoke-static {p3}, Landroid/app/StatusBarManager;->ajc$get$mToken(Landroid/app/StatusBarManager;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public disable(II)V
    .registers 3
    .param p1, "what"    # I
    .param p2, "what3"    # I

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Landroid/app/StatusBarManagerEx;->disable(I)V

    .line 36
    invoke-virtual {p0, p2}, Landroid/app/StatusBarManagerEx;->disableNaviBtn(I)V

    .line 37
    return-void
.end method

.method public disableNaviBtn(I)V
    .registers 7
    .param p1, "what3"    # I

    .prologue
    .line 41
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManagerEx;->getService()Lcom/lge/internal/statusbar/IStatusBarServiceEx;

    move-result-object v1

    .line 42
    .local v1, "svc":Lcom/lge/internal/statusbar/IStatusBarServiceEx;
    if-eqz v1, :cond_1f

    .line 43
    invoke-static {}, Landroid/app/StatusBarManagerEx$PrivateAccess;->aspectOf()Landroid/app/StatusBarManagerEx$PrivateAccess;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, p0, v2, p0, v3}, Landroid/app/StatusBarManagerEx;->mToken_aroundBody1$advice(Landroid/app/StatusBarManagerEx;Landroid/app/StatusBarManagerEx;Landroid/app/StatusBarManagerEx$PrivateAccess;Landroid/app/StatusBarManagerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {}, Landroid/app/StatusBarManagerEx$PrivateAccess;->aspectOf()Landroid/app/StatusBarManagerEx$PrivateAccess;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, p0, v3, p0, v4}, Landroid/app/StatusBarManagerEx;->mContext_aroundBody3$advice(Landroid/app/StatusBarManagerEx;Landroid/app/StatusBarManagerEx;Landroid/app/StatusBarManagerEx$PrivateAccess;Landroid/app/StatusBarManagerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/lge/internal/statusbar/IStatusBarServiceEx;->disableNaviBtn(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_20

    .line 49
    :cond_1f
    return-void

    .line 45
    .end local v1    # "svc":Lcom/lge/internal/statusbar/IStatusBarServiceEx;
    :catch_20
    move-exception v0

    .line 47
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public dismissKeyguard(Landroid/app/PendingIntent;)V
    .registers 5
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 65
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManagerEx;->getService()Lcom/lge/internal/statusbar/IStatusBarServiceEx;

    move-result-object v1

    .line 66
    .local v1, "svc":Lcom/lge/internal/statusbar/IStatusBarServiceEx;
    if-eqz v1, :cond_9

    .line 67
    invoke-interface {v1, p1}, Lcom/lge/internal/statusbar/IStatusBarServiceEx;->dismissKeyguard(Landroid/app/PendingIntent;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 73
    :cond_9
    return-void

    .line 69
    .end local v1    # "svc":Lcom/lge/internal/statusbar/IStatusBarServiceEx;
    :catch_a
    move-exception v0

    .line 71
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setIconShift()V
    .registers 4

    .prologue
    .line 53
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManagerEx;->getService()Lcom/lge/internal/statusbar/IStatusBarServiceEx;

    move-result-object v1

    .line 54
    .local v1, "svc":Lcom/lge/internal/statusbar/IStatusBarServiceEx;
    if-eqz v1, :cond_9

    .line 55
    invoke-interface {v1}, Lcom/lge/internal/statusbar/IStatusBarServiceEx;->setIconShift()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 61
    :cond_9
    return-void

    .line 57
    .end local v1    # "svc":Lcom/lge/internal/statusbar/IStatusBarServiceEx;
    :catch_a
    move-exception v0

    .line 59
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
