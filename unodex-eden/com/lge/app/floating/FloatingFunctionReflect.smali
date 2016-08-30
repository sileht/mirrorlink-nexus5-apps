.class public Lcom/lge/app/floating/FloatingFunctionReflect;
.super Ljava/lang/Object;
.source "FloatingFunctionReflect.java"


# static fields
.field static final TAG:Ljava/lang/String;

.field private static sFinishInputLockedMethod:Ljava/lang/reflect/Method;

.field static sFragmentHost:Ljava/lang/reflect/Field;

.field static sFragmentHostCallbackMLoadersStarted:Ljava/lang/reflect/Field;

.field static sFragmentMLoadersStarted:Ljava/lang/reflect/Field;

.field static sFragmentManagerMActive:Ljava/lang/reflect/Field;

.field static sGetIntForUser:Ljava/lang/reflect/Method;

.field private static sGetServiceMethod:Ljava/lang/reflect/Method;

.field static sGetSystemBarShownState:Ljava/lang/reflect/Method;

.field private static sIWindowManager:Ljava/lang/Object;

.field private static sIWindowManagerStubAsInterfaceMethod:Ljava/lang/reflect/Method;

.field private static sLayoutField:Ljava/lang/reflect/Field;

.field static sMoveWindowTokenToTopMethodEx:Ljava/lang/reflect/Method;

