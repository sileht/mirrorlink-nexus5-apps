.class public abstract Lcom/lge/app/floating/FloatableActivity;
.super Landroid/app/Activity;
.source "FloatableActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;,
        Lcom/lge/app/floating/FloatableActivity$State;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final EXTRA_LAUNCH_AS_FLOATING:Ljava/lang/String; = "com.lge.app.floating.launchAsFloating"

.field private static final EXTRA_LOWPROFILE_HIDE:Ljava/lang/String; = "com.lge.app.floating.lowProfileIsHidden"

.field private static final EXTRA_LOWPROFILE_REQUESTER:Ljava/lang/String; = "com.lge.app.floating.lowProfileRequester"

.field static final EXTRA_OPACITY:Ljava/lang/String; = "com.lge.app.floating.opacity"

.field public static final EXTRA_POSITION:Ljava/lang/String; = "com.lge.app.floating.position"

.field private static final EXTRA_RESTARTED:Ljava/lang/String; = "com.lge.app.floating.restarted"

.field private static final EXTRA_RETURN_FROM_FLOATING:Ljava/lang/String; = "com.lge.app.floating.returnFromFloating"

.field static final PREF_FILE_NAME:Ljava/lang/String; = "com.lge.app.floating.pref"

.field private static final TAG:Ljava/lang/String;

.field static mIsInGuestMode:Z


# instance fields
.field private mActivityName:Ljava/lang/String;

.field private mContentView:Landroid/view/View;

.field private mContentViewParent:Landroid/view/ViewGroup;

.field private mCurrentIntent:Landroid/content/Intent;

.field private mDontFinishActivity:Z

.field mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

.field private mHasActivityResultReceived:Z

.field private mIsAttached:Z

.field private mIsFullScreenInFullMode:Z

.field private mIsRestartedOrNewIntentCalled:Z

.field private mIsSetFullScreenFlag:Z

.field private mIsSwitchToFloatingModeCalled:Z

.field private volatile mIsSwitchingToFloatingMode:Z

.field private mIsWaitingActivityResult:Z

.field private mOldConfig:Landroid/content/res/Configuration;

.field private final mReceiverRegisterInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mResources:Landroid/content/res/Resources;

.field private mSavedWindowBackground:Landroid/graphics/drawable/Drawable;

.field private mServiceStartRequested:Z

.field private mState:Lcom/lge/app/floating/FloatableActivity$State;

.field private mTaskId:I

.field private receiverListForUnregister:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;",
            ">;"
        }
    .end annotation
.end field

.field restartActivityhandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 55
    const-class v0, Lcom/lge/app/floating/FloatableActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x1

    :goto_a
    sput-boolean v0, Lcom/lge/app/floating/FloatableActivity;->$assertionsDisabled:Z

    .line 57
    sput-boolean v1, Lcom/lge/app/floating/FloatableActivity;->mIsInGuestMode:Z

    .line 111
    const-class v0, Lcom/lge/app/floating/FloatableActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    .line 113
    return-void

    :cond_17
    move v0, v1

    .line 55
    goto :goto_a
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 119
    iput-boolean v1, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchingToFloatingMode:Z

    .line 122
    iput-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    .line 125
    iput-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    .line 128
    iput-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    .line 131
    iput-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mContentView:Landroid/view/View;

    .line 135
    iput-boolean v1, p0, Lcom/lge/app/floating/FloatableActivity;->mDontFinishActivity:Z

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/app/floating/FloatableActivity;->mTaskId:I

    .line 145
    iput-boolean v1, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchToFloatingModeCalled:Z

    .line 148
    iput-boolean v1, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSetFullScreenFlag:Z

    .line 151
    sget-object v0, Lcom/lge/app/floating/FloatableActivity$State;->CREATE:Lcom/lge/app/floating/FloatableActivity$State;

    iput-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    .line 154
    iput-boolean v1, p0, Lcom/lge/app/floating/FloatableActivity;->mIsFullScreenInFullMode:Z

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->mReceiverRegisterInfos:Ljava/util/List;

    .line 854
    iput-boolean v1, p0, Lcom/lge/app/floating/FloatableActivity;->mIsRestartedOrNewIntentCalled:Z

    .line 1064
    iput-boolean v1, p0, Lcom/lge/app/floating/FloatableActivity;->mHasActivityResultReceived:Z

    .line 1074
    iput-boolean v1, p0, Lcom/lge/app/floating/FloatableActivity;->mIsWaitingActivityResult:Z

    .line 1110
    iput-boolean v1, p0, Lcom/lge/app/floating/FloatableActivity;->mServiceStartRequested:Z

    .line 1285
    iput-boolean v1, p0, Lcom/lge/app/floating/FloatableActivity;->mIsAttached:Z

    .line 1286
    iput-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mContentViewParent:Landroid/view/ViewGroup;

    .line 1288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->receiverListForUnregister:Ljava/util/List;

    .line 1597
    iput-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mSavedWindowBackground:Landroid/graphics/drawable/Drawable;

    .line 1678
    iput-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    .line 1819
    new-instance v0, Lcom/lge/app/floating/FloatableActivity$1;

    invoke-direct {v0, p0}, Lcom/lge/app/floating/FloatableActivity$1;-><init>(Lcom/lge/app/floating/FloatableActivity;)V

    iput-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->restartActivityhandler:Landroid/os/Handler;

    .line 55
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    .prologue
    .line 111
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/app/floating/FloatableActivity;)I
    .registers 2

    .prologue
    .line 139
    iget v0, p0, Lcom/lge/app/floating/FloatableActivity;->mTaskId:I

    return v0
.end method

.method private checkRtl(Ljava/util/Locale;)Z
    .registers 4
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v0, 0x1

    .line 1643
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v0, :cond_c

    .line 1646
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private createFloatingWindow(Lcom/lge/app/floating/FloatingWindow$LayoutParams;)Lcom/lge/app/floating/FloatingWindow;
    .registers 7
    .param p1, "params"    # Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    .prologue
    const/4 v1, 0x0

    .line 541
    if-nez p1, :cond_4

    .line 551
    :cond_3
    :goto_3
    return-object v1

    .line 544
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "activityName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getFloatingWindowManager()Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lge/app/floating/FloatingWindowManager;->getFloatingWindowFor(Ljava/lang/String;)Lcom/lge/app/floating/FloatingWindow;

    move-result-object v2

    if-nez v2, :cond_3

    .line 548
    sget-object v2, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "create FloatingWindow of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    new-instance v1, Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getFloatingWindowManager()Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0, p1}, Lcom/lge/app/floating/FloatingWindow;-><init>(Lcom/lge/app/floating/FloatableActivity;Lcom/lge/app/floating/FloatingWindowManager;Ljava/lang/String;Lcom/lge/app/floating/FloatingWindow$LayoutParams;)V

    .line 550
    .local v1, "window":Lcom/lge/app/floating/FloatingWindow;
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getFloatingWindowManager()Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/lge/app/floating/FloatingWindowManager;->addFloatingWindowFor(Ljava/lang/String;Lcom/lge/app/floating/FloatingWindow;)V

    goto :goto_3
.end method

.method private dismissCurrentActivity()V
    .registers 15

    .prologue
    .line 555
    sget-object v9, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "dismiss current activity. activity="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", state="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v9, p0, Lcom/lge/app/floating/FloatableActivity;->mContentView:Landroid/view/View;

    if-nez v9, :cond_56

    .line 559
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    if-eqz v9, :cond_56

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_56

    .line 562
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    const/high16 v10, -0x56000000

    const-string v11, "Qwindow"

    invoke-virtual {v9, v10, v11}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 563
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/lge/app/floating/FloatableActivity;->mContentView:Landroid/view/View;

    .line 572
    :cond_56
    sget-object v9, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "DontFinishActivity = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/lge/app/floating/FloatableActivity;->mDontFinishActivity:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iget-boolean v9, p0, Lcom/lge/app/floating/FloatableActivity;->mDontFinishActivity:Z

    if-nez v9, :cond_bd

    .line 574
    sget-object v9, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v10, "finish current Activity"

    invoke-static {v9, v10}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    iget-object v10, p0, Lcom/lge/app/floating/FloatableActivity;->mReceiverRegisterInfos:Ljava/util/List;

    monitor-enter v10

    .line 577
    :try_start_7a
    iget-object v9, p0, Lcom/lge/app/floating/FloatableActivity;->mReceiverRegisterInfos:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_80
    :goto_80
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_8b

    .line 576
    monitor-exit v10
    :try_end_87
    .catchall {:try_start_7a .. :try_end_87} :catchall_ba

    .line 591
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->finish()V

    .line 644
    :goto_8a
    return-void

    .line 577
    :cond_8b
    :try_start_8b
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;

    .line 578
    .local v2, "info":Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;
    iget-boolean v11, v2, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->isRegistered:Z
    :try_end_93
    .catchall {:try_start_8b .. :try_end_93} :catchall_ba

    if-eqz v11, :cond_80

    .line 584
    :try_start_95
    iget-object v11, v2, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->receiver:Landroid/content/BroadcastReceiver;

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/lge/app/floating/FloatableActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;Z)V
    :try_end_9b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_95 .. :try_end_9b} :catch_9c
    .catchall {:try_start_95 .. :try_end_9b} :catchall_ba

    goto :goto_80

    .line 586
    :catch_9c
    move-exception v11

    :try_start_9d
    sget-object v11, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "receiver "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v2, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is already unregistered"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_80

    .line 576
    .end local v2    # "info":Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;
    :catchall_ba
    move-exception v9

    monitor-exit v10
    :try_end_bc
    .catchall {:try_start_9d .. :try_end_bc} :catchall_ba

    throw v9

    .line 593
    :cond_bd
    sget-object v9, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v10, "save current task ID and moveTaskToBack"

    invoke-static {v9, v10}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string v9, "activity"

    invoke-virtual {p0, v9}, Lcom/lge/app/floating/FloatableActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 596
    .local v0, "am":Landroid/app/ActivityManager;
    const/16 v9, 0x64

    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 597
    .local v4, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/16 v9, 0x64

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v5

    .line 599
    .local v5, "tasks2":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 600
    .local v3, "mMatchedList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v4, :cond_122

    .line 601
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_e4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_141

    .line 615
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_1ad

    .line 617
    sget-object v9, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "No Task exists. "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    :cond_10c
    :goto_10c
    sget-object v9, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "task id="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, p0, Lcom/lge/app/floating/FloatableActivity;->mTaskId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    :cond_122
    if-eqz v4, :cond_13b

    iget v9, p0, Lcom/lge/app/floating/FloatableActivity;->mTaskId:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_13b

    .line 637
    sget-object v9, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v10, "cannot find the task id of this activity. Defaulting it to foreground task."

    invoke-static {v9, v10}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const/4 v9, 0x0

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iput v9, p0, Lcom/lge/app/floating/FloatableActivity;->mTaskId:I

    .line 642
    :cond_13b
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/lge/app/floating/FloatableActivity;->moveTaskToBack(Z)Z

    goto/16 :goto_8a

    .line 601
    :cond_141
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 602
    .local v6, "ti":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v8, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 603
    .local v8, "topActivityName":Landroid/content/ComponentName;
    iget-object v1, v6, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 604
    .local v1, "baseActivityName":Landroid/content/ComponentName;
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_167

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e4

    .line 605
    :cond_167
    if-eqz v5, :cond_e4

    .line 606
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_16d
    :goto_16d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 607
    .local v7, "ti2":Landroid/app/ActivityManager$RecentTaskInfo;
    iget v11, v7, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    iget v12, v6, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-ne v11, v12, :cond_16d

    .line 608
    sget-object v11, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "mMatchedList ( "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " , "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v6, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ) "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16d

    .line 619
    .end local v1    # "baseActivityName":Landroid/content/ComponentName;
    .end local v6    # "ti":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v7    # "ti2":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v8    # "topActivityName":Landroid/content/ComponentName;
    :cond_1ad
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1c1

    .line 620
    const/4 v9, 0x0

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iput v9, p0, Lcom/lge/app/floating/FloatableActivity;->mTaskId:I

    goto/16 :goto_10c

    .line 624
    :cond_1c1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1c5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 625
    .restart local v6    # "ti":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v8, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 626
    .restart local v8    # "topActivityName":Landroid/content/ComponentName;
    iget-object v1, v6, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 627
    .restart local v1    # "baseActivityName":Landroid/content/ComponentName;
    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1f9

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c5

    .line 628
    :cond_1f9
    iget v9, v6, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iput v9, p0, Lcom/lge/app/floating/FloatableActivity;->mTaskId:I

    goto/16 :goto_10c
