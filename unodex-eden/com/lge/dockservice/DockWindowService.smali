.class public Lcom/lge/dockservice/DockWindowService;
.super Landroid/app/Service;
.source "DockWindowService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/dockservice/DockWindowService$ClientWatcherThread;,
        Lcom/lge/dockservice/DockWindowService$DockView;,
        Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;
    }
.end annotation


# static fields
.field static final ACTION_ACCESSORY_EVENT:Ljava/lang/String; = "com.lge.android.intent.action.ACCESSORY_COVER_EVENT"

.field static final ACTION_DOCK_WINDOW_ENTER_LOWPROFILE:Ljava/lang/String; = "com.lge.intent.action.FLOATING_WINDOW_ENTER_LOWPROFILE"

.field static final ACTION_DOCK_WINDOW_EXIT_LOWPROFILE:Ljava/lang/String; = "com.lge.intent.action.FLOATING_WINDOW_EXIT_LOWPROFILE"

.field static final ACTION_FLOATING_WINDOW_CHANGED:Ljava/lang/String; = "com.lge.intent.action.FLOATING_WINDOW_CHANGED"

.field static final ACTION_FULLSCREEN_CALL_INCOMING:Ljava/lang/String; = "com.lge.action.INCOMING_FULLSCREEN"

.field static final EXTRA_ACCESSORY_COVER_STATE:Ljava/lang/String; = "com.lge.intent.extra.ACCESSORY_COVER_STATE"

.field public static final EXTRA_ACCESSORY_STATE_FRONT_CLOSED:I = 0x1

.field public static final EXTRA_ACCESSORY_STATE_FRONT_HALFOPEN:I = 0x2

.field public static final EXTRA_ACCESSORY_STATE_FRONT_OPENED:I = 0x0

.field static final EXTRA_REMOVED_WINDOW:Ljava/lang/String; = "window-remove"

.field public static final EXTRA_SERVICE_VIBRATE:Ljava/lang/String; = "com.lge.app.floating.ExtraService.VIBRATE"

.field private static final TAG:Ljava/lang/String;

.field private static sGetServiceMethod:Ljava/lang/reflect/Method;

.field private static sIWindowManager:Ljava/lang/Object;

.field private static sIWindowManagerStubAsInterfaceMethod:Ljava/lang/reflect/Method;

.field private static sIsKeyguardSecure:Ljava/lang/reflect/Method;

.field private static sMoveWindowTokenToTopMethodEx:Ljava/lang/reflect/Method;


# instance fields
.field private mClientWatcherThread:Lcom/lge/dockservice/DockWindowService$ClientWatcherThread;

.field private final mCurrentConfig:Landroid/content/res/Configuration;

.field public mDockAreaBerth:I

.field private final mDockViewList:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/dockservice/DockWindowService$DockView;",
            ">;"
        }
    .end annotation
.end field

.field private final mDockWindowService:Lcom/lge/dockservice/IDockWindowService$Stub;

.field private mHandler:Landroid/os/Handler;

.field mIsLockScreen:Z

.field mIsQuickCoverClosed:Z

.field private mLowProfileRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResources:Landroid/content/res/Resources;

.field private mTopDockView:Lcom/lge/dockservice/DockWindowService$DockView;

.field private mWindowManager:Landroid/view/WindowManager;

.field refreshDockAxis:Z


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    .line 63
    const-class v2, Lcom/lge/dockservice/DockWindowService;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    .line 1892
    :try_start_8
    const-string v2, "android.os.ServiceManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getService"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/lge/dockservice/DockWindowService;->sGetServiceMethod:Ljava/lang/reflect/Method;

    .line 1893
    const-string v2, "com.lge.view.IWindowManagerEx$Stub"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "asInterface"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/lge/dockservice/DockWindowService;->sIWindowManagerStubAsInterfaceMethod:Ljava/lang/reflect/Method;

    .line 1895
    sget-object v2, Lcom/lge/dockservice/DockWindowService;->sGetServiceMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "window"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1896
    .local v0, "binderObject":Ljava/lang/Object;
    sget-object v2, Lcom/lge/dockservice/DockWindowService;->sIWindowManagerStubAsInterfaceMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/lge/dockservice/DockWindowService;->sIWindowManager:Ljava/lang/Object;

    .line 1897
    const-string v2, "com.lge.view.IWindowManagerEx"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "moveWindowTokenToTop"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/lge/dockservice/DockWindowService;->sMoveWindowTokenToTopMethodEx:Ljava/lang/reflect/Method;

    .line 1899
    const-class v2, Landroid/app/KeyguardManager;

    const-string v3, "isKeyguardSecure"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/lge/dockservice/DockWindowService;->sIsKeyguardSecure:Ljava/lang/reflect/Method;

    .line 1900
    sget-object v2, Lcom/lge/dockservice/DockWindowService;->sIsKeyguardSecure:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_7f

    .line 1901
    sget-object v2, Lcom/lge/dockservice/DockWindowService;->sIsKeyguardSecure:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1903
    :cond_7f
    sget-object v2, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v3, "reflection success"

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_86} :catch_87

    .line 1908
    :goto_86
    return-void

    .line 1904
    :catch_87
    move-exception v1

    .line 1905
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v3, "reflection fail"

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1906
    sget-object v2, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_86
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 79
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;

    .line 82
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mClientWatcherThread:Lcom/lge/dockservice/DockWindowService$ClientWatcherThread;

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mLowProfileRequests:Ljava/util/Set;

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/dockservice/DockWindowService;->refreshDockAxis:Z

    .line 91
    iput-boolean v1, p0, Lcom/lge/dockservice/DockWindowService;->mIsQuickCoverClosed:Z

    .line 92
    iput-boolean v1, p0, Lcom/lge/dockservice/DockWindowService;->mIsLockScreen:Z

    .line 208
    new-instance v0, Lcom/lge/dockservice/DockWindowService$1;

    invoke-direct {v0, p0}, Lcom/lge/dockservice/DockWindowService$1;-><init>(Lcom/lge/dockservice/DockWindowService;)V

    iput-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mDockWindowService:Lcom/lge/dockservice/IDockWindowService$Stub;

    .line 61
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    .prologue
    .line 63
    sget-object v0, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/dockservice/DockWindowService;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$10(Lcom/lge/dockservice/DockWindowService;Lcom/lge/dockservice/DockWindowService$DockView;)V
    .registers 2

    .prologue
    .line 630
    invoke-direct {p0, p1}, Lcom/lge/dockservice/DockWindowService;->updateDockAxis(Lcom/lge/dockservice/DockWindowService$DockView;)V

    return-void
