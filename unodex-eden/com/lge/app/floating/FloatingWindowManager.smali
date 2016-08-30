.class public Lcom/lge/app/floating/FloatingWindowManager;
.super Ljava/lang/Object;
.source "FloatingWindowManager.java"


# static fields
.field public static final ACTION_APP_SWITCH_ACTION_DOWN:Ljava/lang/String; = "com.lge.intent.action.APP_SWITCH_ACTION_DOWN"

.field public static final ACTION_ENTER_GUEST_MODE:Ljava/lang/String; = "com.lge.lockscreen.intent.action.START_KIDSHOME"

.field public static final ACTION_EXIT_GUEST_MODE:Ljava/lang/String; = "com.lge.lockscreen.intent.action.END_KIDSHOME"

.field public static final ACTION_FLOATING_WINDOW_ALREADY_RUNNING:Ljava/lang/String; = "com.lge.intent.action.FLOATING_WINDOW_ALREADY_RUNNING"

.field static final ACTION_FLOATING_WINDOW_CHANGED:Ljava/lang/String; = "com.lge.intent.action.FLOATING_WINDOW_CHANGED"

.field public static final ACTION_FLOATING_WINDOW_CLOSE_REQUESTED:Ljava/lang/String; = "com.lge.android.intent.action.FLOATING_WINDOW_CLOSE_REQUESTED"

.field public static final ACTION_FLOATING_WINDOW_CLOSE_REQUESTED_OLD:Ljava/lang/String; = "com.lge.intent.action.FLOATING_WINDOW_CLOSE_REQUESTED"

.field public static final ACTION_FLOATING_WINDOW_ENTER_LOWPROFILE:Ljava/lang/String; = "com.lge.android.intent.action.FLOATING_WINDOW_ENTER_LOWPROFILE"

.field public static final ACTION_FLOATING_WINDOW_ENTER_LOWPROFILE_OLD:Ljava/lang/String; = "com.lge.intent.action.FLOATING_WINDOW_ENTER_LOWPROFILE"

.field public static final ACTION_FLOATING_WINDOW_EXIT_LOWPROFILE:Ljava/lang/String; = "com.lge.android.intent.action.FLOATING_WINDOW_EXIT_LOWPROFILE"

.field public static final ACTION_FLOATING_WINDOW_EXIT_LOWPROFILE_OLD:Ljava/lang/String; = "com.lge.intent.action.FLOATING_WINDOW_EXIT_LOWPROFILE"

.field public static final ACTION_FORCE_UNDOCK:Ljava/lang/String; = "com.lge.intent.action.FORCE_UNDOCK"

.field public static final ACTION_LOCKSCREEN_CREATE:Ljava/lang/String; = "com.lge.lockscreen.intent.action.LOCKSCREEN_CREATE"

.field private static final ACTION_PREFIX:Ljava/lang/String; = "com.lge.android.intent.action."

.field public static final ACTION_START_STANDARD_HOME:Ljava/lang/String; = "com.lge.lockscreen.intent.action.START_STANDARD_HOME"

.field public static final ACTION_STOP_FLOATING_WINDOW_SERVICE:Ljava/lang/String; = "com.lge.intent.action.STOP_FLOATING_WINDOW_SERVICE"

.field public static final ACTION_USER_SWITCHED:Ljava/lang/String; = "android.intent.action.USER_SWITCHED"

.field public static final EXTRA_FLOATING_CLOSE_PACKAGE:Ljava/lang/String; = "com.lge.intent.extra.target"

.field public static final EXTRA_FLOATING_CLOSE_PACKAGE_OLD:Ljava/lang/String; = "target"

.field public static final EXTRA_FLOATING_HIDE:Ljava/lang/String; = "com.lge.intent.extra.hide"

.field public static final EXTRA_FLOATING_HIDE_OLD:Ljava/lang/String; = "hide"

.field public static final EXTRA_FLOATING_PACKAGE:Ljava/lang/String; = "com.lge.intent.extra.package"

.field public static final EXTRA_FLOATING_PACKAGE_OLD:Ljava/lang/String; = "package"

.field public static final EXTRA_FORCE_EXITLOWPROFILE:Ljava/lang/String; = "exit-lowprofile"

.field private static final EXTRA_PREFIX:Ljava/lang/String; = "com.lge.intent.extra."

.field static final EXTRA_REMOVED_REASON:Ljava/lang/String; = "remove-reason"

.field static final EXTRA_REMOVED_WINDOW:Ljava/lang/String; = "window-remove"

.field static final EXTRA_TOP_WINDOW:Ljava/lang/String; = "top-window"

.field private static final FLOATING_WINDOW_SERVICE_CLASSNAME:Ljava/lang/String; = "com.lge.app.floating.FloatingWindowService"

.field static final REASON_FORCE_CLOSE:Ljava/lang/String; = "close"

