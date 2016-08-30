.class public Lcom/lge/wfds/session/UdpDataManager;
.super Ljava/lang/Object;
.source "UdpDataManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WfdsSession:Manager"

.field private static final UDP_REQUEST_RETRY_INTERVAL:I = 0x320

.field private static final UDP_REQUEST_RETRY_MAX:I = 0xa

.field private static mRequestTimes:I


# instance fields
.field private mReceiver:Lcom/lge/wfds/session/UdpDataReceiver;

.field private mReceiverThread:Ljava/lang/Thread;

.field private mReqType:I

.field private mRequestThreadHandler:Landroid/os/Handler;

.field private mRequestTread:Ljava/lang/Runnable;

.field private mSender:Lcom/lge/wfds/session/UdpDataSender;

.field private mSeq:I

.field private mSession:Lcom/lge/wfds/session/AspSession;

.field private mSessionList:Lcom/lge/wfds/session/AspSessionList;

.field private mSessionProtoOpcode:Lcom/lge/wfds/session/AspSessionProtoOpcode;

.field private mWfdsStateMachine:Lcom/android/internal/util/StateMachine;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput v0, Lcom/lge/wfds/session/UdpDataManager;->mRequestTimes:I

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/util/StateMachine;Lcom/lge/wfds/session/AspSessionList;)V
    .registers 5
    .param p1, "sm"    # Lcom/android/internal/util/StateMachine;
    .param p2, "sesseionList"    # Lcom/lge/wfds/session/AspSessionList;

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v1, p0, Lcom/lge/wfds/session/UdpDataManager;->mSessionList:Lcom/lge/wfds/session/AspSessionList;

    .line 18
    iput-object v1, p0, Lcom/lge/wfds/session/UdpDataManager;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    .line 19
    iput-object v1, p0, Lcom/lge/wfds/session/UdpDataManager;->mSender:Lcom/lge/wfds/session/UdpDataSender;

    .line 20
    iput-object v1, p0, Lcom/lge/wfds/session/UdpDataManager;->mReceiver:Lcom/lge/wfds/session/UdpDataReceiver;

    .line 21
    iput-object v1, p0, Lcom/lge/wfds/session/UdpDataManager;->mReceiverThread:Ljava/lang/Thread;

    .line 22
    iput-object v1, p0, Lcom/lge/wfds/session/UdpDataManager;->mSessionProtoOpcode:Lcom/lge/wfds/session/AspSessionProtoOpcode;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/wfds/session/UdpDataManager;->mSeq:I

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/wfds/session/UdpDataManager;->mReqType:I

    .line 28
    iput-object v1, p0, Lcom/lge/wfds/session/UdpDataManager;->mSession:Lcom/lge/wfds/session/AspSession;

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/wfds/session/UdpDataManager;->mRequestThreadHandler:Landroid/os/Handler;

    .line 31
    iput-object v1, p0, Lcom/lge/wfds/session/UdpDataManager;->mRequestTread:Ljava/lang/Runnable;

    .line 37
    iput-object p1, p0, Lcom/lge/wfds/session/UdpDataManager;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    .line 38
    iput-object p2, p0, Lcom/lge/wfds/session/UdpDataManager;->mSessionList:Lcom/lge/wfds/session/AspSessionList;

    .line 40
    new-instance v0, Lcom/lge/wfds/session/AspSessionProtoOpcode;

    invoke-direct {v0}, Lcom/lge/wfds/session/AspSessionProtoOpcode;-><init>()V

    iput-object v0, p0, Lcom/lge/wfds/session/UdpDataManager;->mSessionProtoOpcode:Lcom/lge/wfds/session/AspSessionProtoOpcode;

    .line 42
    new-instance v0, Lcom/lge/wfds/session/UdpDataManager$1;

    invoke-direct {v0, p0}, Lcom/lge/wfds/session/UdpDataManager$1;-><init>(Lcom/lge/wfds/session/UdpDataManager;)V

    iput-object v0, p0, Lcom/lge/wfds/session/UdpDataManager;->mRequestTread:Ljava/lang/Runnable;

    .line 57
    return-void
