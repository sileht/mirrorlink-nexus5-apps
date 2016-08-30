.class Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;
.super Ljava/lang/Object;
.source "WfdsEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/WfdsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegisteredListenerList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wfds/WfdsEvent$RegisteredListenerList$RegListenerIdComparator;
    }
.end annotation


# instance fields
.field private mEventListenerId:I

.field private mRegListenerIdC:Lcom/lge/wfds/WfdsEvent$RegisteredListenerList$RegListenerIdComparator;

.field private mRegisteredListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/wfds/WfdsEvent$RegisteredListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lge/wfds/WfdsEvent;


# direct methods
.method constructor <init>(Lcom/lge/wfds/WfdsEvent;)V
    .registers 4

    .prologue
    .line 280
    iput-object p1, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->this$0:Lcom/lge/wfds/WfdsEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mEventListenerId:I

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mRegisteredListeners:Ljava/util/List;

    .line 283
    new-instance v0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList$RegListenerIdComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList$RegListenerIdComparator;-><init>(Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;Lcom/lge/wfds/WfdsEvent$RegisteredListenerList$RegListenerIdComparator;)V

    iput-object v0, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mRegListenerIdC:Lcom/lge/wfds/WfdsEvent$RegisteredListenerList$RegListenerIdComparator;

    .line 284
    return-void
.end method

.method private getEventListenerId()I
    .registers 3

    .prologue
    .line 296
    const/4 v0, -0x1

    .line 297
    .local v0, "eventListenerId":I
    iget v0, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mEventListenerId:I

    .end local v0    # "eventListenerId":I
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mEventListenerId:I

    .line 298
    .restart local v0    # "eventListenerId":I
    return v0
.end method

.method private trimEventListenerId()V
    .registers 3

    .prologue
    .line 287
    iget-object v0, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mRegisteredListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c

    .line 288
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mEventListenerId:I

    .line 293
    :goto_b
    return-void

    .line 290
    :cond_c
    iget-object v0, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mRegisteredListeners:Ljava/util/List;

    iget-object v1, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mRegListenerIdC:Lcom/lge/wfds/WfdsEvent$RegisteredListenerList$RegListenerIdComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 291
    iget-object v0, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mRegisteredListeners:Ljava/util/List;

    iget-object v1, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mRegisteredListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/WfdsEvent$RegisteredListener;

    iget v0, v0, Lcom/lge/wfds/WfdsEvent$RegisteredListener;->listenerId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mEventListenerId:I

    goto :goto_b
.end method


# virtual methods
.method add(Lcom/lge/wfds/WfdsEvent$RegisteredListener;)I
    .registers 4
    .param p1, "wfdsListener"    # Lcom/lge/wfds/WfdsEvent$RegisteredListener;

    .prologue
    .line 302
    iget-object v1, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mRegisteredListeners:Ljava/util/List;

    monitor-enter v1

    .line 303
    :try_start_3
    invoke-direct {p0}, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->getEventListenerId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/lge/wfds/WfdsEvent$RegisteredListener;->setlistenerId(I)V

    .line 304
    iget-object v0, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mRegisteredListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_13

    .line 306
    iget v0, p1, Lcom/lge/wfds/WfdsEvent$RegisteredListener;->listenerId:I

    return v0

    .line 302
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method containsId(I)Lcom/lge/wfds/IWfdsEventListener;
    .registers 6
    .param p1, "listenerId"    # I

    .prologue
    const/4 v2, 0x0

    .line 330
    iget-object v3, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mRegisteredListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_a

    .line 342
    :cond_9
    :goto_9
    return-object v2

    .line 334
    :cond_a
    iget-object v3, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mRegisteredListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 335
    .local v1, "regListenerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wfds/WfdsEvent$RegisteredListener;>;"
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 336
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/WfdsEvent$RegisteredListener;

    .line 337
    .local v0, "regListener":Lcom/lge/wfds/WfdsEvent$RegisteredListener;
    iget v3, v0, Lcom/lge/wfds/WfdsEvent$RegisteredListener;->listenerId:I

    if-ne v3, p1, :cond_10

    .line 338
    iget-object v2, v0, Lcom/lge/wfds/WfdsEvent$RegisteredListener;->eventListener:Lcom/lge/wfds/IWfdsEventListener;

    goto :goto_9
.end method

.method containsListener(Lcom/lge/wfds/IWfdsEventListener;)I
    .registers 7
    .param p1, "listener"    # Lcom/lge/wfds/IWfdsEventListener;

    .prologue
    const/4 v2, -0x1

    .line 346
    iget-object v3, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mRegisteredListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_a

    .line 358
    :cond_9
    :goto_9
    return v2

    .line 350
    :cond_a
    iget-object v3, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mRegisteredListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 351
    .local v1, "regListenerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wfds/WfdsEvent$RegisteredListener;>;"
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 352
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/WfdsEvent$RegisteredListener;

    .line 353
    .local v0, "regListener":Lcom/lge/wfds/WfdsEvent$RegisteredListener;
    iget-object v3, v0, Lcom/lge/wfds/WfdsEvent$RegisteredListener;->eventListenerBinder:Landroid/os/IBinder;

    invoke-interface {p1}, Lcom/lge/wfds/IWfdsEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 354
    iget v2, v0, Lcom/lge/wfds/WfdsEvent$RegisteredListener;->listenerId:I

    goto :goto_9
.end method

.method remove(I)V
    .registers 6
    .param p1, "listenerId"    # I

    .prologue
    .line 310
    iget-object v3, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mRegisteredListeners:Ljava/util/List;

    monitor-enter v3

    .line 311
    :try_start_3
    iget-object v2, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mRegisteredListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_d

    .line 312
    monitor-exit v3

    .line 326
    :goto_c
    return-void

    .line 315
    :cond_d
    iget-object v2, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mRegisteredListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 316
    .local v1, "regListenerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wfds/WfdsEvent$RegisteredListener;>;"
    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_21

    .line 324
    :goto_19
    invoke-direct {p0}, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->trimEventListenerId()V

    .line 310
    monitor-exit v3

    goto :goto_c

    .end local v1    # "regListenerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wfds/WfdsEvent$RegisteredListener;>;"
    :catchall_1e
    move-exception v2

    monitor-exit v3
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v2

    .line 317
    .restart local v1    # "regListenerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wfds/WfdsEvent$RegisteredListener;>;"
    :cond_21
    :try_start_21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/WfdsEvent$RegisteredListener;

    .line 318
    .local v0, "regListener":Lcom/lge/wfds/WfdsEvent$RegisteredListener;
    iget v2, v0, Lcom/lge/wfds/WfdsEvent$RegisteredListener;->listenerId:I

    if-ne v2, p1, :cond_13

    .line 319
    iget-object v2, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->mRegisteredListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_30
    .catchall {:try_start_21 .. :try_end_30} :catchall_1e

    goto :goto_19
.end method