.field static final REASON_SWITCH_TO_FULLMODE:Ljava/lang/String; = "fullmode"

.field private static final TAG:Ljava/lang/String;

.field private static sDefault:Lcom/lge/app/floating/FloatingWindowManager;

.field private static sGetSystemPropertiesMethod:Ljava/lang/reflect/Method;

.field private static sMaxFloating:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDummyView:Landroid/view/View;

.field private mGlobalTopWindowName:Ljava/lang/String;

.field mLastLowProfileIsHidden:Z

.field mLastLowProfileRequester:Ljava/lang/String;

.field private mLowProfileRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mLowProfileRequestsConf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mRealWindowManager:Landroid/view/WindowManager;

.field private mServiceContext:Landroid/content/Context;

.field private final mWindows:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/app/floating/FloatingWindow;",
            ">;"
        }
    .end annotation
.end field

.field private final mZList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    const/4 v7, 0x0

    .line 40
    const-class v6, Lcom/lge/app/floating/FloatingWindowManager;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    .line 46
    sput-object v7, Lcom/lge/app/floating/FloatingWindowManager;->sDefault:Lcom/lge/app/floating/FloatingWindowManager;

    .line 654
    const/4 v6, 0x2

    sput v6, Lcom/lge/app/floating/FloatingWindowManager;->sMaxFloating:I

    .line 655
    sput-object v7, Lcom/lge/app/floating/FloatingWindowManager;->sGetSystemPropertiesMethod:Ljava/lang/reflect/Method;

    .line 658
    :try_start_10
    const-string v6, "android.os.SystemProperties"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "get"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/lge/app/floating/FloatingWindowManager;->sGetSystemPropertiesMethod:Ljava/lang/reflect/Method;

    .line 659
    sget-object v6, Lcom/lge/app/floating/FloatingWindowManager;->sGetSystemPropertiesMethod:Ljava/lang/reflect/Method;

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "ro.lge.qslide.max_window"

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 660
    .local v4, "propertyValue":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5d

    .line 661
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sput v6, Lcom/lge/app/floating/FloatingWindowManager;->sMaxFloating:I

    .line 662
    sget-object v6, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "read ro.lge.qslide.max_window = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v8, Lcom/lge/app/floating/FloatingWindowManager;->sMaxFloating:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    :cond_5d
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .line 666
    .local v5, "r":Landroid/content/res/Resources;
    sget v6, Lcom/lge/internal/R$integer;->config_qslide_maximum:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 667
    .local v2, "mResourceFloating":I
    sget v6, Lcom/lge/app/floating/FloatingWindowManager;->sMaxFloating:I

    if-eq v6, v2, :cond_81

    .line 668
    sget-object v6, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "read R.integer.config_qslide_maximum = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    sput v2, Lcom/lge/app/floating/FloatingWindowManager;->sMaxFloating:I
    :try_end_81
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_81} :catch_bb
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_81} :catch_d5

    .line 676
    :cond_81
    :try_start_81
    sget-object v6, Lcom/lge/app/floating/FloatingWindowManager;->sGetSystemPropertiesMethod:Ljava/lang/reflect/Method;

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "com.lge.qslide.max_window_test"

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 677
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_ba

    .line 678
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 679
    .local v3, "maxFloatingTest":I
    if-ltz v3, :cond_ba

    .line 680
    sput v3, Lcom/lge/app/floating/FloatingWindowManager;->sMaxFloating:I

    .line 681
    sget-object v6, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "read com.lge.qslide.max_window_test = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_ba} :catch_ef
    .catch Ljava/lang/NoSuchMethodException; {:try_start_81 .. :try_end_ba} :catch_bb

    .line 692
    .end local v2    # "mResourceFloating":I
    .end local v3    # "maxFloatingTest":I
    .end local v5    # "r":Landroid/content/res/Resources;
    :cond_ba
    :goto_ba
    return-void

    .line 687
    :catch_bb
    move-exception v1

    .line 688
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    sget-object v6, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "reflection for android.os.SystemProperties.get() failed. reason = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ba

    .line 689
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_d5
    move-exception v1

    .line 690
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "reflection to get ro.lge.qslide.max_window failed. reason = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ba

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "mResourceFloating":I
    .restart local v5    # "r":Landroid/content/res/Resources;
    :catch_ef
    move-exception v6

    goto :goto_ba
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mDummyView:Landroid/view/View;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mZList:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequestsConf:Ljava/util/Map;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLastLowProfileRequester:Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLastLowProfileIsHidden:Z

    .line 180
    iput-object p1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mContext:Landroid/content/Context;

    .line 181
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mRealWindowManager:Landroid/view/WindowManager;

    .line 182
    return-void
.end method