.end method

.method static synthetic access$11()Ljava/lang/reflect/Method;
    .registers 1

    .prologue
    .line 1885
    sget-object v0, Lcom/lge/dockservice/DockWindowService;->sMoveWindowTokenToTopMethodEx:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$12()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 1879
    sget-object v0, Lcom/lge/dockservice/DockWindowService;->sIWindowManager:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$13(Lcom/lge/dockservice/DockWindowService;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 856
    invoke-direct {p0, p1}, Lcom/lge/dockservice/DockWindowService;->enterLowProfile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14()Ljava/lang/reflect/Method;
    .registers 1

    .prologue
    .line 1888
    sget-object v0, Lcom/lge/dockservice/DockWindowService;->sIsKeyguardSecure:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$15(Lcom/lge/dockservice/DockWindowService;)Ljava/util/Set;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mLowProfileRequests:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$16(Lcom/lge/dockservice/DockWindowService;Ljava/util/Set;)V
    .registers 2

    .prologue
    .line 89
    iput-object p1, p0, Lcom/lge/dockservice/DockWindowService;->mLowProfileRequests:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$2(Lcom/lge/dockservice/DockWindowService;)Ljava/util/concurrent/ConcurrentMap;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lge/dockservice/DockWindowService;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 875
    invoke-direct {p0, p1}, Lcom/lge/dockservice/DockWindowService;->exitLowProfile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/lge/dockservice/DockWindowService;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 841
    invoke-direct {p0, p1}, Lcom/lge/dockservice/DockWindowService;->removeViewInUiThread(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$5(Lcom/lge/dockservice/DockWindowService;Lcom/lge/dockservice/DockWindowService$DockView;)V
    .registers 2

    .prologue
    .line 81
    iput-object p1, p0, Lcom/lge/dockservice/DockWindowService;->mTopDockView:Lcom/lge/dockservice/DockWindowService$DockView;

    return-void
.end method

.method static synthetic access$6(Lcom/lge/dockservice/DockWindowService;)Landroid/content/res/Resources;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lge/dockservice/DockWindowService;)Landroid/view/WindowManager;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lge/dockservice/DockWindowService;Lcom/lge/dockservice/DockWindowService$DockView;Z)V
    .registers 3

    .prologue
    .line 519
    invoke-direct {p0, p1, p2}, Lcom/lge/dockservice/DockWindowService;->updateDockByLocation(Lcom/lge/dockservice/DockWindowService$DockView;Z)V

    return-void
.end method

.method static synthetic access$9(Lcom/lge/dockservice/DockWindowService;)Lcom/lge/dockservice/DockWindowService$DockView;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mTopDockView:Lcom/lge/dockservice/DockWindowService$DockView;

    return-object v0
.end method

.method private avoidDock(Ljava/util/ArrayList;Z)V
    .registers 7
    .param p2, "direction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/dockservice/DockWindowService$DockView;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 597
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/dockservice/DockWindowService$DockView;>;"
    invoke-static {p0}, Lcom/lge/dockservice/Res;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 598
    .local v1, "iconHeight":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    .line 613
    :cond_12
    return-void

    .line 601
    :cond_13
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_14
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_12

    .line 603
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v3, v2, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v2, v2, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    sub-int v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v1, :cond_49

    .line 604
    if-eqz p2, :cond_4c

    .line 605
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/dockservice/DockWindowService$DockView;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v3, v3, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    sub-int/2addr v3, v1

    iput v3, v2, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    .line 601
    :cond_49
    :goto_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 608
    :cond_4c
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/dockservice/DockWindowService$DockView;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v3, v3, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    goto :goto_49
.end method

