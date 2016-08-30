.class public Lcom/lge/wfds/WfdsEvent;
.super Ljava/lang/Object;
.source "WfdsEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wfds/WfdsEvent$RegisteredListener;,
        Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WfdsEvent"

.field private static mEventListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/lge/wfds/IWfdsEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mRegisteredListenerList:Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 19
    sput-object v0, Lcom/lge/wfds/WfdsEvent;->mEventListeners:Landroid/os/RemoteCallbackList;

    .line 20
    sput-object v0, Lcom/lge/wfds/WfdsEvent;->mRegisteredListenerList:Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-direct {p0}, Lcom/lge/wfds/WfdsEvent;->checkAndCreateRemoteCbList()V

    .line 27
    return-void
.end method

.method static synthetic access$0()Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/lge/wfds/WfdsEvent;->mRegisteredListenerList:Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;

    return-object v0
.end method

.method private checkAndCreateRemoteCbList()V
    .registers 3

    .prologue
    .line 244
    sget-object v0, Lcom/lge/wfds/WfdsEvent;->mRegisteredListenerList:Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;

    if-nez v0, :cond_b

    .line 245
    new-instance v0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;

    invoke-direct {v0, p0}, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;-><init>(Lcom/lge/wfds/WfdsEvent;)V

    sput-object v0, Lcom/lge/wfds/WfdsEvent;->mRegisteredListenerList:Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;

    .line 247
    :cond_b
    sget-object v0, Lcom/lge/wfds/WfdsEvent;->mEventListeners:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_1d

    .line 248
    const-string v0, "WfdsEvent"

    const-string v1, "Create the Event Listener callback list"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v0, Lcom/lge/wfds/WfdsEvent$1;

    invoke-direct {v0, p0}, Lcom/lge/wfds/WfdsEvent$1;-><init>(Lcom/lge/wfds/WfdsEvent;)V

    sput-object v0, Lcom/lge/wfds/WfdsEvent;->mEventListeners:Landroid/os/RemoteCallbackList;

    .line 257
    :cond_1d
    return-void
.end method


# virtual methods
.method public deinitEventListener(I)V
    .registers 5
    .param p1, "id"    # I

    .prologue
    .line 56
    sget-object v1, Lcom/lge/wfds/WfdsEvent;->mRegisteredListenerList:Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;

    invoke-virtual {v1, p1}, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->containsId(I)Lcom/lge/wfds/IWfdsEventListener;

    move-result-object v0

    .line 57
    .local v0, "listener":Lcom/lge/wfds/IWfdsEventListener;
    if-eqz v0, :cond_16

    .line 58
    sget-object v2, Lcom/lge/wfds/WfdsEvent;->mEventListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v2

    .line 59
    :try_start_b
    sget-object v1, Lcom/lge/wfds/WfdsEvent;->mEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 60
    sget-object v1, Lcom/lge/wfds/WfdsEvent;->mRegisteredListenerList:Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;

    invoke-virtual {v1, p1}, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->remove(I)V

    .line 58
    monitor-exit v2

    .line 63
    :cond_16
    return-void

    .line 58
    :catchall_17
    move-exception v1

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_17

    throw v1
.end method