.method public static getDefault(Landroid/content/Context;)Lcom/lge/app/floating/FloatingWindowManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    sget-object v0, Lcom/lge/app/floating/FloatingWindowManager;->sDefault:Lcom/lge/app/floating/FloatingWindowManager;

    if-eqz v0, :cond_7

    .line 173
    sget-object v0, Lcom/lge/app/floating/FloatingWindowManager;->sDefault:Lcom/lge/app/floating/FloatingWindowManager;

    .line 176
    :goto_6
    return-object v0

    .line 175
    :cond_7
    new-instance v0, Lcom/lge/app/floating/FloatingWindowManager;

    invoke-direct {v0, p0}, Lcom/lge/app/floating/FloatingWindowManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/app/floating/FloatingWindowManager;->sDefault:Lcom/lge/app/floating/FloatingWindowManager;

    .line 176
    sget-object v0, Lcom/lge/app/floating/FloatingWindowManager;->sDefault:Lcom/lge/app/floating/FloatingWindowManager;

    goto :goto_6
.end method

.method public static isQSlideModeEnabled(Landroid/content/Context;Z)Z
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "showToast"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 788
    sget-object v8, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "isQSlideModeEnabled showToast = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    sget-object v8, Lcom/lge/app/floating/FloatingWindowManager;->sGetSystemPropertiesMethod:Ljava/lang/reflect/Method;

    if-nez v8, :cond_22

    .line 791
    sget-object v7, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v8, "sGetSystemPropertiesMethod is null, assume that QSlide is enabled."

    invoke-static {v7, v8}, Lcom/lge/app/floating/FloatingFunction$Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    :cond_21
    :goto_21
    return v6

    .line 801
    :cond_22
    :try_start_22
    sget-object v8, Lcom/lge/app/floating/FloatingWindowManager;->sGetSystemPropertiesMethod:Ljava/lang/reflect/Method;

    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "com.lge.qslide.enabled"

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 802
    .local v3, "propertyValue":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6e

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_6e

    move v1, v7

    .line 803
    .local v1, "isQSlideModeEnabled":Z
    :goto_44
    if-nez v1, :cond_21

    .line 804
    sget-object v8, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v9, "com.lge.qslide.enabled property is FALSE!!"

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    if-eqz p1, :cond_6c

    .line 806
    if-eqz p0, :cond_70

    .line 807
    const-string v2, "QSlide mode is currently not available"

    .line 808
    .local v2, "msg":Ljava/lang/CharSequence;
    invoke-static {p0}, Lcom/lge/app/floating/Res;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f06000b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 809
    .local v5, "yOffset":I
    const/4 v8, 0x0

    invoke-static {p0, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 810
    .local v4, "toast":Landroid/widget/Toast;
    const/16 v8, 0x31

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 811
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .end local v2    # "msg":Ljava/lang/CharSequence;
    .end local v4    # "toast":Landroid/widget/Toast;
    .end local v5    # "yOffset":I
    :cond_6c
    :goto_6c
    move v6, v7

    .line 817
    goto :goto_21

    .end local v1    # "isQSlideModeEnabled":Z
    :cond_6e
    move v1, v6

    .line 802
    goto :goto_44

    .line 814
    .restart local v1    # "isQSlideModeEnabled":Z
    :cond_70
    sget-object v8, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v9, "no toast for null context"

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_77} :catch_78

    goto :goto_6c

    .line 819
    .end local v1    # "isQSlideModeEnabled":Z
    .end local v3    # "propertyValue":Ljava/lang/String;
    :catch_78
    move-exception v0

    .line 820
    .local v0, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v8, "failed to get com.lge.qslide.enabled property"

    invoke-static {v7, v8}, Lcom/lge/app/floating/FloatingFunction$Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21
.end method

