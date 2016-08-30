.class Lcom/lge/wifi/impl/mobilehotspot/MHPService$DhcpRestartThread;
.super Ljava/lang/Thread;
.source "MHPService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/mobilehotspot/MHPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DhcpRestartThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;


# direct methods
.method constructor <init>(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)V
    .registers 2

    .prologue
    .line 828
    iput-object p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DhcpRestartThread;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 834
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DhcpRestartThread;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->dhcpDisable(Z)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_17

    .line 836
    const-wide/16 v2, 0x64

    :try_start_8
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_b} :catch_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_17

    .line 840
    :goto_b
    :try_start_b
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DhcpRestartThread;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->dhcpEnable(Z)Z

    .line 844
    :goto_11
    return-void

    .line 837
    :catch_12
    move-exception v0

    .line 838
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_16} :catch_17

    goto :goto_b

    .line 841
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_17
    move-exception v0

    .line 842
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_11
.end method