.field private static sUpdateWindowMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 22
    const-class v2, Lcom/lge/app/floating/FloatingFunctionReflect;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lge/app/floating/FloatingFunctionReflect;->TAG:Ljava/lang/String;

    .line 27
    sput-object v3, Lcom/lge/app/floating/FloatingFunctionReflect;->sLayoutField:Ljava/lang/reflect/Field;

    .line 32
    sput-object v3, Lcom/lge/app/floating/FloatingFunctionReflect;->sIWindowManager:Ljava/lang/Object;

    .line 33
    sput-object v3, Lcom/lge/app/floating/FloatingFunctionReflect;->sGetServiceMethod:Ljava/lang/reflect/Method;

    .line 34
    sput-object v3, Lcom/lge/app/floating/FloatingFunctionReflect;->sIWindowManagerStubAsInterfaceMethod:Ljava/lang/reflect/Method;

    .line 36
    sput-object v3, Lcom/lge/app/floating/FloatingFunctionReflect;->sFragmentHost:Ljava/lang/reflect/Field;

    .line 37
    sput-object v3, Lcom/lge/app/floating/FloatingFunctionReflect;->sFragmentHostCallbackMLoadersStarted:Ljava/lang/reflect/Field;

    .line 39
    sput-object v3, Lcom/lge/app/floating/FloatingFunctionReflect;->sFragmentMLoadersStarted:Ljava/lang/reflect/Field;

    .line 40
    sput-object v3, Lcom/lge/app/floating/FloatingFunctionReflect;->sFragmentManagerMActive:Ljava/lang/reflect/Field;

    .line 45
    sput-object v3, Lcom/lge/app/floating/FloatingFunctionReflect;->sUpdateWindowMethod:Ljava/lang/reflect/Method;

    .line 48
    sput-object v3, Lcom/lge/app/floating/FloatingFunctionReflect;->sMoveWindowTokenToTopMethodEx:Ljava/lang/reflect/Method;

    .line 49
    sput-object v3, Lcom/lge/app/floating/FloatingFunctionReflect;->sFinishInputLockedMethod:Ljava/lang/reflect/Method;

    .line 50
    sput-object v3, Lcom/lge/app/floating/FloatingFunctionReflect;->sGetSystemBarShownState:Ljava/lang/reflect/Method;

    .line 51
    sput-object v3, Lcom/lge/app/floating/FloatingFunctionReflect;->sGetIntForUser:Ljava/lang/reflect/Method;

    .line 55
    :try_start_23
    const-class v2, Landroid/app/Fragment;

    const-string v3, "mHost"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/lge/app/floating/FloatingFunctionReflect;->sFragmentHost:Ljava/lang/reflect/Field;

    .line 56
    sget-object v2, Lcom/lge/app/floating/FloatingFunctionReflect;->sFragmentHost:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 58
    const-class v2, Landroid/app/FragmentHostCallback;

    const-string v3, "mLoadersStarted"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/lge/app/floating/FloatingFunctionReflect;->sFragmentHostCallbackMLoadersStarted:Ljava/lang/reflect/Field;

    .line 59
    sget-object v2, Lcom/lge/app/floating/FloatingFunctionReflect;->sFragmentHostCallbackMLoadersStarted:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 61
    const-class v2, Landroid/app/Fragment;

    const-string v3, "mLoadersStarted"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/lge/app/floating/FloatingFunctionReflect;->sFragmentMLoadersStarted:Ljava/lang/reflect/Field;

    .line 62
    sget-object v2, Lcom/lge/app/floating/FloatingFunctionReflect;->sFragmentMLoadersStarted:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 64
    const-class v2, Landroid/view/SurfaceView;

    const-string v3, "mLayout"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/lge/app/floating/FloatingFunctionReflect;->sLayoutField:Ljava/lang/reflect/Field;

    .line 65
    sget-object v2, Lcom/lge/app/floating/FloatingFunctionReflect;->sLayoutField:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_67

    .line 66
    sget-object v2, Lcom/lge/app/floating/FloatingFunctionReflect;->sLayoutField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 68
    :cond_67
    const-class v2, Landroid/view/SurfaceView;

    const-string v3, "updateWindow"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/lge/app/floating/FloatingFunctionReflect;->sUpdateWindowMethod:Ljava/lang/reflect/Method;

    .line 69
    sget-object v2, Lcom/lge/app/floating/FloatingFunctionReflect;->sUpdateWindowMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_88

    .line 70
    sget-object v2, Lcom/lge/app/floating/FloatingFunctionReflect;->sUpdateWindowMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 73
    :cond_88
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

    sput-object v2, Lcom/lge/app/floating/FloatingFunctionReflect;->sGetServiceMethod:Ljava/lang/reflect/Method;

    .line 74
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

    sput-object v2, Lcom/lge/app/floating/FloatingFunctionReflect;->sIWindowManagerStubAsInterfaceMethod:Ljava/lang/reflect/Method;

    .line 76
    sget-object v2, Lcom/lge/app/floating/FloatingFunctionReflect;->sGetServiceMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "window"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 77
    .local v0, "binderObject":Ljava/lang/Object;
    sget-object v2, Lcom/lge/app/floating/FloatingFunctionReflect;->sIWindowManagerStubAsInterfaceMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/lge/app/floating/FloatingFunctionReflect;->sIWindowManager:Ljava/lang/Object;

    .line 79
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

    sput-object v2, Lcom/lge/app/floating/FloatingFunctionReflect;->sMoveWindowTokenToTopMethodEx:Ljava/lang/reflect/Method;

    .line 81
    const-string v2, "com.lge.view.IWindowManagerEx"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getSystemBarShownState"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/lge/app/floating/FloatingFunctionReflect;->sGetSystemBarShownState:Ljava/lang/reflect/Method;

    .line 82
    sget-object v2, Lcom/lge/app/floating/FloatingFunctionReflect;->sGetSystemBarShownState:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_103

    .line 83
    sget-object v2, Lcom/lge/app/floating/FloatingFunctionReflect;->sGetSystemBarShownState:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 86
    :cond_103
    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    const-string v3, "finishInputLocked"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/lge/app/floating/FloatingFunctionReflect;->sFinishInputLockedMethod:Ljava/lang/reflect/Method;

    .line 87
    sget-object v2, Lcom/lge/app/floating/FloatingFunctionReflect;->sFinishInputLockedMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_11a

    .line 88
    sget-object v2, Lcom/lge/app/floating/FloatingFunctionReflect;->sFinishInputLockedMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 90
    :cond_11a
    const-class v2, Landroid/provider/Settings$System;

    const-string v3, "getIntForUser"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/ContentResolver;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/lge/app/floating/FloatingFunctionReflect;->sGetIntForUser:Ljava/lang/reflect/Method;

    .line 91
    sget-object v2, Lcom/lge/app/floating/FloatingFunctionReflect;->TAG:Ljava/lang/String;

    const-string v3, "reflection success"

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_142} :catch_143

    .line 96
    :goto_142
    return-void

    .line 92
    :catch_143
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/lge/app/floating/FloatingFunctionReflect;->TAG:Ljava/lang/String;

    const-string v3, "reflection fail"

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    sget-object v2, Lcom/lge/app/floating/FloatingFunctionReflect;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_142
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static finishInputLocked(Landroid/view/inputmethod/InputMethodManager;)V
    .registers 5
    .param p0, "imm"    # Landroid/view/inputmethod/InputMethodManager;

    .prologue
    .line 112
    sget-object v1, Lcom/lge/app/floating/FloatingFunctionReflect;->sFinishInputLockedMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_26

    .line 114
    :try_start_4
    sget-object v1, Lcom/lge/app/floating/FloatingFunctionReflect;->sFinishInputLockedMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    .line 121
    :goto_c
    return-void

    .line 116
    :catch_d
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/lge/app/floating/FloatingFunctionReflect;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unable to call finishInputLocked. reason="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_26
    sget-object v1, Lcom/lge/app/floating/FloatingFunctionReflect;->TAG:Ljava/lang/String;

    const-string v2, "can not find finishInputLocked method"

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static getFragmentList(Landroid/app/FragmentManager;)Ljava/util/List;
    .registers 6
    .param p0, "fm"    # Landroid/app/FragmentManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 180
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "mActive"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/lge/app/floating/FloatingFunctionReflect;->sFragmentManagerMActive:Ljava/lang/reflect/Field;

    .line 181
    sget-object v1, Lcom/lge/app/floating/FloatingFunctionReflect;->sFragmentManagerMActive:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_20

    .line 187
    sget-object v1, Lcom/lge/app/floating/FloatingFunctionReflect;->sFragmentManagerMActive:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_43

    .line 189
    :try_start_17
    sget-object v1, Lcom/lge/app/floating/FloatingFunctionReflect;->sFragmentManagerMActive:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1f} :catch_2a

    .line 195
    :goto_1f
    return-object v1

    .line 183
    :catch_20
    move-exception v1

    sget-object v1, Lcom/lge/app/floating/FloatingFunctionReflect;->TAG:Ljava/lang/String;

    const-string v3, "can not find mActive(Activity) field"

    invoke-static {v1, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 184
    goto :goto_1f

    .line 190
    :catch_2a
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/lge/app/floating/FloatingFunctionReflect;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unable to call sFragmentManagerMActive. reason="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_43
    sget-object v1, Lcom/lge/app/floating/FloatingFunctionReflect;->TAG:Ljava/lang/String;

    const-string v3, "can not find sFragmentManagerMActive field"

    invoke-static {v1, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 195
    goto :goto_1f
.end method

.method static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .registers 11
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 198
    const/4 v1, -0x1

    .line 199
    .local v1, "res":I
    sget-object v2, Lcom/lge/app/floating/FloatingFunctionReflect;->sGetIntForUser:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_29

    .line 201
    :try_start_5
    sget-object v2, Lcom/lge/app/floating/FloatingFunctionReflect;->sGetIntForUser:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_28} :catch_2a

    move-result v1

    .line 206
    :cond_29
    :goto_29
    return v1

    .line 202
    :catch_2a
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_29
.end method

.method public static getSurfaceLayoutParams(Landroid/view/View;)Landroid/view/WindowManager$LayoutParams;
    .registers 5
    .param p0, "surfaceView"    # Landroid/view/View;

    .prologue
    .line 136
    sget-object v1, Lcom/lge/app/floating/FloatingFunctionReflect;->sLayoutField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_26

    .line 138
    :try_start_4
    sget-object v1, Lcom/lge/app/floating/FloatingFunctionReflect;->sLayoutField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    .line 144
    :goto_c
    return-object v1

    .line 139
    :catch_d
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/lge/app/floating/FloatingFunctionReflect;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unable to call getSurfaceLayoutParams. reason="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_26
    sget-object v1, Lcom/lge/app/floating/FloatingFunctionReflect;->TAG:Ljava/lang/String;

    const-string v2, "can not find SurfaceLayoutParams field"

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public static moveWindowTokenToTopEx(Landroid/os/IBinder;)Z
    .registers 8
    .param p0, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 99
    sget-object v3, Lcom/lge/app/floating/FloatingFunctionReflect;->sMoveWindowTokenToTopMethodEx:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_2d

    .line 101
    :try_start_6
    sget-object v3, Lcom/lge/app/floating/FloatingFunctionReflect;->sMoveWindowTokenToTopMethodEx:Ljava/lang/reflect/Method;

    sget-object v4, Lcom/lge/app/floating/FloatingFunctionReflect;->sIWindowManager:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_14

    .line 108
    :goto_13
    return v1

    .line 103
    :catch_14
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/lge/app/floating/FloatingFunctionReflect;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unable to call moveWindowTokenToTop. reason="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2d
    sget-object v1, Lcom/lge/app/floating/FloatingFunctionReflect;->TAG:Ljava/lang/String;

    const-string v3, "can not find moveWindowTokenToTop method"

    invoke-static {v1, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 108
    goto :goto_13
.end method

.method public static setFragmentHostCallbackMLoadersStarted(Landroid/app/Fragment;Z)V
    .registers 7
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "loaderStarted"    # Z

    .prologue
    .line 148
    sget-object v2, Lcom/lge/app/floating/FloatingFunctionReflect;->sFragmentHost:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_2f

    .line 150
    :try_start_4
    sget-object v2, Lcom/lge/app/floating/FloatingFunctionReflect;->sFragmentHost:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/FragmentHostCallback;

    .line 151
    .local v1, "mHost":Landroid/app/FragmentHostCallback;
    sget-object v2, Lcom/lge/app/floating/FloatingFunctionReflect;->sFragmentHostCallbackMLoadersStarted:Ljava/lang/reflect/Field;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_37

    if-eqz v2, :cond_2f

    .line 153
    :try_start_10
    sget-object v2, Lcom/lge/app/floating/FloatingFunctionReflect;->sFragmentHostCallbackMLoadersStarted:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1, p1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_16

    .line 164
    .end local v1    # "mHost":Landroid/app/FragmentHostCallback;
    :goto_15
    return-void

    .line 155
    .restart local v1    # "mHost":Landroid/app/FragmentHostCallback;
    :catch_16
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    :try_start_17
    sget-object v2, Lcom/lge/app/floating/FloatingFunctionReflect;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unable to call sFragmentHostCallbackMLoadersStarted. reason="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2f} :catch_37

    .line 163
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mHost":Landroid/app/FragmentHostCallback;
    :cond_2f
    :goto_2f
    sget-object v2, Lcom/lge/app/floating/FloatingFunctionReflect;->TAG:Ljava/lang/String;

    const-string v3, "can not find sFragmentHost field"

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 159
    :catch_37
    move-exception v0

    .line 160
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v2, Lcom/lge/app/floating/FloatingFunctionReflect;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unable to call sFragmentHost. reason="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f
.end method

.method public static setFragmentMLoadersStarted(Landroid/app/Fragment;Z)V
    .registers 6
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "loaderStarted"    # Z

    .prologue
    .line 167
    sget-object v1, Lcom/lge/app/floating/FloatingFunctionReflect;->sFragmentMLoadersStarted:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_23

    .line 169
    :try_start_4
    sget-object v1, Lcom/lge/app/floating/FloatingFunctionReflect;->sFragmentMLoadersStarted:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    .line 176
    :goto_9
    return-void

    .line 171
    :catch_a
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/lge/app/floating/FloatingFunctionReflect;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unable to call sFragmentMLoadersStarted. reason="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_23
    sget-object v1, Lcom/lge/app/floating/FloatingFunctionReflect;->TAG:Ljava/lang/String;

    const-string v2, "can not find FragmentMLoadersStarted field"

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static updateWindow(Landroid/view/View;ZZ)V
    .registers 8
    .param p0, "v"    # Landroid/view/View;
    .param p1, "force"    # Z
    .param p2, "redrawNeeded"    # Z

    .prologue
    .line 124
    sget-object v1, Lcom/lge/app/floating/FloatingFunctionReflect;->sUpdateWindowMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_34

    .line 126
    :try_start_4
    sget-object v1, Lcom/lge/app/floating/FloatingFunctionReflect;->sUpdateWindowMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1a} :catch_1b

    .line 133
    :goto_1a
    return-void

    .line 128
    :catch_1b
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/lge/app/floating/FloatingFunctionReflect;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unable to call updateWindow. reason="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_34
    sget-object v1, Lcom/lge/app/floating/FloatingFunctionReflect;->TAG:Ljava/lang/String;

    const-string v2, "can not find updateWindow method"

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method
