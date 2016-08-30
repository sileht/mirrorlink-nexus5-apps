.class Lcom/lge/wfds/SessionController$SessionOpenedState;
.super Lcom/android/internal/util/State;
.source "SessionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/SessionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SessionOpenedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wfds/SessionController;


# direct methods
.method constructor <init>(Lcom/lge/wfds/SessionController;)V
    .registers 2

    .prologue
    .line 801
    iput-object p1, p0, Lcom/lge/wfds/SessionController$SessionOpenedState;->this$0:Lcom/lge/wfds/SessionController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private sendPortStatus(Lcom/lge/wfds/session/AspSession;I)V
    .registers 11
    .param p1, "session"    # Lcom/lge/wfds/session/AspSession;
    .param p2, "status"    # I

    .prologue
    .line 957
    if-eqz p1, :cond_e

    iget-object v0, p1, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionOpenedState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$32(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/WfdsEvent;

    move-result-object v0

    if-nez v0, :cond_f

    .line 969
    :cond_e
    :goto_e
    return-void

    .line 961
    :cond_f
    iget v2, p1, Lcom/lge/wfds/session/AspSession;->session_id:I

    .line 962
    .local v2, "sessionId":I
    iget-object v1, p1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    .line 963
    .local v1, "sessionMac":Ljava/lang/String;
    iget-object v3, p1, Lcom/lge/wfds/session/AspSession;->ip_address:Ljava/lang/String;

    .line 964
    .local v3, "ip":Ljava/lang/String;
    iget-object v0, p1, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/wfds/session/AspServicePort;

    .line 965
    .local v7, "port_":Lcom/lge/wfds/session/AspServicePort;
    iget v4, v7, Lcom/lge/wfds/session/AspServicePort;->port:I

    .line 966
    .local v4, "port":I
    iget v5, v7, Lcom/lge/wfds/session/AspServicePort;->proto:I

    .line 968
    .local v5, "proto":I
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionOpenedState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$32(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/WfdsEvent;

    move-result-object v0

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/lge/wfds/WfdsEvent;->notifyPortStatusToService(Ljava/lang/String;ILjava/lang/String;III)V

    goto :goto_e
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    .line 804
    const-string v0, "WfdsSession:Controller"

    const-string v1, "STATE : SessionOpenedState - enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionOpenedState;->this$0:Lcom/lge/wfds/SessionController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/wfds/SessionController;->access$3(Lcom/lge/wfds/SessionController;Lcom/lge/wfds/session/AspSession;)V

    .line 807
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionOpenedState;->this$0:Lcom/lge/wfds/SessionController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lge/wfds/SessionController;->access$41(Lcom/lge/wfds/SessionController;Z)V

    .line 809
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionOpenedState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->stopSessionReadyTimeouts()V
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$4(Lcom/lge/wfds/SessionController;)V

    .line 811
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionOpenedState;->this$0:Lcom/lge/wfds/SessionController;

    const v1, 0x90105b

    # invokes: Lcom/lge/wfds/SessionController;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/lge/wfds/SessionController;->access$42(Lcom/lge/wfds/SessionController;I)V

    .line 813
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionOpenedState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->printSessionListInfo()V
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$8(Lcom/lge/wfds/SessionController;)V

    .line 814
    return-void
.end method

.method public exit()V
    .registers 3

    .prologue
    .line 973
    const-string v0, "WfdsSession:Controller"

    const-string v1, "STATE : SessionOpenedState - exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionOpenedState;->this$0:Lcom/lge/wfds/SessionController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/wfds/SessionController;->access$41(Lcom/lge/wfds/SessionController;Z)V

    .line 975
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 11
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const v8, 0x90001f

    const v7, 0x900020

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v2, 0x0

    .line 818
    const/4 v1, 0x0

    .line 820
    .local v1, "session":Lcom/lge/wfds/session/AspSession;
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_242

    .line 953
    :goto_f
    return v2

    .line 823
    :sswitch_10
    const-string v3, "WfdsSession:Controller"

    const-string v4, "REMOVE_SESSION"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-class v4, Lcom/lge/wfds/session/AspSession;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 825
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1    # "session":Lcom/lge/wfds/session/AspSession;
    check-cast v1, Lcom/lge/wfds/session/AspSession;

    .line 826
    .restart local v1    # "session":Lcom/lge/wfds/session/AspSession;
    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionOpenedState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->startAspSessionRequest(ILcom/lge/wfds/session/AspSession;)Z
    invoke-static {v3, v6, v1}, Lcom/lge/wfds/SessionController;->access$20(Lcom/lge/wfds/SessionController;ILcom/lge/wfds/session/AspSession;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 827
    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionOpenedState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v4, v1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v5, v1, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    # invokes: Lcom/lge/wfds/SessionController;->removePortIsolation(Ljava/lang/String;Ljava/lang/Integer;)V
    invoke-static {v3, v4, v5}, Lcom/lge/wfds/SessionController;->access$21(Lcom/lge/wfds/SessionController;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 830
    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionOpenedState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;
    invoke-static {v3}, Lcom/lge/wfds/SessionController;->access$7(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSessionList;

    move-result-object v3

    iget-object v4, v1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v5, v1, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/lge/wfds/session/AspSessionList;->setSessionState(Ljava/lang/String;II)V

    .line 832
    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionOpenedState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->sendSessionStatus(Lcom/lge/wfds/session/AspSession;II)V
    invoke-static {v3, v1, v6, v2}, Lcom/lge/wfds/SessionController;->access$22(Lcom/lge/wfds/SessionController;Lcom/lge/wfds/session/AspSession;II)V

    .line 836
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpenedState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->printSessionListInfo()V
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$8(Lcom/lge/wfds/SessionController;)V

    .line 838
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpenedState;->this$0:Lcom/lge/wfds/SessionController;

    invoke-virtual {v2}, Lcom/lge/wfds/SessionController;->hasOpenedSession()Z

    move-result v2

    if-nez v2, :cond_6d

    .line 839
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpenedState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionOpenedState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionReadyState:Lcom/lge/wfds/SessionController$SessionReadyState;
    invoke-static {v3}, Lcom/lge/wfds/SessionController;->access$23(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/SessionController$SessionReadyState;

    move-result-object v3

    # invokes: Lcom/lge/wfds/SessionController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/lge/wfds/SessionController;->access$12(Lcom/lge/wfds/SessionController;Lcom/android/internal/util/IState;)V

    .line 842
    :cond_6d
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpenedState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v2, p1, v7}, Lcom/lge/wfds/SessionController;->access$1(Lcom/lge/wfds/SessionController;Landroid/os/Message;I)V

    .line 953
    :cond_72
    :goto_72
    const/4 v2, 0x1

    goto :goto_f

    .line 846
    :sswitch_74
    const-string v3, "WfdsSession:Controller"

    const-string v4, "BOUND_PORT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-class v4, Lcom/lge/wfds/session/AspSession;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 848
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1    # "session":Lcom/lge/wfds/session/AspSession;
    check-cast v1, Lcom/lge/wfds/session/AspSession;

    .line 849
    .restart local v1    # "session":Lcom/lge/wfds/session/AspSession;
    if-eqz v1, :cond_11f

    .line 850
    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionOpenedState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;
    invoke-static {v3}, Lcom/lge/wfds/SessionController;->access$7(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSessionList;

    move-result-object v3

    iget-object v4, v1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v5, v1, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/lge/wfds/session/AspSessionList;->getSession(Ljava/lang/String;Ljava/lang/Integer;)Lcom/lge/wfds/session/AspSession;

    move-result-object v3

    if-eqz v3, :cond_111

    .line 851
    iget-object v3, v1, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    if-eqz v3, :cond_111

    .line 852
    iget-object v3, v1, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/session/AspServicePort;

    .line 853
    .local v0, "servicePort":Lcom/lge/wfds/session/AspServicePort;
    const-string v3, "WfdsSession:Controller"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "BOUND_PORT [Port:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/lge/wfds/session/AspServicePort;->port:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", proto:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/lge/wfds/session/AspServicePort;->proto:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionOpenedState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;
    invoke-static {v3}, Lcom/lge/wfds/SessionController;->access$7(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSessionList;

    move-result-object v3

    iget-object v4, v1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v5, v1, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/lge/wfds/session/AspSessionList;->addSessionPort(Ljava/lang/String;Ljava/lang/Integer;Lcom/lge/wfds/session/AspServicePort;)Z

    .line 858
    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionOpenedState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mPortIsolation:Lcom/lge/wfds/session/PortIsolation;
    invoke-static {v3}, Lcom/lge/wfds/SessionController;->access$6(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/PortIsolation;

    move-result-object v3

    iget-object v4, v1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v5, v1, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/lge/wfds/session/PortIsolation;->addPort(Ljava/lang/String;Ljava/lang/Integer;Lcom/lge/wfds/session/AspServicePort;)Z

    .line 860
    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionOpenedState;->this$0:Lcom/lge/wfds/SessionController;

    const/4 v4, 0x4

    # invokes: Lcom/lge/wfds/SessionController;->startAspSessionRequest(ILcom/lge/wfds/session/AspSession;)Z
    invoke-static {v3, v4, v1}, Lcom/lge/wfds/SessionController;->access$20(Lcom/lge/wfds/SessionController;ILcom/lge/wfds/session/AspSession;)Z

    move-result v3

    if-eqz v3, :cond_10a

    .line 861
    invoke-direct {p0, v1, v2}, Lcom/lge/wfds/SessionController$SessionOpenedState;->sendPortStatus(Lcom/lge/wfds/session/AspSession;I)V

    .line 864
    :cond_10a
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpenedState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v2, p1, v7}, Lcom/lge/wfds/SessionController;->access$1(Lcom/lge/wfds/SessionController;Landroid/os/Message;I)V

    goto/16 :goto_72

    .line 866
    .end local v0    # "servicePort":Lcom/lge/wfds/session/AspServicePort;
    :cond_111
    const-string v2, "WfdsSession:Controller"

    const-string v3, "BOUNT_PORT fail : ports is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpenedState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v2, p1, v8}, Lcom/lge/wfds/SessionController;->access$1(Lcom/lge/wfds/SessionController;Landroid/os/Message;I)V

    goto/16 :goto_72

    .line 870
    :cond_11f
    const-string v2, "WfdsSession:Controller"

    const-string v3, "BOUNT_PORT fail : AspSession is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpenedState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v2, p1, v8}, Lcom/lge/wfds/SessionController;->access$1(Lcom/lge/wfds/SessionController;Landroid/os/Message;I)V

    goto/16 :goto_72

    .line 877
    :sswitch_12d
    const-string v3, "WfdsSession:Controller"

    const-string v4, "RELEASE_PORT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-class v4, Lcom/lge/wfds/session/AspSession;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 879
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1    # "session":Lcom/lge/wfds/session/AspSession;
    check-cast v1, Lcom/lge/wfds/session/AspSession;

    .line 881
    .restart local v1    # "session":Lcom/lge/wfds/session/AspSession;
    if-eqz v1, :cond_72

    .line 882
    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionOpenedState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;
    invoke-static {v3}, Lcom/lge/wfds/SessionController;->access$7(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSessionList;

    move-result-object v3

    iget-object v4, v1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v5, v1, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/lge/wfds/session/AspSessionList;->getSession(Ljava/lang/String;Ljava/lang/Integer;)Lcom/lge/wfds/session/AspSession;

    move-result-object v3

    if-eqz v3, :cond_72

    .line 883
    iget-object v3, v1, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    if-eqz v3, :cond_72

    .line 885
    iget-object v3, v1, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/session/AspServicePort;

    .line 886
    .restart local v0    # "servicePort":Lcom/lge/wfds/session/AspServicePort;
    const-string v2, "WfdsSession:Controller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RELEASE_PORT [Port:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/lge/wfds/session/AspServicePort;->port:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", proto:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/lge/wfds/session/AspServicePort;->proto:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpenedState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mPortIsolation:Lcom/lge/wfds/session/PortIsolation;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$6(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/PortIsolation;

    move-result-object v2

    iget-object v3, v1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v4, v1, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/lge/wfds/session/PortIsolation;->removePort(Ljava/lang/String;Ljava/lang/Integer;Lcom/lge/wfds/session/AspServicePort;)V

    .line 892
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpenedState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v2, p1, v7}, Lcom/lge/wfds/SessionController;->access$1(Lcom/lge/wfds/SessionController;Landroid/os/Message;I)V

    goto/16 :goto_72

    .line 899
    .end local v0    # "servicePort":Lcom/lge/wfds/session/AspServicePort;
    :sswitch_1ad
    const-string v3, "WfdsSession:Controller"

    const-string v4, "REMOVE_SESSION_RECEIVED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-class v4, Lcom/lge/wfds/session/AspSession;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 901
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1    # "session":Lcom/lge/wfds/session/AspSession;
    check-cast v1, Lcom/lge/wfds/session/AspSession;

    .line 904
    .restart local v1    # "session":Lcom/lge/wfds/session/AspSession;
    if-eqz v1, :cond_72

    .line 905
    const-string v3, "WfdsSession:Controller"

    iget-object v4, p0, Lcom/lge/wfds/SessionController$SessionOpenedState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->sessionToString(Lcom/lge/wfds/session/AspSession;)Ljava/lang/String;
    invoke-static {v4, v1}, Lcom/lge/wfds/SessionController;->access$27(Lcom/lge/wfds/SessionController;Lcom/lge/wfds/session/AspSession;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionOpenedState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v4, v1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v5, v1, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    # invokes: Lcom/lge/wfds/SessionController;->removePortIsolation(Ljava/lang/String;Ljava/lang/Integer;)V
    invoke-static {v3, v4, v5}, Lcom/lge/wfds/SessionController;->access$21(Lcom/lge/wfds/SessionController;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 910
    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionOpenedState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;
    invoke-static {v3}, Lcom/lge/wfds/SessionController;->access$7(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSessionList;

    move-result-object v3

    iget-object v4, v1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v5, v1, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/lge/wfds/session/AspSessionList;->setSessionState(Ljava/lang/String;II)V

    .line 912
    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionOpenedState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->sendSessionStatus(Lcom/lge/wfds/session/AspSession;II)V
    invoke-static {v3, v1, v6, v2}, Lcom/lge/wfds/SessionController;->access$22(Lcom/lge/wfds/SessionController;Lcom/lge/wfds/session/AspSession;II)V

    .line 916
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpenedState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->printSessionListInfo()V
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$8(Lcom/lge/wfds/SessionController;)V

    .line 918
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpenedState;->this$0:Lcom/lge/wfds/SessionController;

    invoke-virtual {v2}, Lcom/lge/wfds/SessionController;->hasOpenedSession()Z

    move-result v2

    if-nez v2, :cond_72

    .line 919
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpenedState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionOpenedState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionReadyState:Lcom/lge/wfds/SessionController$SessionReadyState;
    invoke-static {v3}, Lcom/lge/wfds/SessionController;->access$23(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/SessionController$SessionReadyState;

    move-result-object v3

    # invokes: Lcom/lge/wfds/SessionController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/lge/wfds/SessionController;->access$12(Lcom/lge/wfds/SessionController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_72

    .line 925
    :sswitch_211
    const-string v2, "WfdsSession:Controller"

    const-string v3, "ALLOWED_PORT_RECEIVED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-class v3, Lcom/lge/wfds/session/AspSession;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 927
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1    # "session":Lcom/lge/wfds/session/AspSession;
    check-cast v1, Lcom/lge/wfds/session/AspSession;

    .line 929
    .restart local v1    # "session":Lcom/lge/wfds/session/AspSession;
    if-eqz v1, :cond_72

    .line 930
    const-string v2, "WfdsSession:Controller"

    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionOpenedState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->sessionToString(Lcom/lge/wfds/session/AspSession;)Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/lge/wfds/SessionController;->access$27(Lcom/lge/wfds/SessionController;Lcom/lge/wfds/session/AspSession;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    invoke-direct {p0, v1, v6}, Lcom/lge/wfds/SessionController$SessionOpenedState;->sendPortStatus(Lcom/lge/wfds/session/AspSession;I)V

    goto/16 :goto_72

    .line 820
    nop

    :sswitch_data_242
    .sparse-switch
        0x900007 -> :sswitch_10
        0x900008 -> :sswitch_74
        0x900009 -> :sswitch_12d
        0x901060 -> :sswitch_1ad
        0x901061 -> :sswitch_211
    .end sparse-switch
.end method