.end method

.method static synthetic access$0()I
    .registers 1

    .prologue
    .line 30
    sget v0, Lcom/lge/wfds/session/UdpDataManager;->mRequestTimes:I

    return v0
.end method

.method static synthetic access$1(I)V
    .registers 1

    .prologue
    .line 30
    sput p0, Lcom/lge/wfds/session/UdpDataManager;->mRequestTimes:I

    return-void
.end method

.method static synthetic access$2(Lcom/lge/wfds/session/UdpDataManager;)I
    .registers 2

    .prologue
    .line 27
    iget v0, p0, Lcom/lge/wfds/session/UdpDataManager;->mReqType:I

    return v0
.end method

.method static synthetic access$3(Lcom/lge/wfds/session/UdpDataManager;)Lcom/android/internal/util/StateMachine;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lge/wfds/session/UdpDataManager;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lge/wfds/session/UdpDataManager;)Lcom/lge/wfds/session/UdpDataSender;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lge/wfds/session/UdpDataManager;->mSender:Lcom/lge/wfds/session/UdpDataSender;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lge/wfds/session/UdpDataManager;)I
    .registers 2

    .prologue
    .line 26
    iget v0, p0, Lcom/lge/wfds/session/UdpDataManager;->mSeq:I

    return v0
.end method

.method static synthetic access$6(Lcom/lge/wfds/session/UdpDataManager;)Lcom/lge/wfds/session/AspSession;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lge/wfds/session/UdpDataManager;->mSession:Lcom/lge/wfds/session/AspSession;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lge/wfds/session/UdpDataManager;)Lcom/lge/wfds/session/AspSessionList;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lge/wfds/session/UdpDataManager;->mSessionList:Lcom/lge/wfds/session/AspSessionList;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lge/wfds/session/UdpDataManager;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/wfds/session/UdpDataManager;->mRequestThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private resetReqType()V
    .registers 2

    .prologue
    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/wfds/session/UdpDataManager;->mSeq:I

    .line 146
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/wfds/session/UdpDataManager;->mReqType:I

    .line 147
    return-void
.end method

.method private setAspSession(Lcom/lge/wfds/session/AspSession;)V
    .registers 3
    .param p1, "session"    # Lcom/lge/wfds/session/AspSession;

    .prologue
    .line 156
    if-nez p1, :cond_6

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/wfds/session/UdpDataManager;->mSession:Lcom/lge/wfds/session/AspSession;

    .line 164
    :goto_5
    return-void

    .line 160
    :cond_6
    iget-object v0, p0, Lcom/lge/wfds/session/UdpDataManager;->mSession:Lcom/lge/wfds/session/AspSession;

    if-nez v0, :cond_11

    .line 161
    new-instance v0, Lcom/lge/wfds/session/AspSession;

    invoke-direct {v0}, Lcom/lge/wfds/session/AspSession;-><init>()V

    iput-object v0, p0, Lcom/lge/wfds/session/UdpDataManager;->mSession:Lcom/lge/wfds/session/AspSession;

    .line 163
    :cond_11
    iget-object v0, p0, Lcom/lge/wfds/session/UdpDataManager;->mSession:Lcom/lge/wfds/session/AspSession;

    invoke-virtual {v0, p1}, Lcom/lge/wfds/session/AspSession;->set(Lcom/lge/wfds/session/AspSession;)V

    goto :goto_5
.end method