.method private enterLowProfile(Ljava/lang/String;)V
    .registers 4
    .param p1, "requester"    # Ljava/lang/String;

    .prologue
    .line 857
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 873
    :goto_8
    return-void

    .line 860
    :cond_9
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService;->mLowProfileRequests:Ljava/util/Set;

    monitor-enter v1

    .line 861
    :try_start_c
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mLowProfileRequests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 860
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_24

    .line 863
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/lge/dockservice/DockWindowService$3;

    invoke-direct {v1, p0, p1}, Lcom/lge/dockservice/DockWindowService$3;-><init>(Lcom/lge/dockservice/DockWindowService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    .line 860
    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0
.end method

.method private exitLowProfile(Ljava/lang/String;)V
    .registers 4
    .param p1, "requester"    # Ljava/lang/String;

    .prologue
    .line 876
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 944
    :goto_8
    return-void

    .line 879
    :cond_9
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/lge/dockservice/DockWindowService$4;

    invoke-direct {v1, p0, p1}, Lcom/lge/dockservice/DockWindowService$4;-><init>(Lcom/lge/dockservice/DockWindowService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8
.end method

.method private reloateIfStickOut()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 655
    sget-object v5, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v6, "reloateIfStickOut "

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    invoke-static {p0}, Lcom/lge/dockservice/Res;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06000e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 657
    .local v2, "iconHeight":I
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 658
    .local v0, "displaymetrics":Landroid/util/DisplayMetrics;
    iget-object v5, p0, Lcom/lge/dockservice/DockWindowService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 659
    iget-object v5, p0, Lcom/lge/dockservice/DockWindowService;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f060009

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 660
    .local v4, "minH":I
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 661
    .local v3, "maxH":I
    iget-object v5, p0, Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_36
    :goto_36
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3d

    .line 680
    return-void

    .line 661
    :cond_3d
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/dockservice/DockWindowService$DockView;

    .line 662
    .local v1, "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mState:I
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService$DockView;->access$3(Lcom/lge/dockservice/DockWindowService$DockView;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_36

    .line 665
    iget v6, v1, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    if-ge v6, v4, :cond_6c

    .line 666
    add-int/lit8 v6, v4, 0x1

    iput v6, v1, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    .line 667
    sget-object v6, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "reloateIfStickOut 1: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v1, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    invoke-direct {p0, v1, v9}, Lcom/lge/dockservice/DockWindowService;->updateDockByLocation(Lcom/lge/dockservice/DockWindowService$DockView;Z)V

    goto :goto_36

    .line 670
    :cond_6c
    iget v6, v1, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    add-int/2addr v6, v2

    if-le v6, v3, :cond_8f

    .line 671
    sub-int v6, v3, v2

    iput v6, v1, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    .line 672
    sget-object v6, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "reloateIfStickOut 2: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v1, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    invoke-direct {p0, v1, v9}, Lcom/lge/dockservice/DockWindowService;->updateDockByLocation(Lcom/lge/dockservice/DockWindowService$DockView;Z)V

    goto :goto_36

    .line 676
    :cond_8f
    sget-object v6, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v7, "reloateIfStickOut 3: Do nothing"

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36
.end method

.method private removeViewInUiThread(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 842
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lge/dockservice/DockWindowService$2;

    invoke-direct {v1, p0, p1}, Lcom/lge/dockservice/DockWindowService$2;-><init>(Lcom/lge/dockservice/DockWindowService;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 854
    return-void
.end method

.method private sortDockList(Ljava/util/ArrayList;Z)V
    .registers 8
    .param p2, "acending"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/dockservice/DockWindowService$DockView;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 576
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/dockservice/DockWindowService$DockView;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_8

    .line 593
    return-void

    .line 577
    :cond_8
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_13

    .line 576
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 578
    :cond_13
    if-eqz p2, :cond_3c

    .line 579
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v4, v3, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v3, v3, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    if-le v4, v3, :cond_39

    .line 580
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/dockservice/DockWindowService$DockView;

    .line 581
    .local v2, "temp":Lcom/lge/dockservice/DockWindowService$DockView;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/dockservice/DockWindowService$DockView;

    invoke-virtual {p1, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 582
    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 577
    .end local v2    # "temp":Lcom/lge/dockservice/DockWindowService$DockView;
    :cond_39
    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 585
    :cond_3c
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v4, v3, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v3, v3, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    if-ge v4, v3, :cond_39

    .line 586
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/dockservice/DockWindowService$DockView;

    .line 587
    .restart local v2    # "temp":Lcom/lge/dockservice/DockWindowService$DockView;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/dockservice/DockWindowService$DockView;

    invoke-virtual {p1, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 588
    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_39
.end method

.method private updateDock(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/dockservice/DockWindowService$DockView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 644
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/dockservice/DockWindowService$DockView;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_8

    .line 652
    return-void

    .line 645
    :cond_8
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 644
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 645
    :cond_1b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/dockservice/DockWindowService$DockView;

    .line 646
    .local v0, "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/dockservice/DockWindowService$DockView;->access$1(Lcom/lge/dockservice/DockWindowService$DockView;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/dockservice/DockWindowService$DockView;

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/dockservice/DockWindowService$DockView;->access$1(Lcom/lge/dockservice/DockWindowService$DockView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_12

    .line 647
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v2, v2, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    iput v2, v0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    .line 648
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v2, v2, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    iput v2, v0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    goto :goto_12
.end method

.method private updateDockAxis(Lcom/lge/dockservice/DockWindowService$DockView;)V
    .registers 4
    .param p1, "dv"    # Lcom/lge/dockservice/DockWindowService$DockView;

    .prologue
    const/4 v1, 0x2

    .line 631
    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mState:I
    invoke-static {p1}, Lcom/lge/dockservice/DockWindowService$DockView;->access$3(Lcom/lge/dockservice/DockWindowService$DockView;)I

    move-result v0

    if-eq v0, v1, :cond_8

    .line 642
    :goto_7
    return-void

    .line 634
    :cond_8
    invoke-virtual {p0}, Lcom/lge/dockservice/DockWindowService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1d

    .line 635
    iget v0, p1, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    iput v0, p1, Lcom/lge/dockservice/DockWindowService$DockView;->mX_Landscape:I

    .line 636
    iget v0, p1, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    iput v0, p1, Lcom/lge/dockservice/DockWindowService$DockView;->mY_Landscape:I

    goto :goto_7

    .line 639
    :cond_1d
    iget v0, p1, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    iput v0, p1, Lcom/lge/dockservice/DockWindowService$DockView;->mX_Portrate:I

    .line 640
    iget v0, p1, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    iput v0, p1, Lcom/lge/dockservice/DockWindowService$DockView;->mY_Portrate:I

    goto :goto_7
.end method

.method private updateDockByLocation(Lcom/lge/dockservice/DockWindowService$DockView;Z)V
    .registers 12
    .param p1, "baseDock"    # Lcom/lge/dockservice/DockWindowService$DockView;
    .param p2, "updateLayout"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 520
    sget-object v4, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "update Dock position by Location...BaseDock : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;
    invoke-static {p1}, Lcom/lge/dockservice/DockWindowService$DockView;->access$1(Lcom/lge/dockservice/DockWindowService$DockView;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 522
    .local v3, "upperDockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/dockservice/DockWindowService$DockView;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 525
    .local v2, "lowerDockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/dockservice/DockWindowService$DockView;>;"
    sget-object v4, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v5, "1. divide Dock with upper and lower group."

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_35
    :goto_35
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_7a

    .line 548
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_cc

    .line 551
    const/4 v1, 0x0

    :goto_43
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_ee

    .line 555
    sget-object v4, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v5, "2. sort each group"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-direct {p0, v3, v7}, Lcom/lge/dockservice/DockWindowService;->sortDockList(Ljava/util/ArrayList;Z)V

    .line 557
    invoke-direct {p0, v2, v8}, Lcom/lge/dockservice/DockWindowService;->sortDockList(Ljava/util/ArrayList;Z)V

    .line 560
    sget-object v4, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v5, "3. relocate all DockViews (push)"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    invoke-direct {p0, v3, v8}, Lcom/lge/dockservice/DockWindowService;->avoidDock(Ljava/util/ArrayList;Z)V

    .line 562
    invoke-direct {p0, v2, v7}, Lcom/lge/dockservice/DockWindowService;->avoidDock(Ljava/util/ArrayList;Z)V

    .line 565
    sget-object v4, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v5, "4. check stick out DockView & relocate"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    invoke-direct {p0}, Lcom/lge/dockservice/DockWindowService;->reloateIfStickOut()V

    .line 569
    sget-object v4, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v5, "5. update all position of DockView."

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    if-eqz p2, :cond_79

    .line 571
    invoke-direct {p0}, Lcom/lge/dockservice/DockWindowService;->updateDockPosition()V

    .line 573
    :cond_79
    return-void

    .line 526
    .end local v1    # "i":I
    :cond_7a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/dockservice/DockWindowService$DockView;

    .line 527
    .local v0, "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mState:I
    invoke-static {v0}, Lcom/lge/dockservice/DockWindowService$DockView;->access$3(Lcom/lge/dockservice/DockWindowService$DockView;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_35

    .line 530
    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mDockDirection:I
    invoke-static {p1}, Lcom/lge/dockservice/DockWindowService$DockView;->access$9(Lcom/lge/dockservice/DockWindowService$DockView;)I

    move-result v5

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mDockDirection:I
    invoke-static {v0}, Lcom/lge/dockservice/DockWindowService$DockView;->access$9(Lcom/lge/dockservice/DockWindowService$DockView;)I

    move-result v6

    if-ne v5, v6, :cond_35

    .line 533
    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/dockservice/DockWindowService$DockView;->access$1(Lcom/lge/dockservice/DockWindowService$DockView;)Ljava/lang/String;

    move-result-object v5

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;
    invoke-static {p1}, Lcom/lge/dockservice/DockWindowService$DockView;->access$1(Lcom/lge/dockservice/DockWindowService$DockView;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a6

    .line 534
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 538
    :cond_a6
    iget v5, p1, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    iget v6, v0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    if-ge v5, v6, :cond_b0

    .line 539
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 540
    :cond_b0
    iget v5, p1, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    iget v6, v0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    if-le v5, v6, :cond_bb

    .line 541
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_35

    .line 542
    :cond_bb
    iget v5, p1, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    iget v6, v0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    if-ne v5, v6, :cond_35

    .line 543
    iget v5, v0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    .line 544
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_35

    .line 549
    .end local v0    # "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    .restart local v1    # "i":I
    :cond_cc
    sget-object v5, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v4, "upperDockList : "

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/dockservice/DockWindowService$DockView;

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;
    invoke-static {v4}, Lcom/lge/dockservice/DockWindowService$DockView;->access$1(Lcom/lge/dockservice/DockWindowService$DockView;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3c

    .line 552
    :cond_ee
    sget-object v5, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v4, "lowerDockList : "

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/dockservice/DockWindowService$DockView;

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;
    invoke-static {v4}, Lcom/lge/dockservice/DockWindowService$DockView;->access$1(Lcom/lge/dockservice/DockWindowService$DockView;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_43
.end method

.method private updateDockPosition()V
    .registers 7

    .prologue
    .line 616
    sget-object v2, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v3, "updateDockPosition "

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 620
    .local v0, "dockViewSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/lge/dockservice/DockWindowService$DockView;>;"
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 621
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_19
    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_20

    .line 629
    return-void

    .line 621
    :cond_20
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/dockservice/DockWindowService$DockView;

    .line 622
    .local v1, "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mState:I
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService$DockView;->access$3(Lcom/lge/dockservice/DockWindowService$DockView;)I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_19

    .line 626
    sget-object v2, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v4, "Update x,y axis in Landscape and Protrate mode"

    invoke-static {v2, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService$DockView;->access$1(Lcom/lge/dockservice/DockWindowService$DockView;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v4, v1, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    iget v5, v1, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    # invokes: Lcom/lge/dockservice/DockWindowService$DockView;->slideTo(II)V
    invoke-static {v2, v4, v5}, Lcom/lge/dockservice/DockWindowService$DockView;->access$10(Lcom/lge/dockservice/DockWindowService$DockView;II)V

    goto :goto_19
.end method


# virtual methods
.method getUndockArea()Landroid/graphics/Rect;
    .registers 7

    .prologue
    .line 836
    invoke-virtual {p0}, Lcom/lge/dockservice/DockWindowService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 837
    .local v0, "dm":Landroid/util/DisplayMetrics;
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/lge/dockservice/DockWindowService;->mDockAreaBerth:I

    const/4 v3, 0x0

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, p0, Lcom/lge/dockservice/DockWindowService;->mDockAreaBerth:I

    sub-int/2addr v4, v5

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 435
    sget-object v0, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v1, "on bind"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-virtual {p0}, Lcom/lge/dockservice/DockWindowService;->startClientWatcherThread()V

    .line 437
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mDockWindowService:Lcom/lge/dockservice/IDockWindowService$Stub;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 19
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 684
    sget-object v13, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "on ConfigurationChanged : mCurrentConfig = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/dockservice/DockWindowService;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    sget-object v13, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "on ConfigurationChanged : newConfig = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const/4 v6, 0x0

    .line 688
    .local v6, "isDockExists":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v13}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3b
    :goto_3b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_4b

    .line 693
    if-nez v6, :cond_5a

    .line 694
    sget-object v13, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v14, "No dock view to handle configuration changes"

    invoke-static {v13, v14}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    :goto_4a
    return-void

    .line 688
    :cond_4b
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/dockservice/DockWindowService$DockView;

    .line 689
    .local v4, "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mState:I
    invoke-static {v4}, Lcom/lge/dockservice/DockWindowService$DockView;->access$3(Lcom/lge/dockservice/DockWindowService$DockView;)I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_3b

    .line 690
    const/4 v6, 0x1

    goto :goto_3b

    .line 697
    .end local v4    # "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    :cond_5a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v13}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v13

    if-nez v13, :cond_75

    .line 698
    sget-object v13, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v14, "no dock view to handle configuration changes"

    invoke-static {v13, v14}, Lcom/lge/app/floating/FloatingFunction$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/dockservice/DockWindowService;->mCurrentConfig:Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    goto :goto_4a

    .line 702
    :cond_75
    move-object/from16 v0, p1

    iget v13, v0, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/dockservice/DockWindowService;->mCurrentConfig:Landroid/content/res/Configuration;

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    if-ne v13, v14, :cond_89

    .line 703
    sget-object v13, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v14, "Screen orientation has not changed. Return."

    invoke-static {v13, v14}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    .line 706
    :cond_89
    sget-object v13, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "number of dockviews = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v15}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/app/floating/FloatingFunction$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 709
    .local v12, "tempDockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/dockservice/DockWindowService$DockView;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v13}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_b6
    :goto_b6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_112

    .line 714
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/lge/dockservice/DockWindowService;->sortDockList(Ljava/util/ArrayList;Z)V

    .line 715
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 716
    .local v2, "displaymetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/dockservice/DockWindowService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 717
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 721
    .local v11, "size":I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/lge/dockservice/DockWindowService;->refreshDockAxis:Z

    if-nez v13, :cond_17f

    .line 722
    sget-object v13, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v14, "Use saved Dock x,y axis "

    invoke-static {v13, v14}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 726
    .local v3, "dockSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/lge/dockservice/DockWindowService$DockView;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v13}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 728
    move-object/from16 v0, p1

    iget v13, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_14a

    .line 729
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_fe
    :goto_fe
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_123

    .line 811
    .end local v3    # "dockSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/lge/dockservice/DockWindowService$DockView;>;"
    :cond_104
    :goto_104
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/dockservice/DockWindowService;->mCurrentConfig:Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 812
    invoke-super/range {p0 .. p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto/16 :goto_4a

    .line 709
    .end local v2    # "displaymetrics":Landroid/util/DisplayMetrics;
    .end local v11    # "size":I
    :cond_112
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/dockservice/DockWindowService$DockView;

    .line 710
    .restart local v4    # "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mState:I
    invoke-static {v4}, Lcom/lge/dockservice/DockWindowService$DockView;->access$3(Lcom/lge/dockservice/DockWindowService$DockView;)I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_b6

    .line 711
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b6

    .line 729
    .end local v4    # "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    .restart local v2    # "displaymetrics":Landroid/util/DisplayMetrics;
    .restart local v3    # "dockSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/lge/dockservice/DockWindowService$DockView;>;"
    .restart local v11    # "size":I
    :cond_123
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/dockservice/DockWindowService$DockView;

    .line 730
    .restart local v4    # "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mState:I
    invoke-static {v4}, Lcom/lge/dockservice/DockWindowService$DockView;->access$3(Lcom/lge/dockservice/DockWindowService$DockView;)I

    move-result v13

    const/4 v15, 0x2

    if-ne v13, v15, :cond_fe

    .line 731
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;
    invoke-static {v4}, Lcom/lge/dockservice/DockWindowService$DockView;->access$1(Lcom/lge/dockservice/DockWindowService$DockView;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v15}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v15, v4, Lcom/lge/dockservice/DockWindowService$DockView;->mX_Landscape:I

    iget v0, v4, Lcom/lge/dockservice/DockWindowService$DockView;->mY_Landscape:I

    move/from16 v16, v0

    move/from16 v0, v16

    # invokes: Lcom/lge/dockservice/DockWindowService$DockView;->moveTo(II)V
    invoke-static {v13, v15, v0}, Lcom/lge/dockservice/DockWindowService$DockView;->access$11(Lcom/lge/dockservice/DockWindowService$DockView;II)V

    goto :goto_fe

    .line 736
    .end local v4    # "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    :cond_14a
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_152
    :goto_152
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_104

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/dockservice/DockWindowService$DockView;

    .line 737
    .restart local v4    # "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mState:I
    invoke-static {v4}, Lcom/lge/dockservice/DockWindowService$DockView;->access$3(Lcom/lge/dockservice/DockWindowService$DockView;)I

    move-result v13

    const/4 v15, 0x2

    if-ne v13, v15, :cond_152

    .line 738
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;
    invoke-static {v4}, Lcom/lge/dockservice/DockWindowService$DockView;->access$1(Lcom/lge/dockservice/DockWindowService$DockView;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v15}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v15, v4, Lcom/lge/dockservice/DockWindowService$DockView;->mX_Portrate:I

    iget v0, v4, Lcom/lge/dockservice/DockWindowService$DockView;->mY_Portrate:I

    move/from16 v16, v0

    move/from16 v0, v16

    # invokes: Lcom/lge/dockservice/DockWindowService$DockView;->moveTo(II)V
    invoke-static {v13, v15, v0}, Lcom/lge/dockservice/DockWindowService$DockView;->access$11(Lcom/lge/dockservice/DockWindowService$DockView;II)V

    goto :goto_152

    .line 745
    .end local v3    # "dockSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/lge/dockservice/DockWindowService$DockView;>;"
    .end local v4    # "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    :cond_17f
    sget-object v13, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v14, "Update Dock x,y axis "

    invoke-static {v13, v14}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    move-object/from16 v0, p1

    iget v13, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/dockservice/DockWindowService;->mCurrentConfig:Landroid/content/res/Configuration;

    iget v14, v14, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v14, v14

    div-float v9, v13, v14

    .line 749
    .local v9, "ratio":F
    const/4 v10, 0x0

    .line 750
    .local v10, "right_baseDock":Lcom/lge/dockservice/DockWindowService$DockView;
    const/4 v7, 0x0

    .line 751
    .local v7, "left_baseDock":Lcom/lge/dockservice/DockWindowService$DockView;
    const/4 v1, -0x1

    .line 752
    .local v1, "centerVertical":I
    move-object/from16 v0, p1

    iget v13, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_1f5

    .line 753
    iget v13, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v1, v13, 0x2

    .line 758
    :goto_1a2
    const/4 v8, 0x0

    .line 760
    .local v8, "offset":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1a4
    if-lt v5, v11, :cond_1fa

    .line 779
    const/4 v5, 0x0

    :goto_1a7
    if-lt v5, v11, :cond_2a5

    .line 799
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/lge/dockservice/DockWindowService;->updateDock(Ljava/util/ArrayList;)V

    .line 801
    if-eqz v7, :cond_1ce

    .line 802
    sget-object v13, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "left_baseDock  : "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;
    invoke-static {v7}, Lcom/lge/dockservice/DockWindowService$DockView;->access$1(Lcom/lge/dockservice/DockWindowService$DockView;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13}, Lcom/lge/dockservice/DockWindowService;->updateDockByLocation(Lcom/lge/dockservice/DockWindowService$DockView;Z)V

    .line 805
    :cond_1ce
    if-eqz v10, :cond_1ee

    .line 806
    sget-object v13, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "right_baseDock  : "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;
    invoke-static {v10}, Lcom/lge/dockservice/DockWindowService$DockView;->access$1(Lcom/lge/dockservice/DockWindowService$DockView;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13}, Lcom/lge/dockservice/DockWindowService;->updateDockByLocation(Lcom/lge/dockservice/DockWindowService$DockView;Z)V

    .line 809
    :cond_1ee
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/lge/dockservice/DockWindowService;->refreshDockAxis:Z

    goto/16 :goto_104

    .line 756
    .end local v5    # "i":I
    .end local v8    # "offset":I
    :cond_1f5
    iget v13, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v1, v13, 0x2

    goto :goto_1a2

    .line 761
    .restart local v5    # "i":I
    .restart local v8    # "offset":I
    :cond_1fa
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lge/dockservice/DockWindowService$DockView;

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mDockDirection:I
    invoke-static {v13}, Lcom/lge/dockservice/DockWindowService$DockView;->access$9(Lcom/lge/dockservice/DockWindowService$DockView;)I

    move-result v13

    const/4 v14, 0x3

    if-eq v13, v14, :cond_20a

    .line 760
    :goto_207
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a4

    .line 764
    :cond_20a
    sget-object v14, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v13, "DIRECTION_RIGHT - before : "

    invoke-direct {v15, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v13, v13, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lge/dockservice/DockWindowService$DockView;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v14, v14, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    int-to-float v14, v14

    mul-float/2addr v14, v9

    float-to-int v14, v14

    iput v14, v13, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    .line 766
    sget-object v14, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v13, "DIRECTION_RIGHT - after : "

    invoke-direct {v15, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v13, v13, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    if-nez v5, :cond_288

    .line 768
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "right_baseDock":Lcom/lge/dockservice/DockWindowService$DockView;
    check-cast v10, Lcom/lge/dockservice/DockWindowService$DockView;

    .line 769
    .restart local v10    # "right_baseDock":Lcom/lge/dockservice/DockWindowService$DockView;
    iget v13, v10, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    sub-int/2addr v13, v1

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 776
    :cond_264
    :goto_264
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lge/dockservice/DockWindowService$DockView;

    const/4 v14, 0x0

    # invokes: Lcom/lge/dockservice/DockWindowService$DockView;->attachToWall(Z)V
    invoke-static {v13, v14}, Lcom/lge/dockservice/DockWindowService$DockView;->access$12(Lcom/lge/dockservice/DockWindowService$DockView;Z)V

    .line 777
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lge/dockservice/DockWindowService$DockView;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v15, v14, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v14, v14, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    # invokes: Lcom/lge/dockservice/DockWindowService$DockView;->moveTo(II)V
    invoke-static {v13, v15, v14}, Lcom/lge/dockservice/DockWindowService$DockView;->access$11(Lcom/lge/dockservice/DockWindowService$DockView;II)V

    goto :goto_207

    .line 771
    :cond_288
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v13, v13, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    sub-int/2addr v13, v1

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    if-ge v13, v8, :cond_264

    .line 772
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "right_baseDock":Lcom/lge/dockservice/DockWindowService$DockView;
    check-cast v10, Lcom/lge/dockservice/DockWindowService$DockView;

    .line 773
    .restart local v10    # "right_baseDock":Lcom/lge/dockservice/DockWindowService$DockView;
    iget v13, v10, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    sub-int/2addr v13, v1

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v8

    goto :goto_264

    .line 780
    :cond_2a5
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lge/dockservice/DockWindowService$DockView;

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mDockDirection:I
    invoke-static {v13}, Lcom/lge/dockservice/DockWindowService$DockView;->access$9(Lcom/lge/dockservice/DockWindowService$DockView;)I

    move-result v13

    const/4 v14, 0x2

    if-eq v13, v14, :cond_2b6

    .line 779
    :goto_2b2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1a7

    .line 783
    :cond_2b6
    sget-object v14, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v13, "DIRECTION_LEFT - before : "

    invoke-direct {v15, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v13, v13, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lge/dockservice/DockWindowService$DockView;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v14, v14, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    int-to-float v14, v14

    mul-float/2addr v14, v9

    float-to-int v14, v14

    iput v14, v13, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    .line 785
    sget-object v14, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v13, "DIRECTION_LEFT - after : "

    invoke-direct {v15, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v13, v13, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    if-nez v5, :cond_335

    .line 787
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "left_baseDock":Lcom/lge/dockservice/DockWindowService$DockView;
    check-cast v7, Lcom/lge/dockservice/DockWindowService$DockView;

    .line 788
    .restart local v7    # "left_baseDock":Lcom/lge/dockservice/DockWindowService$DockView;
    iget v13, v7, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    sub-int/2addr v13, v1

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 795
    :cond_310
    :goto_310
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lge/dockservice/DockWindowService$DockView;

    const/4 v14, 0x0

    # invokes: Lcom/lge/dockservice/DockWindowService$DockView;->attachToWall(Z)V
    invoke-static {v13, v14}, Lcom/lge/dockservice/DockWindowService$DockView;->access$12(Lcom/lge/dockservice/DockWindowService$DockView;Z)V

    .line 796
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lge/dockservice/DockWindowService$DockView;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v15, v14, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v14, v14, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    # invokes: Lcom/lge/dockservice/DockWindowService$DockView;->moveTo(II)V
    invoke-static {v13, v15, v14}, Lcom/lge/dockservice/DockWindowService$DockView;->access$11(Lcom/lge/dockservice/DockWindowService$DockView;II)V

    goto/16 :goto_2b2

    .line 790
    :cond_335
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v13, v13, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    sub-int/2addr v13, v1

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    if-ge v13, v8, :cond_310

    .line 791
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "left_baseDock":Lcom/lge/dockservice/DockWindowService$DockView;
    check-cast v7, Lcom/lge/dockservice/DockWindowService$DockView;

    .line 792
    .restart local v7    # "left_baseDock":Lcom/lge/dockservice/DockWindowService$DockView;
    iget v13, v7, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    sub-int/2addr v13, v1

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v8

    goto :goto_310
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 463
    sget-object v1, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v2, "on create"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 465
    invoke-static {p0}, Lcom/lge/dockservice/Res;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/dockservice/DockWindowService;->mResources:Landroid/content/res/Resources;

    .line 466
    new-instance v1, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;

    invoke-direct {v1, p0}, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;-><init>(Lcom/lge/dockservice/DockWindowService;)V

    iput-object v1, p0, Lcom/lge/dockservice/DockWindowService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 467
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 468
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.lge.intent.action.FLOATING_WINDOW_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 469
    const-string v1, "com.lge.intent.action.FLOATING_WINDOW_ENTER_LOWPROFILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 470
    const-string v1, "com.lge.intent.action.FLOATING_WINDOW_EXIT_LOWPROFILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 471
    const-string v1, "com.lge.action.INCOMING_FULLSCREEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 472
    const-string v1, "com.lge.android.intent.action.ACCESSORY_COVER_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 473
    const-string v1, "com.lge.lockscreen.intent.action.START_KIDSHOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 474
    const-string v1, "com.lge.lockscreen.intent.action.END_KIDSHOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 475
    const-string v1, "com.lge.lockscreen.intent.action.LOCKSCREEN_CREATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 476
    const-string v1, "com.lge.lockscreen.intent.action.START_STANDARD_HOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 477
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 478
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 479
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/lge/dockservice/DockWindowService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 480
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/lge/dockservice/DockWindowService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/lge/dockservice/DockWindowService;->mWindowManager:Landroid/view/WindowManager;

    .line 481
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 482
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService;->mLowProfileRequests:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 484
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/lge/dockservice/DockWindowService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 485
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/lge/dockservice/DockWindowService;->mHandler:Landroid/os/Handler;

    .line 486
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f06000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/lge/dockservice/DockWindowService;->mDockAreaBerth:I

    .line 487
    return-void
.end method

.method public onDestroy()V
    .registers 7

    .prologue
    .line 491
    sget-object v3, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v4, "on destroy"

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 495
    sget-object v3, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v4, "Execute killDock to ensure all dock views are removed."

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 497
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/lge/dockservice/DockWindowService$DockView;>;>;"
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3d

    .line 504
    const-wide/16 v4, 0x7d0

    :try_start_23
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 505
    invoke-virtual {p0}, Lcom/lge/dockservice/DockWindowService;->stopClientWatcherThread()V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_29} :catch_4d

    .line 509
    :goto_29
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/lge/dockservice/DockWindowService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 510
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 511
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService;->mLowProfileRequests:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 512
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/lge/dockservice/DockWindowService;->stopForeground(Z)V

    .line 513
    return-void

    .line 498
    :cond_3d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 499
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/lge/dockservice/DockWindowService$DockView;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/dockservice/DockWindowService$DockView;

    invoke-virtual {v3}, Lcom/lge/dockservice/DockWindowService$DockView;->killdock()V

    goto :goto_1b

    .line 506
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/lge/dockservice/DockWindowService$DockView;>;"
    :catch_4d
    move-exception v0

    .line 507
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_29
.end method

.method public onRebind(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 458
    sget-object v0, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v1, "on rebind"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v5, 0x2

    .line 817
    if-eqz p1, :cond_2d

    .line 818
    const-string v2, "com.lge.app.floating.ExtraService.VIBRATE"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 819
    .local v0, "extraServiceVibrate":I
    if-lez v0, :cond_2d

    .line 820
    sget-object v2, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "received extra service request for com.lge.app.floating.ExtraService.VIBRATE "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    const-string v2, "vibrator"

    invoke-virtual {p0, v2}, Lcom/lge/dockservice/DockWindowService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 822
    .local v1, "vibe":Landroid/os/Vibrator;
    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 828
    .end local v0    # "extraServiceVibrate":I
    .end local v1    # "vibe":Landroid/os/Vibrator;
    :goto_2c
    return v5

    .line 826
    :cond_2d
    const/4 v2, 0x1

    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v2, v3}, Lcom/lge/dockservice/DockWindowService;->startForeground(ILandroid/app/Notification;)V

    .line 827
    sget-object v2, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "service started by "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 442
    sget-object v2, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v3, "on unbind"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 446
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/lge/dockservice/DockWindowService$DockView;>;>;"
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 453
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v2

    return v2

    .line 447
    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 448
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/lge/dockservice/DockWindowService$DockView;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/dockservice/DockWindowService$DockView;

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mClient:Lcom/lge/dockservice/IBaseDockWindow;
    invoke-static {v2}, Lcom/lge/dockservice/DockWindowService$DockView;->access$8(Lcom/lge/dockservice/DockWindowService$DockView;)Lcom/lge/dockservice/IBaseDockWindow;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/dockservice/DockWindowService$DockView;

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mClient:Lcom/lge/dockservice/IBaseDockWindow;
    invoke-static {v2}, Lcom/lge/dockservice/DockWindowService$DockView;->access$8(Lcom/lge/dockservice/DockWindowService$DockView;)Lcom/lge/dockservice/IBaseDockWindow;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/dockservice/IBaseDockWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-nez v2, :cond_11

    .line 449
    sget-object v3, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "Client "

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/dockservice/DockWindowService$DockView;

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/dockservice/DockWindowService$DockView;->access$1(Lcom/lge/dockservice/DockWindowService$DockView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " seems to died. Let\'s killdock"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/dockservice/DockWindowService$DockView;

    invoke-virtual {v2}, Lcom/lge/dockservice/DockWindowService$DockView;->killdock()V

    goto :goto_11
.end method

.method declared-synchronized startClientWatcherThread()V
    .registers 3

    .prologue
    .line 193
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mClientWatcherThread:Lcom/lge/dockservice/DockWindowService$ClientWatcherThread;

    if-nez v0, :cond_19

    .line 194
    sget-object v0, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v1, "ClientProcessWatcherThread start"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance v0, Lcom/lge/dockservice/DockWindowService$ClientWatcherThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/dockservice/DockWindowService$ClientWatcherThread;-><init>(Lcom/lge/dockservice/DockWindowService;Lcom/lge/dockservice/DockWindowService$ClientWatcherThread;)V

    iput-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mClientWatcherThread:Lcom/lge/dockservice/DockWindowService$ClientWatcherThread;

    .line 196
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mClientWatcherThread:Lcom/lge/dockservice/DockWindowService$ClientWatcherThread;

    invoke-virtual {v0}, Lcom/lge/dockservice/DockWindowService$ClientWatcherThread;->start()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 198
    :cond_19
    monitor-exit p0

    return-void

    .line 193
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized stopClientWatcherThread()V
    .registers 3

    .prologue
    .line 201
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mClientWatcherThread:Lcom/lge/dockservice/DockWindowService$ClientWatcherThread;

    if-eqz v0, :cond_14

    .line 202
    sget-object v0, Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;

    const-string v1, "ClientWatcherThread stop"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mClientWatcherThread:Lcom/lge/dockservice/DockWindowService$ClientWatcherThread;

    invoke-virtual {v0}, Lcom/lge/dockservice/DockWindowService$ClientWatcherThread;->requestStop()V

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/dockservice/DockWindowService;->mClientWatcherThread:Lcom/lge/dockservice/DockWindowService$ClientWatcherThread;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 206
    :cond_14
    monitor-exit p0

    return-void

    .line 201
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method