.end method

.method private ensureMaximumFloatingWindows()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 467
    sget-object v2, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v3, "ensureMaximumFloatingWindows"

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getFloatingWindowManager()Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/app/floating/FloatingWindowManager;->isTooManyFloatingWindows(Z)Z

    move-result v0

    .line 469
    .local v0, "noMore":Z
    sget-object v2, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isTooManyFloatingWindows? "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    if-eqz v0, :cond_37

    .line 471
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isStartedAsFloating()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 472
    sget-object v1, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v2, "MaximumFloatingWindow limitation. Finish current Activity."

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->finish()V

    .line 475
    :cond_36
    const/4 v1, 0x0

    .line 477
    :cond_37
    return v1
.end method

.method private ensureQSlideModeIsAllowed()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 427
    sget-object v3, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v4, "ensureQSlideModeIsAllowed"

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const/4 v0, 0x1

    .line 431
    .local v0, "isAllowed":Z
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getFloatingWindowManager()Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lge/app/floating/FloatingWindowManager;->isQSlideModeEnabled(Z)Z

    move-result v1

    .line 432
    .local v1, "isQSlideEnabled":Z
    if-nez v1, :cond_28

    .line 433
    sget-object v3, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isQSlideEnabled? "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const/4 v0, 0x0

    .line 456
    :cond_28
    if-nez v0, :cond_3b

    .line 457
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isStartedAsFloating()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 458
    sget-object v2, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v3, "Qslide is not allowed. Finish this Activity."

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->finish()V

    .line 461
    :cond_3a
    const/4 v2, 0x0

    .line 463
    :cond_3b
    return v2
.end method

.method private fakeLoadersNotStarted(Z)V
    .registers 9
    .param p1, "notStarted"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1860
    :try_start_2
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isSwitchingToFloatingMode()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1862
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/app/floating/FloatingFunctionReflect;->getFragmentList(Landroid/app/FragmentManager;)Ljava/util/List;

    move-result-object v2

    .line 1863
    .local v2, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    if-nez v2, :cond_1a

    .line 1864
    sget-object v3, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v4, "no fragment to load exists"

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1875
    .end local v2    # "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    :cond_19
    :goto_19
    return-void

    .line 1867
    .restart local v2    # "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    :cond_1a
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 1868
    .local v1, "frag":Landroid/app/Fragment;
    if-eqz p1, :cond_42

    move v3, v4

    :goto_2d
    invoke-static {v1, v3}, Lcom/lge/app/floating/FloatingFunctionReflect;->setFragmentHostCallbackMLoadersStarted(Landroid/app/Fragment;Z)V

    .line 1869
    if-eqz p1, :cond_44

    move v3, v4

    :goto_33
    invoke-static {v1, v3}, Lcom/lge/app/floating/FloatingFunctionReflect;->setFragmentMLoadersStarted(Landroid/app/Fragment;Z)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_36} :catch_37

    goto :goto_1e

    .line 1872
    .end local v1    # "frag":Landroid/app/Fragment;
    .end local v2    # "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    :catch_37
    move-exception v0

    .line 1873
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "frag":Landroid/app/Fragment;
    .restart local v2    # "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    :cond_42
    move v3, v5

    .line 1868
    goto :goto_2d

    :cond_44
    move v3, v5

    .line 1869
    goto :goto_33
.end method

