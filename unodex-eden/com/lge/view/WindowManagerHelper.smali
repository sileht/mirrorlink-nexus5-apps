.class public Lcom/lge/view/WindowManagerHelper;
.super Ljava/lang/Object;
.source "WindowManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/view/WindowManagerHelper$PrivateAccess;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManagerHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doWindowMove(Landroid/view/View;FFFF)V
    .registers 17
    .param p0, "frameView"    # Landroid/view/View;
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "deltaX"    # F
    .param p4, "deltaY"    # F

    .prologue
    .line 1
    invoke-static {}, Lcom/lge/view/WindowManagerHelper$PrivateAccess;->aspectOf()Lcom/lge/view/WindowManagerHelper$PrivateAccess;

    move-result-object v5

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object v6, p0

    move v7, p1

    move v8, p2

    move v9, p3

    move/from16 v10, p4

    invoke-static/range {v0 .. v11}, Lcom/lge/view/WindowManagerHelper;->doWindowMove_aroundBody1$advice(Landroid/view/View;FFFFLcom/lge/view/WindowManagerHelper$PrivateAccess;Landroid/view/View;FFFFLorg/aspectj/runtime/internal/AroundClosure;)V

    return-void
.end method

.method private static final doWindowMove_aroundBody0(Landroid/view/View;FFFF)V
    .registers 5

    .prologue
    .line 102
    return-void
.end method

