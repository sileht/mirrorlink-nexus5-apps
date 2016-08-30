.class public Landroid/net/wifi/p2p/WifiP2pGroupListEx;
.super Landroid/net/wifi/p2p/WifiP2pGroupList;
.source "WifiP2pGroupListEx.java"


# direct methods
.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pGroupList;Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;)V
    .registers 3
    .param p1, "source"    # Landroid/net/wifi/p2p/WifiP2pGroupList;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pGroupList;-><init>(Landroid/net/wifi/p2p/WifiP2pGroupList;Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;)V

    .line 14
    return-void
.end method


# virtual methods
.method public getNetworkId(Ljava/lang/String;)I
    .registers 8
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 27
    if-nez p1, :cond_4

    .line 28
    const/4 v2, -0x1

    .line 46
    :cond_3
    return v2

    .line 31
    :cond_4
    const/4 v2, -0x1

    .line 33
    .local v2, "returnVal":I
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pGroupListEx;->mGroups:Landroid/util/LruCache;

    invoke-virtual {v3}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 35
    .local v0, "groups":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pGroup;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 36
    .local v1, "grp":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 38
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pGroupListEx;->mGroups:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v4

    if-ge v2, v4, :cond_13

    .line 41
    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v2

    goto :goto_13
.end method
