.class public Lcom/lge/view/SplitWindowViewHelperAO;
.super Ljava/lang/Object;
.source "SplitWindowViewHelper.java"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SplitWindowViewHelper"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/view/SplitWindowViewHelperAO;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    :try_start_0
    invoke-static {}, Lcom/lge/view/SplitWindowViewHelperAO;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 33
    :goto_3
    return-void

    .line 31
    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/view/SplitWindowViewHelperAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_view_SplitWindowViewHelperAO$1$b00d2cfproceed(Landroid/view/View;Landroid/graphics/Rect;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 5
    .param p0, "this"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_lge_view_SplitWindowViewHelperAO$com_lge_view_SplitWindowViewHelperAO$TAG()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/view/SplitWindowViewHelperAO;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_lge_view_SplitWindowViewHelperAO$com_lge_view_SplitWindowViewHelperAO$TAG(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/lge/view/SplitWindowViewHelperAO;->TAG:Ljava/lang/String;

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/view/SplitWindowViewHelperAO;

    invoke-direct {v0}, Lcom/lge/view/SplitWindowViewHelperAO;-><init>()V

    sput-object v0, Lcom/lge/view/SplitWindowViewHelperAO;->ajc$perSingletonInstance:Lcom/lge/view/SplitWindowViewHelperAO;

    return-void
.end method

.method public static aspectOf()Lcom/lge/view/SplitWindowViewHelperAO;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/view/SplitWindowViewHelperAO;->ajc$perSingletonInstance:Lcom/lge/view/SplitWindowViewHelperAO;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_view_SplitWindowViewHelperAO"

    sget-object v2, Lcom/lge/view/SplitWindowViewHelperAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/view/SplitWindowViewHelperAO;->ajc$perSingletonInstance:Lcom/lge/view/SplitWindowViewHelperAO;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/view/SplitWindowViewHelperAO;->ajc$perSingletonInstance:Lcom/lge/view/SplitWindowViewHelperAO;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_lge_view_SplitWindowViewHelperAO$1$b00d2cf(Landroid/view/View;Landroid/graphics/Rect;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outRect"    # Landroid/graphics/Rect;
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "view,outRect,ajc$aroundClosure"
        value = "(execution(public static boolean SplitWindowViewHelper.isWindowSplit(View, Rect)) && args(view, outRect))"
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 39
    sget-boolean v3, Lcom/lge/config/ConfigBuildFlags;->CAPP_SPLITWINDOW:Z

    if-nez v3, :cond_a

    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    move v0, v2

    .line 64
    :cond_9
    :goto_9
    return v0

    .line 43
    :cond_a
    const/4 v1, 0x0

    .line 45
    .local v1, "wm":Lcom/lge/view/IWindowManagerEx;
    :try_start_b
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/view/IWindowManagerEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/view/IWindowManagerEx;
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_14} :catch_35

    move-result-object v1

    .line 51
    const/4 v0, 0x0

    .line 53
    .local v0, "result":Z
    if-eqz p1, :cond_9

    invoke-static {p1}, Landroid/view/View;->ajc$get$mAttachInfo(Landroid/view/View;)Landroid/view/View$AttachInfo;

    move-result-object v3

    if-eqz v3, :cond_9

    if-eqz v1, :cond_9

    .line 55
    :try_start_20
    invoke-static {p1}, Landroid/view/View;->ajc$get$mAttachInfo(Landroid/view/View;)Landroid/view/View$AttachInfo;

    move-result-object v3

    invoke-static {v3}, Landroid/view/View$AttachInfo;->ajc$get$mSession(Landroid/view/View$AttachInfo;)Landroid/view/IWindowSession;

    move-result-object v3

    invoke-static {p1}, Landroid/view/View;->ajc$get$mAttachInfo(Landroid/view/View;)Landroid/view/View$AttachInfo;

    move-result-object v4

    invoke-static {v4}, Landroid/view/View$AttachInfo;->ajc$get$mWindow(Landroid/view/View$AttachInfo;)Landroid/view/IWindow;

    move-result-object v4

    invoke-interface {v1, v3, v4, p2}, Lcom/lge/view/IWindowManagerEx;->isWindowSplit(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/graphics/Rect;)Z
    :try_end_33
    .catch Ljava/lang/NullPointerException; {:try_start_20 .. :try_end_33} :catch_3f
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_33} :catch_49

    move-result v0

    goto :goto_9

    .line 47
    .end local v0    # "result":Z
    :catch_35
    move-exception v3

    const-string v3, "SplitWindowViewHelper"

    const-string v4, "IWindowManagerEx is null now.. return false"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 48
    goto :goto_9

    .line 57
    .restart local v0    # "result":Z
    :catch_3f
    move-exception v3

    const-string v3, "SplitWindowViewHelper"

    const-string v4, "mSession or mWindow is null now.. return false"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 58
    goto :goto_9

    .line 60
    :catch_49
    move-exception v3

    const-string v3, "SplitWindowViewHelper"

    const-string v4, "Session or binder is not available now.. return false"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 61
    goto :goto_9
.end method
