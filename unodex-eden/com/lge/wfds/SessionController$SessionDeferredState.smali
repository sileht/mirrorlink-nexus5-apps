.class Lcom/lge/wfds/SessionController$SessionDeferredState;
.super Lcom/android/internal/util/State;
.source "SessionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/SessionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SessionDeferredState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wfds/SessionController;


# direct methods
.method constructor <init>(Lcom/lge/wfds/SessionController;)V
    .registers 2

    .prologue
    .line 620
    iput-object p1, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private transitionState()V
    .registers 3

    .prologue
    .line 666
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    invoke-virtual {v0}, Lcom/lge/wfds/SessionController;->hasOpenedSession()Z

    move-result v0

    if-nez v0, :cond_14

    .line 667
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionReadyState:Lcom/lge/wfds/SessionController$SessionReadyState;
    invoke-static {v1}, Lcom/lge/wfds/SessionController;->access$23(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/SessionController$SessionReadyState;

    move-result-object v1

    # invokes: Lcom/lge/wfds/SessionController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/lge/wfds/SessionController;->access$12(Lcom/lge/wfds/SessionController;Lcom/android/internal/util/IState;)V

    .line 671
    :goto_13
    return-void

    .line 669
    :cond_14
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionOpenedState:Lcom/lge/wfds/SessionController$SessionOpenedState;
    invoke-static {v1}, Lcom/lge/wfds/SessionController;->access$24(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/SessionController$SessionOpenedState;

    move-result-object v1

    # invokes: Lcom/lge/wfds/SessionController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/lge/wfds/SessionController;->access$12(Lcom/lge/wfds/SessionController;Lcom/android/internal/util/IState;)V

    goto :goto_13
.end method


# virtual methods
.method public enter()V
    .registers 5

    .prologue
    .line 623
    const-string v0, "WfdsSession:Controller"

    const-string v1, "STATE : SessionDeferredState - enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->stopSessionReadyTimeouts()V
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$4(Lcom/lge/wfds/SessionController;)V

    .line 627
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    const-string v2, "com.lge.wfds.session.DEFERRED_TIMEOUT"

    .line 628
    const v3, 0x1d4c0

    .line 627
    # invokes: Lcom/lge/wfds/SessionController;->startTimeout(Ljava/lang/String;I)Landroid/app/PendingIntent;
    invoke-static {v1, v2, v3}, Lcom/lge/wfds/SessionController;->access$15(Lcom/lge/wfds/SessionController;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wfds/SessionController;->access$33(Lcom/lge/wfds/SessionController;Landroid/app/PendingIntent;)V

    .line 629
    return-void
.end method

.method public exit()V
    .registers 3

    .prologue
    .line 675
    const-string v0, "WfdsSession:Controller"

    const-string v1, "STATE : SessionDeferredState - exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mWfdsDialog:Lcom/lge/wfds/WfdsDialog;
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$31(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/WfdsDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsDialog;->dismissUserInputDialog()V

    .line 677
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/wfds/SessionController;->access$3(Lcom/lge/wfds/SessionController;Lcom/lge/wfds/session/AspSession;)V

    .line 678
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 10
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x2

    const/4 v6, 0x0

    .line 633
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_74

    .line 662
    :goto_7
    return v6

    .line 635
    :sswitch_8
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->stopDeferredTimeout()V
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$5(Lcom/lge/wfds/SessionController;)V

    .line 636
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$10(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 637
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$32(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/WfdsEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v1}, Lcom/lge/wfds/SessionController;->access$10(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v1

    iget v1, v1, Lcom/lge/wfds/session/AspSession;->advertise_id:I

    .line 638
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$10(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v2

    iget-object v2, v2, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    .line 639
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v4}, Lcom/lge/wfds/SessionController;->access$10(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v4

    iget v4, v4, Lcom/lge/wfds/session/AspSession;->session_id:I

    .line 640
    iget-object v5, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v5}, Lcom/lge/wfds/SessionController;->access$10(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v5

    iget-object v5, v5, Lcom/lge/wfds/session/AspSession;->session_information:Ljava/lang/String;

    move v7, v6

    .line 637
    invoke-virtual/range {v0 .. v7}, Lcom/lge/wfds/WfdsEvent;->notifySessionRequestToService(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V

    .line 645
    :goto_40
    invoke-direct {p0}, Lcom/lge/wfds/SessionController$SessionDeferredState;->transitionState()V

    .line 662
    :goto_43
    const/4 v6, 0x1

    goto :goto_7

    .line 643
    :cond_45
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v1}, Lcom/lge/wfds/SessionController;->access$10(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v1

    # invokes: Lcom/lge/wfds/SessionController;->startAspSessionRequest(ILcom/lge/wfds/session/AspSession;)Z
    invoke-static {v0, v2, v1}, Lcom/lge/wfds/SessionController;->access$20(Lcom/lge/wfds/SessionController;ILcom/lge/wfds/session/AspSession;)Z

    goto :goto_40

    .line 649
    :sswitch_51
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->stopDeferredTimeout()V
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$5(Lcom/lge/wfds/SessionController;)V

    .line 650
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v1}, Lcom/lge/wfds/SessionController;->access$10(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v1

    # invokes: Lcom/lge/wfds/SessionController;->startAspSessionRequest(ILcom/lge/wfds/session/AspSession;)Z
    invoke-static {v0, v2, v1}, Lcom/lge/wfds/SessionController;->access$20(Lcom/lge/wfds/SessionController;ILcom/lge/wfds/session/AspSession;)Z

    .line 651
    invoke-direct {p0}, Lcom/lge/wfds/SessionController$SessionDeferredState;->transitionState()V

    goto :goto_43

    .line 655
    :sswitch_65
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionDeferredState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v1}, Lcom/lge/wfds/SessionController;->access$10(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v1

    # invokes: Lcom/lge/wfds/SessionController;->startAspSessionRequest(ILcom/lge/wfds/session/AspSession;)Z
    invoke-static {v0, v2, v1}, Lcom/lge/wfds/SessionController;->access$20(Lcom/lge/wfds/SessionController;ILcom/lge/wfds/session/AspSession;)Z

    .line 656
    invoke-direct {p0}, Lcom/lge/wfds/SessionController$SessionDeferredState;->transitionState()V

    goto :goto_43

    .line 633
    :sswitch_data_74
    .sparse-switch
        0x901029 -> :sswitch_8
        0x90102a -> :sswitch_51
        0x901038 -> :sswitch_65
    .end sparse-switch
.end method
