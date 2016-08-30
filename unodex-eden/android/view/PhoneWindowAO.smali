.class public Landroid/view/PhoneWindowAO;
.super Ljava/lang/Object;
.source "PhoneWindowAO.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final KEY:Ljava/lang/String; = "sys.navibar.color"

.field private static final TAG:Ljava/lang/String; = "PhoneWindowEx"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Landroid/view/PhoneWindowAO;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    :try_start_0
    invoke-static {}, Landroid/view/PhoneWindowAO;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 27
    :goto_3
    return-void

    .line 24
    :catch_4
    move-exception v0

    sput-object v0, Landroid/view/PhoneWindowAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$android_view_PhoneWindowAO$1$73b7c3d1proceed(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$DecorView;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/view/ViewGroup;
    .registers 5
    .param p0, "this"    # Lcom/android/internal/policy/PhoneWindow;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic ajc$around$android_view_PhoneWindowAO$2$99ce526bproceed(Lcom/android/internal/policy/PhoneWindow;Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 5
    .param p0, "this"    # Lcom/android/internal/policy/PhoneWindow;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 113
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

.method static synthetic ajc$around$android_view_PhoneWindowAO$4$3f9764a4proceed(Lcom/android/internal/policy/PhoneWindow$DecorView;ZLorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 6
    .param p0, "this"    # Lcom/android/internal/policy/PhoneWindow$DecorView;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 130
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p2, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldGet$android_view_PhoneWindowAO$android_view_PhoneWindowAO$KEY()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Landroid/view/PhoneWindowAO;->KEY:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$android_view_PhoneWindowAO$android_view_PhoneWindowAO$TAG()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Landroid/view/PhoneWindowAO;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$android_view_PhoneWindowAO$android_view_PhoneWindowAO$KEY(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Landroid/view/PhoneWindowAO;->KEY:Ljava/lang/String;

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$android_view_PhoneWindowAO$android_view_PhoneWindowAO$TAG(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Landroid/view/PhoneWindowAO;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static synthetic ajc$interFieldGetDispatch$android_view_PhoneWindowAO$com_android_internal_policy_PhoneWindow$DecorView$mPhoneWindow(Lcom/android/internal/policy/PhoneWindow$DecorView;)Lcom/android/internal/policy/PhoneWindow;
    .registers 2

    invoke-static {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->ajc$get$mPhoneWindow(Lcom/android/internal/policy/PhoneWindow$DecorView;)Lcom/android/internal/policy/PhoneWindow;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$android_view_PhoneWindowAO$com_android_internal_policy_PhoneWindow$mIsFocused(Lcom/android/internal/policy/PhoneWindow;)Z
    .registers 2

    invoke-static {p0}, Lcom/android/internal/policy/PhoneWindow;->ajc$get$mIsFocused(Lcom/android/internal/policy/PhoneWindow;)Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$android_view_PhoneWindowAO$com_android_internal_policy_PhoneWindow$mWindowManagerService(Lcom/android/internal/policy/PhoneWindow;)Lcom/lge/view/IWindowManagerEx;
    .registers 2

    invoke-static {p0}, Lcom/android/internal/policy/PhoneWindow;->ajc$get$mWindowManagerService(Lcom/android/internal/policy/PhoneWindow;)Lcom/lge/view/IWindowManagerEx;

    move-result-object v0

    return-object v0
.end method

.method public static ajc$interFieldInit$android_view_PhoneWindowAO$com_android_internal_policy_PhoneWindow$DecorView$mPhoneWindow(Lcom/android/internal/policy/PhoneWindow$DecorView;)V
    .registers 1

    .prologue
    .line 120
    return-void
.end method

.method public static ajc$interFieldInit$android_view_PhoneWindowAO$com_android_internal_policy_PhoneWindow$mIsFocused(Lcom/android/internal/policy/PhoneWindow;)V
    .registers 2
    .param p0, "ajc$this_"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/view/PhoneWindowAO;->ajc$interFieldSetDispatch$android_view_PhoneWindowAO$com_android_internal_policy_PhoneWindow$mIsFocused(Lcom/android/internal/policy/PhoneWindow;Z)V

    return-void
.end method

.method public static ajc$interFieldInit$android_view_PhoneWindowAO$com_android_internal_policy_PhoneWindow$mWindowManagerService(Lcom/android/internal/policy/PhoneWindow;)V
    .registers 1

    .prologue
    .line 137
    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$android_view_PhoneWindowAO$com_android_internal_policy_PhoneWindow$DecorView$mPhoneWindow(Lcom/android/internal/policy/PhoneWindow$DecorView;Lcom/android/internal/policy/PhoneWindow;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->ajc$set$mPhoneWindow(Lcom/android/internal/policy/PhoneWindow$DecorView;Lcom/android/internal/policy/PhoneWindow;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$android_view_PhoneWindowAO$com_android_internal_policy_PhoneWindow$mIsFocused(Lcom/android/internal/policy/PhoneWindow;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->ajc$set$mIsFocused(Lcom/android/internal/policy/PhoneWindow;Z)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$android_view_PhoneWindowAO$com_android_internal_policy_PhoneWindow$mWindowManagerService(Lcom/android/internal/policy/PhoneWindow;Lcom/lge/view/IWindowManagerEx;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->ajc$set$mWindowManagerService(Lcom/android/internal/policy/PhoneWindow;Lcom/lge/view/IWindowManagerEx;)V

    return-void
.end method

.method public static ajc$interMethod$android_view_PhoneWindowAO$com_android_internal_policy_PhoneWindow$sendTouchEvtToChangeFocusWhenSplit(Lcom/android/internal/policy/PhoneWindow;Landroid/view/MotionEvent;)V
    .registers 7
    .param p0, "ajc$this_"    # Lcom/android/internal/policy/PhoneWindow;
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 141
    sget-boolean v3, Lcom/lge/config/ConfigBuildFlags;->CAPP_SPLITWINDOW:Z

    if-eqz v3, :cond_11

    .line 142
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 143
    .local v1, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz v1, :cond_12

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_12

    .line 199
    .end local v1    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_11
    :goto_11
    return-void

    .line 147
    .restart local v1    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_12
    invoke-static {p0}, Lcom/android/internal/policy/PhoneWindow;->ajc$get$mDecor(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-result-object v3

    if-eqz v3, :cond_20

    invoke-static {p0}, Lcom/android/internal/policy/PhoneWindow;->ajc$get$mDecor(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 149
    .local v0, "appToken":Landroid/os/IBinder;
    :cond_20
    const/4 v2, 0x0

    .line 152
    .local v2, "mWindowManagerService":Lcom/lge/view/IWindowManagerEx;
    :try_start_21
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/view/IWindowManagerEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/view/IWindowManagerEx;
    :try_end_2a
    .catch Ljava/lang/NullPointerException; {:try_start_21 .. :try_end_2a} :catch_49

    move-result-object v2

    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    sparse-switch v3, :sswitch_data_96

    goto :goto_11

    .line 163
    :sswitch_33
    if-eqz v0, :cond_5d

    .line 164
    invoke-static {p0}, Landroid/view/PhoneWindowAO;->ajc$interFieldGetDispatch$android_view_PhoneWindowAO$com_android_internal_policy_PhoneWindow$mIsFocused(Lcom/android/internal/policy/PhoneWindow;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 166
    const/4 v3, 0x1

    :try_start_3c
    invoke-interface {v2, v0, v3}, Lcom/lge/view/IWindowManagerEx;->sendSplitWindowFocusChanged(Landroid/os/IBinder;Z)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_3f} :catch_40
    .catch Ljava/lang/NullPointerException; {:try_start_3c .. :try_end_3f} :catch_54

    goto :goto_11

    .line 168
    :catch_40
    move-exception v3

    const-string v3, "SplitWindow"

    const-string v4, "RemoteException on WindowManagerService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 154
    :catch_49
    move-exception v3

    invoke-static {}, Lcom/android/internal/policy/PhoneWindow;->ajc$get$TAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IWindowManagerEx is null now.. return false"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 170
    :catch_54
    move-exception v3

    const-string v3, "SplitWindow"

    const-string v4, "NullPointerException on WindowManagerService but its not critical.. skip this"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 175
    :cond_5d
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_5f
    invoke-interface {v2, v3, v4}, Lcom/lge/view/IWindowManagerEx;->sendSplitWindowFocusChanged(Landroid/os/IBinder;Z)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_62} :catch_63
    .catch Ljava/lang/NullPointerException; {:try_start_5f .. :try_end_62} :catch_6c

    goto :goto_11

    .line 177
    :catch_63
    move-exception v3

    const-string v3, "SplitWindow"

    const-string v4, "RemoteException on WindowManagerService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 179
    :catch_6c
    move-exception v3

    const-string v3, "SplitWindow"

    const-string v4, "NullPointerException on WindowManagerService but its not critical.. skip this"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 186
    :sswitch_75
    if-eqz v0, :cond_11

    invoke-static {p0}, Landroid/view/PhoneWindowAO;->ajc$interFieldGetDispatch$android_view_PhoneWindowAO$com_android_internal_policy_PhoneWindow$mIsFocused(Lcom/android/internal/policy/PhoneWindow;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 188
    const/4 v3, 0x0

    :try_start_7e
    invoke-interface {v2, v0, v3}, Lcom/lge/view/IWindowManagerEx;->sendSplitWindowFocusChanged(Landroid/os/IBinder;Z)V
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_81} :catch_82
    .catch Ljava/lang/NullPointerException; {:try_start_7e .. :try_end_81} :catch_8b

    goto :goto_11

    .line 190
    :catch_82
    move-exception v3

    const-string v3, "SplitWindow"

    const-string v4, "RemoteException on WindowManagerService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 192
    :catch_8b
    move-exception v3

    const-string v3, "SplitWindow"

    const-string v4, "NullPointerException on WindowManagerService but its not critical.. skip this"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 160
    nop

    :sswitch_data_96
    .sparse-switch
        0x0 -> :sswitch_33
        0x4 -> :sswitch_75
    .end sparse-switch
.end method

.method public static ajc$interMethod$android_view_PhoneWindowAO$com_android_internal_policy_PhoneWindow$updateFocusChangedState(Lcom/android/internal/policy/PhoneWindow;Z)V
    .registers 3
    .param p0, "ajc$this_"    # Lcom/android/internal/policy/PhoneWindow;
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 202
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_SPLITWINDOW:Z

    if-eqz v0, :cond_7

    .line 203
    invoke-static {p0, p1}, Landroid/view/PhoneWindowAO;->ajc$interFieldSetDispatch$android_view_PhoneWindowAO$com_android_internal_policy_PhoneWindow$mIsFocused(Lcom/android/internal/policy/PhoneWindow;Z)V

    .line 205
    :cond_7
    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$android_view_PhoneWindowAO$com_android_internal_policy_PhoneWindow$sendTouchEvtToChangeFocusWhenSplit(Lcom/android/internal/policy/PhoneWindow;Landroid/view/MotionEvent;)V
    .registers 2
    .param p0, "ajc$this_"    # Lcom/android/internal/policy/PhoneWindow;
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->sendTouchEvtToChangeFocusWhenSplit(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$android_view_PhoneWindowAO$com_android_internal_policy_PhoneWindow$updateFocusChangedState(Lcom/android/internal/policy/PhoneWindow;Z)V
    .registers 2
    .param p0, "ajc$this_"    # Lcom/android/internal/policy/PhoneWindow;
    .param p1, "hasWindowFocus"    # Z

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->updateFocusChangedState(Z)V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Landroid/view/PhoneWindowAO;

    invoke-direct {v0}, Landroid/view/PhoneWindowAO;-><init>()V

    sput-object v0, Landroid/view/PhoneWindowAO;->ajc$perSingletonInstance:Landroid/view/PhoneWindowAO;

    return-void
.end method

.method public static aspectOf()Landroid/view/PhoneWindowAO;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Landroid/view/PhoneWindowAO;->ajc$perSingletonInstance:Landroid/view/PhoneWindowAO;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "android_view_PhoneWindowAO"

    sget-object v2, Landroid/view/PhoneWindowAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Landroid/view/PhoneWindowAO;->ajc$perSingletonInstance:Landroid/view/PhoneWindowAO;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Landroid/view/PhoneWindowAO;->ajc$perSingletonInstance:Landroid/view/PhoneWindowAO;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$android_view_PhoneWindowAO$3$84b37b12(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/content/Context;I)V
    .registers 5
    .param p1, "pw"    # Lcom/android/internal/policy/PhoneWindow;
    .param p2, "decor"    # Lcom/android/internal/policy/PhoneWindow$DecorView;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "i"    # I
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "pw,decor,context,i"
        value = "(initialization(PhoneWindow.DecorView.new(..)) && (args(pw, context, i) && target(decor)))"
    .end annotation

    .prologue
    .line 125
    invoke-static {p2, p1}, Landroid/view/PhoneWindowAO;->ajc$interFieldSetDispatch$android_view_PhoneWindowAO$com_android_internal_policy_PhoneWindow$DecorView$mPhoneWindow(Lcom/android/internal/policy/PhoneWindow$DecorView;Lcom/android/internal/policy/PhoneWindow;)V

    .line 126
    return-void
.end method

.method public ajc$around$android_view_PhoneWindowAO$1$73b7c3d1(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$DecorView;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/view/ViewGroup;
    .registers 17
    .param p1, "obj"    # Lcom/android/internal/policy/PhoneWindow;
    .param p2, "decor"    # Lcom/android/internal/policy/PhoneWindow$DecorView;
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,decor,ajc$aroundClosure"
        value = "(target(obj) && (args(decor) && execution(protected ViewGroup PhoneWindow.generateLayout(PhoneWindow.DecorView))))"
    .end annotation

    .prologue
    .line 34
    invoke-static/range {p1 .. p3}, Landroid/view/PhoneWindowAO;->ajc$around$android_view_PhoneWindowAO$1$73b7c3d1proceed(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$DecorView;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/view/ViewGroup;

    move-result-object v9

    .line 36
    .local v9, "vg":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    .line 37
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v10

    sget-object v11, Lcom/lge/internal/R$styleable;->Theme:[I

    invoke-virtual {v10, v11}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 38
    .local v8, "ta":Landroid/content/res/TypedArray;
    sget v10, Lcom/lge/R$styleable;->Theme_windowStatusBarBackground:I

    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    .line 39
    .local v3, "hasStatusBarColor":Z
    sget v10, Lcom/lge/R$styleable;->Theme_windowNavigationBarBackground:I

    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    .line 41
    .local v2, "hasNavigationBarColor":Z
    if-nez v3, :cond_22

    if-eqz v2, :cond_35

    .line 42
    :cond_22
    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 43
    .local v6, "params":Landroid/view/WindowManager$LayoutParams;
    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v11, -0x80000000

    or-int/2addr v10, v11

    iput v10, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 44
    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v11, -0x4000001

    and-int/2addr v10, v11

    iput v10, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 46
    .end local v6    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_35
    if-eqz v3, :cond_41

    .line 47
    sget v10, Lcom/lge/R$styleable;->Theme_windowStatusBarBackground:I

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    invoke-virtual {p1, v10}, Lcom/android/internal/policy/PhoneWindow;->setStatusBarColor(I)V

    .line 50
    :cond_41
    if-eqz v2, :cond_58

    .line 51
    sget v10, Lcom/lge/R$styleable;->Theme_windowStatusBarBackground:I

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    invoke-virtual {p1, v10}, Lcom/android/internal/policy/PhoneWindow;->setNavigationBarColor(I)V

    .line 52
    const-string v10, "PhoneWindowEx"

    const-string v11, "Ex1. hasNavigationBarColor true "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_54
    :goto_54
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    return-object v9

    .line 55
    :cond_58
    const-string v10, "sys.navibar.color"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 57
    .local v7, "result":Ljava/lang/String;
    if-eqz v7, :cond_c2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_c2

    .line 58
    const-string v10, "PhoneWindowEx"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Ex2. SystemProperties.get result >> "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v1, 0x0

    .line 61
    .local v1, "colors":I
    :try_start_7c
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_7f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7c .. :try_end_7f} :catch_b8

    move-result v1

    .line 66
    :goto_80
    if-eqz v1, :cond_54

    .line 67
    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/lge/internal/R$color;->lgblack:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 68
    .local v4, "lgBlack":I
    const/16 v10, 0x24

    invoke-virtual {v0, v10, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 71
    .local v5, "navigationBarColor":I
    if-ne v5, v4, :cond_54

    .line 72
    const-string v10, "PhoneWindowEx"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "[PWEx][generateLayout] setNavigationBarColor2 : colors=0x"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v10, 0x1

    invoke-static {p1, v10}, Lcom/android/internal/policy/PhoneWindow;->ajc$set$mUseDefaultNaviColor(Lcom/android/internal/policy/PhoneWindow;Z)V

    .line 75
    invoke-virtual {p1, v1}, Lcom/android/internal/policy/PhoneWindow;->setNavigationBarColor2(I)V

    goto :goto_54

    .line 63
    .end local v4    # "lgBlack":I
    .end local v5    # "navigationBarColor":I
    :catch_b8
    move-exception v10

    const-string v10, "PhoneWindowEx"

    const-string v11, "e1. java.lang.IllegalArgumentException: Unknown color"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v1, 0x0

    goto :goto_80

    .line 82
    .end local v1    # "colors":I
    :cond_c2
    const-string v10, "PhoneWindowEx"

    const-string v11, "Ex5. SystemProperties.get(KEY) result is NULL!!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54
.end method

.method public ajc$around$android_view_PhoneWindowAO$2$99ce526b(Lcom/android/internal/policy/PhoneWindow;Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 5
    .param p1, "obj"    # Lcom/android/internal/policy/PhoneWindow;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,event,ajc$aroundClosure"
        value = "(execution(boolean PhoneWindow.superDispatchTouchEvent(MotionEvent)) && (args(event) && target(obj)))"
    .end annotation

    .prologue
    .line 116
    invoke-static {p1, p2}, Landroid/view/PhoneWindowAO;->ajc$interMethodDispatch1$android_view_PhoneWindowAO$com_android_internal_policy_PhoneWindow$sendTouchEvtToChangeFocusWhenSplit(Lcom/android/internal/policy/PhoneWindow;Landroid/view/MotionEvent;)V

    .line 117
    invoke-static {p1, p2, p3}, Landroid/view/PhoneWindowAO;->ajc$around$android_view_PhoneWindowAO$2$99ce526bproceed(Lcom/android/internal/policy/PhoneWindow;Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    return v0
.end method

.method public ajc$around$android_view_PhoneWindowAO$4$3f9764a4(Lcom/android/internal/policy/PhoneWindow$DecorView;ZLorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 6
    .param p1, "obj"    # Lcom/android/internal/policy/PhoneWindow$DecorView;
    .param p2, "hasWindowFocus"    # Z
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,hasWindowFocus,ajc$aroundClosure"
        value = "(execution(void PhoneWindow.DecorView.onWindowFocusChanged(boolean)) && (args(hasWindowFocus) && target(obj)))"
    .end annotation

    .prologue
    .line 132
    invoke-static {p1, p2, p3}, Landroid/view/PhoneWindowAO;->ajc$around$android_view_PhoneWindowAO$4$3f9764a4proceed(Lcom/android/internal/policy/PhoneWindow$DecorView;ZLorg/aspectj/runtime/internal/AroundClosure;)V

    .line 133
    const-string v0, "SplitWindow"

    const-string v1, "update focus... "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static {p1}, Landroid/view/PhoneWindowAO;->ajc$interFieldGetDispatch$android_view_PhoneWindowAO$com_android_internal_policy_PhoneWindow$DecorView$mPhoneWindow(Lcom/android/internal/policy/PhoneWindow$DecorView;)Lcom/android/internal/policy/PhoneWindow;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/view/PhoneWindowAO;->ajc$interMethodDispatch1$android_view_PhoneWindowAO$com_android_internal_policy_PhoneWindow$updateFocusChangedState(Lcom/android/internal/policy/PhoneWindow;Z)V

    .line 135
    return-void
.end method
