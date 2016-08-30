.class Lcom/lge/wifi/impl/mobilehotspot/MHPService$DhcpEnableThread;
.super Ljava/lang/Thread;
.source "MHPService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/mobilehotspot/MHPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DhcpEnableThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;


# direct methods
.method public constructor <init>(Lcom/lge/wifi/impl/mobilehotspot/MHPService;Z)V
    .registers 3
    .param p2, "saveSetting"    # Z

    .prologue
    .line 852
    iput-object p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DhcpEnableThread;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    .line 851
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 854
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 859
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DhcpEnableThread;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;
    invoke-static {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$14(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pDhcpdStart()I

    .line 860
    return-void
.end method