.method public initEventListener(Lcom/lge/wfds/IWfdsEventListener;)I
    .registers 7
    .param p1, "listener"    # Lcom/lge/wfds/IWfdsEventListener;

    .prologue
    .line 30
    const/4 v0, -0x1

    .line 32
    .local v0, "eventListenerId":I
    if-eqz p1, :cond_63

    .line 33
    sget-object v1, Lcom/lge/wfds/WfdsEvent;->mRegisteredListenerList:Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;

    invoke-virtual {v1, p1}, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->containsListener(Lcom/lge/wfds/IWfdsEventListener;)I

    move-result v0

    .line 34
    const/4 v1, -0x1

    if-eq v0, v1, :cond_21

    .line 35
    const-string v1, "WfdsEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Event Listener is already registered.. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :goto_20
    return v0

    .line 37
    :cond_21
    sget-object v1, Lcom/lge/wfds/WfdsEvent;->mRegisteredListenerList:Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;

    new-instance v2, Lcom/lge/wfds/WfdsEvent$RegisteredListener;

    invoke-direct {v2, p0, p1}, Lcom/lge/wfds/WfdsEvent$RegisteredListener;-><init>(Lcom/lge/wfds/WfdsEvent;Lcom/lge/wfds/IWfdsEventListener;)V

    invoke-virtual {v1, v2}, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->add(Lcom/lge/wfds/WfdsEvent$RegisteredListener;)I

    move-result v0

    .line 38
    sget-object v2, Lcom/lge/wfds/WfdsEvent;->mEventListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v2

    .line 39
    :try_start_2f
    sget-object v1, Lcom/lge/wfds/WfdsEvent;->mEventListeners:Landroid/os/RemoteCallbackList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, p1, v3}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 40
    const-string v1, "WfdsEvent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Event Listener is registered.. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :goto_50
    monitor-exit v2

    goto :goto_20

    :catchall_52
    move-exception v1

    monitor-exit v2
    :try_end_54
    .catchall {:try_start_2f .. :try_end_54} :catchall_52

    throw v1

    .line 42
    :cond_55
    :try_start_55
    const-string v1, "WfdsEvent"

    const-string v3, "initEventListener register is failed"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    sget-object v1, Lcom/lge/wfds/WfdsEvent;->mRegisteredListenerList:Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;

    invoke-virtual {v1, v0}, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->remove(I)V
    :try_end_61
    .catchall {:try_start_55 .. :try_end_61} :catchall_52

    .line 44
    const/4 v0, -0x1

    goto :goto_50

    .line 49
    :cond_63
    const-string v1, "WfdsEvent"

    const-string v2, "initEventListener listener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method public notifyAdvertiseStatusToService(III)V
    .registers 11
    .param p1, "adv_id"    # I
    .param p2, "status"    # I
    .param p3, "reason"    # I

    .prologue
    .line 181
    const-string v3, "WfdsEvent"

    const-string v4, "notifyAdvertiseStatusToService: "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v3, "WfdsEvent"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    adv_id : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v3, "WfdsEvent"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    status : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v3, "WfdsEvent"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    reason : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    sget-object v4, Lcom/lge/wfds/WfdsEvent;->mEventListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 187
    :try_start_46
    sget-object v3, Lcom/lge/wfds/WfdsEvent;->mEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 188
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4d
    if-lt v2, v0, :cond_56

    .line 195
    sget-object v3, Lcom/lge/wfds/WfdsEvent;->mEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 186
    monitor-exit v4
    :try_end_55
    .catchall {:try_start_46 .. :try_end_55} :catchall_7a

    .line 197
    return-void

    .line 190
    :cond_56
    :try_start_56
    sget-object v3, Lcom/lge/wfds/WfdsEvent;->mEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/lge/wfds/IWfdsEventListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/lge/wfds/IWfdsEventListener;->wfdsAdvertiseStatus(III)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_61} :catch_64
    .catchall {:try_start_56 .. :try_end_61} :catchall_7a

    .line 188
    :goto_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 191
    :catch_64
    move-exception v1

    .line 192
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_65
    const-string v3, "WfdsEvent"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cannot send event "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 186
    .end local v0    # "N":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_7a
    move-exception v3

    monitor-exit v4
    :try_end_7c
    .catchall {:try_start_65 .. :try_end_7c} :catchall_7a

    throw v3
.end method

.method public notifyConnectSessionRequestToService(Lcom/lge/wfds/WfdsDevice;)V
    .registers 9
    .param p1, "dev"    # Lcom/lge/wfds/WfdsDevice;

    .prologue
    .line 87
    sget-object v4, Lcom/lge/wfds/WfdsEvent;->mEventListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 88
    :try_start_3
    sget-object v3, Lcom/lge/wfds/WfdsEvent;->mEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 89
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_a
    if-lt v2, v0, :cond_13

    .line 96
    sget-object v3, Lcom/lge/wfds/WfdsEvent;->mEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 87
    monitor-exit v4
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_37

    .line 98
    return-void

    .line 91
    :cond_13
    :try_start_13
    sget-object v3, Lcom/lge/wfds/WfdsEvent;->mEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/lge/wfds/IWfdsEventListener;

    invoke-interface {v3, p1}, Lcom/lge/wfds/IWfdsEventListener;->wfdsConnectSessionRequest(Lcom/lge/wfds/WfdsDevice;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1e} :catch_21
    .catchall {:try_start_13 .. :try_end_1e} :catchall_37

    .line 89
    :goto_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 92
    :catch_21
    move-exception v1

    .line 93
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_22
    const-string v3, "WfdsEvent"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cannot send event "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 87
    .end local v0    # "N":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "k":I
    :catchall_37
    move-exception v3

    monitor-exit v4
    :try_end_39
    .catchall {:try_start_22 .. :try_end_39} :catchall_37

    throw v3
.end method

