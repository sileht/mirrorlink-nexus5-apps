.class Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FloatingWindowService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/app/floating/FloatingWindowService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FloatingWindowEventReceiver"
.end annotation


# instance fields
.field mIsCalling:Ljava/lang/Boolean;

.field mIsIncomingCallPopup:Ljava/lang/Boolean;

.field mIsQuickCoverClosed:Ljava/lang/Boolean;

.field final synthetic this$0:Lcom/lge/app/floating/FloatingWindowService;


# direct methods
.method constructor <init>(Lcom/lge/app/floating/FloatingWindowService;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 283
    iput-object p1, p0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->this$0:Lcom/lge/app/floating/FloatingWindowService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 284
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->mIsIncomingCallPopup:Ljava/lang/Boolean;

    .line 285
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->mIsCalling:Ljava/lang/Boolean;

    .line 286
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->mIsQuickCoverClosed:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$0(Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;Landroid/content/Intent;ZLjava/lang/String;)V
    .registers 4

    .prologue
    .line 579
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->handleEnterLowProfile(Landroid/content/Intent;ZLjava/lang/String;)V

    return-void
.end method

.method private handleEnterLowProfile(Landroid/content/Intent;ZLjava/lang/String;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "hide"    # Z
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 580
    if-nez p3, :cond_c

    .line 581
    # getter for: Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/floating/FloatingWindowService;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent FLOATING_WINDOW_ENTER_LOWPROFILE with NULL package name is ignored"

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    .end local p2    # "hide":Z
    :goto_b
    return-void

    .line 584
    .restart local p2    # "hide":Z
    :cond_c
    if-eqz p1, :cond_28

    .line 585
    # getter for: Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/floating/FloatingWindowService;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleEnterLowProfile by "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    :cond_28
    # getter for: Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/floating/FloatingWindowService;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mIsQuickCoverClosed : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->mIsQuickCoverClosed:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->this$0:Lcom/lge/app/floating/FloatingWindowService;

    invoke-static {v1}, Lcom/lge/app/floating/FloatingWindowManager;->getDefault(Landroid/content/Context;)Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v0

    .line 589
    .local v0, "fwm":Lcom/lge/app/floating/FloatingWindowManager;
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->mIsQuickCoverClosed:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4f

    const/4 p2, 0x1

    .end local p2    # "hide":Z
    :cond_4f
    invoke-virtual {v0, p2, p3}, Lcom/lge/app/floating/FloatingWindowManager;->handleEnterLowProfile(ZLjava/lang/String;)V

    goto :goto_b
.end method

.method private handleExitLowProfile(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 593
    if-nez p2, :cond_c

    .line 594
    # getter for: Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/floating/FloatingWindowService;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent FLOATING_WINDOW_EXIT_LOWPROFILE with NULL package name is ignored"

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    :goto_b
    return-void

    .line 597
    :cond_c
    if-eqz p1, :cond_28

    .line 598
    # getter for: Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/floating/FloatingWindowService;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleExitLowProfile by "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :cond_28
    # getter for: Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/floating/FloatingWindowService;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mIsQuickCoverClosed : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->mIsQuickCoverClosed:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->this$0:Lcom/lge/app/floating/FloatingWindowService;

    invoke-static {v1}, Lcom/lge/app/floating/FloatingWindowManager;->getDefault(Landroid/content/Context;)Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v0

    .line 602
    .local v0, "fwm":Lcom/lge/app/floating/FloatingWindowManager;
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->mIsQuickCoverClosed:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 603
    # getter for: Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/floating/FloatingWindowService;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Do not ExitLowProfile, Caused by Closed QuickCover Only lowProfileRequest updated."

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    invoke-virtual {v0, p2}, Lcom/lge/app/floating/FloatingWindowManager;->removeLowProfileRequests(Ljava/lang/String;)V

    goto :goto_b

    .line 606
    :cond_5b
    invoke-virtual {v0, p2}, Lcom/lge/app/floating/FloatingWindowManager;->handleExitLowProfile(Ljava/lang/String;)V

    goto :goto_b
.end method

.method private setActionAccessoryEvent(Landroid/content/Intent;)V
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 394
    const-string v1, "com.lge.intent.extra.ACCESSORY_COVER_STATE"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 395
    .local v0, "state":I
    # getter for: Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/floating/FloatingWindowService;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "state : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    if-nez v0, :cond_4c

    .line 397
    # getter for: Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/floating/FloatingWindowService;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EXTRA_ACCESSORY_STATE_FRONT_OPENED"

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->mIsQuickCoverClosed:Ljava/lang/Boolean;

    .line 399
    const-string v1, "com.lge.coverapp"

    invoke-direct {p0, v6, v1}, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->handleExitLowProfile(Landroid/content/Intent;Ljava/lang/String;)V

    .line 401
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->mIsCalling:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 402
    # getter for: Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/floating/FloatingWindowService;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ensure enter lowprofile state when mIsCalling"

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v1, "phone"

    invoke-direct {p0, v6, v4, v1}, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->handleEnterLowProfile(Landroid/content/Intent;ZLjava/lang/String;)V

    .line 411
    :cond_4b
    :goto_4b
    return-void

    .line 405
    :cond_4c
    if-eq v0, v5, :cond_51

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4b

    .line 406
    :cond_51
    # getter for: Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/floating/FloatingWindowService;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EXTRA_ACCESSORY_STATE_FRONT_CLOSED || EXTRA_ACCESSORY_STATE_FRONT_HALFOPEN"

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->mIsQuickCoverClosed:Ljava/lang/Boolean;

    .line 409
    const-string v1, "com.lge.coverapp"

    invoke-direct {p0, v6, v5, v1}, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->handleEnterLowProfile(Landroid/content/Intent;ZLjava/lang/String;)V

    goto :goto_4b
.end method

.method private setActionCameraStarted(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 339
    const-string v0, "isStart"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 340
    const-string v0, "com.lge.camera"

    invoke-direct {p0, p1, v1, v0}, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->handleEnterLowProfile(Landroid/content/Intent;ZLjava/lang/String;)V

    .line 345
    :goto_e
    return-void

    .line 343
    :cond_f
    const-string v0, "com.lge.camera"

    invoke-direct {p0, p1, v0}, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->handleExitLowProfile(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_e
.end method

.method private setActionEnterGuestMode(ZLcom/lge/app/floating/FloatingWindowManager;)V
    .registers 7
    .param p1, "isEnteringGuestMode"    # Z
    .param p2, "fwm"    # Lcom/lge/app/floating/FloatingWindowManager;

    .prologue
    .line 348
    invoke-virtual {p2}, Lcom/lge/app/floating/FloatingWindowManager;->getFloatingWindows()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_f

    .line 356
    return-void

    .line 348
    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/app/floating/FloatingWindow;

    .line 349
    .local v0, "w":Lcom/lge/app/floating/FloatingWindow;
    if-nez p1, :cond_1d

    iget-object v2, v0, Lcom/lge/app/floating/FloatingWindow;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    sget-boolean v2, Lcom/lge/app/floating/FloatableActivity;->mIsInGuestMode:Z

    if-eqz v2, :cond_8

    .line 350
    :cond_1d
    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->getActivity()Lcom/lge/app/floating/FloatableActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/app/floating/FloatableActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.lge.ltecall"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 351
    # getter for: Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/floating/FloatingWindowService;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Request Guest Mode...Finish Qslide App"

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->closeInner()V

    goto :goto_8
.end method

.method private setActionFloatingWindowChanged(Landroid/content/Intent;Lcom/lge/app/floating/FloatingWindowManager;)V
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "fwm"    # Lcom/lge/app/floating/FloatingWindowManager;

    .prologue
    .line 438
    const-string v3, "top-window"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 439
    .local v2, "topWindowActivityName":Ljava/lang/String;
    if-eqz v2, :cond_b

    .line 440
    invoke-virtual {p2, v2}, Lcom/lge/app/floating/FloatingWindowManager;->onTopWindowChanged(Ljava/lang/String;)V

    .line 442
    :cond_b
    const-string v3, "window-remove"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 443
    .local v1, "removedWindowActivityName":Ljava/lang/String;
    if-eqz v1, :cond_24

    .line 445
    const-string v3, "remove-reason"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "removedReason":Ljava/lang/String;
    if-nez v0, :cond_25

    .line 447
    # getter for: Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/floating/FloatingWindowService;->access$0()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Removed Reason value is null"

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    .end local v0    # "removedReason":Ljava/lang/String;
    :cond_24
    :goto_24
    return-void

    .line 450
    .restart local v0    # "removedReason":Ljava/lang/String;
    :cond_25
    const-string v3, "fullmode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    .line 451
    # getter for: Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/floating/FloatingWindowService;->access$0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Removed Reason : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-virtual {p2, v1}, Lcom/lge/app/floating/FloatingWindowManager;->onWindowRemoved(Ljava/lang/String;)V

    goto :goto_24

    .line 454
    :cond_47
    # getter for: Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/floating/FloatingWindowService;->access$0()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Removed Reason is fullmode, do not handle new Top window."

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24
.end method

.method private setActionFloatingWindowCloseRequested(Landroid/content/Intent;Lcom/lge/app/floating/FloatingWindowManager;)V
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "fwm"    # Lcom/lge/app/floating/FloatingWindowManager;

    .prologue
    .line 414
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 415
    .local v0, "closeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.lge.intent.action.FLOATING_WINDOW_CLOSE_REQUESTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 416
    const-string v3, "target"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 418
    :goto_17
    if-nez v0, :cond_59

    .line 419
    invoke-virtual {p2}, Lcom/lge/app/floating/FloatingWindowManager;->getFloatingWindows()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2f

    .line 435
    :cond_27
    return-void

    .line 416
    :cond_28
    const-string v3, "com.lge.intent.extra.target"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_17

    .line 419
    :cond_2f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/app/floating/FloatingWindow;

    .line 420
    .local v2, "w":Lcom/lge/app/floating/FloatingWindow;
    # getter for: Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/floating/FloatingWindowService;->access$0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "FloatingWindow closes on request : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/lge/app/floating/FloatingWindow;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    invoke-virtual {v6}, Lcom/lge/app/floating/FloatableActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    invoke-virtual {v2}, Lcom/lge/app/floating/FloatingWindow;->getTitleViewInterface()Lcom/lge/app/floating/ITitleView;

    move-result-object v4

    invoke-interface {v4}, Lcom/lge/app/floating/ITitleView;->performClose()V

    goto :goto_21

    .line 426
    .end local v2    # "w":Lcom/lge/app/floating/FloatingWindow;
    :cond_59
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 427
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/lge/app/floating/FloatingWindowManager;->getFloatingWindows()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_71
    :goto_71
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/app/floating/FloatingWindow;

    .line 428
    .restart local v2    # "w":Lcom/lge/app/floating/FloatingWindow;
    iget-object v5, v2, Lcom/lge/app/floating/FloatingWindow;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    if-eqz v5, :cond_71

    iget-object v5, v2, Lcom/lge/app/floating/FloatingWindow;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    invoke-virtual {v5}, Lcom/lge/app/floating/FloatableActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 429
    # getter for: Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/floating/FloatingWindowService;->access$0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "FloatingWindow closes on request : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-virtual {v2}, Lcom/lge/app/floating/FloatingWindow;->getTitleViewInterface()Lcom/lge/app/floating/ITitleView;

    move-result-object v5

    invoke-interface {v5}, Lcom/lge/app/floating/ITitleView;->performClose()V

    goto :goto_71
.end method

.method private setActionFloatingWindowEnterLowprofile(Landroid/content/Intent;)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 359
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.lge.intent.action.FLOATING_WINDOW_ENTER_LOWPROFILE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 360
    const-string v2, "hide"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 361
    .local v0, "isHide":Z
    :goto_13
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.lge.intent.action.FLOATING_WINDOW_ENTER_LOWPROFILE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 362
    const-string v2, "package"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 363
    .local v1, "pkgName":Ljava/lang/String;
    :goto_25
    invoke-direct {p0, p1, v0, v1}, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->handleEnterLowProfile(Landroid/content/Intent;ZLjava/lang/String;)V

    .line 364
    return-void

    .line 360
    .end local v0    # "isHide":Z
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_29
    const-string v2, "com.lge.intent.extra.hide"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_13

    .line 362
    .restart local v0    # "isHide":Z
    :cond_30
    const-string v2, "com.lge.intent.extra.package"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_25
.end method

.method private setActionFloatingWindowExitLowprofile(Landroid/content/Intent;Lcom/lge/app/floating/FloatingWindowManager;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "fwm"    # Lcom/lge/app/floating/FloatingWindowManager;

    .prologue
    .line 367
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.lge.intent.action.FLOATING_WINDOW_EXIT_LOWPROFILE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 368
    const-string v1, "package"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "pkgName":Ljava/lang/String;
    :goto_12
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->mIsQuickCoverClosed:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 371
    # getter for: Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/floating/FloatingWindowService;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickCover is closed.... Do not Exit LowProfile. Only lowProfileRequest updated."

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-virtual {p2, v0}, Lcom/lge/app/floating/FloatingWindowManager;->removeLowProfileRequests(Ljava/lang/String;)V

    .line 376
    :goto_26
    return-void

    .line 368
    .end local v0    # "pkgName":Ljava/lang/String;
    :cond_27
    const-string v1, "com.lge.intent.extra.package"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 374
    .restart local v0    # "pkgName":Ljava/lang/String;
    :cond_2e
    invoke-direct {p0, p1, v0}, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->handleExitLowProfile(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_26
.end method

.method private setActionForceUndock(Landroid/content/Intent;Lcom/lge/app/floating/FloatingWindowManager;)V
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "fwm"    # Lcom/lge/app/floating/FloatingWindowManager;

    .prologue
    const/4 v6, -0x1

    .line 379
    # getter for: Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/floating/FloatingWindowService;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "force UnDock"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v4, "posX"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 381
    .local v0, "posX":I
    const-string v4, "posY"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 382
    .local v1, "posY":I
    const-string v4, "windowname"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 384
    .local v3, "windowName":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/lge/app/floating/FloatingWindowManager;->getFloatingWindows()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_24
    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2b

    .line 391
    return-void

    .line 384
    :cond_2b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/app/floating/FloatingWindow;

    .line 385
    .local v2, "w":Lcom/lge/app/floating/FloatingWindow;
    invoke-virtual {v2}, Lcom/lge/app/floating/FloatingWindow;->getWindowName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 386
    iget-object v5, v2, Lcom/lge/app/floating/FloatingWindow;->mDockWindow:Lcom/lge/app/floating/FloatingDockWindow;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/lge/app/floating/FloatingDockWindow;->updateDockState(I)V

    .line 387
    iget-object v5, v2, Lcom/lge/app/floating/FloatingWindow;->mDockWindow:Lcom/lge/app/floating/FloatingDockWindow;

    invoke-virtual {v5, v0, v1}, Lcom/lge/app/floating/FloatingDockWindow;->onFinishingUndockAt(II)V

    .line 388
    invoke-virtual {v2}, Lcom/lge/app/floating/FloatingWindow;->initFloatingDockWindow()V

    goto :goto_24
.end method

.method private setActionPhoneStateChanged(Landroid/content/Intent;Lcom/lge/app/floating/FloatingWindowManager;)V
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "fwm"    # Lcom/lge/app/floating/FloatingWindowManager;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 461
    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->this$0:Lcom/lge/app/floating/FloatingWindowService;

    const-string v6, "keyguard"

    invoke-virtual {v3, v6}, Lcom/lge/app/floating/FloatingWindowService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    .line 462
    .local v0, "isKeyguardOn":Z
    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->this$0:Lcom/lge/app/floating/FloatingWindowService;

    const-string v6, "keyguard"

    invoke-virtual {v3, v6}, Lcom/lge/app/floating/FloatingWindowService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    .line 464
    .local v1, "isKeyguardSecure":Z
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v6, "com.lge.action.CALLALERTING_SHOW"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 465
    # getter for: Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/floating/FloatingWindowService;->access$0()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Do not action, just INCOMING_CALL_POPUP"

    invoke-static {v3, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->mIsIncomingCallPopup:Ljava/lang/Boolean;

    .line 467
    invoke-virtual {p2}, Lcom/lge/app/floating/FloatingWindowManager;->getFloatingWindows()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_42
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_49

    .line 521
    :cond_48
    :goto_48
    return-void

    .line 467
    :cond_49
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/app/floating/FloatingWindow;

    .line 468
    const-string v3, "phone"

    invoke-direct {p0, v8, v3}, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->handleExitLowProfile(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_42

    .line 470
    :cond_55
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v6, "com.lge.action.INCOMING_FULLSCREEN"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    .line 471
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->mIsCalling:Ljava/lang/Boolean;

    .line 472
    if-eqz v0, :cond_79

    if-nez v1, :cond_79

    .line 474
    invoke-virtual {p2}, Lcom/lge/app/floating/FloatingWindowManager;->getFloatingWindows()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_73
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_84

    .line 478
    :cond_79
    if-eqz v0, :cond_90

    if-eqz v1, :cond_90

    move v3, v4

    :goto_7e
    const-string v4, "phone"

    invoke-direct {p0, p1, v3, v4}, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->handleEnterLowProfile(Landroid/content/Intent;ZLjava/lang/String;)V

    goto :goto_48

    .line 474
    :cond_84
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/app/floating/FloatingWindow;

    .line 475
    const-string v3, "lockscreen"

    invoke-direct {p0, p1, v3}, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->handleExitLowProfile(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_73

    :cond_90
    move v3, v5

    .line 478
    goto :goto_7e

    .line 479
    :cond_92
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v6, "com.lge.incallfloating.ACTION_REMOVEINCALLFLOATING"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ae

    .line 480
    # getter for: Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/floating/FloatingWindowService;->access$0()Ljava/lang/String;

    move-result-object v3

    const-string v4, "change call Flag \'false\' by intent com.lge.incallfloating.ACTION_REMOVEINCALLFLOATING"

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->mIsCalling:Ljava/lang/Boolean;

    goto :goto_48

    .line 483
    :cond_ae
    const-string v3, "state"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 484
    .local v2, "state":Ljava/lang/String;
    # getter for: Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/floating/FloatingWindowService;->access$0()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "state : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    if-eqz v2, :cond_48

    .line 486
    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_111

    .line 487
    # getter for: Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/floating/FloatingWindowService;->access$0()Ljava/lang/String;

    move-result-object v3

    const-string v5, "enter low profile by intent android.telephony.TelephonyManager.EXTRA_STATE_RINGING"

    invoke-static {v3, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->mIsCalling:Ljava/lang/Boolean;

    .line 489
    if-eqz v0, :cond_f5

    if-nez v1, :cond_f5

    .line 491
    invoke-virtual {p2}, Lcom/lge/app/floating/FloatingWindowManager;->getFloatingWindows()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_ef
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_105

    .line 495
    :cond_f5
    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->this$0:Lcom/lge/app/floating/FloatingWindowService;

    iget-object v3, v3, Lcom/lge/app/floating/FloatingWindowService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver$1;-><init>(Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;ZZ)V

    .line 502
    const-wide/16 v6, 0x5dc

    .line 495
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_48

    .line 491
    :cond_105
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/app/floating/FloatingWindow;

    .line 492
    const-string v3, "lockscreen"

    invoke-direct {p0, p1, v3}, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->handleExitLowProfile(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_ef

    .line 503
    :cond_111
    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_153

    .line 504
    # getter for: Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/floating/FloatingWindowService;->access$0()Ljava/lang/String;

    move-result-object v3

    const-string v6, "enter low profile by intent android.telephony.TelephonyManager.EXTRA_STATE_OFFHOOK"

    invoke-static {v3, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->mIsCalling:Ljava/lang/Boolean;

    .line 506
    if-eqz v0, :cond_13a

    if-nez v1, :cond_13a

    .line 508
    invoke-virtual {p2}, Lcom/lge/app/floating/FloatingWindowManager;->getFloatingWindows()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_134
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_145

    .line 512
    :cond_13a
    if-eqz v0, :cond_151

    if-eqz v1, :cond_151

    :goto_13e
    const-string v3, "phone"

    invoke-direct {p0, v8, v4, v3}, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->handleEnterLowProfile(Landroid/content/Intent;ZLjava/lang/String;)V

    goto/16 :goto_48

    .line 508
    :cond_145
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/app/floating/FloatingWindow;

    .line 509
    const-string v3, "lockscreen"

    invoke-direct {p0, p1, v3}, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->handleExitLowProfile(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_134

    :cond_151
    move v4, v5

    .line 512
    goto :goto_13e

    .line 513
    :cond_153
    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 514
    # getter for: Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/floating/FloatingWindowService;->access$0()Ljava/lang/String;

    move-result-object v3

    const-string v4, "exit low profile by intent anandroid.telephony.TelephonyManager.EXTRA_STATE_IDLE"

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->mIsCalling:Ljava/lang/Boolean;

    .line 516
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->mIsIncomingCallPopup:Ljava/lang/Boolean;

    .line 517
    const-string v3, "phone"

    invoke-direct {p0, v8, v3}, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->handleExitLowProfile(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_48
.end method

.method private setActionStopFloatingWindowService(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 524
    # getter for: Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/floating/FloatingWindowService;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Stop Floating Window Service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->this$0:Lcom/lge/app/floating/FloatingWindowService;

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindowService;->stopSelf()V

    .line 526
    return-void
.end method

.method private setFloatingWindowAlreadyRunning(Landroid/content/Intent;Lcom/lge/app/floating/FloatingWindowManager;)V
    .registers 22
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "fwm"    # Lcom/lge/app/floating/FloatingWindowManager;

    .prologue
    .line 529
    const-string v15, "target"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 530
    .local v10, "packageName":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcom/lge/app/floating/FloatingWindowManager;->getActivityNameForPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 531
    .local v2, "activityName":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/lge/app/floating/FloatingWindowManager;->getFloatingWindowFor(Ljava/lang/String;)Lcom/lge/app/floating/FloatingWindow;

    move-result-object v11

    .line 532
    .local v11, "targetWindow":Lcom/lge/app/floating/FloatingWindow;
    if-nez v11, :cond_17

    .line 577
    :cond_16
    :goto_16
    return-void

    .line 535
    :cond_17
    # getter for: Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/floating/FloatingWindowService;->access$0()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "FloatingWindow for "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " is already running"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-virtual {v11}, Lcom/lge/app/floating/FloatingWindow;->isWindowDocked()Z

    move-result v15

    if-eqz v15, :cond_49

    .line 538
    # getter for: Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/floating/FloatingWindowService;->access$0()Ljava/lang/String;

    move-result-object v15

    const-string v16, "release dock for request"

    invoke-static/range {v15 .. v16}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const/4 v15, 0x1

    invoke-virtual {v11, v2, v15}, Lcom/lge/app/floating/FloatingWindow;->releaseDockInner(Ljava/lang/String;Z)V

    goto :goto_16

    .line 543
    :cond_49
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->this$0:Lcom/lge/app/floating/FloatingWindowService;

    invoke-virtual {v15}, Lcom/lge/app/floating/FloatingWindowService;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/lge/app/floating/Res;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v7

    .line 544
    .local v7, "mResources":Landroid/content/res/Resources;
    const v15, 0x7f0a0002

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 545
    .local v9, "msg":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 547
    .local v3, "appName":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 548
    .local v5, "it":Landroid/content/Intent;
    const-string v15, "com.lge.intent.category.QSLIDE"

    invoke-virtual {v5, v15}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    const-string v15, "android.intent.action.MAIN"

    invoke-virtual {v5, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->this$0:Lcom/lge/app/floating/FloatingWindowService;

    invoke-virtual {v15}, Lcom/lge/app/floating/FloatingWindowService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const/16 v16, 0x80

    move/from16 v0, v16

    invoke-virtual {v15, v5, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 552
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_80
    :goto_80
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_121

    .line 560
    if-nez v3, :cond_a8

    .line 561
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->this$0:Lcom/lge/app/floating/FloatingWindowService;

    invoke-virtual {v15}, Lcom/lge/app/floating/FloatingWindowService;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->this$0:Lcom/lge/app/floating/FloatingWindowService;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/lge/app/floating/FloatingWindowService;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 563
    :cond_a8
    const v15, 0x7f06000b

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v14

    .line 564
    .local v14, "yOffset":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->this$0:Lcom/lge/app/floating/FloatingWindowService;

    invoke-virtual {v15}, Lcom/lge/app/floating/FloatingWindowService;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v3, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    .line 565
    .local v12, "toast":Landroid/widget/Toast;
    const/16 v15, 0x31

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v15, v0, v14}, Landroid/widget/Toast;->setGravity(III)V

    .line 566
    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 570
    invoke-virtual/range {p2 .. p2}, Lcom/lge/app/floating/FloatingWindowManager;->getFloatingWindows()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_e5
    :goto_e5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_16

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lge/app/floating/FloatingWindow;

    .line 571
    .local v13, "w":Lcom/lge/app/floating/FloatingWindow;
    iget-object v0, v13, Lcom/lge/app/floating/FloatingWindow;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/lge/app/floating/FloatableActivity;->getPackageName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e5

    .line 572
    # getter for: Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/floating/FloatingWindowService;->access$0()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Ensure Exit Low Profile for : "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->handleExitLowProfile(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_e5

    .line 552
    .end local v12    # "toast":Landroid/widget/Toast;
    .end local v13    # "w":Lcom/lge/app/floating/FloatingWindow;
    .end local v14    # "yOffset":I
    :cond_121
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 553
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 554
    .local v8, "metaData":Landroid/os/Bundle;
    # getter for: Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/floating/FloatingWindowService;->access$0()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v8}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_80

    .line 556
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->this$0:Lcom/lge/app/floating/FloatingWindowService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lge/app/floating/FloatingWindowService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .end local v3    # "appName":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "appName":Ljava/lang/String;
    goto/16 :goto_80
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 290
    # getter for: Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/floating/FloatingWindowService;->access$0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Receive Intent : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v4, p0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->this$0:Lcom/lge/app/floating/FloatingWindowService;

    invoke-static {v4}, Lcom/lge/app/floating/FloatingWindowManager;->getDefault(Landroid/content/Context;)Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v0

    .line 293
    .local v0, "fwm":Lcom/lge/app/floating/FloatingWindowManager;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.lge.intent.action.FLOATING_WINDOW_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 294
    invoke-direct {p0, p2, v0}, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->setActionFloatingWindowChanged(Landroid/content/Intent;Lcom/lge/app/floating/FloatingWindowManager;)V

    .line 336
    :cond_31
    :goto_31
    return-void

    .line 295
    :cond_32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.lge.camera.action.LGE_CAMERA_STARTED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 296
    invoke-direct {p0, p2}, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->setActionCameraStarted(Landroid/content/Intent;)V

    goto :goto_31

    .line 297
    :cond_42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.lge.intent.action.FLOATING_WINDOW_ENTER_LOWPROFILE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5a

    .line 298
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.lge.android.intent.action.FLOATING_WINDOW_ENTER_LOWPROFILE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 299
    :cond_5a
    invoke-direct {p0, p2}, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->setActionFloatingWindowEnterLowprofile(Landroid/content/Intent;)V

    goto :goto_31

    .line 300
    :cond_5e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.lge.intent.action.FLOATING_WINDOW_EXIT_LOWPROFILE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_76

    .line 301
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.lge.android.intent.action.FLOATING_WINDOW_EXIT_LOWPROFILE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 302
    :cond_76
    invoke-direct {p0, p2, v0}, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->setActionFloatingWindowExitLowprofile(Landroid/content/Intent;Lcom/lge/app/floating/FloatingWindowManager;)V

    goto :goto_31

    .line 303
    :cond_7a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.lge.softkeypad.intent.SHOW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_92

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.lge.softkeypad.intent.HIDE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a3

    .line 304
    :cond_92
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.lge.softkeypad.intent.SHOW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9f

    move v2, v3

    :cond_9f
    invoke-virtual {v0, v2}, Lcom/lge/app/floating/FloatingWindowManager;->handleImeVisibilityChanged(Z)V

    goto :goto_31

    .line 305
    :cond_a3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.lge.intent.action.FLOATING_WINDOW_CLOSE_REQUESTED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_bb

    .line 306
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.lge.android.intent.action.FLOATING_WINDOW_CLOSE_REQUESTED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c0

    .line 307
    :cond_bb
    invoke-direct {p0, p2, v0}, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->setActionFloatingWindowCloseRequested(Landroid/content/Intent;Lcom/lge/app/floating/FloatingWindowManager;)V

    goto/16 :goto_31

    .line 308
    :cond_c0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.lge.action.INCOMING_FULLSCREEN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.lge.incallfloating.ACTION_REMOVEINCALLFLOATING"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f0

    .line 309
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.PHONE_STATE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.lge.action.CALLALERTING_SHOW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f5

    .line 310
    :cond_f0
    invoke-direct {p0, p2, v0}, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->setActionPhoneStateChanged(Landroid/content/Intent;Lcom/lge/app/floating/FloatingWindowManager;)V

    goto/16 :goto_31

    .line 311
    :cond_f5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.lge.intent.action.FLOATING_WINDOW_ALREADY_RUNNING"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_106

    .line 312
    invoke-direct {p0, p2, v0}, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->setFloatingWindowAlreadyRunning(Landroid/content/Intent;Lcom/lge/app/floating/FloatingWindowManager;)V

    goto/16 :goto_31

    .line 313
    :cond_106
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.lge.lockscreen.intent.action.START_KIDSHOME"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11e

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_123

    .line 314
    :cond_11e
    invoke-direct {p0, v3, v0}, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->setActionEnterGuestMode(ZLcom/lge/app/floating/FloatingWindowManager;)V

    goto/16 :goto_31

    .line 315
    :cond_123
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.lge.lockscreen.intent.action.LOCKSCREEN_CREATE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14c

    .line 316
    invoke-direct {p0, v2, v0}, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->setActionEnterGuestMode(ZLcom/lge/app/floating/FloatingWindowManager;)V

    .line 317
    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindowManager;->getFloatingWindows()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_13a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/app/floating/FloatingWindow;

    .line 318
    const-string v2, "lockscreen"

    invoke-direct {p0, p2, v3, v2}, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->handleEnterLowProfile(Landroid/content/Intent;ZLjava/lang/String;)V

    goto :goto_13a

    .line 320
    :cond_14c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.lge.lockscreen.intent.action.START_STANDARD_HOME"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_182

    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->mIsQuickCoverClosed:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_182

    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->mIsCalling:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_182

    .line 321
    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindowManager;->getFloatingWindows()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_170
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/app/floating/FloatingWindow;

    .line 322
    const-string v2, "lockscreen"

    invoke-direct {p0, p2, v2}, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->handleExitLowProfile(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_170

    .line 324
    :cond_182
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.lge.android.intent.action.ACCESSORY_COVER_EVENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_193

    .line 325
    invoke-direct {p0, p2}, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->setActionAccessoryEvent(Landroid/content/Intent;)V

    goto/16 :goto_31

    .line 326
    :cond_193
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.lge.intent.action.FORCE_UNDOCK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a4

    .line 327
    invoke-direct {p0, p2, v0}, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->setActionForceUndock(Landroid/content/Intent;Lcom/lge/app/floating/FloatingWindowManager;)V

    goto/16 :goto_31

    .line 328
    :cond_1a4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.lge.intent.action.APP_SWITCH_ACTION_DOWN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d1

    .line 329
    # getter for: Lcom/lge/app/floating/FloatingWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/floating/FloatingWindowService;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "APP_SWITCH key ACTION_DOWN detected.\nLoose all focus about floating window"

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindowManager;->getFloatingWindows()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/app/floating/FloatingWindow;

    .line 331
    .local v1, "w":Lcom/lge/app/floating/FloatingWindow;
    invoke-virtual {v1}, Lcom/lge/app/floating/FloatingWindow;->looseFocus()V

    goto :goto_1c1

    .line 333
    .end local v1    # "w":Lcom/lge/app/floating/FloatingWindow;
    :cond_1d1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.lge.intent.action.STOP_FLOATING_WINDOW_SERVICE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 334
    invoke-direct {p0, p2}, Lcom/lge/app/floating/FloatingWindowService$FloatingWindowEventReceiver;->setActionStopFloatingWindowService(Landroid/content/Intent;)V

    goto/16 :goto_31
.end method
