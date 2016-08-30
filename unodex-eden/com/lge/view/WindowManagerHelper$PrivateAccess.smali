.class public Lcom/lge/view/WindowManagerHelper$PrivateAccess;
.super Ljava/lang/Object;
.source "WindowManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/view/WindowManagerHelper;
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
.field private static final TAG:Ljava/lang/String; = "WindowManagerHelper.PrivateAccess"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/view/WindowManagerHelper$PrivateAccess;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 122
    :try_start_0
    invoke-static {}, Lcom/lge/view/WindowManagerHelper$PrivateAccess;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 123
    :goto_3
    return-void

    .line 122
    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/view/WindowManagerHelper$PrivateAccess;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_view_WindowManagerHelper$PrivateAccess$1$d2468b85proceed(Landroid/view/View;FFFFLorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 9
    .param p0, "this"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 127
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->floatObject(F)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->floatObject(F)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p3}, Lorg/aspectj/runtime/internal/Conversions;->floatObject(F)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {p4}, Lorg/aspectj/runtime/internal/Conversions;->floatObject(F)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p5, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_lge_view_WindowManagerHelper$PrivateAccess$com_lge_view_WindowManagerHelper$PrivateAccess$TAG()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/view/WindowManagerHelper$PrivateAccess;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_lge_view_WindowManagerHelper$PrivateAccess$com_lge_view_WindowManagerHelper$PrivateAccess$TAG(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/lge/view/WindowManagerHelper$PrivateAccess;->TAG:Ljava/lang/String;

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/view/WindowManagerHelper$PrivateAccess;

    invoke-direct {v0}, Lcom/lge/view/WindowManagerHelper$PrivateAccess;-><init>()V

    sput-object v0, Lcom/lge/view/WindowManagerHelper$PrivateAccess;->ajc$perSingletonInstance:Lcom/lge/view/WindowManagerHelper$PrivateAccess;

    return-void
.end method

.method public static aspectOf()Lcom/lge/view/WindowManagerHelper$PrivateAccess;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/view/WindowManagerHelper$PrivateAccess;->ajc$perSingletonInstance:Lcom/lge/view/WindowManagerHelper$PrivateAccess;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_view_WindowManagerHelper$PrivateAccess"

    sget-object v2, Lcom/lge/view/WindowManagerHelper$PrivateAccess;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/view/WindowManagerHelper$PrivateAccess;->ajc$perSingletonInstance:Lcom/lge/view/WindowManagerHelper$PrivateAccess;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/view/WindowManagerHelper$PrivateAccess;->ajc$perSingletonInstance:Lcom/lge/view/WindowManagerHelper$PrivateAccess;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_lge_view_WindowManagerHelper$PrivateAccess$1$d2468b85(Landroid/view/View;FFFFLorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 11
    .param p1, "frameView"    # Landroid/view/View;
    .param p2, "startX"    # F
    .param p3, "startY"    # F
    .param p4, "deltaX"    # F
    .param p5, "deltaY"    # F
    .param p6, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "frameView,startX,startY,deltaX,deltaY,ajc$aroundClosure"
        value = "(execution(public static void WindowManagerHelper.doWindowMove(..)) && args(frameView, startX, startY, deltaX, deltaY))"
    .end annotation

    .prologue
    .line 129
    if-nez p1, :cond_3

    .line 147
    :goto_2
    return-void

    .line 132
    :cond_3
    const/4 v1, 0x0

    .line 134
    .local v1, "wm":Lcom/lge/view/IWindowManagerEx;
    :try_start_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 135
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    add-float v2, p4, p2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 136
    add-float v2, p5, p3

    float-to-int v2, v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 137
    iput-object v0, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 138
    invoke-static {p1}, Landroid/view/View;->ajc$get$mAttachInfo(Landroid/view/View;)Landroid/view/View$AttachInfo;

    move-result-object v2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v3, v2, Landroid/view/View$AttachInfo;->mWindowLeft:I

    .line 139
    invoke-static {p1}, Landroid/view/View;->ajc$get$mAttachInfo(Landroid/view/View;)Landroid/view/View$AttachInfo;

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
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2, p4, p5}, Lcom/lge/view/IWindowManagerEx;->doWindowMove(Landroid/os/IBinder;FF)V
    :try_end_37
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_37} :catch_38
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_37} :catch_41

    goto :goto_2

    .line 143
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    :catch_38
    move-exception v2

    const-string v2, "WindowManagerHelper.PrivateAccess"

    const-string v3, "IWindowManagerEx is null now.. "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 145
    :catch_41
    move-exception v2

    const-string v2, "WindowManagerHelper.PrivateAccess"

    const-string v3, "IWindowManagerEx binder is not available.."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