.method public static isTooManyFloatingWindows(Landroid/content/Context;Z)Z
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "showToast"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 724
    sget-object v9, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "isTooManyFloatingWindows showToast = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    if-nez p0, :cond_21

    .line 726
    sget-object v9, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v11, "null context"

    invoke-static {v9, v11}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v10

    .line 765
    :goto_20
    return v9

    .line 729
    :cond_21
    const-string v9, "activity"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 730
    .local v1, "am":Landroid/app/ActivityManager;
    const v9, 0x7fffffff

    invoke-virtual {v1, v9}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v6

    .line 731
    .local v6, "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    const/4 v5, 0x0

    .line 734
    .local v5, "nFloatingService":I
    if-nez v6, :cond_35

    move v9, v11

    .line 735
    goto :goto_20

    .line 738
    :cond_35
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_36
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-lt v3, v9, :cond_71

    .line 753
    sget v9, Lcom/lge/app/floating/FloatingWindowManager;->sMaxFloating:I

    if-lt v5, v9, :cond_e9

    .line 754
    if-eqz p1, :cond_6f

    .line 755
    sget-object v9, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v12, "show toast that we have maximum number of floating windows"

    invoke-static {v9, v12}, Lcom/lge/app/floating/FloatingFunction$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    sget v9, Lcom/lge/app/floating/FloatingWindowManager;->sMaxFloating:I

    if-le v9, v10, :cond_dc

    invoke-static {p0}, Lcom/lge/app/floating/Res;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f0a0003

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 758
    .local v4, "msg":Ljava/lang/CharSequence;
    :goto_58
    invoke-static {p0}, Lcom/lge/app/floating/Res;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f06000b

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    .line 759
    .local v8, "yOffset":I
    invoke-static {p0, v4, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 760
    .local v7, "toast":Landroid/widget/Toast;
    const/16 v9, 0x31

    invoke-virtual {v7, v9, v11, v8}, Landroid/widget/Toast;->setGravity(III)V

    .line 761
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .end local v4    # "msg":Ljava/lang/CharSequence;
    .end local v7    # "toast":Landroid/widget/Toast;
    .end local v8    # "yOffset":I
    :cond_6f
    move v9, v10

    .line 763
    goto :goto_20

    .line 739
    :cond_71
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    const-string v12, "com.lge.app.floating.FloatingWindowService"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c0

    .line 740
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 742
    .local v2, "floatingPackageName":Ljava/lang/String;
    :try_start_91
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/16 v12, 0x80

    invoke-virtual {v9, v2, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 743
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v12, "ignoreMaxFloating"

    const/4 v13, 0x0

    invoke-virtual {v9, v12, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_d9

    .line 744
    sget-object v9, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Ignore "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " in counting current floating services"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_c0} :catch_c4

    .line 738
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "floatingPackageName":Ljava/lang/String;
    :cond_c0
    :goto_c0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_36

    .line 748
    .restart local v2    # "floatingPackageName":Ljava/lang/String;
    :catch_c4
    move-exception v9

    sget-object v9, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Failed to get ApplicationInfo of "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    :cond_d9
    add-int/lit8 v5, v5, 0x1

    goto :goto_c0

    .line 757
    .end local v2    # "floatingPackageName":Ljava/lang/String;
    :cond_dc
    invoke-static {p0}, Lcom/lge/app/floating/Res;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f0a0017

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    goto/16 :goto_58

    :cond_e9
    move v9, v11

    .line 765
    goto/16 :goto_20
.end method

.method private restoreLowProfileRequest()V
    .registers 3

    .prologue
    .line 304
    sget-object v0, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v1, "Restore Lowprofile Requests for ConfigurationChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 306
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequestsConf:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 307
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequestsConf:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 308
    return-void
.end method


# virtual methods
.method addFloatingWindowFor(Ljava/lang/String;Lcom/lge/app/floating/FloatingWindow;)V
    .registers 6
    .param p1, "activityName"    # Ljava/lang/String;
    .param p2, "window"    # Lcom/lge/app/floating/FloatingWindow;

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Lcom/lge/app/floating/FloatingWindowManager;->getFloatingWindowFor(Ljava/lang/String;)Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    if-nez v0, :cond_20

    .line 213
    sget-object v0, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addFloatingWindowFor : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :goto_1f
    return-void

    .line 217
    :cond_20
    sget-object v0, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Already Floating exists : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f
.end method

.method clearLowProfileRequestList()V
    .registers 4

    .prologue
    .line 503
    sget-object v1, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v2, "clearLowProfileList"

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 508
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 509
    return-void

    .line 505
    :cond_1d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/app/floating/FloatingWindow;

    .line 506
    .local v0, "w":Lcom/lge/app/floating/FloatingWindow;
    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->callBackOnExitingLowProfileMode()V

    goto :goto_11
.end method

.method configutationChangeforWindows(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 289
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_11

    .line 293
    return-void

    .line 289
    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/app/floating/FloatingWindow;

    .line 290
    .local v0, "w":Lcom/lge/app/floating/FloatingWindow;
    invoke-virtual {v0, p1}, Lcom/lge/app/floating/FloatingWindow;->configurationChangeforWindow(Landroid/content/res/Configuration;)V

    .line 291
    invoke-virtual {v0, p1}, Lcom/lge/app/floating/FloatingWindow;->configurationChangeForActivity(Landroid/content/res/Configuration;)V

    goto :goto_a
.end method

.method getActivityNameForPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 228
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 229
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_12

    .line 235
    const/4 v0, 0x0

    :goto_11
    return-object v0

    .line 230
    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 231
    .local v0, "activityName":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_11
.end method

.method public getFloatingWindowFor(Ljava/lang/String;)Lcom/lge/app/floating/FloatingWindow;
    .registers 3
    .param p1, "activityName"    # Ljava/lang/String;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/app/floating/FloatingWindow;

    return-object v0
.end method

.method getFloatingWindows()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lge/app/floating/FloatingWindow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    sget-object v0, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "number of current floating windows = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getRealWindowManager()Landroid/view/WindowManager;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mRealWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method getServiceContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mServiceContext:Landroid/content/Context;

    return-object v0
.end method

.method handleEnterLowProfile(ZLjava/lang/String;)V
    .registers 14
    .param p1, "hide"    # Z
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 431
    iget-object v7, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 501
    :cond_8
    return-void

    .line 434
    :cond_9
    sget-object v7, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "entering low profile for package "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/lge/app/floating/FloatingWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", hide="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/4 v2, 0x1

    .line 436
    .local v2, "NOT_LOW_PROFILE":I
    const/4 v1, 0x2

    .line 437
    .local v1, "LOW_PROFILE_TRUE":I
    const/4 v0, 0x3

    .line 439
    .local v0, "LOW_PROFILE_FALSE":I
    move v4, v2

    .line 440
    .local v4, "mOldLowProfileState":I
    move v3, v2

    .line 443
    .local v3, "mNewLowProfileState":I
    iget-object v7, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9c

    .line 444
    move v4, v2

    .line 453
    :goto_45
    iget-object v7, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v7, p2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    iput-object p2, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLastLowProfileRequester:Ljava/lang/String;

    .line 455
    iput-boolean p1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLastLowProfileIsHidden:Z

    .line 458
    iget-object v7, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_ae

    .line 459
    move v3, v2

    .line 468
    :goto_5b
    sget-object v7, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v8, "Updated LowProfileRequet list"

    invoke-static {v7, v8}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    sget-object v7, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v8, "-----List-----"

    invoke-static {v7, v8}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v7, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_73
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_c0

    .line 473
    sget-object v7, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v8, "-----End-----"

    invoke-static {v7, v8}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    if-ne v4, v2, :cond_e9

    .line 485
    iget-object v7, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/app/floating/FloatingWindow;

    .line 486
    .local v6, "w":Lcom/lge/app/floating/FloatingWindow;
    invoke-virtual {v6, p1}, Lcom/lge/app/floating/FloatingWindow;->enterLowProfile(Z)V

    goto :goto_8c

    .line 446
    .end local v6    # "w":Lcom/lge/app/floating/FloatingWindow;
    :cond_9c
    iget-object v7, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v7, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_ac

    .line 447
    move v4, v0

    .line 448
    goto :goto_45

    .line 450
    :cond_ac
    move v4, v1

    goto :goto_45

    .line 461
    :cond_ae
    iget-object v7, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v7, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_be

    .line 462
    move v3, v0

    .line 463
    goto :goto_5b

    .line 465
    :cond_be
    move v3, v1

    goto :goto_5b

    .line 470
    :cond_c0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 471
    .local v5, "p":Ljava/lang/String;
    sget-object v8, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_73

    .line 490
    .end local v5    # "p":Ljava/lang/String;
    :cond_e9
    if-ne v4, v0, :cond_107

    if-ne v3, v1, :cond_107

    .line 491
    iget-object v7, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_f7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/app/floating/FloatingWindow;

    .line 492
    .restart local v6    # "w":Lcom/lge/app/floating/FloatingWindow;
    invoke-virtual {v6, p1}, Lcom/lge/app/floating/FloatingWindow;->enterLowProfile(Z)V

    goto :goto_f7

    .line 496
    .end local v6    # "w":Lcom/lge/app/floating/FloatingWindow;
    :cond_107
    iget-object v7, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 497
    iget-object v7, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_11a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/app/floating/FloatingWindow;

    .line 498
    .restart local v6    # "w":Lcom/lge/app/floating/FloatingWindow;
    invoke-virtual {v6, p1}, Lcom/lge/app/floating/FloatingWindow;->enterLowProfile(Z)V

    goto :goto_11a
.end method

.method handleExitLowProfile(Ljava/lang/String;)V
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 513
    sget-object v10, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "exiting low profile for package "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v10, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_31

    .line 515
    sget-object v10, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "LowProfileRequets list is empty. Do not handleExitLowProfile for : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    :cond_30
    :goto_30
    return-void

    .line 519
    :cond_31
    sget-object v10, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v11, "Current LowProfileRequets list (Before remove)"

    invoke-static {v10, v11}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    sget-object v10, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v11, "----- LowProfileRequets list -----"

    invoke-static {v10, v11}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object v10, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_49
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_73

    .line 524
    sget-object v10, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v11, "----- LowProfileRequets list End -----"

    invoke-static {v10, v11}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v10, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_9c

    .line 527
    sget-object v10, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "FloatingWindow list is empty. Do not handleExitLowProfile for : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    .line 521
    :cond_73
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 522
    .local v4, "p":Ljava/lang/String;
    sget-object v11, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, " : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    .line 530
    .end local v4    # "p":Ljava/lang/String;
    :cond_9c
    sget-object v10, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "exiting from low profile for "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/lge/app/floating/FloatingWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", by "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v10, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    invoke-interface {v10, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    iget-object v10, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_11d

    .line 535
    iget-object v10, p0, Lcom/lge/app/floating/FloatingWindowManager;->mContext:Landroid/content/Context;

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 536
    .local v1, "am":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    .line 537
    .local v6, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 539
    .local v0, "activePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v6, :cond_ec

    .line 540
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_e6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_13f

    .line 547
    :cond_ec
    iget-object v10, p0, Lcom/lge/app/floating/FloatingWindowManager;->mContext:Landroid/content/Context;

    const-string v11, "phone"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 548
    .local v8, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    .line 549
    .local v2, "callState":I
    if-eqz v2, :cond_101

    .line 550
    const-string v10, "phone"

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 556
    :cond_101
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 557
    .local v7, "removeSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v10, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    invoke-interface {v7, v10}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 558
    iget-object v10, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_115
    :goto_115
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_153

    .line 564
    iput-object v7, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    .line 567
    .end local v0    # "activePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "am":Landroid/app/ActivityManager;
    .end local v2    # "callState":I
    .end local v6    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v7    # "removeSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v8    # "tm":Landroid/telephony/TelephonyManager;
    :cond_11d
    iget-object v10, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_17d

    .line 568
    iget-object v10, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_12f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_30

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lge/app/floating/FloatingWindow;

    .line 569
    .local v9, "w":Lcom/lge/app/floating/FloatingWindow;
    invoke-virtual {v9}, Lcom/lge/app/floating/FloatingWindow;->exitLowProfile()V

    goto :goto_12f

    .line 540
    .end local v9    # "w":Lcom/lge/app/floating/FloatingWindow;
    .restart local v0    # "activePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v1    # "am":Landroid/app/ActivityManager;
    .restart local v6    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_13f
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 541
    .local v3, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v12, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v13, v12

    const/4 v10, 0x0

    :goto_149
    if-ge v10, v13, :cond_e6

    aget-object v5, v12, v10

    .line 542
    .local v5, "pkg":Ljava/lang/String;
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 541
    add-int/lit8 v10, v10, 0x1

    goto :goto_149

    .line 558
    .end local v3    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v5    # "pkg":Ljava/lang/String;
    .restart local v2    # "callState":I
    .restart local v7    # "removeSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .restart local v8    # "tm":Landroid/telephony/TelephonyManager;
    :cond_153
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 559
    .restart local v4    # "p":Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_115

    .line 560
    sget-object v11, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "package "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " seems to died. removing it from mLowProfileRequests"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    invoke-interface {v7, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_115

    .line 573
    .end local v0    # "activePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "am":Landroid/app/ActivityManager;
    .end local v2    # "callState":I
    .end local v4    # "p":Ljava/lang/String;
    .end local v6    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v7    # "removeSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v8    # "tm":Landroid/telephony/TelephonyManager;
    :cond_17d
    sget-object v10, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v11, "----- After LowProfileRequets list -----"

    invoke-static {v10, v11}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    iget-object v10, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_18e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_1c4

    .line 577
    sget-object v10, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v11, "----- LowProfileRequets list End -----"

    invoke-static {v10, v11}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    iget-object v10, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v10, v11}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1ed

    .line 581
    iget-object v10, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1b3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_30

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lge/app/floating/FloatingWindow;

    .line 582
    .restart local v9    # "w":Lcom/lge/app/floating/FloatingWindow;
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lcom/lge/app/floating/FloatingWindow;->enterLowProfile(Z)V

    goto :goto_1b3

    .line 574
    .end local v9    # "w":Lcom/lge/app/floating/FloatingWindow;
    :cond_1c4
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 575
    .restart local v4    # "p":Ljava/lang/String;
    sget-object v11, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, " : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18e

    .line 585
    .end local v4    # "p":Ljava/lang/String;
    :cond_1ed
    iget-object v10, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v10, v11}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_30

    .line 586
    iget-object v10, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_205
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_30

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lge/app/floating/FloatingWindow;

    .line 587
    .restart local v9    # "w":Lcom/lge/app/floating/FloatingWindow;
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Lcom/lge/app/floating/FloatingWindow;->enterLowProfile(Z)V

    goto :goto_205
.end method

.method handleImeVisibilityChanged(Z)V
    .registers 5
    .param p1, "visible"    # Z

    .prologue
    .line 642
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_11

    .line 651
    return-void

    .line 642
    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/app/floating/FloatingWindow;

    .line 643
    .local v0, "w":Lcom/lge/app/floating/FloatingWindow;
    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParams()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_28

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParams()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v2

    iget-boolean v2, v2, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->dontUseIme:Z

    if-eqz v2, :cond_28

    .line 645
    iput-boolean p1, v0, Lcom/lge/app/floating/FloatingWindow;->mIsImeVisible:Z

    goto :goto_a

    .line 648
    :cond_28
    invoke-virtual {v0, p1}, Lcom/lge/app/floating/FloatingWindow;->handleImeVisibilityChanged(Z)V

    goto :goto_a
.end method

.method handleLowProfileConf()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 594
    sget-object v2, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v3, "handleLowProfileConf"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequestsConf:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 596
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_29

    .line 628
    :cond_28
    :goto_28
    return-void

    .line 596
    :cond_29
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/app/floating/FloatingWindow;

    .line 597
    .local v1, "w":Lcom/lge/app/floating/FloatingWindow;
    invoke-virtual {v1}, Lcom/lge/app/floating/FloatingWindow;->exitLowProfile()V

    goto :goto_22

    .line 600
    .end local v1    # "w":Lcom/lge/app/floating/FloatingWindow;
    :cond_33
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequestsConf:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_28

    .line 601
    sget-object v2, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v3, "----- Current mLowProfileRequests[Conf] list -----"

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequestsConf:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7b

    .line 605
    sget-object v2, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v3, "----- mLowProfileRequests[Conf] list End -----"

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequestsConf:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_af

    .line 610
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_71
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_a4

    .line 626
    :cond_77
    invoke-direct {p0}, Lcom/lge/app/floating/FloatingWindowManager;->restoreLowProfileRequest()V

    goto :goto_28

    .line 602
    :cond_7b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 603
    .local v0, "p":Ljava/lang/String;
    sget-object v3, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequestsConf:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    .line 610
    .end local v0    # "p":Ljava/lang/String;
    :cond_a4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/app/floating/FloatingWindow;

    .line 611
    .restart local v1    # "w":Lcom/lge/app/floating/FloatingWindow;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/lge/app/floating/FloatingWindow;->enterLowProfile(Z)V

    goto :goto_71

    .line 615
    .end local v1    # "w":Lcom/lge/app/floating/FloatingWindow;
    :cond_af
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequestsConf:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d7

    .line 616
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_77

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/app/floating/FloatingWindow;

    .line 617
    .restart local v1    # "w":Lcom/lge/app/floating/FloatingWindow;
    invoke-virtual {v1, v6}, Lcom/lge/app/floating/FloatingWindow;->enterLowProfile(Z)V

    goto :goto_c7

    .line 622
    .end local v1    # "w":Lcom/lge/app/floating/FloatingWindow;
    :cond_d7
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_77

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/app/floating/FloatingWindow;

    .line 623
    .restart local v1    # "w":Lcom/lge/app/floating/FloatingWindow;
    invoke-virtual {v1, v6}, Lcom/lge/app/floating/FloatingWindow;->enterLowProfile(Z)V

    goto :goto_e1
.end method

.method isQSlideModeEnabled(Z)Z
    .registers 3
    .param p1, "showToast"    # Z

    .prologue
    .line 284
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/lge/app/floating/FloatingWindowManager;->isQSlideModeEnabled(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public isTooManyFloatingWindows()Z
    .registers 3

    .prologue
    .line 256
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingWindowManager;->isTooManyFloatingWindows(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public isTooManyFloatingWindows(Z)Z
    .registers 3
    .param p1, "showToast"    # Z

    .prologue
    .line 272
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/lge/app/floating/FloatingWindowManager;->isTooManyFloatingWindows(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method isTopWindow(Lcom/lge/app/floating/FloatingWindow;)Z
    .registers 5
    .param p1, "window"    # Lcom/lge/app/floating/FloatingWindow;

    .prologue
    .line 389
    sget-object v0, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "top window is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindowManager;->mGlobalTopWindowName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-virtual {p1}, Lcom/lge/app/floating/FloatingWindow;->getWindowName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mGlobalTopWindowName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method notifyNewTopWindow(Lcom/lge/app/floating/FloatingWindow;)V
    .registers 6
    .param p1, "newTop"    # Lcom/lge/app/floating/FloatingWindow;

    .prologue
    .line 395
    sget-object v1, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "window "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lge/app/floating/FloatingWindow;->getWindowName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is moved to top"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.intent.action.FLOATING_WINDOW_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "top-window"

    invoke-virtual {p1}, Lcom/lge/app/floating/FloatingWindow;->getWindowName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 405
    return-void
.end method

.method onTopWindowChanged(Ljava/lang/String;)V
    .registers 6
    .param p1, "topWindowActivityName"    # Ljava/lang/String;

    .prologue
    .line 370
    sget-object v1, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "top window is changed to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_39

    .line 380
    iput-object p1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mGlobalTopWindowName:Ljava/lang/String;

    .line 381
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mZList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 382
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mZList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 384
    :cond_33
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mZList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    return-void

    .line 373
    :cond_39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/app/floating/FloatingWindow;

    .line 374
    .local v0, "w":Lcom/lge/app/floating/FloatingWindow;
    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->getWindowName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 375
    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->looseFocus()V

    goto :goto_1e
.end method

.method onWindowRemoved(Ljava/lang/String;)V
    .registers 6
    .param p1, "windowName"    # Ljava/lang/String;

    .prologue
    .line 409
    sget-object v1, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "window "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is removed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mZList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 413
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mZList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 415
    :cond_27
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mZList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_41

    .line 416
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mZList:Ljava/util/List;

    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindowManager;->mZList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mGlobalTopWindowName:Ljava/lang/String;

    .line 420
    :cond_41
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mGlobalTopWindowName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/lge/app/floating/FloatingWindowManager;->getFloatingWindowFor(Ljava/lang/String;)Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    .line 421
    .local v0, "w":Lcom/lge/app/floating/FloatingWindow;
    if-eqz v0, :cond_74

    .line 422
    sget-object v1, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "the next top window is in this process. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->getWindowName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->moveToTop()V

    .line 424
    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->gainFocus()V

    .line 425
    invoke-virtual {p0, v0}, Lcom/lge/app/floating/FloatingWindowManager;->notifyNewTopWindow(Lcom/lge/app/floating/FloatingWindow;)V

    .line 427
    :cond_74
    return-void
.end method

.method removeFloatingWindow(Lcom/lge/app/floating/FloatingWindow;)V
    .registers 3
    .param p1, "window"    # Lcom/lge/app/floating/FloatingWindow;

    .prologue
    .line 313
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/lge/app/floating/FloatingWindowManager;->removeFloatingWindow(Lcom/lge/app/floating/FloatingWindow;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method removeFloatingWindow(Lcom/lge/app/floating/FloatingWindow;Ljava/lang/String;)V
    .registers 8
    .param p1, "window"    # Lcom/lge/app/floating/FloatingWindow;
    .param p2, "extra_removed_reason"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 317
    if-nez p1, :cond_b

    .line 318
    sget-object v1, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v2, "do not operation, remove FloatingWindow caused by window == null"

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :cond_a
    :goto_a
    return-void

    .line 322
    :cond_b
    sget-object v1, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "remove FloatingWindow of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lge/app/floating/FloatingWindow;->getWindowName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/lge/app/floating/FloatingWindow;->getWindowName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mZList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/lge/app/floating/FloatingWindow;->getWindowName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 328
    sget-object v1, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ensure terminate dock before removing floating window "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lge/app/floating/FloatingWindow;->getWindowName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v1, p1, Lcom/lge/app/floating/FloatingWindow;->mDockWindow:Lcom/lge/app/floating/FloatingDockWindow;

    if-eqz v1, :cond_b7

    .line 330
    iget-object v1, p1, Lcom/lge/app/floating/FloatingWindow;->mDockWindow:Lcom/lge/app/floating/FloatingDockWindow;

    invoke-virtual {v1}, Lcom/lge/app/floating/FloatingDockWindow;->terminate()V

    .line 340
    :goto_60
    invoke-virtual {p1}, Lcom/lge/app/floating/FloatingWindow;->getActivity()Lcom/lge/app/floating/FloatableActivity;

    move-result-object v1

    iput-object v4, v1, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    .line 343
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.intent.action.FLOATING_WINDOW_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "window-remove"

    invoke-virtual {p1}, Lcom/lge/app/floating/FloatingWindow;->getWindowName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_83

    .line 346
    const-string v1, "remove-reason"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    :cond_83
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 351
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_a

    .line 353
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mZList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 354
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 355
    sget-object v1, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v2, "no floating window left in this process"

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    sget-object v1, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v2, "stop FloatingWindowService!!"

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindowManager;->getServiceContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_d6

    .line 359
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindowManager;->getServiceContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_a

    .line 333
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_b7
    sget-object v1, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mDockWindow of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lge/app/floating/FloatingWindow;->getWindowName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_60

    .line 363
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_d6
    sget-object v1, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v2, "service context is null. Do not try stopService."

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a
.end method

.method removeLowProfileRequests(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 632
    sget-object v0, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v1, "removeLowProfileRequests"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mWindows:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 638
    :goto_f
    return-void

    .line 636
    :cond_10
    sget-object v0, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "removeLowProfileRequests :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f
.end method

.method saveLowProfileRequest()V
    .registers 3

    .prologue
    .line 297
    sget-object v0, Lcom/lge/app/floating/FloatingWindowManager;->TAG:Ljava/lang/String;

    const-string v1, "Save Lowprofile Requests for ConfigurationChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequestsConf:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 299
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequestsConf:Ljava/util/Map;

    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mLowProfileRequests:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 300
    return-void
.end method

.method setServiceContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/lge/app/floating/FloatingWindowManager;->mServiceContext:Landroid/content/Context;

    .line 195
    return-void
.end method