.method private setReqType(I)V
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 150
    iget v0, p0, Lcom/lge/wfds/session/UdpDataManager;->mSeq:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lge/wfds/session/UdpDataManager;->mSeq:I

    .line 151
    iput p1, p0, Lcom/lge/wfds/session/UdpDataManager;->mReqType:I

    .line 152
    iget-object v0, p0, Lcom/lge/wfds/session/UdpDataManager;->mSessionProtoOpcode:Lcom/lge/wfds/session/AspSessionProtoOpcode;

    iget v1, p0, Lcom/lge/wfds/session/UdpDataManager;->mSeq:I

    invoke-virtual {v0, v1, p1}, Lcom/lge/wfds/session/AspSessionProtoOpcode;->setRequestedType(II)V

    .line 153
    return-void
.end method


# virtual methods
.method public initUdpDataSender(Ljava/lang/String;)V
    .registers 3
    .param p1, "ip_address"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lge/wfds/session/UdpDataManager;->mSender:Lcom/lge/wfds/session/UdpDataSender;

    if-nez v0, :cond_b

    .line 89
    new-instance v0, Lcom/lge/wfds/session/UdpDataSender;

    invoke-direct {v0}, Lcom/lge/wfds/session/UdpDataSender;-><init>()V

    iput-object v0, p0, Lcom/lge/wfds/session/UdpDataManager;->mSender:Lcom/lge/wfds/session/UdpDataSender;

    .line 91
    :cond_b
    iget-object v0, p0, Lcom/lge/wfds/session/UdpDataManager;->mSender:Lcom/lge/wfds/session/UdpDataSender;

    invoke-virtual {v0, p1}, Lcom/lge/wfds/session/UdpDataSender;->setTargetIpAddress(Ljava/lang/String;)V

    .line 92
    const/4 v0, 0x0

    sput v0, Lcom/lge/wfds/session/UdpDataManager;->mRequestTimes:I

    .line 93
    invoke-direct {p0}, Lcom/lge/wfds/session/UdpDataManager;->resetReqType()V

    .line 94
    return-void
.end method

.method public startReceiver()V
    .registers 5

    .prologue
    .line 60
    const-string v0, "WfdsSession:Manager"

    const-string v1, "Create CoordinationProtocol Packet Receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/lge/wfds/session/UdpDataManager;->mReceiver:Lcom/lge/wfds/session/UdpDataReceiver;

    if-nez v0, :cond_18

    .line 62
    new-instance v0, Lcom/lge/wfds/session/UdpDataReceiver;

    iget-object v1, p0, Lcom/lge/wfds/session/UdpDataManager;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v2, p0, Lcom/lge/wfds/session/UdpDataManager;->mSessionList:Lcom/lge/wfds/session/AspSessionList;

    iget-object v3, p0, Lcom/lge/wfds/session/UdpDataManager;->mSessionProtoOpcode:Lcom/lge/wfds/session/AspSessionProtoOpcode;

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/wfds/session/UdpDataReceiver;-><init>(Lcom/android/internal/util/StateMachine;Lcom/lge/wfds/session/AspSessionList;Lcom/lge/wfds/session/AspSessionProtoOpcode;)V

    iput-object v0, p0, Lcom/lge/wfds/session/UdpDataManager;->mReceiver:Lcom/lge/wfds/session/UdpDataReceiver;

    .line 65
    :cond_18
    iget-object v0, p0, Lcom/lge/wfds/session/UdpDataManager;->mReceiverThread:Ljava/lang/Thread;

    if-nez v0, :cond_33

    .line 66
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/lge/wfds/session/UdpDataManager;->mReceiver:Lcom/lge/wfds/session/UdpDataReceiver;

    const-string v2, "WfdsUdpPacketReceiverThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/wfds/session/UdpDataManager;->mReceiverThread:Ljava/lang/Thread;

    .line 67
    iget-object v0, p0, Lcom/lge/wfds/session/UdpDataManager;->mReceiverThread:Ljava/lang/Thread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 68
    iget-object v0, p0, Lcom/lge/wfds/session/UdpDataManager;->mReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 70
    :cond_33
    return-void
.end method

