.class public Lcom/lge/internal/hardware/fmradio/MultiDispatcher;
.super Landroid/os/Handler;
.source "MultiDispatcher.java"


# instance fields
.field private name:Ljava/lang/String;

.field private names:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/Messenger;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private observers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/internal/hardware/fmradio/MultiDispatcher;->name:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/lge/internal/hardware/fmradio/MultiDispatcher;->observers:Ljava/util/Set;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/internal/hardware/fmradio/MultiDispatcher;->names:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FMFRW_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/lge/internal/hardware/fmradio/MultiDispatcher;->name:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public declared-synchronized addObserver(Ljava/lang/String;Landroid/os/Messenger;)V
    .registers 6
    .param p1, "observerName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/os/Messenger;

    .prologue
    .line 33
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/MultiDispatcher;->name:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addObserver("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/MultiDispatcher;->names:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 35
    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/MultiDispatcher;->name:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Observer named \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is already added."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_4a

    .line 40
    :goto_3d
    monitor-exit p0

    return-void

    .line 38
    :cond_3f
    :try_start_3f
    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/MultiDispatcher;->observers:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/MultiDispatcher;->names:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_49
    .catchall {:try_start_3f .. :try_end_49} :catchall_4a

    goto :goto_3d

    .line 33
    :catchall_4a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getObserverCount()I
    .registers 2

    .prologue
    .line 54
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/MultiDispatcher;->observers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getObserverNames()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/internal/hardware/fmradio/MultiDispatcher;->names:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 58
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/lge/internal/hardware/fmradio/MultiDispatcher;->observers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_19

    move-result v2

    if-nez v2, :cond_f

    .line 59
    monitor-exit p0

    return-void

    .line 58
    :cond_f
    :try_start_f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    .local v0, "o":Landroid/os/Messenger;
    invoke-virtual {p0, p1, v0}, Lcom/lge/internal/hardware/fmradio/MultiDispatcher;->sendSafely(Landroid/os/Message;Landroid/os/Messenger;)V
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_19

    goto :goto_7

    .end local v0    # "o":Landroid/os/Messenger;
    :catchall_19
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeObserver(Landroid/os/Messenger;)V
    .registers 5
    .param p1, "observer"    # Landroid/os/Messenger;

    .prologue
    .line 43
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/lge/internal/hardware/fmradio/MultiDispatcher;->name:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "removeObserver("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/MultiDispatcher;->names:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/MultiDispatcher;->observers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/MultiDispatcher;->names:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/MultiDispatcher;->name:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Remaining observers are "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/MultiDispatcher;->names:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_1 .. :try_end_4d} :catchall_4f

    .line 47
    monitor-exit p0

    return-void

    .line 43
    :catchall_4f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized sendSafely(Landroid/os/Message;Landroid/os/Messenger;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 63
    monitor-enter p0

    if-eqz p2, :cond_c

    if-eqz p1, :cond_c

    :try_start_5
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_e
    .catchall {:try_start_5 .. :try_end_c} :catchall_2f

    .line 68
    :cond_c
    :goto_c
    monitor-exit p0

    return-void

    .line 65
    :catch_e
    move-exception v0

    :try_start_f
    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/MultiDispatcher;->name:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "removed observer("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") due to failure."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/MultiDispatcher;->observers:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2e
    .catchall {:try_start_f .. :try_end_2e} :catchall_2f

    goto :goto_c

    .line 63
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
