.class Lcom/lge/wfds/SessionController$SessionReadyState;
.super Lcom/android/internal/util/State;
.source "SessionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/SessionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SessionReadyState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wfds/SessionController;


# direct methods
.method constructor <init>(Lcom/lge/wfds/SessionController;)V
    .registers 2

    .prologue
    .line 297
    iput-object p1, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private disablePortIsolation(Ljava/lang/String;)V
    .registers 6
    .param p1, "service_mac"    # Ljava/lang/String;

    .prologue
    .line 606
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$7(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSessionList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/lge/wfds/session/AspSessionList;->getSession(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v1

    .line 607
    .local v1, "sessionList":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wfds/session/AspSession;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 608
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/session/AspSession;

    .line 609
    .local v0, "session":Lcom/lge/wfds/session/AspSession;
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mPortIsolation:Lcom/lge/wfds/session/PortIsolation;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$6(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/PortIsolation;

    move-result-object v2

    iget-object v3, v0, Lcom/lge/wfds/session/AspSession;->ip_address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lge/wfds/session/PortIsolation;->disable(Ljava/lang/String;)V

    .line 612
    .end local v0    # "session":Lcom/lge/wfds/session/AspSession;
    :cond_21
    return-void
.end method

.method private procAddedSession(Lcom/lge/wfds/session/AspSession;)V
    .registers 6
    .param p1, "session"    # Lcom/lge/wfds/session/AspSession;

    .prologue
    const/4 v3, 0x0

    .line 574
    if-eqz p1, :cond_20

    .line 576
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$7(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSessionList;

    move-result-object v0

    iget-object v1, p1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v2, p1, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/wfds/session/AspSessionList;->setSessionState(Ljava/lang/String;II)V

    .line 577
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->sendSessionStatus(Lcom/lge/wfds/session/AspSession;II)V
    invoke-static {v0, p1, v3, v3}, Lcom/lge/wfds/SessionController;->access$22(Lcom/lge/wfds/SessionController;Lcom/lge/wfds/session/AspSession;II)V

    .line 579
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionOpenedState:Lcom/lge/wfds/SessionController$SessionOpenedState;
    invoke-static {v1}, Lcom/lge/wfds/SessionController;->access$24(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/SessionController$SessionOpenedState;

    move-result-object v1

    # invokes: Lcom/lge/wfds/SessionController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/lge/wfds/SessionController;->access$12(Lcom/lge/wfds/SessionController;Lcom/android/internal/util/IState;)V

    .line 581
    :cond_20
    return-void
.end method

.method private procReqSessionReceived(Lcom/lge/wfds/session/AspSession;)V
    .registers 11
    .param p1, "session"    # Lcom/lge/wfds/session/AspSession;

    .prologue
    const/4 v6, 0x0

    .line 522
    if-eqz p1, :cond_9f

    .line 524
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mWfdsDiscoveryStore:Lcom/lge/wfds/WfdsDiscoveryStore;
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$30(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/WfdsDiscoveryStore;

    move-result-object v0

    iget v1, p1, Lcom/lge/wfds/session/AspSession;->advertise_id:I

    invoke-virtual {v0, v1}, Lcom/lge/wfds/WfdsDiscoveryStore;->getConfiguredAllAdvertise(I)Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    move-result-object v8

    .line 529
    .local v8, "advMethod":Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;
    iget-object v0, p1, Lcom/lge/wfds/session/AspSession;->service_mac:Ljava/lang/String;

    invoke-static {v0}, Lcom/lge/wfds/WfdsUtility;->isMacAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 530
    iget-object v0, p1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iput-object v0, p1, Lcom/lge/wfds/session/AspSession;->service_mac:Ljava/lang/String;

    .line 532
    :cond_1b
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v1, p1, Lcom/lge/wfds/session/AspSession;->service_mac:Ljava/lang/String;

    # invokes: Lcom/lge/wfds/SessionController;->isKnownService(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/lge/wfds/SessionController;->access$17(Lcom/lge/wfds/SessionController;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_86

    if-eqz v8, :cond_86

    .line 533
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$7(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSessionList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/wfds/session/AspSessionList;->addSession(Lcom/lge/wfds/session/AspSession;)Z

    .line 542
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$10(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v0

    if-nez v0, :cond_6d

    .line 543
    invoke-virtual {v8}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->getAcceptMethod()I

    move-result v0

    if-nez v0, :cond_6d

    .line 544
    const-string v0, "WfdsSession:Controller"

    const-string v1, "REQUEST_SESSION_RECEIVED : AcceptMethod[WFDS_USER_DEFERRED_ACCEPT_METHOD]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    invoke-static {v0, p1}, Lcom/lge/wfds/SessionController;->access$3(Lcom/lge/wfds/SessionController;Lcom/lge/wfds/session/AspSession;)V

    .line 548
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    const/4 v1, 0x6

    # invokes: Lcom/lge/wfds/SessionController;->startAspSessionRequest(ILcom/lge/wfds/session/AspSession;)Z
    invoke-static {v0, v1, p1}, Lcom/lge/wfds/SessionController;->access$20(Lcom/lge/wfds/SessionController;ILcom/lge/wfds/session/AspSession;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 549
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mWfdsDialog:Lcom/lge/wfds/WfdsDialog;
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$31(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/WfdsDialog;

    move-result-object v0

    iget-object v1, p1, Lcom/lge/wfds/session/AspSession;->service_mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lge/wfds/WfdsDialog;->showProvDeferUserInputDialog(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 550
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionDeferredState:Lcom/lge/wfds/SessionController$SessionDeferredState;
    invoke-static {v1}, Lcom/lge/wfds/SessionController;->access$28(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/SessionController$SessionDeferredState;

    move-result-object v1

    # invokes: Lcom/lge/wfds/SessionController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/lge/wfds/SessionController;->access$12(Lcom/lge/wfds/SessionController;Lcom/android/internal/util/IState;)V

    .line 571
    .end local v8    # "advMethod":Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;
    :goto_6c
    return-void

    .line 556
    .restart local v8    # "advMethod":Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;
    :cond_6d
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->stopSessionReadyTimeouts()V
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$4(Lcom/lge/wfds/SessionController;)V

    .line 558
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$32(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/WfdsEvent;

    move-result-object v0

    iget v1, p1, Lcom/lge/wfds/session/AspSession;->advertise_id:I

    .line 559
    iget-object v2, p1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    .line 560
    const/4 v3, 0x0

    iget v4, p1, Lcom/lge/wfds/session/AspSession;->session_id:I

    .line 561
    iget-object v5, p1, Lcom/lge/wfds/session/AspSession;->session_information:Ljava/lang/String;

    move v7, v6

    .line 558
    invoke-virtual/range {v0 .. v7}, Lcom/lge/wfds/WfdsEvent;->notifySessionRequestToService(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V

    goto :goto_6c

    .line 564
    :cond_86
    const-string v0, "WfdsSession:Controller"

    const-string v1, "REQUEST_SESSION_RECEIVED : session is Unknown Service or Unknown advertise_id"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const-string v0, "WfdsSession:Controller"

    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->sessionToString(Lcom/lge/wfds/session/AspSession;)Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/lge/wfds/SessionController;->access$27(Lcom/lge/wfds/SessionController;Lcom/lge/wfds/session/AspSession;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    const/4 v1, 0x2

    # invokes: Lcom/lge/wfds/SessionController;->startAspSessionRequest(ILcom/lge/wfds/session/AspSession;)Z
    invoke-static {v0, v1, p1}, Lcom/lge/wfds/SessionController;->access$20(Lcom/lge/wfds/SessionController;ILcom/lge/wfds/session/AspSession;)Z

    goto :goto_6c

    .line 569
    .end local v8    # "advMethod":Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;
    :cond_9f
    const-string v0, "WfdsSession:Controller"

    const-string v1, "REQUEST_SESSION_RECEIVED : session is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c
.end method

.method private procSessionOpenFailed()V
    .registers 5

    .prologue
    .line 584
    const/4 v0, 0x0

    .line 586
    .local v0, "sSession":Lcom/lge/wfds/session/AspSession;
    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v1}, Lcom/lge/wfds/SessionController;->access$10(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v1

    if-eqz v1, :cond_3e

    .line 587
    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;
    invoke-static {v1}, Lcom/lge/wfds/SessionController;->access$7(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSessionList;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$10(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v2

    iget-object v2, v2, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v3}, Lcom/lge/wfds/SessionController;->access$10(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v3

    iget v3, v3, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lge/wfds/session/AspSessionList;->getSession(Ljava/lang/String;Ljava/lang/Integer;)Lcom/lge/wfds/session/AspSession;

    move-result-object v0

    .line 588
    if-eqz v0, :cond_3e

    .line 589
    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    const v2, 0x901015

    # invokes: Lcom/lge/wfds/SessionController;->sendMessageToWfdsSM(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Lcom/lge/wfds/SessionController;->access$19(Lcom/lge/wfds/SessionController;ILjava/lang/Object;)V

    .line 590
    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;
    invoke-static {v1}, Lcom/lge/wfds/SessionController;->access$7(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSessionList;

    move-result-object v1

    iget-object v2, v0, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v3, v0, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-virtual {v1, v2, v3}, Lcom/lge/wfds/session/AspSessionList;->removeSession(Ljava/lang/String;I)V

    .line 594
    :cond_3e
    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lge/wfds/SessionController;->access$3(Lcom/lge/wfds/SessionController;Lcom/lge/wfds/session/AspSession;)V

    .line 596
    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    invoke-virtual {v1}, Lcom/lge/wfds/SessionController;->hasOpenedSession()Z

    move-result v1

    if-nez v1, :cond_5f

    .line 597
    const-string v1, "WfdsSession:Controller"

    const-string v2, "Session open fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionReadyState:Lcom/lge/wfds/SessionController$SessionReadyState;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$23(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/SessionController$SessionReadyState;

    move-result-object v2

    # invokes: Lcom/lge/wfds/SessionController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/lge/wfds/SessionController;->access$12(Lcom/lge/wfds/SessionController;Lcom/android/internal/util/IState;)V

    .line 603
    :goto_5e
    return-void

    .line 601
    :cond_5f
    const-string v1, "WfdsSession:Controller"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "size of mSessionList is ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;
    invoke-static {v3}, Lcom/lge/wfds/SessionController;->access$7(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSessionList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/wfds/session/AspSessionList;->getSessionSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e
.end method

.method private procSessionReady(Landroid/os/Message;Lcom/lge/wfds/session/AspSession;)V
    .registers 7
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "session"    # Lcom/lge/wfds/session/AspSession;

    .prologue
    const/4 v3, 0x0

    .line 509
    if-eqz p2, :cond_29

    .line 510
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    const/4 v1, 0x1

    # invokes: Lcom/lge/wfds/SessionController;->startAspSessionRequest(ILcom/lge/wfds/session/AspSession;)Z
    invoke-static {v0, v1, p2}, Lcom/lge/wfds/SessionController;->access$20(Lcom/lge/wfds/SessionController;ILcom/lge/wfds/session/AspSession;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 512
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$7(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSessionList;

    move-result-object v0

    iget-object v1, p2, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v2, p2, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/wfds/session/AspSessionList;->setSessionState(Ljava/lang/String;II)V

    .line 513
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->sendSessionStatus(Lcom/lge/wfds/session/AspSession;II)V
    invoke-static {v0, p2, v3, v3}, Lcom/lge/wfds/SessionController;->access$22(Lcom/lge/wfds/SessionController;Lcom/lge/wfds/session/AspSession;II)V

    .line 515
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionOpenedState:Lcom/lge/wfds/SessionController$SessionOpenedState;
    invoke-static {v1}, Lcom/lge/wfds/SessionController;->access$24(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/SessionController$SessionOpenedState;

    move-result-object v1

    # invokes: Lcom/lge/wfds/SessionController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/lge/wfds/SessionController;->access$12(Lcom/lge/wfds/SessionController;Lcom/android/internal/util/IState;)V

    .line 518
    :cond_29
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    const v1, 0x900020

    # invokes: Lcom/lge/wfds/SessionController;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, p1, v1}, Lcom/lge/wfds/SessionController;->access$1(Lcom/lge/wfds/SessionController;Landroid/os/Message;I)V

    .line 519
    return-void
.end method


# virtual methods
.method public enter()V
    .registers 5

    .prologue
    .line 300
    const-string v0, "WfdsSession:Controller"

    const-string v1, "STATE : SessionReadyState - enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mIsCertificationMode:Z
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$14(Lcom/lge/wfds/SessionController;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 303
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    const-string v2, "com.lge.wfds.session.COUNT_ZERO_TIMEOUT"

    .line 304
    const v3, 0xea60

    .line 303
    # invokes: Lcom/lge/wfds/SessionController;->startTimeout(Ljava/lang/String;I)Landroid/app/PendingIntent;
    invoke-static {v1, v2, v3}, Lcom/lge/wfds/SessionController;->access$15(Lcom/lge/wfds/SessionController;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wfds/SessionController;->access$16(Lcom/lge/wfds/SessionController;Landroid/app/PendingIntent;)V

    .line 306
    :cond_1f
    return-void
.end method

.method public exit()V
    .registers 3

    .prologue
    .line 616
    const-string v0, "WfdsSession:Controller"

    const-string v1, "STATE : SessionReadyState - exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 9
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const v4, 0x901016

    const/4 v6, 0x3

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 310
    const/4 v1, 0x0

    .line 312
    .local v1, "session":Lcom/lge/wfds/session/AspSession;
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_33e

    .line 505
    :goto_c
    return v2

    .line 315
    :sswitch_d
    const-string v2, "WfdsSession:Controller"

    const-string v3, "EVT_REQUEST_OPEN_SESSION"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$10(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v2

    if-nez v2, :cond_62

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/lge/wfds/session/AspSession;

    if-eqz v2, :cond_62

    .line 317
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->stopSessionReadyTimeouts()V
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$4(Lcom/lge/wfds/SessionController;)V

    .line 319
    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/lge/wfds/session/AspSession;

    invoke-static {v3, v2}, Lcom/lge/wfds/SessionController;->access$3(Lcom/lge/wfds/SessionController;Lcom/lge/wfds/session/AspSession;)V

    .line 320
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$7(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSessionList;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v3}, Lcom/lge/wfds/SessionController;->access$10(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/wfds/session/AspSessionList;->addSession(Lcom/lge/wfds/session/AspSession;)Z

    .line 322
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v3}, Lcom/lge/wfds/SessionController;->access$10(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v3

    iget-object v3, v3, Lcom/lge/wfds/session/AspSession;->service_mac:Ljava/lang/String;

    # invokes: Lcom/lge/wfds/SessionController;->isKnownService(Ljava/lang/String;)Z
    invoke-static {v2, v3}, Lcom/lge/wfds/SessionController;->access$17(Lcom/lge/wfds/SessionController;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5c

    .line 323
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionOpeningState:Lcom/lge/wfds/SessionController$SessionOpeningState;
    invoke-static {v3}, Lcom/lge/wfds/SessionController;->access$11(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/SessionController$SessionOpeningState;

    move-result-object v3

    # invokes: Lcom/lge/wfds/SessionController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/lge/wfds/SessionController;->access$12(Lcom/lge/wfds/SessionController;Lcom/android/internal/util/IState;)V

    .line 505
    :cond_5a
    :goto_5a
    const/4 v2, 0x1

    goto :goto_c

    .line 325
    :cond_5c
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->sendRequestSession()V
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$18(Lcom/lge/wfds/SessionController;)V

    goto :goto_5a

    .line 328
    :cond_62
    const-string v2, "WfdsSession:Controller"

    const-string v3, "EVT_REQUEST_OPEN_SESSION : mRequestedSession is not null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    const v3, 0x901015

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    # invokes: Lcom/lge/wfds/SessionController;->sendMessageToWfdsSM(ILjava/lang/Object;)V
    invoke-static {v2, v3, v4}, Lcom/lge/wfds/SessionController;->access$19(Lcom/lge/wfds/SessionController;ILjava/lang/Object;)V

    goto :goto_5a

    .line 334
    :sswitch_74
    const-string v3, "WfdsSession:Controller"

    const-string v4, "REQUEST_SESSION"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-class v4, Lcom/lge/wfds/session/AspSession;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 336
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1    # "session":Lcom/lge/wfds/session/AspSession;
    check-cast v1, Lcom/lge/wfds/session/AspSession;

    .line 337
    .restart local v1    # "session":Lcom/lge/wfds/session/AspSession;
    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->startAspSessionRequest(ILcom/lge/wfds/session/AspSession;)Z
    invoke-static {v3, v2, v1}, Lcom/lge/wfds/SessionController;->access$20(Lcom/lge/wfds/SessionController;ILcom/lge/wfds/session/AspSession;)Z

    goto :goto_5a

    .line 341
    :sswitch_98
    const-string v2, "WfdsSession:Controller"

    const-string v3, "ADDED_SESSION"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-class v3, Lcom/lge/wfds/session/AspSession;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 343
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1    # "session":Lcom/lge/wfds/session/AspSession;
    check-cast v1, Lcom/lge/wfds/session/AspSession;

    .line 345
    .restart local v1    # "session":Lcom/lge/wfds/session/AspSession;
    if-eqz v1, :cond_5a

    .line 346
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$7(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSessionList;

    move-result-object v2

    iget-object v3, v1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v4, v1, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lge/wfds/session/AspSessionList;->getSession(Ljava/lang/String;Ljava/lang/Integer;)Lcom/lge/wfds/session/AspSession;

    move-result-object v2

    if-eqz v2, :cond_5a

    .line 347
    invoke-direct {p0, p1, v1}, Lcom/lge/wfds/SessionController$SessionReadyState;->procSessionReady(Landroid/os/Message;Lcom/lge/wfds/session/AspSession;)V

    goto :goto_5a

    .line 361
    :sswitch_d0
    const-string v3, "WfdsSession:Controller"

    const-string v4, "REJECT_SESSION"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-class v4, Lcom/lge/wfds/session/AspSession;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 363
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1    # "session":Lcom/lge/wfds/session/AspSession;
    check-cast v1, Lcom/lge/wfds/session/AspSession;

    .line 365
    .restart local v1    # "session":Lcom/lge/wfds/session/AspSession;
    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    const/4 v4, 0x2

    # invokes: Lcom/lge/wfds/SessionController;->startAspSessionRequest(ILcom/lge/wfds/session/AspSession;)Z
    invoke-static {v3, v4, v1}, Lcom/lge/wfds/SessionController;->access$20(Lcom/lge/wfds/SessionController;ILcom/lge/wfds/session/AspSession;)Z

    move-result v3

    if-eqz v3, :cond_129

    .line 366
    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v4, v1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v5, v1, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    # invokes: Lcom/lge/wfds/SessionController;->removePortIsolation(Ljava/lang/String;Ljava/lang/Integer;)V
    invoke-static {v3, v4, v5}, Lcom/lge/wfds/SessionController;->access$21(Lcom/lge/wfds/SessionController;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 369
    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;
    invoke-static {v3}, Lcom/lge/wfds/SessionController;->access$7(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSessionList;

    move-result-object v3

    iget-object v4, v1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v5, v1, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/lge/wfds/session/AspSessionList;->setSessionState(Ljava/lang/String;II)V

    .line 371
    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->sendSessionStatus(Lcom/lge/wfds/session/AspSession;II)V
    invoke-static {v3, v1, v6, v2}, Lcom/lge/wfds/SessionController;->access$22(Lcom/lge/wfds/SessionController;Lcom/lge/wfds/session/AspSession;II)V

    .line 375
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    invoke-virtual {v2}, Lcom/lge/wfds/SessionController;->hasOpenedSession()Z

    move-result v2

    if-nez v2, :cond_133

    .line 376
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionReadyState:Lcom/lge/wfds/SessionController$SessionReadyState;
    invoke-static {v3}, Lcom/lge/wfds/SessionController;->access$23(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/SessionController$SessionReadyState;

    move-result-object v3

    # invokes: Lcom/lge/wfds/SessionController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/lge/wfds/SessionController;->access$12(Lcom/lge/wfds/SessionController;Lcom/android/internal/util/IState;)V

    .line 382
    :cond_129
    :goto_129
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    const v3, 0x900020

    # invokes: Lcom/lge/wfds/SessionController;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v2, p1, v3}, Lcom/lge/wfds/SessionController;->access$1(Lcom/lge/wfds/SessionController;Landroid/os/Message;I)V

    goto/16 :goto_5a

    .line 378
    :cond_133
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionOpenedState:Lcom/lge/wfds/SessionController$SessionOpenedState;
    invoke-static {v3}, Lcom/lge/wfds/SessionController;->access$24(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/SessionController$SessionOpenedState;

    move-result-object v3

    # invokes: Lcom/lge/wfds/SessionController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/lge/wfds/SessionController;->access$12(Lcom/lge/wfds/SessionController;Lcom/android/internal/util/IState;)V

    goto :goto_129

    .line 386
    :sswitch_13f
    const-string v2, "WfdsSession:Controller"

    const-string v3, "CMD_SESSION_OPEN_FAILED_TIMEOUT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->sendMessageToWfdsSM(I)V
    invoke-static {v2, v4}, Lcom/lge/wfds/SessionController;->access$13(Lcom/lge/wfds/SessionController;I)V

    .line 388
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionClosedState:Lcom/lge/wfds/SessionController$SessionClosedState;
    invoke-static {v3}, Lcom/lge/wfds/SessionController;->access$25(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/SessionController$SessionClosedState;

    move-result-object v3

    # invokes: Lcom/lge/wfds/SessionController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/lge/wfds/SessionController;->access$12(Lcom/lge/wfds/SessionController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_5a

    .line 392
    :sswitch_158
    const-string v2, "WfdsSession:Controller"

    const-string v3, "CMD_SESSION_COUNT_ZERO_TIMEOUT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->sendMessageToWfdsSM(I)V
    invoke-static {v2, v4}, Lcom/lge/wfds/SessionController;->access$13(Lcom/lge/wfds/SessionController;I)V

    .line 394
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionClosedState:Lcom/lge/wfds/SessionController$SessionClosedState;
    invoke-static {v3}, Lcom/lge/wfds/SessionController;->access$25(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/SessionController$SessionClosedState;

    move-result-object v3

    # invokes: Lcom/lge/wfds/SessionController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/lge/wfds/SessionController;->access$12(Lcom/lge/wfds/SessionController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_5a

    .line 398
    :sswitch_171
    const-string v2, "WfdsSession:Controller"

    const-string v3, "GET_SESSION"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-class v3, Lcom/lge/wfds/session/AspSession;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 400
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1    # "session":Lcom/lge/wfds/session/AspSession;
    check-cast v1, Lcom/lge/wfds/session/AspSession;

    .line 401
    .restart local v1    # "session":Lcom/lge/wfds/session/AspSession;
    if-eqz v1, :cond_1af

    .line 402
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$7(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSessionList;

    move-result-object v2

    iget-object v3, v1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v4, v1, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lge/wfds/session/AspSessionList;->getSession(Ljava/lang/String;Ljava/lang/Integer;)Lcom/lge/wfds/session/AspSession;

    move-result-object v0

    .line 403
    .local v0, "aspSession":Lcom/lge/wfds/session/AspSession;
    if-eqz v0, :cond_1af

    .line 404
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    const v3, 0x900028

    # invokes: Lcom/lge/wfds/SessionController;->replyToMessage(Landroid/os/Message;ILcom/lge/wfds/session/AspSession;)V
    invoke-static {v2, p1, v3, v0}, Lcom/lge/wfds/SessionController;->access$26(Lcom/lge/wfds/SessionController;Landroid/os/Message;ILcom/lge/wfds/session/AspSession;)V

    goto/16 :goto_5a

    .line 409
    .end local v0    # "aspSession":Lcom/lge/wfds/session/AspSession;
    :cond_1af
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    const v3, 0x900027

    # invokes: Lcom/lge/wfds/SessionController;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v2, p1, v3}, Lcom/lge/wfds/SessionController;->access$1(Lcom/lge/wfds/SessionController;Landroid/os/Message;I)V

    goto/16 :goto_5a

    .line 414
    :sswitch_1b9
    const-string v2, "WfdsSession:Controller"

    const-string v3, "REQUEST_SESSION_RECEIVED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-class v3, Lcom/lge/wfds/session/AspSession;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 416
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/lge/wfds/session/AspSession;

    invoke-direct {p0, v2}, Lcom/lge/wfds/SessionController$SessionReadyState;->procReqSessionReceived(Lcom/lge/wfds/session/AspSession;)V

    goto/16 :goto_5a

    .line 420
    :sswitch_1dc
    const-string v2, "WfdsSession:Controller"

    const-string v3, "ADDED_SESSION_RECEIVED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-class v3, Lcom/lge/wfds/session/AspSession;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 422
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1    # "session":Lcom/lge/wfds/session/AspSession;
    check-cast v1, Lcom/lge/wfds/session/AspSession;

    .line 424
    .restart local v1    # "session":Lcom/lge/wfds/session/AspSession;
    if-eqz v1, :cond_5a

    .line 425
    const-string v2, "WfdsSession:Controller"

    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->sessionToString(Lcom/lge/wfds/session/AspSession;)Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/lge/wfds/SessionController;->access$27(Lcom/lge/wfds/SessionController;Lcom/lge/wfds/session/AspSession;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$7(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSessionList;

    move-result-object v2

    iget-object v3, v1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v4, v1, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lge/wfds/session/AspSessionList;->getSession(Ljava/lang/String;Ljava/lang/Integer;)Lcom/lge/wfds/session/AspSession;

    move-result-object v0

    .line 428
    .restart local v0    # "aspSession":Lcom/lge/wfds/session/AspSession;
    if-eqz v0, :cond_5a

    .line 429
    iget v2, v0, Lcom/lge/wfds/session/AspSession;->state:I

    if-eqz v2, :cond_224

    .line 430
    invoke-direct {p0, v1}, Lcom/lge/wfds/SessionController$SessionReadyState;->procAddedSession(Lcom/lge/wfds/session/AspSession;)V

    goto/16 :goto_5a

    .line 432
    :cond_224
    const-string v2, "WfdsSession:Controller"

    const-string v3, "ADDED_SESSION_RECEIVED : Already Opened State"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const-string v2, "WfdsSession:Controller"

    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->sessionToString(Lcom/lge/wfds/session/AspSession;)Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/lge/wfds/SessionController;->access$27(Lcom/lge/wfds/SessionController;Lcom/lge/wfds/session/AspSession;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5a

    .line 440
    .end local v0    # "aspSession":Lcom/lge/wfds/session/AspSession;
    :sswitch_238
    const-string v3, "WfdsSession:Controller"

    const-string v4, "REJECTED_SESSION_RECEIVED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-class v4, Lcom/lge/wfds/session/AspSession;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 442
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1    # "session":Lcom/lge/wfds/session/AspSession;
    check-cast v1, Lcom/lge/wfds/session/AspSession;

    .line 444
    .restart local v1    # "session":Lcom/lge/wfds/session/AspSession;
    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v4, v1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v5, v1, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    # invokes: Lcom/lge/wfds/SessionController;->removePortIsolation(Ljava/lang/String;Ljava/lang/Integer;)V
    invoke-static {v3, v4, v5}, Lcom/lge/wfds/SessionController;->access$21(Lcom/lge/wfds/SessionController;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 447
    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;
    invoke-static {v3}, Lcom/lge/wfds/SessionController;->access$7(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSessionList;

    move-result-object v3

    iget-object v4, v1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v5, v1, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/lge/wfds/session/AspSessionList;->setSessionState(Ljava/lang/String;II)V

    .line 449
    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->sendSessionStatus(Lcom/lge/wfds/session/AspSession;II)V
    invoke-static {v3, v1, v6, v2}, Lcom/lge/wfds/SessionController;->access$22(Lcom/lge/wfds/SessionController;Lcom/lge/wfds/session/AspSession;II)V

    .line 453
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    invoke-virtual {v2}, Lcom/lge/wfds/SessionController;->hasOpenedSession()Z

    move-result v2

    if-nez v2, :cond_28a

    .line 454
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionReadyState:Lcom/lge/wfds/SessionController$SessionReadyState;
    invoke-static {v3}, Lcom/lge/wfds/SessionController;->access$23(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/SessionController$SessionReadyState;

    move-result-object v3

    # invokes: Lcom/lge/wfds/SessionController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/lge/wfds/SessionController;->access$12(Lcom/lge/wfds/SessionController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_5a

    .line 456
    :cond_28a
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionOpenedState:Lcom/lge/wfds/SessionController$SessionOpenedState;
    invoke-static {v3}, Lcom/lge/wfds/SessionController;->access$24(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/SessionController$SessionOpenedState;

    move-result-object v3

    # invokes: Lcom/lge/wfds/SessionController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/lge/wfds/SessionController;->access$12(Lcom/lge/wfds/SessionController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_5a

    .line 461
    :sswitch_297
    const-string v2, "WfdsSession:Controller"

    const-string v3, "DEFERRED_SESSION_RECEIVED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-class v3, Lcom/lge/wfds/session/AspSession;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 463
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1    # "session":Lcom/lge/wfds/session/AspSession;
    check-cast v1, Lcom/lge/wfds/session/AspSession;

    .line 464
    .restart local v1    # "session":Lcom/lge/wfds/session/AspSession;
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$10(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v2

    if-eqz v2, :cond_5a

    .line 465
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionDeferredState:Lcom/lge/wfds/SessionController$SessionDeferredState;
    invoke-static {v3}, Lcom/lge/wfds/SessionController;->access$28(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/SessionController$SessionDeferredState;

    move-result-object v3

    # invokes: Lcom/lge/wfds/SessionController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/lge/wfds/SessionController;->access$12(Lcom/lge/wfds/SessionController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_5a

    .line 470
    :sswitch_2ca
    const-string v2, "WfdsSession:Controller"

    const-string v3, "ACK_ADDED_SESSION_RECEIVED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->stopAspSessionRequest()V
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$2(Lcom/lge/wfds/SessionController;)V

    goto/16 :goto_5a

    .line 475
    :sswitch_2d8
    const-string v2, "WfdsSession:Controller"

    const-string v3, "ASP_ACK_UNKNOWN_RECEIVED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->stopAspSessionRequest()V
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$2(Lcom/lge/wfds/SessionController;)V

    goto/16 :goto_5a

    .line 480
    :sswitch_2e6
    const-string v2, "WfdsSession:Controller"

    const-string v3, "SESSION_OPEN_FAILED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-direct {p0}, Lcom/lge/wfds/SessionController$SessionReadyState;->procSessionOpenFailed()V

    goto/16 :goto_5a

    .line 485
    :sswitch_2f2
    const-string v2, "WfdsSession:Controller"

    const-string v3, "EVT_P2P_DISCONNECTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/lge/wfds/SessionController$SessionReadyState;->disablePortIsolation(Ljava/lang/String;)V

    .line 487
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$7(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSessionList;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/lge/wfds/session/AspSessionList;->removeSession(Ljava/lang/String;)V

    .line 489
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    invoke-virtual {v2}, Lcom/lge/wfds/SessionController;->hasOpenedSession()Z

    move-result v2

    if-nez v2, :cond_5a

    .line 491
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionCountZeroTimeoutIntent:Landroid/app/PendingIntent;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$29(Lcom/lge/wfds/SessionController;)Landroid/app/PendingIntent;

    move-result-object v2

    if-nez v2, :cond_5a

    .line 492
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionReadyState:Lcom/lge/wfds/SessionController$SessionReadyState;
    invoke-static {v3}, Lcom/lge/wfds/SessionController;->access$23(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/SessionController$SessionReadyState;

    move-result-object v3

    # invokes: Lcom/lge/wfds/SessionController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/lge/wfds/SessionController;->access$12(Lcom/lge/wfds/SessionController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_5a

    .line 498
    :sswitch_32a
    const-string v2, "WfdsSession:Controller"

    const-string v3, "EVT_P2P_GROUP_REMOVED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionReadyState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionClosedState:Lcom/lge/wfds/SessionController$SessionClosedState;
    invoke-static {v3}, Lcom/lge/wfds/SessionController;->access$25(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/SessionController$SessionClosedState;

    move-result-object v3

    # invokes: Lcom/lge/wfds/SessionController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/lge/wfds/SessionController;->access$12(Lcom/lge/wfds/SessionController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_5a

    .line 312
    :sswitch_data_33e
    .sparse-switch
        0x900006 -> :sswitch_98
        0x90000b -> :sswitch_d0
        0x90000c -> :sswitch_171
        0x901033 -> :sswitch_74
        0x901036 -> :sswitch_13f
        0x901037 -> :sswitch_158
        0x901047 -> :sswitch_d
        0x901048 -> :sswitch_32a
        0x901049 -> :sswitch_2f2
        0x90104b -> :sswitch_32a
        0x90105b -> :sswitch_2e6
        0x90105d -> :sswitch_1b9
        0x90105e -> :sswitch_1dc
        0x90105f -> :sswitch_238
        0x901062 -> :sswitch_297
        0x901063 -> :sswitch_2ca
        0x901065 -> :sswitch_2d8
    .end sparse-switch
.end method