.method public notifyConnectStatusToService(Ljava/lang/String;IILjava/lang/String;)V
    .registers 13
    .param p1, "sessionMac"    # Ljava/lang/String;
    .param p2, "sessionId"    # I
    .param p3, "status"    # I
    .param p4, "sessionInfoResp"    # Ljava/lang/String;

    .prologue
    .line 101
    const-string v4, "0x%08x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "sessionIdStr":Ljava/lang/String;
    const-string v4, "WfdsEvent"

    const-string v5, "notifyConnectStatusToService: "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string v4, "WfdsEvent"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "    session_mac : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string v4, "WfdsEvent"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "    session_id : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v4, "WfdsEvent"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "    status : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v4, "WfdsEvent"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "    session_info_resp : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    sget-object v5, Lcom/lge/wfds/WfdsEvent;->mEventListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v5

    .line 109
    :try_start_6a
    sget-object v4, Lcom/lge/wfds/WfdsEvent;->mEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 110
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_71
    if-lt v2, v0, :cond_7a

    .line 117
    sget-object v4, Lcom/lge/wfds/WfdsEvent;->mEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 108
    monitor-exit v5
    :try_end_79
    .catchall {:try_start_6a .. :try_end_79} :catchall_9e

    .line 119
    return-void

    .line 112
    :cond_7a
    :try_start_7a
    sget-object v4, Lcom/lge/wfds/WfdsEvent;->mEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/lge/wfds/IWfdsEventListener;

    invoke-interface {v4, p1, p2, p3, p4}, Lcom/lge/wfds/IWfdsEventListener;->wfdsConnectStatus(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_85} :catch_88
    .catchall {:try_start_7a .. :try_end_85} :catchall_9e

    .line 110
    :goto_85
    add-int/lit8 v2, v2, 0x1

    goto :goto_71

    .line 113
    :catch_88
    move-exception v1

    .line 114
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_89
    const-string v4, "WfdsEvent"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "cannot send event "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    .line 108
    .end local v0    # "N":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_9e
    move-exception v4

    monitor-exit v5
    :try_end_a0
    .catchall {:try_start_89 .. :try_end_a0} :catchall_9e

    throw v4
.end method

.method public notifyPortStatusToService(Ljava/lang/String;ILjava/lang/String;III)V
    .registers 19
    .param p1, "sessionMac"    # Ljava/lang/String;
    .param p2, "sessionId"    # I
    .param p3, "ip"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "proto"    # I
    .param p6, "status"    # I

    .prologue
    .line 141
    const-string v1, "WfdsEvent"

    const-string v2, "notifyPortStatusToService: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-string v1, "WfdsEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    session_mac : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v1, "WfdsEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    session_id : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string v1, "WfdsEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    ip : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v1, "WfdsEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    port : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v1, "WfdsEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    proto : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v1, "WfdsEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    status : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    sget-object v11, Lcom/lge/wfds/WfdsEvent;->mEventListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v11

    .line 150
    :try_start_88
    sget-object v1, Lcom/lge/wfds/WfdsEvent;->mEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v8

    .line 151
    .local v8, "N":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_8f
    if-lt v10, v8, :cond_98

    .line 158
    sget-object v1, Lcom/lge/wfds/WfdsEvent;->mEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 149
    monitor-exit v11
    :try_end_97
    .catchall {:try_start_88 .. :try_end_97} :catchall_c5

    .line 160
    return-void

    .line 153
    :cond_98
    :try_start_98
    sget-object v1, Lcom/lge/wfds/WfdsEvent;->mEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v10}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/lge/wfds/IWfdsEventListener;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/lge/wfds/IWfdsEventListener;->wfdsPortStatus(Ljava/lang/String;ILjava/lang/String;III)V
    :try_end_ac
    .catch Landroid/os/RemoteException; {:try_start_98 .. :try_end_ac} :catch_af
    .catchall {:try_start_98 .. :try_end_ac} :catchall_c5

    .line 151
    :goto_ac
    add-int/lit8 v10, v10, 0x1

    goto :goto_8f

    .line 154
    :catch_af
    move-exception v9

    .line 155
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_b0
    const-string v1, "WfdsEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cannot send event "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ac

    .line 149
    .end local v8    # "N":I
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v10    # "i":I
    :catchall_c5
    move-exception v1

    monitor-exit v11
    :try_end_c7
    .catchall {:try_start_b0 .. :try_end_c7} :catchall_c5

    throw v1
.end method

