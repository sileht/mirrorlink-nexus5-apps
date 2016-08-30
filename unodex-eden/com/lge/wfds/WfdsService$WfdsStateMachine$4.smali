.class Lcom/lge/wfds/WfdsService$WfdsStateMachine$4;
.super Ljava/lang/Object;
.source "WfdsService.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/wfds/WfdsService$WfdsStateMachine;->cancelConnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;


# direct methods
.method constructor <init>(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$4;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    .line 2850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .registers 5
    .param p1, "reason"    # I

    .prologue
    .line 2857
    const-string v0, "WfdsService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fail: Cancel Connection "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2858
    return-void
.end method

.method public onSuccess()V
    .registers 3

    .prologue
    .line 2853
    const-string v0, "WfdsService"

    const-string v1, "Successfully cancel the connection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2854
    return-void
.end method