.method public declared-synchronized startRequest(ILcom/lge/wfds/session/AspSession;)Z
    .registers 7
    .param p1, "req_type"    # I
    .param p2, "session"    # Lcom/lge/wfds/session/AspSession;

    .prologue
    const/4 v1, 0x0

    .line 97
    monitor-enter p0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_7

    .line 98
    if-nez p2, :cond_9

    .line 124
    :cond_7
    :goto_7
    monitor-exit p0

    return v1

    .line 102
    :cond_9
    :try_start_9
    sget v1, Lcom/lge/wfds/session/UdpDataManager;->mRequestTimes:I

    if-eqz v1, :cond_14

    .line 103
    iget-object v1, p0, Lcom/lge/wfds/session/UdpDataManager;->mSessionProtoOpcode:Lcom/lge/wfds/session/AspSessionProtoOpcode;

    invoke-virtual {v1, p1, p2}, Lcom/lge/wfds/session/AspSessionProtoOpcode;->putPendedSendRequest(ILcom/lge/wfds/session/AspSession;)V

    .line 124
    :goto_12
    const/4 v1, 0x1

    goto :goto_7

    .line 105
    :cond_14
    sget v1, Lcom/lge/wfds/session/UdpDataManager;->mRequestTimes:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/lge/wfds/session/UdpDataManager;->mRequestTimes:I

    .line 106
    invoke-direct {p0, p1}, Lcom/lge/wfds/session/UdpDataManager;->setReqType(I)V

    .line 107
    invoke-direct {p0, p2}, Lcom/lge/wfds/session/UdpDataManager;->setAspSession(Lcom/lge/wfds/session/AspSession;)V

    .line 109
    const-string v1, "WfdsSession:Manager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startRequest : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/lge/wfds/session/AspSessionProtoOpcode;->getReqTypeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/wfds/session/UdpDataManager;->mSeq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 110
    const-string v3, ", To:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wfds/session/UdpDataManager;->mSessionList:Lcom/lge/wfds/session/AspSessionList;

    invoke-virtual {v3, p2}, Lcom/lge/wfds/session/AspSessionList;->getSessionIpAddress(Lcom/lge/wfds/session/AspSession;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v1, 0x4

    if-ne p1, v1, :cond_94

    iget-object v1, p2, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    if-eqz v1, :cond_94

    .line 113
    iget-object v1, p2, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a0

    .line 114
    iget-object v1, p2, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/session/AspServicePort;

    .line 115
    .local v0, "port_":Lcom/lge/wfds/session/AspServicePort;
    const-string v1, "WfdsSession:Manager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ALLOWED_PORT [Port:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/lge/wfds/session/AspServicePort;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", proto:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/lge/wfds/session/AspServicePort;->proto:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .end local v0    # "port_":Lcom/lge/wfds/session/AspServicePort;
    :cond_94
    :goto_94
    iget-object v1, p0, Lcom/lge/wfds/session/UdpDataManager;->mRequestThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lge/wfds/session/UdpDataManager;->mRequestTread:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_9b
    .catchall {:try_start_9 .. :try_end_9b} :catchall_9d

    goto/16 :goto_12

    .line 97
    :catchall_9d
    move-exception v1

    monitor-exit p0

    throw v1

    .line 117
    :cond_a0
    :try_start_a0
    const-string v1, "WfdsSession:Manager"

    const-string v2, "ALLOWED_PORT : ports.size() is 0 !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catchall {:try_start_a0 .. :try_end_a7} :catchall_9d

    goto :goto_94
.end method

.method public stopReceiver()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 73
    const-string v0, "WfdsSession:Manager"

    const-string v1, "Stop Receiver Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/lge/wfds/session/UdpDataManager;->mReceiver:Lcom/lge/wfds/session/UdpDataReceiver;

    if-eqz v0, :cond_15

    .line 76
    iget-object v0, p0, Lcom/lge/wfds/session/UdpDataManager;->mReceiver:Lcom/lge/wfds/session/UdpDataReceiver;

    invoke-virtual {v0}, Lcom/lge/wfds/session/UdpDataReceiver;->stopReceiver()V

    .line 77
    iput-object v2, p0, Lcom/lge/wfds/session/UdpDataManager;->mReceiver:Lcom/lge/wfds/session/UdpDataReceiver;

    .line 78
    iput-object v2, p0, Lcom/lge/wfds/session/UdpDataManager;->mReceiverThread:Ljava/lang/Thread;

    .line 81
    :cond_15
    const-string v0, "WfdsSession:Manager"

    const-string v1, "remove mRequestTread from Handler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/lge/wfds/session/UdpDataManager;->mSessionProtoOpcode:Lcom/lge/wfds/session/AspSessionProtoOpcode;

    invoke-virtual {v0}, Lcom/lge/wfds/session/AspSessionProtoOpcode;->removeAllPendedSendReqSession()V

    .line 83
    invoke-virtual {p0}, Lcom/lge/wfds/session/UdpDataManager;->stopRequest()V

    .line 84
    invoke-direct {p0}, Lcom/lge/wfds/session/UdpDataManager;->resetReqType()V

    .line 85
    return-void
.end method

.method public declared-synchronized stopRequest()V
    .registers 3

    .prologue
    .line 128
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/lge/wfds/session/UdpDataManager;->mRequestThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_c

    .line 129
    iget-object v0, p0, Lcom/lge/wfds/session/UdpDataManager;->mRequestThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/wfds/session/UdpDataManager;->mRequestTread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 132
    :cond_c
    iget-object v0, p0, Lcom/lge/wfds/session/UdpDataManager;->mSessionProtoOpcode:Lcom/lge/wfds/session/AspSessionProtoOpcode;

    invoke-virtual {v0}, Lcom/lge/wfds/session/AspSessionProtoOpcode;->hasPendedSendRequest()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 133
    const-string v0, "WfdsSession:Manager"

    const-string v1, "There is a PendedSendRequest...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v0, 0x0

    sput v0, Lcom/lge/wfds/session/UdpDataManager;->mRequestTimes:I

    .line 135
    iget-object v0, p0, Lcom/lge/wfds/session/UdpDataManager;->mSessionProtoOpcode:Lcom/lge/wfds/session/AspSessionProtoOpcode;

    invoke-virtual {v0}, Lcom/lge/wfds/session/AspSessionProtoOpcode;->getPendedSendReqType()I

    move-result v0

    .line 136
    iget-object v1, p0, Lcom/lge/wfds/session/UdpDataManager;->mSessionProtoOpcode:Lcom/lge/wfds/session/AspSessionProtoOpcode;

    invoke-virtual {v1}, Lcom/lge/wfds/session/AspSessionProtoOpcode;->getPendedSendReqSession()Lcom/lge/wfds/session/AspSession;

    move-result-object v1

    .line 135
    invoke-virtual {p0, v0, v1}, Lcom/lge/wfds/session/UdpDataManager;->startRequest(ILcom/lge/wfds/session/AspSession;)Z

    move-result v0

    .line 136
    if-eqz v0, :cond_35

    .line 137
    iget-object v0, p0, Lcom/lge/wfds/session/UdpDataManager;->mSessionProtoOpcode:Lcom/lge/wfds/session/AspSessionProtoOpcode;

    invoke-virtual {v0}, Lcom/lge/wfds/session/AspSessionProtoOpcode;->removePendedSendReqSession()V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_3b

    .line 142
    :cond_35
    :goto_35
    monitor-exit p0

    return-void

    .line 140
    :cond_37
    const/4 v0, 0x0

    :try_start_38
    sput v0, Lcom/lge/wfds/session/UdpDataManager;->mRequestTimes:I
    :try_end_3a
    .catchall {:try_start_38 .. :try_end_3a} :catchall_3b

    goto :goto_35

    .line 128
    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
