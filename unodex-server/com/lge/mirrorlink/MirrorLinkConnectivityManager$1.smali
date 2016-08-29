.class Lcom/lge/mirrorlink/MirrorLinkConnectivityManager$1;
.super Landroid/content/BroadcastReceiver;
.source "MirrorLinkConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;


# direct methods
.method constructor <init>(Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;

    .prologue
    .line 524
    iput-object p1, p0, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager$1;->this$0:Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 528
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 530
    .local v2, "action":Ljava/lang/String;
    const-string/jumbo v5, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9c

    .line 531
    const-string/jumbo v5, "MirrorLinkServer"

    const-string/jumbo v6, "ACTION_TETHER_STATE_CHANGED Received"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v5, p0, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager$1;->this$0:Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;

    iget-object v5, v5, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->tetherStateChangeListener:Lcom/lge/mirrorlink/MirrorLinkConnectivityManager$TetherStateChangeListender;

    if-eqz v5, :cond_9c

    .line 533
    const-string/jumbo v5, "availableArray"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 534
    .local v4, "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_50

    .line 535
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "a$iterator":Ljava/util/Iterator;
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 536
    .local v0, "a":Ljava/lang/String;
    const-string/jumbo v5, "MirrorLinkServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "available :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 538
    .end local v0    # "a":Ljava/lang/String;
    .end local v1    # "a$iterator":Ljava/util/Iterator;
    :cond_50
    const-string/jumbo v5, "activeArray"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 539
    .local v3, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_84

    .line 540
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "a$iterator":Ljava/util/Iterator;
    :goto_5d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_84

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 541
    .restart local v0    # "a":Ljava/lang/String;
    const-string/jumbo v5, "MirrorLinkServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "active :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 543
    .end local v0    # "a":Ljava/lang/String;
    .end local v1    # "a$iterator":Ljava/util/Iterator;
    :cond_84
    iget-object v5, p0, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager$1;->this$0:Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;

    invoke-static {v5, v3}, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->-wrap0(Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_9c

    .line 544
    const-string/jumbo v5, "MirrorLinkServer"

    const-string/jumbo v6, "new tetherInterface found?"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v5, p0, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager$1;->this$0:Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;

    iget-object v5, v5, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->tetherStateChangeListener:Lcom/lge/mirrorlink/MirrorLinkConnectivityManager$TetherStateChangeListender;

    invoke-virtual {v5}, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager$TetherStateChangeListender;->onChanged()V

    .line 527
    .end local v3    # "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9c
    return-void
.end method
