.class Lcom/lge/wfds/session/UdpDataManager$1;
.super Ljava/lang/Object;
.source "UdpDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/wfds/session/UdpDataManager;-><init>(Lcom/android/internal/util/StateMachine;Lcom/lge/wfds/session/AspSessionList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wfds/session/UdpDataManager;


# direct methods
.method constructor <init>(Lcom/lge/wfds/session/UdpDataManager;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/wfds/session/UdpDataManager$1;->this$0:Lcom/lge/wfds/session/UdpDataManager;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 44
    # getter for: Lcom/lge/wfds/session/UdpDataManager;->mRequestTimes:I
    invoke-static {}, Lcom/lge/wfds/session/UdpDataManager;->access$0()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Lcom/lge/wfds/session/UdpDataManager;->access$1(I)V

    const/16 v1, 0xa

    if-le v0, v1, :cond_4a

    .line 45
    const-string v0, "WfdsSession:Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Request to send for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/wfds/session/UdpDataManager$1;->this$0:Lcom/lge/wfds/session/UdpDataManager;

    # getter for: Lcom/lge/wfds/session/UdpDataManager;->mReqType:I
    invoke-static {v2}, Lcom/lge/wfds/session/UdpDataManager;->access$2(Lcom/lge/wfds/session/UdpDataManager;)I

    move-result v2

    invoke-static {v2}, Lcom/lge/wfds/session/AspSessionProtoOpcode;->getReqTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 46
    const-string v2, " is over "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/lge/wfds/session/UdpDataManager;->mRequestTimes:I
    invoke-static {}, Lcom/lge/wfds/session/UdpDataManager;->access$0()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lge/wfds/session/UdpDataManager;->access$1(I)V

    .line 48
    iget-object v0, p0, Lcom/lge/wfds/session/UdpDataManager$1;->this$0:Lcom/lge/wfds/session/UdpDataManager;

    # getter for: Lcom/lge/wfds/session/UdpDataManager;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Lcom/lge/wfds/session/UdpDataManager;->access$3(Lcom/lge/wfds/session/UdpDataManager;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    const v1, 0x90105b

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 55
    :cond_49
    :goto_49
    return-void

    .line 51
    :cond_4a
    iget-object v0, p0, Lcom/lge/wfds/session/UdpDataManager$1;->this$0:Lcom/lge/wfds/session/UdpDataManager;

    # getter for: Lcom/lge/wfds/session/UdpDataManager;->mReqType:I
    invoke-static {v0}, Lcom/lge/wfds/session/UdpDataManager;->access$2(Lcom/lge/wfds/session/UdpDataManager;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_49

    .line 52
    iget-object v0, p0, Lcom/lge/wfds/session/UdpDataManager$1;->this$0:Lcom/lge/wfds/session/UdpDataManager;

    # getter for: Lcom/lge/wfds/session/UdpDataManager;->mSender:Lcom/lge/wfds/session/UdpDataSender;
    invoke-static {v0}, Lcom/lge/wfds/session/UdpDataManager;->access$4(Lcom/lge/wfds/session/UdpDataManager;)Lcom/lge/wfds/session/UdpDataSender;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/wfds/session/UdpDataManager$1;->this$0:Lcom/lge/wfds/session/UdpDataManager;

    # getter for: Lcom/lge/wfds/session/UdpDataManager;->mReqType:I
    invoke-static {v1}, Lcom/lge/wfds/session/UdpDataManager;->access$2(Lcom/lge/wfds/session/UdpDataManager;)I

    move-result v1

    iget-object v2, p0, Lcom/lge/wfds/session/UdpDataManager$1;->this$0:Lcom/lge/wfds/session/UdpDataManager;

    # getter for: Lcom/lge/wfds/session/UdpDataManager;->mSeq:I
    invoke-static {v2}, Lcom/lge/wfds/session/UdpDataManager;->access$5(Lcom/lge/wfds/session/UdpDataManager;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/wfds/session/UdpDataManager$1;->this$0:Lcom/lge/wfds/session/UdpDataManager;

    # getter for: Lcom/lge/wfds/session/UdpDataManager;->mSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v3}, Lcom/lge/wfds/session/UdpDataManager;->access$6(Lcom/lge/wfds/session/UdpDataManager;)Lcom/lge/wfds/session/AspSession;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/wfds/session/UdpDataManager$1;->this$0:Lcom/lge/wfds/session/UdpDataManager;

    # getter for: Lcom/lge/wfds/session/UdpDataManager;->mSessionList:Lcom/lge/wfds/session/AspSessionList;
    invoke-static {v4}, Lcom/lge/wfds/session/UdpDataManager;->access$7(Lcom/lge/wfds/session/UdpDataManager;)Lcom/lge/wfds/session/AspSessionList;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/wfds/session/UdpDataManager$1;->this$0:Lcom/lge/wfds/session/UdpDataManager;

    # getter for: Lcom/lge/wfds/session/UdpDataManager;->mSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v5}, Lcom/lge/wfds/session/UdpDataManager;->access$6(Lcom/lge/wfds/session/UdpDataManager;)Lcom/lge/wfds/session/AspSession;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/wfds/session/AspSessionList;->getSessionIpAddress(Lcom/lge/wfds/session/AspSession;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lge/wfds/session/UdpDataSender;->sendRequest(IILcom/lge/wfds/session/AspSession;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/lge/wfds/session/UdpDataManager$1;->this$0:Lcom/lge/wfds/session/UdpDataManager;

    # getter for: Lcom/lge/wfds/session/UdpDataManager;->mRequestThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lge/wfds/session/UdpDataManager;->access$8(Lcom/lge/wfds/session/UdpDataManager;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x320

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_49
.end method