.method private static final doWindowMove_aroundBody1$advice(Landroid/view/View;FFFFLcom/lge/view/WindowManagerHelper$PrivateAccess;Landroid/view/View;FFFFLorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 28

    .prologue
    .line 129
    move-object/from16 v4, p0

    .local v4, "frameView":Landroid/view/View;
    move/from16 v5, p1

    .local v5, "startX":F
    move/from16 v6, p2

    .local v6, "startY":F
    move/from16 v7, p3

    .local v7, "deltaX":F
    move/from16 v8, p4

    .local v8, "deltaY":F
    move-object/from16 v9, p5

    .local v9, "ajc$aspectInstance":Lcom/lge/view/WindowManagerHelper$PrivateAccess;
    move-object/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    move-object/from16 v15, p11

    .local v15, "ajc$aroundClosure":Lorg/aspectj/runtime/internal/AroundClosure;
    if-nez v4, :cond_1b

    .line 147
    :goto_1a
    return-void

    .line 132
    :cond_1b
    const/4 v1, 0x0

    .line 134
    .local v1, "wm":Lcom/lge/view/IWindowManagerEx;
    :try_start_1c
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 135
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    add-float v2, v7, v5

    float-to-int v2, v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 136
    add-float v2, v8, v6

    float-to-int v2, v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 137
    iput-object v0, v4, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 138
    invoke-static {v4}, Landroid/view/View;->ajc$get$mAttachInfo(Landroid/view/View;)Landroid/view/View$AttachInfo;

    move-result-object v2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v3, v2, Landroid/view/View$AttachInfo;->mWindowLeft:I

    .line 139
    invoke-static {v4}, Landroid/view/View;->ajc$get$mAttachInfo(Landroid/view/View;)Landroid/view/View$AttachInfo;

    move-result-object v2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v3, v2, Landroid/view/View$AttachInfo;->mWindowTop:I

    .line 140
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/view/IWindowManagerEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/view/IWindowManagerEx;

    move-result-object v1

    .line 141
    invoke-virtual {v4}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2, v7, v8}, Lcom/lge/view/IWindowManagerEx;->doWindowMove(Landroid/os/IBinder;FF)V
    :try_end_4f
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_4f} :catch_50
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_4f} :catch_59

    goto :goto_1a

    .line 143
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    :catch_50
    move-exception v2

    const-string v2, "WindowManagerHelper.PrivateAccess"

    const-string v3, "IWindowManagerEx is null now.. "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 145
    :catch_59
    move-exception v2

    const-string v2, "WindowManagerHelper.PrivateAccess"

    const-string v3, "IWindowManagerEx binder is not available.."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public static finishWindowMove(Landroid/view/View;)V
    .registers 4
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 108
    if-nez p0, :cond_3

    .line 120
    :goto_2
    return-void

    .line 111
    :cond_3
    const/4 v0, 0x0

    .line 113
    .local v0, "wm":Lcom/lge/view/IWindowManagerEx;
    :try_start_4
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/view/IWindowManagerEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/view/IWindowManagerEx;

    move-result-object v0

    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lge/view/IWindowManagerEx;->finishWindowMove(Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_15} :catch_16
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_15} :catch_1f

    goto :goto_2

    .line 116
    :catch_16
    move-exception v1

    const-string v1, "WindowManagerHelper"

    const-string v2, "IWindowManagerEx is null now.. "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 118
    :catch_1f
    move-exception v1

    const-string v1, "WindowManagerHelper"

    const-string v2, "IWindowManagerEx binder is not available.."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static getLGSystemUiVisibility()I
    .registers 4

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "mSystemUiVisibilityLG":I
    const/4 v1, 0x0

    .line 60
    .local v1, "wm":Lcom/lge/view/IWindowManagerEx;
    :try_start_2
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/view/IWindowManagerEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/view/IWindowManagerEx;
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_b} :catch_13

    move-result-object v1

    .line 65
    :goto_c
    if-eqz v1, :cond_12

    .line 67
    :try_start_e
    invoke-interface {v1}, Lcom/lge/view/IWindowManagerEx;->getLGSystemUiVisibility()I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_1c

    move-result v0

    .line 72
    :cond_12
    :goto_12
    return v0

    .line 62
    :catch_13
    move-exception v2

    const-string v2, "WindowManagerHelper"

    const-string v3, "IWindowManagerEx is null now."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 69
    :catch_1c
    move-exception v2

    const-string v2, "WindowManagerHelper"

    const-string v3, "Session or binder is not available now."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method public static getSystemBarShownState()I
    .registers 4

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, "ShownState":I
    const/4 v1, 0x0

    .line 35
    .local v1, "wm":Lcom/lge/view/IWindowManagerEx;
    :try_start_2
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/view/IWindowManagerEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/view/IWindowManagerEx;
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_b} :catch_13

    move-result-object v1

    .line 40
    :goto_c
    if-eqz v1, :cond_12

    .line 42
    :try_start_e
    invoke-interface {v1}, Lcom/lge/view/IWindowManagerEx;->getSystemBarShownState()I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_1c

    move-result v0

    .line 47
    :cond_12
    :goto_12
    return v0

    .line 37
    :catch_13
    move-exception v2

    const-string v2, "WindowManagerHelper"

    const-string v3, "IWindowManagerEx is null now."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 44
    :catch_1c
    move-exception v2

    const-string v2, "WindowManagerHelper"

    const-string v3, "Session or binder is not available now."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method public static prepareWindowMove(Landroid/view/View;)V
    .registers 4
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 79
    if-nez p0, :cond_3

    .line 91
    :goto_2
    return-void

    .line 82
    :cond_3
    const/4 v0, 0x0

    .line 84
    .local v0, "wm":Lcom/lge/view/IWindowManagerEx;
    :try_start_4
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/view/IWindowManagerEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/view/IWindowManagerEx;

    move-result-object v0

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lge/view/IWindowManagerEx;->prepareWindowMove(Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_15} :catch_16
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_15} :catch_1f

    goto :goto_2

    .line 87
    :catch_16
    move-exception v1

    const-string v1, "WindowManagerHelper"

    const-string v2, "IWindowManagerEx is null now.. return false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 89
    :catch_1f
    move-exception v1

    const-string v1, "WindowManagerHelper"

    const-string v2, "IWindowManagerEx binder is not available.."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
