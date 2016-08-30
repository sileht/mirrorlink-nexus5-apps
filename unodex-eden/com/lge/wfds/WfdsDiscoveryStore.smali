.class Lcom/lge/wfds/WfdsDiscoveryStore;
.super Ljava/lang/Object;
.source "WfdsDiscoveryStore.java"


# static fields
.field private static final DUPLICATED:Z = true

.field private static final NOT_DUPLICATED:Z = false

.field private static final TAG:Ljava/lang/String; = "WfdsDiscoveryStore"


# instance fields
.field private mConfiguredAdvertise:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lge/wfds/WfdsDiscoveryMethod;",
            ">;"
        }
    .end annotation
.end field

.field private mConfiguredSearch:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lge/wfds/WfdsDiscoveryMethod;",
            ">;"
        }
    .end annotation
.end field

.field private mWfdsNative:Lcom/lge/wfds/WfdsNative;


# direct methods
.method constructor <init>(Lcom/lge/wfds/WfdsNative;)V
    .registers 3
    .param p1, "wn"    # Lcom/lge/wfds/WfdsNative;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/wfds/WfdsDiscoveryStore;->mConfiguredAdvertise:Ljava/util/HashMap;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/wfds/WfdsDiscoveryStore;->mConfiguredSearch:Ljava/util/HashMap;

    .line 34
    iput-object p1, p0, Lcom/lge/wfds/WfdsDiscoveryStore;->mWfdsNative:Lcom/lge/wfds/WfdsNative;

    .line 35
    return-void
.end method


# virtual methods
.method changeServiceStatus(III)Z
    .registers 8
    .param p1, "id"    # I
    .param p2, "status"    # I
    .param p3, "forcedChannel"    # I

    .prologue
    const/4 v1, 0x0

    .line 151
    iget-object v2, p0, Lcom/lge/wfds/WfdsDiscoveryStore;->mConfiguredAdvertise:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/WfdsDiscoveryMethod;

    .line 152
    .local v0, "method":Lcom/lge/wfds/WfdsDiscoveryMethod;
    if-nez v0, :cond_17

    .line 153
    const-string v2, "WfdsDiscoveryStore"

    const-string v3, "changeServiceStatus: method is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_16
    :goto_16
    return v1

    .line 156
    :cond_17
    iget-object v2, v0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    invoke-virtual {v2}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->getServiceStatus()I

    move-result v2

    if-ne v2, p2, :cond_27

    .line 157
    const-string v2, "WfdsDiscoveryStore"

    const-string v3, "changeServiceStatus: not changed because of the identical status"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 161
    :cond_27
    iget-object v2, p0, Lcom/lge/wfds/WfdsDiscoveryStore;->mWfdsNative:Lcom/lge/wfds/WfdsNative;

    invoke-virtual {v2, v1}, Lcom/lge/wfds/WfdsNative;->p2pStopFind(Z)Z

    .line 162
    iget-object v2, p0, Lcom/lge/wfds/WfdsDiscoveryStore;->mWfdsNative:Lcom/lge/wfds/WfdsNative;

    invoke-virtual {v2, p1, p2, p3}, Lcom/lge/wfds/WfdsNative;->changeServiceStatus(III)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 163
    iget-object v1, v0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    invoke-virtual {v1, p2}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->setServiceStatus(I)V

    .line 164
    iget-object v2, p0, Lcom/lge/wfds/WfdsDiscoveryStore;->mConfiguredAdvertise:Ljava/util/HashMap;

    monitor-enter v2

    .line 165
    :try_start_3c
    iget-object v1, p0, Lcom/lge/wfds/WfdsDiscoveryStore;->mConfiguredAdvertise:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v1, p0, Lcom/lge/wfds/WfdsDiscoveryStore;->mConfiguredAdvertise:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    monitor-exit v2

    .line 168
    const/4 v1, 0x1

    goto :goto_16

    .line 164
    :catchall_51
    move-exception v1

    monitor-exit v2
    :try_end_53
    .catchall {:try_start_3c .. :try_end_53} :catchall_51

    throw v1
.end method