.method public notifySearchResultToService(ILcom/lge/wfds/WfdsDevice;)V
    .registers 11
    .param p1, "searchId"    # I
    .param p2, "dev"    # Lcom/lge/wfds/WfdsDevice;

    .prologue
    .line 67
    if-nez p2, :cond_3

    .line 83
    :goto_2
    return-void

    .line 71
    :cond_3
    sget-object v5, Lcom/lge/wfds/WfdsEvent;->mEventListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v5

    .line 72
    move-object v1, p2

    .line 73
    .local v1, "device":Lcom/lge/wfds/WfdsDevice;
    :try_start_7
    sget-object v4, Lcom/lge/wfds/WfdsEvent;->mEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 74
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_e
    if-lt v3, v0, :cond_1a

    .line 81
    sget-object v4, Lcom/lge/wfds/WfdsEvent;->mEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 71
    monitor-exit v5

    goto :goto_2

    .end local v0    # "N":I
    .end local v3    # "k":I
    :catchall_17
    move-exception v4

    monitor-exit v5
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v4

    .line 76
    .restart local v0    # "N":I
    .restart local v3    # "k":I
    :cond_1a
    :try_start_1a
    sget-object v4, Lcom/lge/wfds/WfdsEvent;->mEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/lge/wfds/IWfdsEventListener;

    invoke-interface {v4, p1, v1}, Lcom/lge/wfds/IWfdsEventListener;->wfdsSearchResult(ILcom/lge/wfds/WfdsDevice;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_25} :catch_28
    .catchall {:try_start_1a .. :try_end_25} :catchall_17

    .line 74
    :goto_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 77
    :catch_28
    move-exception v2

    .line 78
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_29
    const-string v4, "WfdsEvent"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "cannot send event "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_29 .. :try_end_3d} :catchall_17

    goto :goto_25
.end method

.method public notifySearchTerminatedToService(II)V
    .registers 10
    .param p1, "serarch_id"    # I
    .param p2, "reason"    # I

    .prologue
    .line 163
    const-string v3, "WfdsEvent"

    const-string v4, "notifySearchTerminatedToService: "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v3, "WfdsEvent"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    serarch_id : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v3, "WfdsEvent"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    reason : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    sget-object v4, Lcom/lge/wfds/WfdsEvent;->mEventListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 168
    :try_start_32
    sget-object v3, Lcom/lge/wfds/WfdsEvent;->mEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 169
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_39
    if-lt v2, v0, :cond_42

    .line 176
    sget-object v3, Lcom/lge/wfds/WfdsEvent;->mEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 167
    monitor-exit v4
    :try_end_41
    .catchall {:try_start_32 .. :try_end_41} :catchall_66

    .line 178
    return-void

    .line 171
    :cond_42
    :try_start_42
    sget-object v3, Lcom/lge/wfds/WfdsEvent;->mEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/lge/wfds/IWfdsEventListener;

    invoke-interface {v3, p1, p2}, Lcom/lge/wfds/IWfdsEventListener;->wfdsSearchTerminated(II)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_4d} :catch_50
    .catchall {:try_start_42 .. :try_end_4d} :catchall_66

    .line 169
    :goto_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 172
    :catch_50
    move-exception v1

    .line 173
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_51
    const-string v3, "WfdsEvent"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cannot send event "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 167
    .end local v0    # "N":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_66
    move-exception v3

    monitor-exit v4
    :try_end_68
    .catchall {:try_start_51 .. :try_end_68} :catchall_66

    throw v3
.end method

.method public notifySessionConfigRequestToService(IZI)V
    .registers 11
    .param p1, "session_id"    # I
    .param p2, "get_network_config_PIN"    # Z
    .param p3, "network_config_PIN"    # I

    .prologue
    .line 225
    const-string v3, "WfdsEvent"

    const-string v4, "notifySessionConfigRequestToService: "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string v3, "WfdsEvent"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    session_id : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v3, "WfdsEvent"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    get_network_config_PIN : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-string v3, "WfdsEvent"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    network_config_PIN : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    sget-object v4, Lcom/lge/wfds/WfdsEvent;->mEventListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 231
    :try_start_46
    sget-object v3, Lcom/lge/wfds/WfdsEvent;->mEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 232
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4d
    if-lt v2, v0, :cond_56

    .line 239
    sget-object v3, Lcom/lge/wfds/WfdsEvent;->mEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 230
    monitor-exit v4
    :try_end_55
    .catchall {:try_start_46 .. :try_end_55} :catchall_7a

    .line 241
    return-void

    .line 234
    :cond_56
    :try_start_56
    sget-object v3, Lcom/lge/wfds/WfdsEvent;->mEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/lge/wfds/IWfdsEventListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/lge/wfds/IWfdsEventListener;->wfdsSessionConfigRequest(IZI)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_61} :catch_64
    .catchall {:try_start_56 .. :try_end_61} :catchall_7a

    .line 232
    :goto_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 235
    :catch_64
    move-exception v1

    .line 236
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_65
    const-string v3, "WfdsEvent"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cannot send event "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 230
    .end local v0    # "N":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_7a
    move-exception v3

    monitor-exit v4
    :try_end_7c
    .catchall {:try_start_65 .. :try_end_7c} :catchall_7a

    throw v3
