.class Lcom/lge/wfds/SessionController$SessionClosedState;
.super Lcom/android/internal/util/State;
.source "SessionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/SessionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SessionClosedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wfds/SessionController;


# direct methods
.method constructor <init>(Lcom/lge/wfds/SessionController;)V
    .registers 2

    .prologue
    .line 247
    iput-object p1, p0, Lcom/lge/wfds/SessionController$SessionClosedState;->this$0:Lcom/lge/wfds/SessionController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 4

    .prologue
    .line 250
    const-string v0, "WfdsSession:Controller"

    const-string v1, "STATE : SessionClosedState - enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionClosedState;->this$0:Lcom/lge/wfds/SessionController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/wfds/SessionController;->access$3(Lcom/lge/wfds/SessionController;Lcom/lge/wfds/session/AspSession;)V

    .line 254
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionClosedState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->stopSessionReadyTimeouts()V
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$4(Lcom/lge/wfds/SessionController;)V

    .line 255
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionClosedState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->stopDeferredTimeout()V
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$5(Lcom/lge/wfds/SessionController;)V

    .line 257
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionClosedState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mPortIsolation:Lcom/lge/wfds/session/PortIsolation;
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$6(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/PortIsolation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/wfds/session/PortIsolation;->disableAll()V

    .line 258
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionClosedState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$7(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSessionList;

    move-result-object v0

    if-eqz v0, :cond_66

    .line 259
    const-string v0, "WfdsSession:Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remained session is ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionClosedState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$7(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSessionList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/wfds/session/AspSessionList;->getSessionSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionClosedState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$7(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSessionList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/wfds/session/AspSessionList;->getSessionSize()I

    move-result v0

    if-lez v0, :cond_5d

    .line 261
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionClosedState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->printSessionListInfo()V
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$8(Lcom/lge/wfds/SessionController;)V

    .line 263
    :cond_5d
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionClosedState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$7(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSessionList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/wfds/session/AspSessionList;->initSession()V

    .line 266
    :cond_66
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionClosedState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mUdpDataManager:Lcom/lge/wfds/session/UdpDataManager;
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$9(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/UdpDataManager;

    move-result-object v0

    if-eqz v0, :cond_77

    .line 267
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionClosedState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mUdpDataManager:Lcom/lge/wfds/session/UdpDataManager;
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$9(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/UdpDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/wfds/session/UdpDataManager;->stopReceiver()V

    .line 269
    :cond_77
    return-void
.end method

.method public exit()V
    .registers 3

    .prologue
    .line 293
    const-string v0, "WfdsSession:Controller"

    const-string v1, "STATE : SessionClosedState - exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 273
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_4c

    .line 286
    const/4 v0, 0x0

    .line 288
    :goto_6
    return v0

    .line 275
    :pswitch_7
    const-string v0, "WfdsSession:Controller"

    const-string v1, "EVT_REQUEST_OPEN_SESSION"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionClosedState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lge/wfds/session/AspSession;

    invoke-static {v1, v0}, Lcom/lge/wfds/SessionController;->access$3(Lcom/lge/wfds/SessionController;Lcom/lge/wfds/session/AspSession;)V

    .line 277
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionClosedState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$10(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 278
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionClosedState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$7(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSessionList;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionClosedState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v1}, Lcom/lge/wfds/SessionController;->access$10(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/wfds/session/AspSessionList;->addSession(Lcom/lge/wfds/session/AspSession;)Z

    .line 279
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionClosedState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionClosedState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionOpeningState:Lcom/lge/wfds/SessionController$SessionOpeningState;
    invoke-static {v1}, Lcom/lge/wfds/SessionController;->access$11(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/SessionController$SessionOpeningState;

    move-result-object v1

    # invokes: Lcom/lge/wfds/SessionController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/lge/wfds/SessionController;->access$12(Lcom/lge/wfds/SessionController;Lcom/android/internal/util/IState;)V

    .line 288
    :goto_39
    const/4 v0, 0x1

    goto :goto_6

    .line 281
    :cond_3b
    const-string v0, "WfdsSession:Controller"

    const-string v1, "EVT_REQUEST_OPEN_SESSION : mRequestedSession is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionClosedState;->this$0:Lcom/lge/wfds/SessionController;

    const v1, 0x901015

    # invokes: Lcom/lge/wfds/SessionController;->sendMessageToWfdsSM(I)V
    invoke-static {v0, v1}, Lcom/lge/wfds/SessionController;->access$13(Lcom/lge/wfds/SessionController;I)V

    goto :goto_39

    .line 273
    nop

    :pswitch_data_4c
    .packed-switch 0x901047
        :pswitch_7
    .end packed-switch
.end method