.method checkAdvertiseMethod(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 63
    iget-object v2, p0, Lcom/lge/wfds/WfdsDiscoveryStore;->mConfiguredAdvertise:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_13

    .line 79
    const/4 v1, 0x0

    :goto_12
    return v1

    .line 63
    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/WfdsDiscoveryMethod;

    .line 64
    .local v0, "method":Lcom/lge/wfds/WfdsDiscoveryMethod;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsDiscoveryMethod;->getServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 65
    if-eqz p2, :cond_40

    .line 66
    iget-object v3, v0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    if-eqz v3, :cond_b

    .line 67
    iget-object v3, v0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    invoke-virtual {v3}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->getServiceInfo()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 68
    iget-object v3, v0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    invoke-virtual {v3}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->getServiceInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_12

    .line 72
    :cond_40
    iget-object v3, v0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    if-eqz v3, :cond_b

    .line 73
    iget-object v3, v0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    invoke-virtual {v3}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->getServiceInfo()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    goto :goto_12
.end method

.method checkDiscovering()Z
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/lge/wfds/WfdsDiscoveryStore;->mConfiguredAdvertise:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/lge/wfds/WfdsDiscoveryStore;->mConfiguredSearch:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method checkSearchMethod(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "req"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 83
    iget-object v2, p0, Lcom/lge/wfds/WfdsDiscoveryStore;->mConfiguredSearch:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_13

    .line 99
    const/4 v1, 0x0

    :goto_12
    return v1

    .line 83
    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/WfdsDiscoveryMethod;

    .line 84
    .local v0, "method":Lcom/lge/wfds/WfdsDiscoveryMethod;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsDiscoveryMethod;->getServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 85
    if-eqz p2, :cond_40

    .line 86
    iget-object v3, v0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mSeekMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    if-eqz v3, :cond_b

    .line 87
    iget-object v3, v0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mSeekMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    invoke-virtual {v3}, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->getServiceInfoRequest()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 88
    iget-object v3, v0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mSeekMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    invoke-virtual {v3}, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->getServiceInfoRequest()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_12

    .line 92
    :cond_40
    iget-object v3, v0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mSeekMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    if-eqz v3, :cond_b

    .line 93
    iget-object v3, v0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mSeekMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    invoke-virtual {v3}, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->getServiceInfoRequest()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    goto :goto_12
.end method

.method clearDiscoveryMap(Z)V
    .registers 8
    .param p1, "scanAlwaysMode"    # Z

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 235
    .local v0, "list":Ljava/util/Iterator;
    const-string v3, "WfdsDiscoveryStore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Clear Discovery Method Map: ScanAlwaysMode "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    if-eqz p1, :cond_48

    .line 238
    invoke-virtual {p0}, Lcom/lge/wfds/WfdsDiscoveryStore;->hasAdvertisement()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 239
    invoke-virtual {p0}, Lcom/lge/wfds/WfdsDiscoveryStore;->getConfiguredAllAdvertise()Ljava/util/List;

    move-result-object v2

    .line 240
    .local v2, "methods":Ljava/util/List;, "Ljava/util/List<Lcom/lge/wfds/WfdsDiscoveryMethod;>;"
    if-eqz v2, :cond_27

    .line 241
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 243
    :cond_27
    :goto_27
    if-eqz v0, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_53

    .line 251
    .end local v2    # "methods":Ljava/util/List;, "Ljava/util/List<Lcom/lge/wfds/WfdsDiscoveryMethod;>;"
    :cond_2f
    const/4 v0, 0x0

    .line 253
    invoke-virtual {p0}, Lcom/lge/wfds/WfdsDiscoveryStore;->hasSearch()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 254
    invoke-virtual {p0}, Lcom/lge/wfds/WfdsDiscoveryStore;->getConfiguredAllSearch()Ljava/util/List;

    move-result-object v2

    .line 255
    .restart local v2    # "methods":Ljava/util/List;, "Ljava/util/List<Lcom/lge/wfds/WfdsDiscoveryMethod;>;"
    if-eqz v2, :cond_40

    .line 256
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 258
    :cond_40
    :goto_40
    if-eqz v0, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_67

    .line 266
    .end local v2    # "methods":Ljava/util/List;, "Ljava/util/List<Lcom/lge/wfds/WfdsDiscoveryMethod;>;"
    :cond_48
    iget-object v3, p0, Lcom/lge/wfds/WfdsDiscoveryStore;->mConfiguredAdvertise:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 267
    iget-object v3, p0, Lcom/lge/wfds/WfdsDiscoveryStore;->mConfiguredSearch:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 268
    return-void

    .line 244
    .restart local v2    # "methods":Ljava/util/List;, "Ljava/util/List<Lcom/lge/wfds/WfdsDiscoveryMethod;>;"
    :cond_53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/wfds/WfdsDiscoveryMethod;

    .line 245
    .local v1, "m":Lcom/lge/wfds/WfdsDiscoveryMethod;
    iget-object v3, v1, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    if-eqz v3, :cond_27

    .line 246
    iget-object v3, v1, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    invoke-virtual {v3}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->getAdvertiseId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/lge/wfds/WfdsDiscoveryStore;->removeAdvertise(I)Z

    goto :goto_27

    .line 259
    .end local v1    # "m":Lcom/lge/wfds/WfdsDiscoveryMethod;
    :cond_67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/wfds/WfdsDiscoveryMethod;

    .line 260
    .restart local v1    # "m":Lcom/lge/wfds/WfdsDiscoveryMethod;
    iget-object v3, v1, Lcom/lge/wfds/WfdsDiscoveryMethod;->mSeekMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    if-eqz v3, :cond_40

    .line 261
    iget-object v3, v1, Lcom/lge/wfds/WfdsDiscoveryMethod;->mSeekMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    invoke-virtual {v3}, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->getSearchId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/lge/wfds/WfdsDiscoveryStore;->removeSearch(I)Z

    goto :goto_40
.end method

.method getConfiguredAllAdvertise(I)Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;
    .registers 5
    .param p1, "id"    # I

    .prologue
    .line 54
    iget-object v1, p0, Lcom/lge/wfds/WfdsDiscoveryStore;->mConfiguredAdvertise:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/WfdsDiscoveryMethod;

    .line 55
    .local v0, "method":Lcom/lge/wfds/WfdsDiscoveryMethod;
    if-nez v0, :cond_17

    .line 56
    const-string v1, "WfdsDiscoveryStore"

    const-string v2, "changeServiceStatus: method is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v1, 0x0

    .line 59
    :goto_16
    return-object v1

    :cond_17
    iget-object v1, v0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    goto :goto_16
.end method

.method getConfiguredAllAdvertise()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lge/wfds/WfdsDiscoveryMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v1, "methods":Ljava/util/List;, "Ljava/util/List<Lcom/lge/wfds/WfdsDiscoveryMethod;>;"
    iget-object v2, p0, Lcom/lge/wfds/WfdsDiscoveryStore;->mConfiguredAdvertise:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_16

    .line 42
    return-object v1

    .line 39
    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/WfdsDiscoveryMethod;

    .line 40
    .local v0, "method":Lcom/lge/wfds/WfdsDiscoveryMethod;
    new-instance v3, Lcom/lge/wfds/WfdsDiscoveryMethod;

    invoke-direct {v3, v0}, Lcom/lge/wfds/WfdsDiscoveryMethod;-><init>(Lcom/lge/wfds/WfdsDiscoveryMethod;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f
.end method

.method getConfiguredAllSearch()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lge/wfds/WfdsDiscoveryMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v1, "methods":Ljava/util/List;, "Ljava/util/List<Lcom/lge/wfds/WfdsDiscoveryMethod;>;"
    iget-object v2, p0, Lcom/lge/wfds/WfdsDiscoveryStore;->mConfiguredSearch:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_16

    .line 50
    return-object v1

    .line 47
    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/WfdsDiscoveryMethod;

    .line 48
    .local v0, "method":Lcom/lge/wfds/WfdsDiscoveryMethod;
    new-instance v3, Lcom/lge/wfds/WfdsDiscoveryMethod;

    invoke-direct {v3, v0}, Lcom/lge/wfds/WfdsDiscoveryMethod;-><init>(Lcom/lge/wfds/WfdsDiscoveryMethod;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f
.end method

.method hasAdvertisement()Z
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/lge/wfds/WfdsDiscoveryStore;->mConfiguredAdvertise:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method hasSearch()Z
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/lge/wfds/WfdsDiscoveryStore;->mConfiguredSearch:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method removeAdvertise(I)Z
    .registers 10
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 123
    const/4 v5, -0x1

    if-ne p1, v5, :cond_6

    .line 146
    :goto_5
    return v3

    .line 127
    :cond_6
    const-string v5, "0x%08x"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "strId":Ljava/lang/String;
    const-string v5, "WfdsDiscoveryStore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "removeAdvertise: enter id = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v5, p0, Lcom/lge/wfds/WfdsDiscoveryStore;->mConfiguredAdvertise:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/WfdsDiscoveryMethod;

    .line 131
    .local v0, "m":Lcom/lge/wfds/WfdsDiscoveryMethod;
    if-nez v0, :cond_3e

    .line 132
    const-string v4, "WfdsDiscoveryStore"

    const-string v5, "WFDS: Remove Advertise Class: Unknown ID"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 136
    :cond_3e
    iget-object v5, p0, Lcom/lge/wfds/WfdsDiscoveryStore;->mWfdsNative:Lcom/lge/wfds/WfdsNative;

    invoke-virtual {v5, p1}, Lcom/lge/wfds/WfdsNative;->cancelAdvertise(I)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 137
    iget-object v3, p0, Lcom/lge/wfds/WfdsDiscoveryStore;->mConfiguredAdvertise:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/wfds/WfdsDiscoveryMethod;

    .line 138
    .local v1, "method":Lcom/lge/wfds/WfdsDiscoveryMethod;
    if-eqz v1, :cond_61

    .line 139
    iget-object v5, p0, Lcom/lge/wfds/WfdsDiscoveryStore;->mConfiguredAdvertise:Ljava/util/HashMap;

    monitor-enter v5

    .line 140
    :try_start_57
    iget-object v3, p0, Lcom/lge/wfds/WfdsDiscoveryStore;->mConfiguredAdvertise:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    monitor-exit v5

    :cond_61
    move v3, v4

    .line 143
    goto :goto_5

    .line 139
    :catchall_63
    move-exception v3

    monitor-exit v5
    :try_end_65
    .catchall {:try_start_57 .. :try_end_65} :catchall_63

    throw v3

    .line 145
    .end local v1    # "method":Lcom/lge/wfds/WfdsDiscoveryMethod;
    :cond_66
    const-string v4, "WfdsDiscoveryStore"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to remove Advertise "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method removeSearch(I)Z
    .registers 8
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 195
    const/4 v3, -0x1

    if-ne p1, v3, :cond_5

    .line 216
    :goto_4
    return v2

    .line 199
    :cond_5
    iget-object v3, p0, Lcom/lge/wfds/WfdsDiscoveryStore;->mConfiguredSearch:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/WfdsDiscoveryMethod;

    .line 200
    .local v0, "m":Lcom/lge/wfds/WfdsDiscoveryMethod;
    if-nez v0, :cond_1b

    .line 201
    const-string v3, "WfdsDiscoveryStore"

    const-string v4, "WFDS: Remove Seek Class: Unknown ID"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 205
    :cond_1b
    iget-object v3, p0, Lcom/lge/wfds/WfdsDiscoveryStore;->mWfdsNative:Lcom/lge/wfds/WfdsNative;

    invoke-virtual {v3, p1}, Lcom/lge/wfds/WfdsNative;->cancelSearch(I)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 206
    iget-object v2, p0, Lcom/lge/wfds/WfdsDiscoveryStore;->mConfiguredSearch:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/wfds/WfdsDiscoveryMethod;

    .line 207
    .local v1, "method":Lcom/lge/wfds/WfdsDiscoveryMethod;
    if-eqz v1, :cond_52

    .line 208
    const-string v2, "WfdsDiscoveryStore"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "removeSearch: id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v3, p0, Lcom/lge/wfds/WfdsDiscoveryStore;->mConfiguredSearch:Ljava/util/HashMap;

    monitor-enter v3

    .line 210
    :try_start_48
    iget-object v2, p0, Lcom/lge/wfds/WfdsDiscoveryStore;->mConfiguredSearch:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    monitor-exit v3

    .line 213
    :cond_52
    const/4 v2, 0x1

    goto :goto_4

    .line 209
    :catchall_54
    move-exception v2

    monitor-exit v3
    :try_end_56
    .catchall {:try_start_48 .. :try_end_56} :catchall_54

    throw v2

    .line 215
    .end local v1    # "method":Lcom/lge/wfds/WfdsDiscoveryMethod;
    :cond_57
    const-string v3, "WfdsDiscoveryStore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to remove Search "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method requestAdvertise(Lcom/lge/wfds/WfdsDiscoveryMethod;I)I
    .registers 15
    .param p1, "method"    # Lcom/lge/wfds/WfdsDiscoveryMethod;
    .param p2, "forcedChannel"    # I

    .prologue
    .line 103
    invoke-virtual {p1}, Lcom/lge/wfds/WfdsDiscoveryMethod;->getServiceName()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "name":Ljava/lang/String;
    iget-object v0, p1, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->getAcceptMethod()I

    move-result v2

    .line 105
    .local v2, "accept":I
    iget-object v0, p1, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->getServiceStatus()I

    move-result v3

    .line 106
    .local v3, "status":I
    iget-object v0, p1, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->getNetworkRole()I

    move-result v4

    .line 107
    .local v4, "role":I
    iget-object v0, p1, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->getNetworkConfig()I

    move-result v5

    .line 108
    .local v5, "config":I
    iget-object v0, p1, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->getServiceInfo()Ljava/lang/String;

    move-result-object v6

    .line 110
    .local v6, "info":Ljava/lang/String;
    iget-object v0, p0, Lcom/lge/wfds/WfdsDiscoveryStore;->mWfdsNative:Lcom/lge/wfds/WfdsNative;

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/lge/wfds/WfdsNative;->requestAdvertise(Ljava/lang/String;IIIILjava/lang/String;I)I

    move-result v8

    .line 112
    .local v8, "id":I
    const-string v0, "0x%08x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v10

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 113
    .local v9, "strAdvId":Ljava/lang/String;
    const-string v0, "WfdsDiscoveryStore"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "requestAdvertise: advertise id = "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p1, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    invoke-virtual {v0, v8}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->setAdvertiseId(I)V

    .line 116
    iget-object v7, p0, Lcom/lge/wfds/WfdsDiscoveryStore;->mConfiguredAdvertise:Ljava/util/HashMap;

    monitor-enter v7

    .line 117
    :try_start_55
    iget-object v0, p0, Lcom/lge/wfds/WfdsDiscoveryStore;->mConfiguredAdvertise:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    monitor-exit v7

    .line 119
    return v8

    .line 116
    :catchall_60
    move-exception v0

    monitor-exit v7
    :try_end_62
    .catchall {:try_start_55 .. :try_end_62} :catchall_60

    throw v0
.end method

.method requestSearch(Lcom/lge/wfds/WfdsDiscoveryMethod;I)I
    .registers 11
    .param p1, "method"    # Lcom/lge/wfds/WfdsDiscoveryMethod;
    .param p2, "forcedChannel"    # I

    .prologue
    .line 174
    invoke-virtual {p1}, Lcom/lge/wfds/WfdsDiscoveryMethod;->getServiceName()Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "name":Ljava/lang/String;
    iget-object v0, p1, Lcom/lge/wfds/WfdsDiscoveryMethod;->mSeekMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->getSearchMethod()I

    move-result v2

    .line 176
    .local v2, "search":I
    iget-object v0, p1, Lcom/lge/wfds/WfdsDiscoveryMethod;->mSeekMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->getP2pAddress()Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "addr":Ljava/lang/String;
    iget-object v0, p1, Lcom/lge/wfds/WfdsDiscoveryMethod;->mSeekMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->getServiceInfoRequest()Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, "req":Ljava/lang/String;
    iget-object v0, p0, Lcom/lge/wfds/WfdsDiscoveryStore;->mWfdsNative:Lcom/lge/wfds/WfdsNative;

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/lge/wfds/WfdsNative;->requestSearch(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 180
    .local v6, "id":I
    const/4 v0, -0x1

    if-eq v6, v0, :cond_4c

    .line 181
    const-string v0, "WfdsDiscoveryStore"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "requestSearch succeeded: id = "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0, v1, v4}, Lcom/lge/wfds/WfdsDiscoveryStore;->checkSearchMethod(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 183
    iget-object v0, p1, Lcom/lge/wfds/WfdsDiscoveryMethod;->mSeekMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    invoke-virtual {v0, v6}, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->setSearchId(I)V

    .line 184
    iget-object v5, p0, Lcom/lge/wfds/WfdsDiscoveryStore;->mConfiguredSearch:Ljava/util/HashMap;

    monitor-enter v5

    .line 185
    :try_start_42
    iget-object v0, p0, Lcom/lge/wfds/WfdsDiscoveryStore;->mConfiguredSearch:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    monitor-exit v5
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_61

    .line 189
    :cond_4c
    const-string v0, "WfdsDiscoveryStore"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "requestSearch id "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return v6

    .line 184
    :catchall_61
    move-exception v0

    :try_start_62
    monitor-exit v5
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v0
.end method
