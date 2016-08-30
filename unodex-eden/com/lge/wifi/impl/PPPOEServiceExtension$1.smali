.class Lcom/lge/wifi/impl/PPPOEServiceExtension$1;
.super Landroid/content/BroadcastReceiver;
.source "PPPOEServiceExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/PPPOEServiceExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/PPPOEServiceExtension;


# direct methods
.method constructor <init>(Lcom/lge/wifi/impl/PPPOEServiceExtension;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension$1;->this$0:Lcom/lge/wifi/impl/PPPOEServiceExtension;

    .line 420
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x4

    .line 423
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 425
    iget-object v2, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension$1;->this$0:Lcom/lge/wifi/impl/PPPOEServiceExtension;

    # invokes: Lcom/lge/wifi/impl/PPPOEServiceExtension;->processNetworkStateChangedAction(Landroid/content/Intent;)V
    invoke-static {v2, p2}, Lcom/lge/wifi/impl/PPPOEServiceExtension;->access$0(Lcom/lge/wifi/impl/PPPOEServiceExtension;Landroid/content/Intent;)V

    .line 443
    :cond_12
    :goto_12
    return-void

    .line 427
    :cond_13
    const-string v2, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 429
    const-string v2, "linkProperties"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    .line 430
    .local v1, "newLp":Landroid/net/LinkProperties;
    if-eqz v1, :cond_12

    iget-object v2, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension$1;->this$0:Lcom/lge/wifi/impl/PPPOEServiceExtension;

    # getter for: Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPOEInfo:Landroid/net/wifi/PPPOEInfo;
    invoke-static {v2}, Lcom/lge/wifi/impl/PPPOEServiceExtension;->access$1(Lcom/lge/wifi/impl/PPPOEServiceExtension;)Landroid/net/wifi/PPPOEInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/PPPOEInfo;->status:Landroid/net/wifi/PPPOEInfo$Status;

    sget-object v3, Landroid/net/wifi/PPPOEInfo$Status;->ONLINE:Landroid/net/wifi/PPPOEInfo$Status;

    if-ne v2, v3, :cond_12

    .line 431
    iget-object v2, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension$1;->this$0:Lcom/lge/wifi/impl/PPPOEServiceExtension;

    # getter for: Lcom/lge/wifi/impl/PPPOEServiceExtension;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/lge/wifi/impl/PPPOEServiceExtension;->access$2(Lcom/lge/wifi/impl/PPPOEServiceExtension;)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension$1;->this$0:Lcom/lge/wifi/impl/PPPOEServiceExtension;

    # getter for: Lcom/lge/wifi/impl/PPPOEServiceExtension;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/lge/wifi/impl/PPPOEServiceExtension;->access$2(Lcom/lge/wifi/impl/PPPOEServiceExtension;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_12

    .line 432
    const-string v2, "PPPOEServiceExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Linkstate configutaion old: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension$1;->this$0:Lcom/lge/wifi/impl/PPPOEServiceExtension;

    # getter for: Lcom/lge/wifi/impl/PPPOEServiceExtension;->mWiFiLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v4}, Lcom/lge/wifi/impl/PPPOEServiceExtension;->access$3(Lcom/lge/wifi/impl/PPPOEServiceExtension;)Landroid/net/LinkProperties;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const-string v2, "PPPOEServiceExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Linkstate configutaion new: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v2, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension$1;->this$0:Lcom/lge/wifi/impl/PPPOEServiceExtension;

    invoke-static {v2, v1}, Lcom/lge/wifi/impl/PPPOEServiceExtension;->access$4(Lcom/lge/wifi/impl/PPPOEServiceExtension;Landroid/net/LinkProperties;)V

    .line 435
    iget-object v2, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension$1;->this$0:Lcom/lge/wifi/impl/PPPOEServiceExtension;

    # getter for: Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPoEStart:Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStartHandler;
    invoke-static {v2}, Lcom/lge/wifi/impl/PPPOEServiceExtension;->access$5(Lcom/lge/wifi/impl/PPPOEServiceExtension;)Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStartHandler;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStartHandler;->removeMessages(I)V

    .line 436
    iget-object v2, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension$1;->this$0:Lcom/lge/wifi/impl/PPPOEServiceExtension;

    # getter for: Lcom/lge/wifi/impl/PPPOEServiceExtension;->mPPPoEStart:Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStartHandler;
    invoke-static {v2}, Lcom/lge/wifi/impl/PPPOEServiceExtension;->access$5(Lcom/lge/wifi/impl/PPPOEServiceExtension;)Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStartHandler;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v6, v4, v5}, Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStartHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_12
.end method
