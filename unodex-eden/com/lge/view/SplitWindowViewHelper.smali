.class public Lcom/lge/view/SplitWindowViewHelper;
.super Ljava/lang/Object;
.source "SplitWindowViewHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isWindowSplit(Landroid/view/View;Landroid/graphics/Rect;)Z
    .registers 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1
    invoke-static {}, Lcom/lge/view/SplitWindowViewHelperAO;->aspectOf()Lcom/lge/view/SplitWindowViewHelperAO;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/lge/view/SplitWindowViewHelper;->isWindowSplit_aroundBody1$advice(Landroid/view/View;Landroid/graphics/Rect;Lcom/lge/view/SplitWindowViewHelperAO;Landroid/view/View;Landroid/graphics/Rect;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    return v0
.end method

.method private static final isWindowSplit_aroundBody0(Landroid/view/View;Landroid/graphics/Rect;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method private static final isWindowSplit_aroundBody1$advice(Landroid/view/View;Landroid/graphics/Rect;Lcom/lge/view/SplitWindowViewHelperAO;Landroid/view/View;Landroid/graphics/Rect;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 17

    .prologue
    const/4 v2, 0x0

    .line 39
    move-object v5, p0

    .local v5, "view":Landroid/view/View;
    move-object v6, p1

    .local v6, "outRect":Landroid/graphics/Rect;
    move-object v7, p2

    .local v7, "ajc$aspectInstance":Lcom/lge/view/SplitWindowViewHelperAO;
    move-object v5, p3

    move-object v6, p4

    move-object/from16 v10, p5

    .local v10, "ajc$aroundClosure":Lorg/aspectj/runtime/internal/AroundClosure;
    sget-boolean v3, Lcom/lge/config/ConfigBuildFlags;->CAPP_SPLITWINDOW:Z

    if-nez v3, :cond_11

    .line 40
    invoke-virtual {v5, v6}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    move v0, v2

    .line 64
    :cond_10
    :goto_10
    return v0

    .line 43
    :cond_11
    const/4 v1, 0x0

    .line 45
    .local v1, "wm":Lcom/lge/view/IWindowManagerEx;
    :try_start_12
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/view/IWindowManagerEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/view/IWindowManagerEx;
    :try_end_1b
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_1b} :catch_3c

    move-result-object v1

    .line 51
    const/4 v0, 0x0

    .line 53
    .local v0, "result":Z
    if-eqz v5, :cond_10

    invoke-static {v5}, Landroid/view/View;->ajc$get$mAttachInfo(Landroid/view/View;)Landroid/view/View$AttachInfo;

    move-result-object v3

    if-eqz v3, :cond_10

    if-eqz v1, :cond_10

    .line 55
    :try_start_27
    invoke-static {v5}, Landroid/view/View;->ajc$get$mAttachInfo(Landroid/view/View;)Landroid/view/View$AttachInfo;

    move-result-object v3

    invoke-static {v3}, Landroid/view/View$AttachInfo;->ajc$get$mSession(Landroid/view/View$AttachInfo;)Landroid/view/IWindowSession;

    move-result-object v3

    invoke-static {v5}, Landroid/view/View;->ajc$get$mAttachInfo(Landroid/view/View;)Landroid/view/View$AttachInfo;

    move-result-object v4

    invoke-static {v4}, Landroid/view/View$AttachInfo;->ajc$get$mWindow(Landroid/view/View$AttachInfo;)Landroid/view/IWindow;

    move-result-object v4

    invoke-interface {v1, v3, v4, v6}, Lcom/lge/view/IWindowManagerEx;->isWindowSplit(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/graphics/Rect;)Z
    :try_end_3a
    .catch Ljava/lang/NullPointerException; {:try_start_27 .. :try_end_3a} :catch_46
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_3a} :catch_50

    move-result v0

    goto :goto_10

    .line 47
    .end local v0    # "result":Z
    :catch_3c
    move-exception v3

    const-string v3, "SplitWindowViewHelper"

    const-string v4, "IWindowManagerEx is null now.. return false"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 48
    goto :goto_10

    .line 57
    .restart local v0    # "result":Z
    :catch_46
    move-exception v3

    const-string v3, "SplitWindowViewHelper"

    const-string v4, "mSession or mWindow is null now.. return false"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 58
    goto :goto_10

    .line 60
    :catch_50
    move-exception v3

    const-string v3, "SplitWindowViewHelper"

    const-string v4, "Session or binder is not available now.. return false"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 61
    goto :goto_10
.end method
