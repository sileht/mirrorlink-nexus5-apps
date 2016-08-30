.class Landroid/net/ePDGStateListener$1;
.super Landroid/net/IePDGStateListener$Stub;
.source "ePDGStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ePDGStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ePDGStateListener;


# direct methods
.method constructor <init>(Landroid/net/ePDGStateListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Landroid/net/ePDGStateListener$1;->this$0:Landroid/net/ePDGStateListener;

    .line 101
    invoke-direct {p0}, Landroid/net/IePDGStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCBSErrorStatusChanged(I)V
    .registers 5
    .param p1, "reason"    # I

    .prologue
    .line 119
    iget-object v0, p0, Landroid/net/ePDGStateListener$1;->this$0:Landroid/net/ePDGStateListener;

    iget-object v0, v0, Landroid/net/ePDGStateListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 120
    return-void
.end method

.method public onConnectionParamStatus([Ljava/lang/String;)V
    .registers 5
    .param p1, "ConParam"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-object v0, p0, Landroid/net/ePDGStateListener$1;->this$0:Landroid/net/ePDGStateListener;

    iget-object v0, v0, Landroid/net/ePDGStateListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 116
    return-void
.end method

.method public onErrorStatusChanged(I)V
    .registers 5
    .param p1, "reason"    # I

    .prologue
    .line 111
    iget-object v0, p0, Landroid/net/ePDGStateListener$1;->this$0:Landroid/net/ePDGStateListener;

    iget-object v0, v0, Landroid/net/ePDGStateListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 112
    return-void
.end method

.method public onPDPStateChanged([I)V
    .registers 5
    .param p1, "serviceState"    # [I

    .prologue
    const/4 v2, 0x0

    .line 103
    iget-object v0, p0, Landroid/net/ePDGStateListener$1;->this$0:Landroid/net/ePDGStateListener;

    iget-object v0, v0, Landroid/net/ePDGStateListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 104
    return-void
.end method

.method public onWiFiStatusChanged(Z)V
    .registers 7
    .param p1, "mWF"    # Z

    .prologue
    const/4 v1, 0x0

    .line 107
    iget-object v0, p0, Landroid/net/ePDGStateListener$1;->this$0:Landroid/net/ePDGStateListener;

    iget-object v2, v0, Landroid/net/ePDGStateListener;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    if-eqz p1, :cond_12

    const/4 v0, 0x1

    :goto_9
    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 108
    return-void

    :cond_12
    move v0, v1

    .line 107
    goto :goto_9
.end method

.method public onePDGBlockStatusChanged(I)V
    .registers 5
    .param p1, "status"    # I

    .prologue
    .line 124
    iget-object v0, p0, Landroid/net/ePDGStateListener$1;->this$0:Landroid/net/ePDGStateListener;

    iget-object v0, v0, Landroid/net/ePDGStateListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 125
    return-void
.end method
