.class Lcom/lge/wifi/impl/mobilehotspot/MHPService$MobileHotspotDisableThread;
.super Ljava/lang/Thread;
.source "MHPService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/mobilehotspot/MHPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MobileHotspotDisableThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;


# direct methods
.method public constructor <init>(Lcom/lge/wifi/impl/mobilehotspot/MHPService;Z)V
    .registers 3
    .param p2, "saveSetting"    # Z

    .prologue
    .line 802
    iput-object p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$MobileHotspotDisableThread;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    .line 801
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 804
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 809
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$MobileHotspotDisableThread;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;
    invoke-static {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$14(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pIpForwardingEnableStop()V

    .line 810
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$MobileHotspotDisableThread;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mEventLoop:Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;
    invoke-static {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$20(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;->onMobileHotspotStateChanged(I)V

    .line 812
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$MobileHotspotDisableThread;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;
    invoke-static {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$14(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->destroySoftAP()I

    move-result v0

    .line 813
    .local v0, "ret":I
    if-nez v0, :cond_28

    .line 814
    const-string v1, "MobileHotspotService"

    const-string v2, "[wo0gi-dbg] destroySoftAP success\n"

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    :goto_27
    return-void

    .line 816
    :cond_28
    const-string v1, "MobileHotspotService"

    const-string v2, "[wo0gi-dbg] destroySoftAP failed\n"

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27
.end method