.method private findRegisterInfo(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;
    .registers 7
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 1163
    iget-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mReceiverRegisterInfos:Ljava/util/List;

    monitor-enter v2

    .line 1164
    :try_start_3
    iget-object v1, p0, Lcom/lge/app/floating/FloatableActivity;->mReceiverRegisterInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_12

    .line 1163
    monitor-exit v2

    .line 1170
    const/4 v0, 0x0

    :goto_11
    return-object v0

    .line 1164
    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;

    .line 1165
    .local v0, "info":Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;
    iget-object v3, v0, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->receiver:Landroid/content/BroadcastReceiver;

    if-ne v3, p1, :cond_9

    iget-object v3, v0, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1166
    monitor-exit v2

    goto :goto_11

    .line 1163
    .end local v0    # "info":Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;
    :catchall_26
    move-exception v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method private forceSwitchToFloatingMode(Lcom/lge/app/floating/FloatingWindow$LayoutParams;)V
    .registers 16
    .param p1, "params"    # Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    .prologue
    const v13, 0x7f060009

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 481
    sget-object v7, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "forceSwitchToFloatingMode with intent "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iput-boolean v11, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchingToFloatingMode:Z

    .line 486
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 487
    .local v0, "currentSystemUiVisibility":I
    sget-object v7, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "forceSwitchToFloatingMode. Current flag : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Set SYSTEM_UI_FLAG_LAYOUT_STABLE flag"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    or-int/lit16 v0, v0, 0x100

    .line 489
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 492
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 493
    .local v1, "display":Landroid/util/DisplayMetrics;
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->x:I

    .line 494
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v12, :cond_85

    .line 495
    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f060002

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->y:I

    .line 501
    :cond_85
    iget v7, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->x:I

    iget v8, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v8, v8

    div-float v5, v7, v8

    .line 502
    .local v5, "tmpHorRatio":F
    iget v7, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->y:I

    iget v8, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v8, v8

    div-float v6, v7, v8

    .line 503
    .local v6, "tmpVerRatio":F
    const-string v7, "com.lge.app.floating.pref"

    invoke-virtual {p0, v7, v10}, Lcom/lge/app/floating/FloatableActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 504
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v7, "floating_w"

    iget v8, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    .line 505
    const-string v7, "floating_h"

    iget v8, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    .line 506
    const-string v7, "floating_hor_ratio"

    invoke-interface {v3, v7, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v7

    iget v8, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget v8, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iput v7, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->x:I

    .line 508
    const-string v7, "floating_ver_ratio"

    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v7

    iget v8, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget v8, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    div-int/lit8 v8, v8, 0x2

    sub-int v4, v7, v8

    .line 509
    .local v4, "tempY":I
    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    if-lt v4, v7, :cond_ec

    .line 510
    iput v4, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->y:I

    .line 514
    :cond_ec
    sget-boolean v7, Lcom/lge/app/floating/FloatableActivity;->$assertionsDisabled:Z

    if-nez v7, :cond_fa

    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    if-eqz v7, :cond_fa

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 516
    :cond_fa
    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    if-eqz v7, :cond_11a

    .line 517
    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    const-string v8, "com.lge.app.floating.position"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    .line 518
    .local v2, "initialPosition":[I
    if-eqz v2, :cond_113

    array-length v7, v2

    if-ne v7, v12, :cond_113

    .line 519
    aget v7, v2, v10

    iput v7, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->x:I

    .line 520
    aget v7, v2, v11

    iput v7, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->y:I

    .line 523
    :cond_113
    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    const-string v8, "com.lge.app.floating.returnFromFloating"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 529
    .end local v2    # "initialPosition":[I
    :cond_11a
    invoke-direct {p0, p1}, Lcom/lge/app/floating/FloatableActivity;->createFloatingWindow(Lcom/lge/app/floating/FloatingWindow$LayoutParams;)Lcom/lge/app/floating/FloatingWindow;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    .line 535
    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    sget-object v8, Lcom/lge/app/floating/FloatableActivity$State;->RESUME:Lcom/lge/app/floating/FloatableActivity$State;

    if-ne v7, v8, :cond_129

    .line 536
    invoke-direct {p0}, Lcom/lge/app/floating/FloatableActivity;->dismissCurrentActivity()V

    .line 538
    :cond_129
    return-void
.end method

.method private getOrderingForStartActivity()I
    .registers 9

    .prologue
    .line 1650
    const-string v4, "com.lge.app.floating.FloatingWindowService"

    .line 1651
    .local v4, "serviceName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 1652
    .local v2, "pid":I
    const/4 v1, 0x0

    .line 1653
    .local v1, "order":I
    const-string v6, "activity"

    invoke-virtual {p0, v6}, Lcom/lge/app/floating/FloatableActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1654
    .local v0, "manager":Landroid/app/ActivityManager;
    const v6, 0x7fffffff

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v5

    .line 1655
    .local v5, "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-nez v5, :cond_20

    .line 1656
    sget-object v6, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v7, "Cannot get Ordering For Start Activity"

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    :cond_1f
    :goto_1f
    return v1

    .line 1659
    :cond_20
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_24
    :goto_24
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 1661
    .local v3, "service":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v7, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    if-nez v7, :cond_3c

    .line 1662
    sget-object v6, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v7, "Exception - RunningServiceInfo : null"

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 1666
    :cond_3c
    iget-object v7, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 1667
    iget v7, v3, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-eq v7, v2, :cond_1f

    .line 1670
    add-int/lit8 v1, v1, 0x1

    goto :goto_24
.end method

.method private handleDuplicatedStart()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 926
    sget-object v1, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleDuplicatedStart brings activity "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from background to foreground"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isStartedAsFloating()Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-boolean v1, p0, Lcom/lge/app/floating/FloatableActivity;->mIsRestartedOrNewIntentCalled:Z

    if-eqz v1, :cond_2e

    .line 935
    invoke-virtual {p0, v4}, Lcom/lge/app/floating/FloatableActivity;->moveTaskToBack(Z)Z

    .line 952
    :goto_2b
    iput-boolean v5, p0, Lcom/lge/app/floating/FloatableActivity;->mIsRestartedOrNewIntentCalled:Z

    .line 953
    :cond_2d
    return-void

    .line 936
    :cond_2e
    iget-boolean v1, p0, Lcom/lge/app/floating/FloatableActivity;->mHasActivityResultReceived:Z

    if-eqz v1, :cond_38

    .line 939
    iput-boolean v5, p0, Lcom/lge/app/floating/FloatableActivity;->mHasActivityResultReceived:Z

    .line 940
    invoke-virtual {p0, v4}, Lcom/lge/app/floating/FloatableActivity;->moveTaskToBack(Z)Z

    goto :goto_2b

    .line 941
    :cond_38
    iget-boolean v1, p0, Lcom/lge/app/floating/FloatableActivity;->mIsWaitingActivityResult:Z

    if-nez v1, :cond_2d

    .line 949
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getFloatingWindowManager()Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lge/app/floating/FloatingWindowManager;->getFloatingWindowFor(Ljava/lang/String;)Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    .line 950
    .local v0, "window":Lcom/lge/app/floating/FloatingWindow;
    invoke-virtual {v0, v4}, Lcom/lge/app/floating/FloatingWindow;->closeInner(Z)V

    goto :goto_2b
.end method

.method private handleStartedAsFloatingMode()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1600
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->onStartedAsFloatingMode()Z

    move-result v1

    .line 1601
    .local v1, "proceed":Z
    if-eqz v1, :cond_47

    .line 1602
    sget-object v3, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Activity "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " started as floating mode. Automatically switching to floating mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 1604
    .local v0, "nullDrwable":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/app/floating/FloatableActivity;->mSavedWindowBackground:Landroid/graphics/drawable/Drawable;

    .line 1605
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1608
    iget-boolean v3, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchToFloatingModeCalled:Z

    if-nez v3, :cond_46

    .line 1609
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->switchToFloatingMode()V

    .line 1610
    iput-boolean v6, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchToFloatingModeCalled:Z

    .line 1626
    .end local v0    # "nullDrwable":Landroid/graphics/drawable/ColorDrawable;
    :cond_46
    :goto_46
    return-void

    .line 1614
    :cond_47
    sget-object v3, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Activity "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " started as floating mode, but app decided not to enter into floating mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    iget-boolean v3, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchToFloatingModeCalled:Z

    if-eqz v3, :cond_46

    .line 1619
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getFloatingWindowManager()Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/lge/app/floating/FloatingWindowManager;->getFloatingWindowFor(Ljava/lang/String;)Lcom/lge/app/floating/FloatingWindow;

    move-result-object v2

    .line 1620
    .local v2, "window":Lcom/lge/app/floating/FloatingWindow;
    if-eqz v2, :cond_76

    .line 1621
    invoke-virtual {v2}, Lcom/lge/app/floating/FloatingWindow;->closeInner()V

    .line 1623
    :cond_76
    iput-boolean v6, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchToFloatingModeCalled:Z

    goto :goto_46
.end method

.method private isServiceRunning(Ljava/lang/String;I)Z
    .registers 11
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .prologue
    const/4 v3, 0x0

    .line 987
    sget-object v4, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v5, "Check isServiceRunning"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lcom/lge/app/floating/FloatableActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 989
    .local v0, "manager":Landroid/app/ActivityManager;
    const v4, 0x7fffffff

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v2

    .line 990
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-nez v2, :cond_21

    .line 991
    sget-object v4, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v5, "Cannot get  RunningServiceInfo."

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    :cond_20
    :goto_20
    return v3

    .line 994
    :cond_21
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_25
    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 995
    .local v1, "service":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 996
    sget-object v5, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "serviceName , pid : ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    iget v5, v1, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-ne v5, p2, :cond_83

    .line 998
    sget-object v3, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Service Pid matched. pid = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    const/4 v3, 0x1

    goto :goto_20

    .line 1001
    :cond_83
    sget-object v5, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Service Pid not matched. current pid = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "find service pid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_25
.end method

.method private performShowToastForLockTaskMode()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 300
    sget-object v4, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v5, "PerformShowToastForLockTaskMode"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lcom/lge/app/floating/FloatableActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 302
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 303
    sget-object v4, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v5, "Under LockTaskMode. Prevent switch to floating mode"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const/4 v2, 0x1

    .line 307
    .local v2, "mHasNav":Z
    :try_start_1e
    invoke-static {}, Lcom/lge/app/floating/FloatingFunction;->hasNavigationBar()Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_6e

    move-result v2

    .line 311
    :goto_22
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 312
    .local v3, "resolver":Landroid/content/ContentResolver;
    const-string v4, "set_hw_menu_key_options"

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-static {v3, v4, v5, v6}, Lcom/lge/app/floating/FloatingFunctionReflect;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 314
    .local v1, "mHWMenuKeyDB":I
    sget-object v4, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "HasNav : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    sget-object v4, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "HWMenuKeyDB : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    if-eqz v2, :cond_77

    .line 318
    sget-object v4, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v5, "SW key model."

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const v4, 0x1040590

    invoke-virtual {p0, v4}, Lcom/lge/app/floating/FloatableActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 333
    .end local v1    # "mHWMenuKeyDB":I
    .end local v2    # "mHasNav":Z
    .end local v3    # "resolver":Landroid/content/ContentResolver;
    :cond_6d
    :goto_6d
    return-void

    .line 309
    .restart local v2    # "mHasNav":Z
    :catch_6e
    move-exception v4

    sget-object v4, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v5, "Exception is occured in getting hasNav values"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    .line 321
    .restart local v1    # "mHWMenuKeyDB":I
    .restart local v3    # "resolver":Landroid/content/ContentResolver;
    :cond_77
    if-ne v1, v7, :cond_8e

    .line 322
    sget-object v4, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v5, "HW_recent key model."

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    sget v4, Lcom/lge/internal/R$string;->lock_to_app_toast_hw_pwr_recent:I

    invoke-virtual {p0, v4}, Lcom/lge/app/floating/FloatableActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_6d

    .line 327
    :cond_8e
    sget-object v4, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v5, "HW_menu key model."

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    sget v4, Lcom/lge/internal/R$string;->lock_to_app_toast_hw_pwr_menu:I

    invoke-virtual {p0, v4}, Lcom/lge/app/floating/FloatableActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_6d
.end method

.method private startFloatingService()V
    .registers 4

    .prologue
    .line 1113
    iget-boolean v1, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchingToFloatingMode:Z

    if-eqz v1, :cond_2e

    iget-boolean v1, p0, Lcom/lge/app/floating/FloatableActivity;->mServiceStartRequested:Z

    if-nez v1, :cond_2e

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isInFloatingMode()Z

    move-result v1

    if-nez v1, :cond_2e

    const-string v1, "com.lge.app.floating.FloatingWindowService"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/lge/app/floating/FloatableActivity;->isServiceRunning(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 1115
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/app/floating/FloatableActivity;->mServiceStartRequested:Z

    .line 1118
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lge/app/floating/FloatingWindowService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1119
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ActivityName"

    iget-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1120
    invoke-virtual {p0, v0}, Lcom/lge/app/floating/FloatableActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1122
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2e
    return-void
.end method

.method private switchToFloatingMode(Lcom/lge/app/floating/FloatingWindow$LayoutParams;Z)V
    .registers 13
    .param p1, "params"    # Lcom/lge/app/floating/FloatingWindow$LayoutParams;
    .param p2, "temp"    # Z

    .prologue
    const/16 v9, 0x400

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 341
    iput-boolean v7, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchToFloatingModeCalled:Z

    .line 342
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isInFloatingMode()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 343
    sget-object v4, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Activity "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is currently in floating mode. Do nothing."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_28
    :goto_28
    return-void

    .line 347
    :cond_29
    iget-boolean v4, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchingToFloatingMode:Z

    if-eqz v4, :cond_4a

    .line 348
    sget-object v4, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Activity "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is currently switching to floating mode. Ignoring duplicated request."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    .line 352
    :cond_4a
    iget-object v4, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    sget-object v5, Lcom/lge/app/floating/FloatableActivity$State;->PAUSE:Lcom/lge/app/floating/FloatableActivity$State;

    if-eq v4, v5, :cond_5c

    iget-object v4, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    sget-object v5, Lcom/lge/app/floating/FloatableActivity$State;->STOP:Lcom/lge/app/floating/FloatableActivity$State;

    if-eq v4, v5, :cond_5c

    iget-object v4, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    sget-object v5, Lcom/lge/app/floating/FloatableActivity$State;->DESTROY:Lcom/lge/app/floating/FloatableActivity$State;

    if-ne v4, v5, :cond_85

    .line 353
    :cond_5c
    sget-object v4, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Activity "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is currnently in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mode. In this mode, switching to floating mode is not possible."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    .line 362
    :cond_85
    const/4 v2, 0x0

    .line 364
    .local v2, "ignoreMaxFloating":Z
    :try_start_86
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 365
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "ignoreMaxFloating"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_9c} :catch_115

    move-result v2

    .line 369
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_9d
    if-nez v2, :cond_130

    .line 370
    invoke-direct {p0}, Lcom/lge/app/floating/FloatableActivity;->ensureMaximumFloatingWindows()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 378
    :goto_a5
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 379
    .local v1, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, 0x400

    if-ne v4, v9, :cond_14a

    .line 380
    sget-object v4, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v5, "FLAG_FULLSCREEN in full mode."

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iput-boolean v7, p0, Lcom/lge/app/floating/FloatableActivity;->mIsFullScreenInFullMode:Z

    .line 387
    :goto_bc
    iput-boolean v7, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSetFullScreenFlag:Z

    .line 390
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getFloatingWindowManager()Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/lge/app/floating/FloatingWindowManager;->getFloatingWindowFor(Ljava/lang/String;)Lcom/lge/app/floating/FloatingWindow;

    move-result-object v3

    .line 391
    .local v3, "window":Lcom/lge/app/floating/FloatingWindow;
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-eqz v4, :cond_ec

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_ec

    .line 392
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v4, v5, :cond_ec

    .line 393
    sget-object v4, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v5, "addFlags(LayoutParams.FLAG_FULLSCREEN)"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/Window;->addFlags(I)V

    .line 397
    :cond_ec
    if-eqz v3, :cond_161

    .line 398
    sget-object v4, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "There already is a floating window for activity "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isStartedAsFloating()Z

    move-result v4

    if-eqz v4, :cond_155

    .line 404
    invoke-virtual {v3}, Lcom/lge/app/floating/FloatingWindow;->gainFocus()V

    .line 405
    invoke-virtual {v3}, Lcom/lge/app/floating/FloatingWindow;->moveToTop()V

    .line 406
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->finish()V

    goto/16 :goto_28

    .line 367
    .end local v1    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "window":Lcom/lge/app/floating/FloatingWindow;
    :catch_115
    move-exception v4

    sget-object v4, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to get ApplicationInfo of "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9d

    .line 374
    :cond_130
    sget-object v4, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "MaxFloating is ignored by app "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a5

    .line 384
    .restart local v1    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_14a
    sget-object v4, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v5, "Not FLAG_FULLSCREEN in full mode."

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iput-boolean v8, p0, Lcom/lge/app/floating/FloatableActivity;->mIsFullScreenInFullMode:Z

    goto/16 :goto_bc

    .line 413
    .restart local v3    # "window":Lcom/lge/app/floating/FloatingWindow;
    :cond_155
    sget-object v4, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v5, "Activity is originally started as a normal mode and there is a floating window for this activity...Close late one"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-virtual {v3}, Lcom/lge/app/floating/FloatingWindow;->closeInner()V

    goto/16 :goto_28

    .line 421
    :cond_161
    invoke-direct {p0, p1}, Lcom/lge/app/floating/FloatableActivity;->forceSwitchToFloatingMode(Lcom/lge/app/floating/FloatingWindow$LayoutParams;)V

    goto/16 :goto_28
.end method

.method private unregisterReceiver(Landroid/content/BroadcastReceiver;Z)V
    .registers 9
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "dontRemember"    # Z

    .prologue
    .line 1241
    sget-object v3, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "unregister receiver: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dontRemember : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    if-nez p1, :cond_24

    .line 1244
    invoke-super {p0, p1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1268
    :goto_23
    return-void

    .line 1248
    :cond_24
    const/4 v0, 0x0

    .line 1249
    .local v0, "done":Z
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1250
    .local v2, "unregisteredReceivers":Ljava/util/Set;, "Ljava/util/Set<Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;>;"
    iget-object v4, p0, Lcom/lge/app/floating/FloatableActivity;->mReceiverRegisterInfos:Ljava/util/List;

    monitor-enter v4

    .line 1251
    :try_start_2d
    iget-object v3, p0, Lcom/lge/app/floating/FloatableActivity;->mReceiverRegisterInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_33
    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_45

    .line 1264
    if-eqz p2, :cond_40

    .line 1265
    iget-object v3, p0, Lcom/lge/app/floating/FloatableActivity;->mReceiverRegisterInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1250
    :cond_40
    monitor-exit v4

    goto :goto_23

    :catchall_42
    move-exception v3

    monitor-exit v4
    :try_end_44
    .catchall {:try_start_2d .. :try_end_44} :catchall_42

    throw v3

    .line 1251
    :cond_45
    :try_start_45
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;

    .line 1252
    .local v1, "info":Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;
    iget-object v5, v1, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->receiver:Landroid/content/BroadcastReceiver;

    if-ne v5, p1, :cond_33

    .line 1253
    iget-boolean v5, v1, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->isRegistered:Z

    if-eqz v5, :cond_59

    if-nez v0, :cond_59

    .line 1254
    invoke-super {p0, p1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1255
    const/4 v0, 0x1

    .line 1257
    :cond_59
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->isRegistered:Z

    .line 1258
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_5f
    .catchall {:try_start_45 .. :try_end_5f} :catchall_42

    goto :goto_33
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .registers 5
    .param p1, "id"    # I

    .prologue
    .line 1272
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isInFloatingMode()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1273
    invoke-super {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1281
    :goto_a
    return-object v1

    .line 1276
    :cond_b
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getFloatingWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v1

    const-string v2, "tag_frame_layout"

    invoke-virtual {v1, v2}, Lcom/lge/app/floating/FloatingWindow;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 1277
    .local v0, "targetView":Landroid/view/View;
    if-eqz v0, :cond_1c

    .line 1278
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_a

    .line 1281
    :cond_1c
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public finishFloatingMode()V
    .registers 4

    .prologue
    .line 717
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isInFloatingMode()Z

    move-result v0

    if-nez v0, :cond_23

    .line 718
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Activity "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is currently not in floating mode, thus finishing is impossible."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    :cond_22
    :goto_22
    return-void

    .line 721
    :cond_23
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Activity "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " finishFloatingMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    if-eqz v0, :cond_22

    .line 723
    iget-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->closeInner()V

    goto :goto_22
.end method

.method public getContentViewForFloatingMode()Landroid/view/View;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method getDontFinishActivity()Z
    .registers 2

    .prologue
    .line 1878
    iget-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mDontFinishActivity:Z

    return v0
.end method

.method public getFloatingWindow()Lcom/lge/app/floating/FloatingWindow;
    .registers 2

    .prologue
    .line 745
    iget-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    return-object v0
.end method

.method public getFloatingWindowManager()Lcom/lge/app/floating/FloatingWindowManager;
    .registers 2

    .prologue
    .line 670
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/app/floating/FloatingWindowManager;->getDefault(Landroid/content/Context;)Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v0

    return-object v0
.end method

.method handleAttachToFloatingWindow(Lcom/lge/app/floating/FloatingWindow;)V
    .registers 16
    .param p1, "w"    # Lcom/lge/app/floating/FloatingWindow;

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1291
    sget-object v6, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "handleAttachToFloatingWindow="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    sget-boolean v6, Lcom/lge/app/floating/FloatableActivity;->$assertionsDisabled:Z

    if-nez v6, :cond_38

    iget-object v6, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    if-nez v6, :cond_38

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1293
    :cond_38
    iput-boolean v12, p0, Lcom/lge/app/floating/FloatableActivity;->mIsAttached:Z

    .line 1295
    iget-object v6, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    if-nez v6, :cond_52

    .line 1296
    new-instance v6, Landroid/content/res/Configuration;

    invoke-direct {v6}, Landroid/content/res/Configuration;-><init>()V

    iput-object v6, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    .line 1297
    iget-object v6, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1302
    :cond_52
    iget-object v6, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    if-eqz v6, :cond_5d

    .line 1303
    iget-object v6, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    const-string v7, "com.lge.app.floating.launchAsFloating"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1306
    :cond_5d
    iget-object v6, p0, Lcom/lge/app/floating/FloatableActivity;->mContentView:Landroid/view/View;

    if-eqz v6, :cond_87

    .line 1309
    sget-object v6, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v7, "view is being transferred from full-screen window to floating window"

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    iget-object v6, p0, Lcom/lge/app/floating/FloatableActivity;->mContentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 1311
    .local v4, "p":Landroid/view/ViewParent;
    if-eqz v4, :cond_80

    instance-of v6, v4, Landroid/view/ViewGroup;

    if-eqz v6, :cond_80

    move-object v6, v4

    .line 1312
    check-cast v6, Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mContentView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1313
    check-cast v4, Landroid/view/ViewGroup;

    .end local v4    # "p":Landroid/view/ViewParent;
    iput-object v4, p0, Lcom/lge/app/floating/FloatableActivity;->mContentViewParent:Landroid/view/ViewGroup;

    .line 1315
    :cond_80
    iget-object v6, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mContentView:Landroid/view/View;

    invoke-virtual {v6, v7}, Lcom/lge/app/floating/FloatingWindow;->setContentView(Landroid/view/View;)V

    .line 1319
    :cond_87
    iget-boolean v6, p0, Lcom/lge/app/floating/FloatableActivity;->mDontFinishActivity:Z

    if-nez v6, :cond_b9

    .line 1320
    sget-object v6, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "re-registering receivers for activity"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    iget-object v6, p0, Lcom/lge/app/floating/FloatableActivity;->mReceiverRegisterInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_125

    .line 1331
    iget-object v6, p0, Lcom/lge/app/floating/FloatableActivity;->receiverListForUnregister:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 1332
    iget-object v6, p0, Lcom/lge/app/floating/FloatableActivity;->receiverListForUnregister:Ljava/util/List;

    iget-object v7, p0, Lcom/lge/app/floating/FloatableActivity;->mReceiverRegisterInfos:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1338
    :cond_b9
    iget-boolean v6, p0, Lcom/lge/app/floating/FloatableActivity;->mDontFinishActivity:Z

    if-nez v6, :cond_172

    .line 1339
    iget-object v6, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    sget-object v7, Lcom/lge/app/floating/FloatableActivity$State;->PAUSE:Lcom/lge/app/floating/FloatableActivity$State;

    if-eq v6, v7, :cond_d1

    .line 1341
    iget-object v6, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    sget-object v7, Lcom/lge/app/floating/FloatableActivity$State;->STOP:Lcom/lge/app/floating/FloatableActivity$State;

    if-eq v6, v7, :cond_d1

    .line 1343
    iget-object v6, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    sget-object v7, Lcom/lge/app/floating/FloatableActivity$State;->DESTROY:Lcom/lge/app/floating/FloatableActivity$State;

    if-ne v6, v7, :cond_d1

    .line 1345
    iput-boolean v11, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchingToFloatingMode:Z

    .line 1365
    :cond_d1
    :goto_d1
    sget-object v6, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v7, "callback onAttachedToFloatingWindow()"

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    invoke-virtual {p0, p1}, Lcom/lge/app/floating/FloatableActivity;->onAttachedToFloatingWindow(Lcom/lge/app/floating/FloatingWindow;)V

    .line 1368
    iget-object v6, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    if-eqz v6, :cond_1e1

    .line 1369
    iget-object v6, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    const-string v7, "com.lge.app.floating.lowProfileRequester"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1370
    .local v5, "previousLowProfileRequester":Ljava/lang/String;
    if-eqz v5, :cond_182

    .line 1371
    iget-object v6, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    const-string v7, "com.lge.app.floating.lowProfileIsHidden"

    invoke-virtual {v6, v7, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1372
    .local v1, "hide":Z
    sget-object v6, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "recover last low profile mode as hide="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " by previous LowProfile requester "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getFloatingWindowManager()Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v6

    invoke-virtual {v6, v1, v5}, Lcom/lge/app/floating/FloatingWindowManager;->handleEnterLowProfile(ZLjava/lang/String;)V

    .line 1374
    iget-object v6, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    const-string v7, "com.lge.app.floating.lowProfileRequester"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1375
    iget-object v6, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    const-string v7, "com.lge.app.floating.lowProfileIsHidden"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1405
    .end local v1    # "hide":Z
    .end local v5    # "previousLowProfileRequester":Ljava/lang/String;
    :goto_124
    return-void

    .line 1321
    :cond_125
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;

    .line 1322
    .local v2, "info":Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;
    sget-object v7, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "receiver="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v2, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getFloatingWindowManager()Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/app/floating/FloatingWindowManager;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    .line 1324
    .local v0, "c":Landroid/content/Context;
    if-nez v0, :cond_14f

    .line 1325
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1327
    :cond_14f
    sget-object v7, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "register to service context: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v2, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    iget-object v7, v2, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v8, v2, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->filter:Landroid/content/IntentFilter;

    iget-object v9, v2, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->broadcastPermission:Ljava/lang/String;

    iget-object v10, v2, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->scheduler:Landroid/os/Handler;

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto/16 :goto_a7

    .line 1354
    .end local v0    # "c":Landroid/content/Context;
    .end local v2    # "info":Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;
    :cond_172
    iget-object v6, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    sget-object v7, Lcom/lge/app/floating/FloatableActivity$State;->PAUSE:Lcom/lge/app/floating/FloatableActivity$State;

    if-eq v6, v7, :cond_d1

    .line 1356
    iget-object v6, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    sget-object v7, Lcom/lge/app/floating/FloatableActivity$State;->STOP:Lcom/lge/app/floating/FloatableActivity$State;

    if-ne v6, v7, :cond_d1

    .line 1358
    iput-boolean v11, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchingToFloatingMode:Z

    goto/16 :goto_d1

    .line 1382
    .restart local v5    # "previousLowProfileRequester":Ljava/lang/String;
    :cond_182
    iget-object v6, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    const-string v7, "com.lge.app.floating.opacity"

    invoke-virtual {v6, v7, v13}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v3

    .line 1383
    .local v3, "opacity":F
    sget-object v6, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "show opacity "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    cmpg-float v6, v3, v13

    if-gez v6, :cond_1da

    .line 1385
    sget-object v6, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "apply opacity "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " saved in intent"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    iget-object v6, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v6, v12}, Lcom/lge/app/floating/FloatingWindow;->setOverlay(Z)V

    .line 1389
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/lge/app/floating/FloatableActivity$2;

    invoke-direct {v7, p0}, Lcom/lge/app/floating/FloatableActivity$2;-><init>(Lcom/lge/app/floating/FloatableActivity;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1395
    iget-object v6, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v6, v3}, Lcom/lge/app/floating/FloatingWindow;->setOpacity(F)V

    .line 1396
    iget-object v6, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    const-string v7, "com.lge.app.floating.opacity"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1400
    :cond_1da
    iget-object v6, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v6, v12}, Lcom/lge/app/floating/FloatingWindow;->updateTitleBackground(Z)V

    goto/16 :goto_124

    .line 1403
    .end local v3    # "opacity":F
    .end local v5    # "previousLowProfileRequester":Ljava/lang/String;
    :cond_1e1
    sget-object v6, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v7, "Current intent is NULL"

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_124
.end method

.method handleDetachFromFloatingWindow(Lcom/lge/app/floating/FloatingWindow;Z)V
    .registers 25
    .param p1, "w"    # Lcom/lge/app/floating/FloatingWindow;
    .param p2, "isReturningToFullScreen"    # Z

    .prologue
    .line 1425
    sget-object v17, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "handleDetachFromFloatingWindow="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    invoke-virtual/range {p0 .. p2}, Lcom/lge/app/floating/FloatableActivity;->onDetachedFromFloatingWindow(Lcom/lge/app/floating/FloatingWindow;Z)Z

    move-result v4

    .line 1427
    .local v4, "autoRelaunch":Z
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/app/floating/FloatableActivity;->mIsAttached:Z

    .line 1428
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    .line 1429
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchingToFloatingMode:Z

    .line 1430
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchToFloatingModeCalled:Z

    .line 1433
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatableActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 1434
    .local v7, "display":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p1 .. p1}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParams()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v14

    .line 1436
    .local v14, "params":Lcom/lge/app/floating/FloatingWindow$LayoutParams;
    if-nez v14, :cond_68

    .line 1437
    sget-object v17, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v18, "FloatingWindow.LayoutParams params == null"

    invoke-static/range {v17 .. v18}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    :cond_67
    :goto_67
    return-void

    .line 1441
    :cond_68
    iget v0, v14, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->x:I

    move/from16 v17, v0

    iget v0, v14, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v9, v17, v18

    .line 1442
    .local v9, "horRatio":F
    iget v0, v14, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->y:I

    move/from16 v17, v0

    iget v0, v14, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v16, v17, v18

    .line 1443
    .local v16, "verRatio":F
    const-string v17, "com.lge.app.floating.pref"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/lge/app/floating/FloatableActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 1444
    .local v15, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1445
    .local v8, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v17, "floating_hor_ratio"

    move-object/from16 v0, v17

    invoke-interface {v8, v0, v9}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1446
    const-string v17, "floating_ver_ratio"

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1447
    const-string v17, "floating_w"

    iget v0, v14, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1448
    const-string v17, "floating_h"

    iget v0, v14, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1449
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1453
    if-eqz p2, :cond_113

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/app/floating/FloatableActivity;->mIsFullScreenInFullMode:Z

    move/from16 v17, v0

    if-nez v17, :cond_113

    .line 1454
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v17

    if-eqz v17, :cond_113

    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v17

    if-eqz v17, :cond_113

    .line 1455
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0x12

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_113

    .line 1456
    sget-object v17, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v18, "clearFlags(LayoutParams.FLAG_FULLSCREEN)"

    invoke-static/range {v17 .. v18}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v17

    const/16 v18, 0x400

    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->clearFlags(I)V

    .line 1465
    :cond_113
    sget-object v17, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "DontFinishActivity = "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/app/floating/FloatableActivity;->mDontFinishActivity:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/app/floating/FloatableActivity;->mDontFinishActivity:Z

    move/from16 v17, v0

    if-nez v17, :cond_170

    .line 1467
    sget-object v17, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "unregistering receivers for activity"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatableActivity;->receiverListForUnregister:Ljava/util/List;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 1469
    :try_start_156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatableActivity;->receiverListForUnregister:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_160
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_1d8

    .line 1468
    monitor-exit v18
    :try_end_167
    .catchall {:try_start_156 .. :try_end_167} :catchall_248

    .line 1483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatableActivity;->receiverListForUnregister:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    .line 1485
    :cond_170
    sget-object v17, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "AutoRelaunch = "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1486
    if-eqz v4, :cond_67

    .line 1487
    if-eqz p2, :cond_36d

    .line 1488
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/app/floating/FloatableActivity;->mDontFinishActivity:Z

    move/from16 v17, v0

    if-nez v17, :cond_258

    .line 1491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    move-object/from16 v17, v0

    if-eqz v17, :cond_24b

    new-instance v11, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1492
    .local v11, "intent":Landroid/content/Intent;
    :goto_1a7
    const-string v17, "com.lge.app.floating.launchAsFloating"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1493
    const-string v17, "com.lge.app.floating.returnFromFloating"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1494
    sget-object v17, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "relaunching. intent="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/lge/app/floating/FloatableActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_67

    .line 1469
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_1d8
    :try_start_1d8
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;

    .line 1470
    .local v10, "info":Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;
    sget-object v19, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "receiver="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v10, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->receiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f6
    .catchall {:try_start_1d8 .. :try_end_1f6} :catchall_248

    .line 1472
    :try_start_1f6
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatableActivity;->getFloatingWindowManager()Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/lge/app/floating/FloatingWindowManager;->getServiceContext()Landroid/content/Context;

    move-result-object v5

    .line 1473
    .local v5, "c":Landroid/content/Context;
    if-nez v5, :cond_204

    .line 1474
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatableActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 1476
    :cond_204
    sget-object v19, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "unregister from service context: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v10, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->receiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    iget-object v0, v10, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->receiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_225
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f6 .. :try_end_225} :catch_227
    .catchall {:try_start_1f6 .. :try_end_225} :catchall_248

    goto/16 :goto_160

    .line 1479
    .end local v5    # "c":Landroid/content/Context;
    :catch_227
    move-exception v19

    :try_start_228
    sget-object v19, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "receiver "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v10, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->receiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is already unregistered"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_160

    .line 1468
    .end local v10    # "info":Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;
    :catchall_248
    move-exception v17

    monitor-exit v18
    :try_end_24a
    .catchall {:try_start_228 .. :try_end_24a} :catchall_248

    throw v17

    .line 1491
    :cond_24b
    new-instance v11, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatableActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    goto/16 :goto_1a7

    .line 1500
    :cond_258
    invoke-virtual/range {p1 .. p1}, Lcom/lge/app/floating/FloatingWindow;->getContentView()Landroid/view/View;

    move-result-object v12

    .line 1501
    .local v12, "myView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 1502
    .local v6, "decorView":Landroid/view/ViewGroup;
    sget-object v17, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "decor view="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lge/app/floating/FloatingWindow;->setContentView(Landroid/view/View;)V

    .line 1504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatableActivity;->mSavedWindowBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_298

    .line 1505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatableActivity;->mSavedWindowBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1507
    :cond_298
    if-eqz v12, :cond_2b5

    .line 1508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatableActivity;->mContentViewParent:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    if-eqz v17, :cond_320

    .line 1509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatableActivity;->mContentViewParent:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1510
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/app/floating/FloatableActivity;->mContentViewParent:Landroid/view/ViewGroup;

    .line 1518
    :cond_2b5
    :goto_2b5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2d5

    .line 1519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    move-object/from16 v17, v0

    const-string v18, "com.lge.app.floating.launchAsFloating"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    move-object/from16 v17, v0

    const-string v18, "com.lge.app.floating.returnFromFloating"

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1525
    :cond_2d5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    move-object/from16 v17, v0

    sget-object v18, Lcom/lge/app/floating/FloatableActivity$State;->RESUME:Lcom/lge/app/floating/FloatableActivity$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_324

    .line 1526
    sget-object v17, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "move activity "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " to foreground"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    const-string v17, "activity"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lge/app/floating/FloatableActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 1528
    .local v3, "am":Landroid/app/ActivityManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/app/floating/FloatableActivity;->mTaskId:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    goto/16 :goto_67

    .line 1512
    .end local v3    # "am":Landroid/app/ActivityManager;
    :cond_320
    invoke-virtual {v6, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2b5

    .line 1536
    :cond_324
    sget-object v17, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "re-launch activity "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    move-object/from16 v17, v0

    if-eqz v17, :cond_361

    new-instance v11, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1539
    .restart local v11    # "intent":Landroid/content/Intent;
    :goto_353
    const/high16 v17, 0x20000000

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1540
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/lge/app/floating/FloatableActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_67

    .line 1538
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_361
    new-instance v11, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatableActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    goto :goto_353

    .line 1544
    .end local v6    # "decorView":Landroid/view/ViewGroup;
    .end local v12    # "myView":Landroid/view/View;
    :cond_36d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/app/floating/FloatableActivity;->mDontFinishActivity:Z

    move/from16 v17, v0

    if-eqz v17, :cond_67

    .line 1545
    new-instance v13, Landroid/graphics/drawable/ColorDrawable;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-direct {v13, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 1546
    .local v13, "nullDrwable":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/app/floating/FloatableActivity;->mSavedWindowBackground:Landroid/graphics/drawable/Drawable;

    .line 1547
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1550
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0xf

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_3be

    .line 1554
    const-string v17, "activity"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lge/app/floating/FloatableActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 1555
    .restart local v3    # "am":Landroid/app/ActivityManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/app/floating/FloatableActivity;->mTaskId:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    .line 1557
    .end local v3    # "am":Landroid/app/ActivityManager;
    :cond_3be
    sget-object v17, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v18, "(DontFinishActivity && AutoRestart) == true , finish Activity."

    invoke-static/range {v17 .. v18}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatableActivity;->finish()V

    goto/16 :goto_67
.end method

.method public isInFloatingMode()Z
    .registers 2

    .prologue
    .line 734
    iget-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mIsAttached:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isStartedAsFloating()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 683
    iget-object v1, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    const-string v2, "com.lge.app.floating.launchAsFloating"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method public isSwitchingToFloatingMode()Z
    .registers 2

    .prologue
    .line 708
    iget-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchingToFloatingMode:Z

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isInFloatingMode()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public isSwitchingToFullMode()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 694
    iget-object v1, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    const-string v2, "com.lge.app.floating.returnFromFloating"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isSwitchingToFloatingMode()Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1068
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mIsWaitingActivityResult:Z

    .line 1069
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isInFloatingMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1070
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mHasActivityResultReceived:Z

    .line 1072
    :cond_c
    return-void
.end method

.method public onAttachedToFloatingWindow(Lcom/lge/app/floating/FloatingWindow;)V
    .registers 2
    .param p1, "w"    # Lcom/lge/app/floating/FloatingWindow;

    .prologue
    .line 1422
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 4

    .prologue
    .line 1158
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 1159
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "on attached from window activity="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1409
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1410
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "configuration is changed. newconfig="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 750
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 751
    invoke-static {p0}, Lcom/lge/app/floating/Res;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v8

    iput-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mResources:Landroid/content/res/Resources;

    .line 752
    sget-object v8, Lcom/lge/app/floating/FloatableActivity$State;->CREATE:Lcom/lge/app/floating/FloatableActivity$State;

    iput-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    .line 753
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    .line 754
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    iput-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    .line 755
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "QSlide framework version is "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/lge/app/floating/Res;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " [ code : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p0}, Lcom/lge/app/floating/Res;->getVersionCode(Landroid/content/Context;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "on create activity="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "started as floating="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isStartedAsFloating()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    invoke-static {p0}, Lcom/lge/app/floating/FloatingWindowService;->checkExistence(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_98

    .line 762
    const-string v8, "FloatingWindowService cannot be found. Please see logcat for further information."

    invoke-static {p0, v8, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 767
    :cond_98
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getFloatingWindowManager()Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/lge/app/floating/FloatingWindowManager;->getFloatingWindowFor(Ljava/lang/String;)Lcom/lge/app/floating/FloatingWindow;

    move-result-object v6

    .line 768
    .local v6, "window":Lcom/lge/app/floating/FloatingWindow;
    if-eqz v6, :cond_12d

    .line 771
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isStartedAsFloating()Z

    move-result v8

    if-eqz v8, :cond_129

    .line 772
    invoke-virtual {v6}, Lcom/lge/app/floating/FloatingWindow;->isWindowDocked()Z

    move-result v8

    if-eqz v8, :cond_da

    .line 773
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "we already have docked floating window for "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isStartedAsFloating()Z

    move-result v9

    invoke-virtual {v6, v8, v9}, Lcom/lge/app/floating/FloatingWindow;->releaseDockInner(Ljava/lang/String;Z)V

    .line 784
    :goto_cf
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v9, "There is already floating window for another activity... Finish current Activity."

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->finish()V

    .line 809
    :goto_d9
    return-void

    .line 776
    :cond_da
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " we already have floating window for "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f0a0002

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 778
    .local v4, "msg":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 779
    .local v1, "appName":Ljava/lang/String;
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f06000b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 780
    .local v7, "yOffset":I
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v14, [Ljava/lang/Object;

    aput-object v1, v9, v13

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 781
    .local v5, "toast":Landroid/widget/Toast;
    const/16 v8, 0x31

    invoke-virtual {v5, v8, v13, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 782
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_cf

    .line 790
    .end local v1    # "appName":Ljava/lang/String;
    .end local v4    # "msg":Ljava/lang/CharSequence;
    .end local v5    # "toast":Landroid/widget/Toast;
    .end local v7    # "yOffset":I
    :cond_129
    invoke-virtual {v6, v14}, Lcom/lge/app/floating/FloatingWindow;->closeInner(Z)V

    goto :goto_d9

    .line 793
    :cond_12d
    const-string v2, ""

    .line 795
    .local v2, "checkKids":Ljava/lang/String;
    :try_start_12f
    const-string v8, "android.os.SystemProperties"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string v9, "get"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 796
    .local v3, "getSystemPropertiesMethod":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 797
    const/4 v8, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "service.plushome.currenthome"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v2, v9, v10

    invoke-virtual {v3, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_160
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_160} :catch_192

    .line 800
    .end local v3    # "getSystemPropertiesMethod":Ljava/lang/reflect/Method;
    :goto_160
    const-string v8, "kids"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_182

    .line 801
    sput-boolean v14, Lcom/lge/app/floating/FloatableActivity;->mIsInGuestMode:Z

    .line 807
    :goto_16a
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mIsInGuestMode set :"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v10, Lcom/lge/app/floating/FloatableActivity;->mIsInGuestMode:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d9

    .line 802
    :cond_182
    const-string v8, "kids"

    const-string v9, "standard"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18f

    .line 803
    sput-boolean v13, Lcom/lge/app/floating/FloatableActivity;->mIsInGuestMode:Z

    goto :goto_16a

    .line 805
    :cond_18f
    sput-boolean v13, Lcom/lge/app/floating/FloatableActivity;->mIsInGuestMode:Z

    goto :goto_16a

    :catch_192
    move-exception v8

    goto :goto_160
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 1136
    sget-object v0, Lcom/lge/app/floating/FloatableActivity$State;->DESTROY:Lcom/lge/app/floating/FloatableActivity$State;

    iput-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    .line 1137
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "on destroy activity="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1139
    iget-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mIsAttached:Z

    if-eqz v0, :cond_3c

    iget-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchingToFloatingMode:Z

    if-eqz v0, :cond_3c

    iget-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mDontFinishActivity:Z

    if-nez v0, :cond_3c

    .line 1140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchingToFloatingMode:Z

    .line 1143
    :cond_3c
    iget-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mDontFinishActivity:Z

    if-eqz v0, :cond_43

    .line 1144
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->finishFloatingMode()V

    .line 1146
    :cond_43
    return-void
.end method

.method public onDetachedFromFloatingWindow(Lcom/lge/app/floating/FloatingWindow;Z)Z
    .registers 4
    .param p1, "w"    # Lcom/lge/app/floating/FloatingWindow;
    .param p2, "isReturningToFullScreen"    # Z

    .prologue
    .line 1585
    const/4 v0, 0x1

    return v0
.end method

.method public onDetachedFromWindow()V
    .registers 4

    .prologue
    .line 1151
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 1152
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "on detached from window activity="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 905
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 907
    sget-object v0, Lcom/lge/app/floating/FloatableActivity$State;->NEWINTENT:Lcom/lge/app/floating/FloatableActivity$State;

    iput-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    .line 908
    iput-object p1, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    .line 909
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mIsRestartedOrNewIntentCalled:Z

    .line 911
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "on new intent activity="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "started as floating="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isStartedAsFloating()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isInFloatingMode()Z

    move-result v0

    if-nez v0, :cond_5a

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isStartedAsFloating()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 916
    invoke-direct {p0}, Lcom/lge/app/floating/FloatableActivity;->handleStartedAsFloatingMode()V

    .line 922
    :cond_59
    :goto_59
    return-void

    .line 917
    :cond_5a
    iget-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchingToFloatingMode:Z

    if-eqz v0, :cond_59

    .line 918
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchingToFloatingMode:Z

    .line 919
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getFloatingWindowManager()Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v0, v1}, Lcom/lge/app/floating/FloatingWindowManager;->removeFloatingWindow(Lcom/lge/app/floating/FloatingWindow;)V

    .line 920
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    goto :goto_59
.end method

.method protected onPause()V
    .registers 5

    .prologue
    const/16 v3, 0x400

    .line 1009
    sget-object v0, Lcom/lge/app/floating/FloatableActivity$State;->PAUSE:Lcom/lge/app/floating/FloatableActivity$State;

    iput-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    .line 1010
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "on pause activity="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lge/app/floating/FloatableActivity;->fakeLoadersNotStarted(Z)V

    .line 1013
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_48

    .line 1014
    iget-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    if-eqz v0, :cond_4f

    .line 1015
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v1, "isInFloatingMode - addFlags(LayoutParams.FLAG_FULLSCREEN)"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 1030
    :cond_48
    :goto_48
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1031
    invoke-direct {p0}, Lcom/lge/app/floating/FloatableActivity;->startFloatingService()V

    .line 1032
    return-void

    .line 1019
    :cond_4f
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v1, "!isInFloatingMode "

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    iget-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mIsFullScreenInFullMode:Z

    if-eqz v0, :cond_69

    .line 1021
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v1, "addFlags(LayoutParams.FLAG_FULLSCREEN)"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_48

    .line 1025
    :cond_69
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v1, "clearFlags(LayoutParams.FLAG_FULLSCREEN)"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_48
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 815
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 816
    sget-object v1, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v2, "onPostCreate"

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    iget-boolean v1, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSetFullScreenFlag:Z

    if-nez v1, :cond_2b

    .line 820
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 821
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_2c

    .line 822
    sget-object v1, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v2, "FLAG_FULLSCREEN in full mode."

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/app/floating/FloatableActivity;->mIsFullScreenInFullMode:Z

    .line 829
    :goto_29
    iput-boolean v3, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSetFullScreenFlag:Z

    .line 831
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_2b
    return-void

    .line 826
    .restart local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_2c
    sget-object v1, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v2, "Not FLAG_FULLSCREEN in full mode."

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    iput-boolean v3, p0, Lcom/lge/app/floating/FloatableActivity;->mIsFullScreenInFullMode:Z

    goto :goto_29
.end method

.method protected onPostResume()V
    .registers 4

    .prologue
    .line 965
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 966
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPostResume activity="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mServiceStartRequested:Z

    .line 975
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isInFloatingMode()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mDontFinishActivity:Z

    if-eqz v0, :cond_39

    .line 976
    invoke-direct {p0}, Lcom/lge/app/floating/FloatableActivity;->handleDuplicatedStart()V

    .line 981
    :cond_39
    iget-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchingToFloatingMode:Z

    if-eqz v0, :cond_46

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isInFloatingMode()Z

    move-result v0

    if-nez v0, :cond_46

    .line 982
    invoke-direct {p0}, Lcom/lge/app/floating/FloatableActivity;->dismissCurrentActivity()V

    .line 984
    :cond_46
    return-void
.end method

.method protected onRestart()V
    .registers 9

    .prologue
    const/16 v7, 0x400

    const/4 v6, 0x1

    .line 858
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 859
    sget-object v3, Lcom/lge/app/floating/FloatableActivity$State;->RESTART:Lcom/lge/app/floating/FloatableActivity$State;

    iput-object v3, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    .line 860
    iput-boolean v6, p0, Lcom/lge/app/floating/FloatableActivity;->mIsRestartedOrNewIntentCalled:Z

    .line 861
    sget-object v3, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "on restart activity="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    sget-object v3, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "started as floating="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isStartedAsFloating()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    sget-object v3, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "release dock floating window for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getFloatingWindowManager()Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/lge/app/floating/FloatingWindowManager;->getFloatingWindowFor(Ljava/lang/String;)Lcom/lge/app/floating/FloatingWindow;

    move-result-object v2

    .line 869
    .local v2, "window":Lcom/lge/app/floating/FloatingWindow;
    if-eqz v2, :cond_7b

    .line 870
    invoke-virtual {v2}, Lcom/lge/app/floating/FloatingWindow;->isWindowDocked()Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 871
    iget-object v3, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isStartedAsFloating()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/lge/app/floating/FloatingWindow;->releaseDockInner(Ljava/lang/String;Z)V

    .line 874
    :cond_7b
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isStartedAsFloating()Z

    move-result v3

    if-nez v3, :cond_b4

    .line 875
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 876
    .local v1, "currentSystemUiVisibility":I
    sget-object v3, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onRestart. Current flag : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Unset SYSTEM_UI_FLAG_LAYOUT_STABLE flag"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    and-int/lit16 v1, v1, -0x101

    .line 878
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 881
    .end local v1    # "currentSystemUiVisibility":I
    :cond_b4
    iget-object v3, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    if-nez v3, :cond_cf

    .line 882
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 883
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-ne v3, v7, :cond_f4

    .line 884
    sget-object v3, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v4, "FLAG_FULLSCREEN in full mode."

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    iput-boolean v6, p0, Lcom/lge/app/floating/FloatableActivity;->mIsFullScreenInFullMode:Z

    .line 893
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_cf
    :goto_cf
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_f3

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isStartedAsFloating()Z

    move-result v3

    if-nez v3, :cond_f3

    .line 894
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_f3

    .line 895
    iget-boolean v3, p0, Lcom/lge/app/floating/FloatableActivity;->mIsFullScreenInFullMode:Z

    if-eqz v3, :cond_f3

    .line 896
    sget-object v3, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v4, "addFlags(LayoutParams.FLAG_FULLSCREEN)"

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/Window;->addFlags(I)V

    .line 901
    :cond_f3
    return-void

    .line 888
    .restart local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_f4
    sget-object v3, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v4, "Not FLAG_FULLSCREEN in full mode."

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/lge/app/floating/FloatableActivity;->mIsFullScreenInFullMode:Z

    goto :goto_cf
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 958
    sget-object v0, Lcom/lge/app/floating/FloatableActivity$State;->RESUME:Lcom/lge/app/floating/FloatableActivity$State;

    iput-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    .line 959
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "on resume activity="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 961
    return-void
.end method

.method protected onStart()V
    .registers 4

    .prologue
    .line 834
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 835
    sget-object v0, Lcom/lge/app/floating/FloatableActivity$State;->START:Lcom/lge/app/floating/FloatableActivity$State;

    iput-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    .line 837
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "on start activity="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "started as floating="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isStartedAsFloating()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mServiceStartRequested:Z

    .line 844
    iget-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    if-eqz v0, :cond_53

    .line 845
    iget-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    const-string v1, "com.lge.app.floating.restarted"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 848
    :cond_53
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isStartedAsFloating()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isInFloatingMode()Z

    move-result v0

    if-nez v0, :cond_62

    .line 849
    invoke-direct {p0}, Lcom/lge/app/floating/FloatableActivity;->handleStartedAsFloatingMode()V

    .line 851
    :cond_62
    return-void
.end method

.method protected onStartedAsFloatingMode()Z
    .registers 2

    .prologue
    .line 1639
    const/4 v0, 0x1

    return v0
.end method

.method protected onStop()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x400

    .line 1036
    sget-object v0, Lcom/lge/app/floating/FloatableActivity$State;->STOP:Lcom/lge/app/floating/FloatableActivity$State;

    iput-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    .line 1037
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "on stop activity="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    invoke-direct {p0, v4}, Lcom/lge/app/floating/FloatableActivity;->fakeLoadersNotStarted(Z)V

    .line 1040
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_48

    .line 1041
    iget-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    if-eqz v0, :cond_5d

    .line 1042
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v1, "isInFloatingMode - addFlags(LayoutParams.FLAG_FULLSCREEN)"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 1057
    :cond_48
    :goto_48
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1058
    invoke-direct {p0}, Lcom/lge/app/floating/FloatableActivity;->startFloatingService()V

    .line 1059
    iget-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mIsAttached:Z

    if-eqz v0, :cond_5c

    iget-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchingToFloatingMode:Z

    if-eqz v0, :cond_5c

    iget-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mDontFinishActivity:Z

    if-eqz v0, :cond_5c

    .line 1060
    iput-boolean v4, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchingToFloatingMode:Z

    .line 1062
    :cond_5c
    return-void

    .line 1046
    :cond_5d
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v1, "!isInFloatingMode "

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    iget-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mIsFullScreenInFullMode:Z

    if-eqz v0, :cond_77

    .line 1048
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v1, "addFlags(LayoutParams.FLAG_FULLSCREEN)"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_48

    .line 1052
    :cond_77
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v1, "clearFlags(LayoutParams.FLAG_FULLSCREEN)"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_48
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .registers 4
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .prologue
    const/4 v0, 0x0

    .line 1175
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/lge/app/floating/FloatableActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .registers 12
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "broadcastPermission"    # Ljava/lang/String;
    .param p4, "scheduler"    # Landroid/os/Handler;

    .prologue
    .line 1180
    sget-object v4, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "register receiver="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " filter="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " permission="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    const/4 v3, 0x0

    .line 1183
    .local v3, "result":Landroid/content/Intent;
    :try_start_29
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_2c
    .catch Ljava/lang/IllegalStateException; {:try_start_29 .. :try_end_2c} :catch_30
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_53

    move-result-object v3

    .line 1193
    :goto_2d
    if-nez p1, :cond_6d

    .line 1217
    :cond_2f
    :goto_2f
    return-object v3

    .line 1186
    :catch_30
    move-exception v4

    sget-object v4, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v5, "IllegalStateException in registerReceiver"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    sget-object v4, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Receiver "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " registered with differing handler."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    .line 1189
    :catch_53
    move-exception v0

    .line 1190
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "registerReceiver Exception : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    .line 1197
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6d
    invoke-direct {p0, p1, p2}, Lcom/lge/app/floating/FloatableActivity;->findRegisterInfo(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;

    move-result-object v1

    .line 1198
    .local v1, "info":Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;
    if-eqz v1, :cond_77

    iget-boolean v4, v1, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->isRegistered:Z

    if-nez v4, :cond_2f

    .line 1201
    :cond_77
    iget-object v5, p0, Lcom/lge/app/floating/FloatableActivity;->mReceiverRegisterInfos:Ljava/util/List;

    monitor-enter v5

    .line 1206
    if-nez v1, :cond_88

    .line 1207
    :try_start_7c
    new-instance v2, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;-><init>(Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;)V
    :try_end_82
    .catchall {:try_start_7c .. :try_end_82} :catchall_97

    .line 1208
    .end local v1    # "info":Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;
    .local v2, "info":Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;
    :try_start_82
    iget-object v4, p0, Lcom/lge/app/floating/FloatableActivity;->mReceiverRegisterInfos:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_87
    .catchall {:try_start_82 .. :try_end_87} :catchall_9a

    move-object v1, v2

    .line 1210
    .end local v2    # "info":Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;
    .restart local v1    # "info":Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;
    :cond_88
    :try_start_88
    iput-object p1, v1, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->receiver:Landroid/content/BroadcastReceiver;

    .line 1211
    iput-object p2, v1, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->filter:Landroid/content/IntentFilter;

    .line 1212
    iput-object p3, v1, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->broadcastPermission:Ljava/lang/String;

    .line 1213
    iput-object p4, v1, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->scheduler:Landroid/os/Handler;

    .line 1214
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->isRegistered:Z

    .line 1215
    iput-object v3, v1, Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;->intent:Landroid/content/Intent;

    .line 1201
    monitor-exit v5

    goto :goto_2f

    :catchall_97
    move-exception v4

    :goto_98
    monitor-exit v5
    :try_end_99
    .catchall {:try_start_88 .. :try_end_99} :catchall_97

    throw v4

    .end local v1    # "info":Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;
    .restart local v2    # "info":Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;
    :catchall_9a
    move-exception v4

    move-object v1, v2

    .end local v2    # "info":Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;
    .restart local v1    # "info":Lcom/lge/app/floating/FloatableActivity$ReceiverRegisterInfo;
    goto :goto_98
.end method

.method restartIfNecessary(Landroid/content/res/Configuration;)V
    .registers 15
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1681
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    if-nez v8, :cond_1a

    .line 1682
    new-instance v8, Landroid/content/res/Configuration;

    invoke-direct {v8}, Landroid/content/res/Configuration;-><init>()V

    iput-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    .line 1683
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1685
    :cond_1a
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "mOldConfig="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {v12}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "newConfig ="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "compare="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {v12, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {v8, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result v8

    if-nez v8, :cond_76

    .line 1691
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v9, "Do not restart"

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1818
    :cond_75
    :goto_75
    return-void

    .line 1696
    :cond_76
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    iget v8, v8, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v11, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-ne v8, v11, :cond_86

    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    iget v8, v8, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v11, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-ne v8, v11, :cond_96

    .line 1697
    :cond_86
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    iget v8, v8, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v11, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-ne v8, v11, :cond_a3

    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    iget v8, v8, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v11, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v8, v11, :cond_a3

    .line 1698
    :cond_96
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v9, "Do not restart for hide Navigation Bar "

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {v8, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    goto :goto_75

    .line 1704
    :cond_a3
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    iget v11, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v11, :cond_b3

    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    iget v8, v8, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v11, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v8, v11, :cond_d1

    .line 1705
    :cond_b3
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "not restarting "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1706
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {v8, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    goto :goto_75

    .line 1711
    :cond_d1
    iget v8, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v8, v8, 0xc0

    if-nez v8, :cond_f9

    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    iget v11, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v11, :cond_f9

    .line 1712
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "screenLayout undefined, not restarting "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_75

    .line 1717
    :cond_f9
    const/4 v3, 0x0

    .line 1719
    .local v3, "isGallery":Z
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 1720
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_10a

    .line 1721
    const-string v8, "FloatingGallery"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 1725
    :cond_10a
    if-eqz v3, :cond_126

    .line 1726
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v9, "Gallery no restarted"

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    iget-object v8, v8, Lcom/lge/app/floating/FloatingWindow;->mDockWindow:Lcom/lge/app/floating/FloatingDockWindow;

    invoke-virtual {v8}, Lcom/lge/app/floating/FloatingDockWindow;->isDocked()Z

    move-result v8

    if-eqz v8, :cond_75

    .line 1729
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    iget-object v8, v8, Lcom/lge/app/floating/FloatingWindow;->mDockWindow:Lcom/lge/app/floating/FloatingDockWindow;

    invoke-virtual {v8}, Lcom/lge/app/floating/FloatingDockWindow;->updateDockIcon()V

    goto/16 :goto_75

    .line 1736
    :cond_126
    iget-boolean v8, p0, Lcom/lge/app/floating/FloatableActivity;->mDontFinishActivity:Z

    if-eqz v8, :cond_234

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isInFloatingMode()Z

    move-result v8

    if-eqz v8, :cond_234

    move v5, v9

    .line 1738
    .local v5, "needRestart":Z
    :goto_131
    if-eqz v5, :cond_13a

    .line 1739
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v11, "need restart because mDontFinishActivity=true and isInFloatingMode now"

    invoke-static {v8, v11}, Lcom/lge/app/floating/FloatingFunction$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    :cond_13a
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x11

    if-lt v8, v11, :cond_237

    .line 1744
    iget v8, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v8, v8, 0xc0

    iget-object v11, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    iget v11, v11, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v11, v11, 0xc0

    if-eq v8, v11, :cond_175

    .line 1745
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "need restart for layout direction change from "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v12, v12, 0xc0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    iget v12, v12, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v12, v12, 0xc0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/lge/app/floating/FloatingFunction$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1746
    const/4 v5, 0x1

    .line 1758
    :cond_175
    :goto_175
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    iget-object v8, v8, Lcom/lge/app/floating/FloatingWindow;->mDockWindow:Lcom/lge/app/floating/FloatingDockWindow;

    if-eqz v8, :cond_184

    .line 1759
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    iget-object v8, v8, Lcom/lge/app/floating/FloatingWindow;->mDockWindow:Lcom/lge/app/floating/FloatingDockWindow;

    invoke-virtual {v8}, Lcom/lge/app/floating/FloatingDockWindow;->isDocked()Z

    move-result v8

    or-int/2addr v5, v8

    .line 1764
    :cond_184
    if-eqz v5, :cond_194

    .line 1766
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v11, "needRestart. saveLowProfileRequest to restore it"

    invoke-static {v8, v11}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getFloatingWindowManager()Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lge/app/floating/FloatingWindowManager;->saveLowProfileRequest()V

    .line 1769
    :cond_194
    if-eqz v5, :cond_22d

    .line 1770
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "restarting "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1771
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    if-eqz v8, :cond_276

    new-instance v2, Landroid/content/Intent;

    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mCurrentIntent:Landroid/content/Intent;

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1772
    .local v2, "intent":Landroid/content/Intent;
    :goto_1b9
    const-string v8, "com.lge.app.floating.launchAsFloating"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1773
    const-string v8, "com.lge.app.floating.restarted"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1774
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v8}, Lcom/lge/app/floating/FloatingWindow;->isWindowDocked()Z

    move-result v8

    if-nez v8, :cond_281

    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v8}, Lcom/lge/app/floating/FloatingWindow;->isInLowProfile()Z

    move-result v8

    if-eqz v8, :cond_281

    .line 1775
    const-string v8, "com.lge.app.floating.lowProfileRequester"

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getFloatingWindowManager()Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v9

    iget-object v9, v9, Lcom/lge/app/floating/FloatingWindowManager;->mLastLowProfileRequester:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1776
    const-string v8, "com.lge.app.floating.lowProfileIsHidden"

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getFloatingWindowManager()Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v9

    iget-boolean v9, v9, Lcom/lge/app/floating/FloatingWindowManager;->mLastLowProfileIsHidden:Z

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1793
    :cond_1e9
    :goto_1e9
    invoke-direct {p0}, Lcom/lge/app/floating/FloatableActivity;->getOrderingForStartActivity()I

    move-result v1

    .line 1794
    .local v1, "delay":I
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v9, "finishFloatingMode to restart"

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->finishFloatingMode()V

    .line 1796
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v9, "startActivity to restart"

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " : wait for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    mul-int/lit16 v10, v1, 0xbb8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 1800
    .local v4, "msg":Landroid/os/Message;
    iput-object v2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1801
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->restartActivityhandler:Landroid/os/Handler;

    mul-int/lit16 v9, v1, 0xbb8

    int-to-long v10, v9

    invoke-virtual {v8, v4, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1817
    .end local v1    # "delay":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "msg":Landroid/os/Message;
    :cond_22d
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {v8, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    goto/16 :goto_75

    .end local v5    # "needRestart":Z
    :cond_234
    move v5, v10

    .line 1736
    goto/16 :goto_131

    .line 1749
    .restart local v5    # "needRestart":Z
    :cond_237
    iget-object v8, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v8}, Lcom/lge/app/floating/FloatableActivity;->checkRtl(Ljava/util/Locale;)Z

    move-result v6

    .line 1750
    .local v6, "newLanguageRtl":Z
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mOldConfig:Landroid/content/res/Configuration;

    iget-object v8, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v8}, Lcom/lge/app/floating/FloatableActivity;->checkRtl(Ljava/util/Locale;)Z

    move-result v7

    .line 1751
    .local v7, "oldLanguageRtl":Z
    if-eq v6, v7, :cond_175

    .line 1752
    sget-object v11, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v8, "need restart for layout direction change from "

    invoke-direct {v12, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v7, :cond_270

    const-string v8, "rtl"

    :goto_254
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, " to "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-eqz v6, :cond_273

    const-string v8, "rtl"

    :goto_262
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Lcom/lge/app/floating/FloatingFunction$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    const/4 v5, 0x1

    goto/16 :goto_175

    .line 1752
    :cond_270
    const-string v8, "ltr"

    goto :goto_254

    :cond_273
    const-string v8, "ltr"

    goto :goto_262

    .line 1771
    .end local v6    # "newLanguageRtl":Z
    .end local v7    # "oldLanguageRtl":Z
    :cond_276
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    goto/16 :goto_1b9

    .line 1780
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_281
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    iget-object v8, v8, Lcom/lge/app/floating/FloatingWindow;->mDockWindow:Lcom/lge/app/floating/FloatingDockWindow;

    if-eqz v8, :cond_2cc

    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v8}, Lcom/lge/app/floating/FloatingWindow;->isWindowDocked()Z

    move-result v8

    if-eqz v8, :cond_2cc

    .line 1781
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "restarting intent contains NEED_TO_DOCK, direction of "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v12}, Lcom/lge/app/floating/FloatingWindow;->getDockDirection()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    const-string v8, "com.lge.floating.NEED_TO_DOCK"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1783
    const-string v8, "com.lge.floating.DOCK_POSX"

    iget-object v11, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    iget-object v11, v11, Lcom/lge/app/floating/FloatingWindow;->mDockWindow:Lcom/lge/app/floating/FloatingDockWindow;

    invoke-virtual {v11}, Lcom/lge/app/floating/FloatingDockWindow;->getDockWindowPosition()[I

    move-result-object v11

    aget v10, v11, v10

    invoke-virtual {v2, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1784
    const-string v8, "com.lge.floating.DOCK_POSY"

    iget-object v10, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    iget-object v10, v10, Lcom/lge/app/floating/FloatingWindow;->mDockWindow:Lcom/lge/app/floating/FloatingDockWindow;

    invoke-virtual {v10}, Lcom/lge/app/floating/FloatingDockWindow;->getDockWindowPosition()[I

    move-result-object v10

    aget v9, v10, v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1787
    :cond_2cc
    iget-object v8, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v8}, Lcom/lge/app/floating/FloatingWindow;->isInOverlay()Z

    move-result v8

    if-eqz v8, :cond_1e9

    .line 1788
    sget-object v8, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "restarting intent contains alpha "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v10}, Lcom/lge/app/floating/FloatingWindow;->getUserOpacity()F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1789
    const-string v8, "com.lge.app.floating.opacity"

    iget-object v9, p0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v9}, Lcom/lge/app/floating/FloatingWindow;->getUserOpacity()F

    move-result v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    goto/16 :goto_1e9
.end method

.method public setContentViewForFloatingMode(I)V
    .registers 5
    .param p1, "resId"    # I

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 205
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_e

    .line 206
    invoke-virtual {p0, v0}, Lcom/lge/app/floating/FloatableActivity;->setContentViewForFloatingMode(Landroid/view/View;)V

    .line 208
    :cond_e
    return-void
.end method

.method public setContentViewForFloatingMode(Landroid/view/View;)V
    .registers 4
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/lge/app/floating/FloatableActivity;->mContentView:Landroid/view/View;

    .line 185
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isInFloatingMode()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 186
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getFloatingWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/app/floating/FloatableActivity;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/lge/app/floating/FloatingWindow;->setContentView(Landroid/view/View;)V

    .line 191
    :cond_11
    return-void
.end method

.method public setDontFinishOnFloatingMode(Z)V
    .registers 5
    .param p1, "dontfinish"    # Z

    .prologue
    .line 657
    if-eqz p1, :cond_1e

    .line 658
    sget-object v0, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Activity "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is configured to not be destroyed when in floating mode."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    :cond_1e
    iput-boolean p1, p0, Lcom/lge/app/floating/FloatableActivity;->mDontFinishActivity:Z

    .line 661
    return-void
.end method

.method public setRequestedOrientation(I)V
    .registers 3
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 1127
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isStartedAsFloating()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isInFloatingMode()Z

    move-result v0

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchingToFloatingMode:Z

    if-eqz v0, :cond_11

    .line 1132
    :cond_10
    :goto_10
    return-void

    .line 1130
    :cond_11
    invoke-super {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_10
.end method

.method public setViewForConfigChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1595
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 1078
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->isInFloatingMode()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 1079
    const/4 v2, -0x1

    if-eq p2, v2, :cond_34

    .line 1082
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/app/floating/FloatableActivity;->mIsWaitingActivityResult:Z

    .line 1083
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/lge/app/floating/FloatableActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1084
    .local v0, "am":Landroid/app/ActivityManager;
    sget-object v2, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "moveTaskToFront : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lge/app/floating/FloatableActivity;->mActivityName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    iget v2, p0, Lcom/lge/app/floating/FloatableActivity;->mTaskId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    .line 1086
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1108
    .end local v0    # "am":Landroid/app/ActivityManager;
    :goto_33
    return-void

    .line 1097
    :cond_34
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getFloatingWindowManager()Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/app/floating/FloatingWindowManager;->getServiceContext()Landroid/content/Context;

    move-result-object v1

    .line 1098
    .local v1, "c":Landroid/content/Context;
    if-nez v1, :cond_42

    .line 1099
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1101
    :cond_42
    const/high16 v2, 0x10000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1102
    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_33

    .line 1106
    .end local v1    # "c":Landroid/content/Context;
    :cond_4b
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_33
.end method

.method public switchToFloatingMode()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 226
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/lge/app/floating/FloatableActivity;->switchToFloatingMode(ZZZLandroid/graphics/Rect;)V

    .line 227
    return-void
.end method

.method public switchToFloatingMode(Lcom/lge/app/floating/FloatingWindow$LayoutParams;)V
    .registers 5
    .param p1, "params"    # Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    .prologue
    .line 289
    sget-object v1, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    const-string v2, "Switch to floating mode requested"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-direct {p0}, Lcom/lge/app/floating/FloatableActivity;->performShowToastForLockTaskMode()V

    .line 291
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Lcom/lge/app/floating/FloatableActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 292
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 293
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/lge/app/floating/FloatableActivity;->switchToFloatingMode(Lcom/lge/app/floating/FloatingWindow$LayoutParams;Z)V

    .line 295
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/app/floating/FloatableActivity;->mIsSwitchToFloatingModeCalled:Z

    .line 297
    :cond_1f
    return-void
.end method

.method public switchToFloatingMode(ZZZLandroid/graphics/Rect;)V
    .registers 10
    .param p1, "useOverlay"    # Z
    .param p2, "useOverlappingTitle"    # Z
    .param p3, "isResizable"    # Z
    .param p4, "initialRegion"    # Landroid/graphics/Rect;

    .prologue
    .line 248
    new-instance v1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    invoke-direct {v1, p0}, Lcom/lge/app/floating/FloatingWindow$LayoutParams;-><init>(Landroid/content/Context;)V

    .line 249
    .local v1, "params":Lcom/lge/app/floating/FloatingWindow$LayoutParams;
    iput-boolean p1, v1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->useOverlay:Z

    .line 250
    iput-boolean p2, v1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->useOverlappingTitle:Z

    .line 251
    if-eqz p3, :cond_62

    const/4 v2, 0x3

    :goto_c
    iput v2, v1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->resizeOption:I

    .line 253
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 254
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatableActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 256
    if-eqz p4, :cond_5e

    if-eqz v0, :cond_5e

    .line 257
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ge v2, v3, :cond_5e

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ge v2, v3, :cond_5e

    .line 259
    sget-object v2, Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "switchToFloatingMode in "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget v2, p4, Landroid/graphics/Rect;->left:I

    iput v2, v1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->x:I

    .line 261
    iget v2, p4, Landroid/graphics/Rect;->top:I

    iput v2, v1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->y:I

    .line 262
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    .line 263
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    .line 265
    :cond_5e
    invoke-virtual {p0, v1}, Lcom/lge/app/floating/FloatableActivity;->switchToFloatingMode(Lcom/lge/app/floating/FloatingWindow$LayoutParams;)V

    .line 266
    return-void

    .line 251
    .end local v0    # "metrics":Landroid/util/DisplayMetrics;
    :cond_62
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 4
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 1227
    :try_start_0
    iget-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    sget-object v1, Lcom/lge/app/floating/FloatableActivity$State;->STOP:Lcom/lge/app/floating/FloatableActivity$State;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/lge/app/floating/FloatableActivity;->mState:Lcom/lge/app/floating/FloatableActivity$State;

    sget-object v1, Lcom/lge/app/floating/FloatableActivity$State;->DESTROY:Lcom/lge/app/floating/FloatableActivity$State;

    if-ne v0, v1, :cond_11

    .line 1228
    :cond_c
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/app/floating/FloatableActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;Z)V

    .line 1238
    :goto_10
    return-void

    .line 1231
    :cond_11
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/lge/app/floating/FloatableActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;Z)V
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_10

    :catch_16
    move-exception v0

    goto :goto_10
.end method