.end method

.method public notifySessionRequestToService(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V
    .registers 21
    .param p1, "adv_id"    # I
    .param p2, "session_mac"    # Ljava/lang/String;
    .param p3, "session_dev_name"    # Ljava/lang/String;
    .param p4, "session_id"    # I
    .param p5, "session_info"    # Ljava/lang/String;
    .param p6, "get_network_config_PIN"    # Z
    .param p7, "network_config_PIN"    # I

    .prologue
    .line 202
    const-string v1, "WfdsEvent"

    const-string v2, "notifySessionRequestToService: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const-string v1, "WfdsEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    adv_id : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-string v1, "WfdsEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    session_mac : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v1, "WfdsEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    session_dev_name : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string v1, "WfdsEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    session_id : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const-string v1, "WfdsEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    session_info : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sget-object v12, Lcom/lge/wfds/WfdsEvent;->mEventListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v12

    .line 210
    :try_start_74
    sget-object v1, Lcom/lge/wfds/WfdsEvent;->mEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v9

    .line 211
    .local v9, "N":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_7b
    if-lt v11, v9, :cond_84

    .line 219
    sget-object v1, Lcom/lge/wfds/WfdsEvent;->mEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 209
    monitor-exit v12
    :try_end_83
    .catchall {:try_start_74 .. :try_end_83} :catchall_b4

    .line 221
    return-void

    .line 213
    :cond_84
    :try_start_84
    sget-object v1, Lcom/lge/wfds/WfdsEvent;->mEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v11}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/lge/wfds/IWfdsEventListener;

    move v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/lge/wfds/IWfdsEventListener;->wfdsSessionRequest(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_84 .. :try_end_9b} :catch_9e
    .catchall {:try_start_84 .. :try_end_9b} :catchall_b4

    .line 211
    :goto_9b
    add-int/lit8 v11, v11, 0x1

    goto :goto_7b

    .line 215
    :catch_9e
    move-exception v10

    .line 216
    .local v10, "e":Landroid/os/RemoteException;
    :try_start_9f
    const-string v1, "WfdsEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cannot send event "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9b

    .line 209
    .end local v9    # "N":I
    .end local v10    # "e":Landroid/os/RemoteException;
    .end local v11    # "i":I
    :catchall_b4
    move-exception v1

    monitor-exit v12
    :try_end_b6
    .catchall {:try_start_9f .. :try_end_b6} :catchall_b4

    throw v1
.end method

.method public notifySessionStatusToService(Ljava/lang/String;III)V
    .registers 15
    .param p1, "sessionMac"    # Ljava/lang/String;
    .param p2, "sessionId"    # I
    .param p3, "state"    # I
    .param p4, "status"    # I

    .prologue
    .line 122
    const-string v0, "WfdsEvent"

    const-string v1, "notifySessionStatusToService: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v0, "WfdsEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    session_mac : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v0, "WfdsEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    session_id : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string v0, "WfdsEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    state : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    sget-object v9, Lcom/lge/wfds/WfdsEvent;->mEventListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v9

    .line 128
    :try_start_46
    sget-object v0, Lcom/lge/wfds/WfdsEvent;->mEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v6

    .line 129
    .local v6, "N":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4d
    if-lt v8, v6, :cond_56

    .line 136
    sget-object v0, Lcom/lge/wfds/WfdsEvent;->mEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 127
    monitor-exit v9
    :try_end_55
    .catchall {:try_start_46 .. :try_end_55} :catchall_7f

    .line 138
    return-void

    .line 131
    :cond_56
    :try_start_56
    sget-object v0, Lcom/lge/wfds/WfdsEvent;->mEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/IWfdsEventListener;

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/lge/wfds/IWfdsEventListener;->wfdsSessionStatus(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_66} :catch_69
    .catchall {:try_start_56 .. :try_end_66} :catchall_7f

    .line 129
    :goto_66
    add-int/lit8 v8, v8, 0x1

    goto :goto_4d

    .line 132
    :catch_69
    move-exception v7

    .line 133
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_6a
    const-string v0, "WfdsEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot send event "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 127
    .end local v6    # "N":I
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v8    # "i":I
    :catchall_7f
    move-exception v0

    monitor-exit v9
    :try_end_81
    .catchall {:try_start_6a .. :try_end_81} :catchall_7f

    throw v0
.end method
