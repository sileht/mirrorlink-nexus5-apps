.class Lcom/lge/wfds/SessionController$DefaultState;
.super Lcom/android/internal/util/State;
.source "SessionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/SessionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wfds/SessionController;


# direct methods
.method constructor <init>(Lcom/lge/wfds/SessionController;)V
    .registers 2

    .prologue
    .line 196
    iput-object p1, p0, Lcom/lge/wfds/SessionController$DefaultState;->this$0:Lcom/lge/wfds/SessionController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    .line 199
    const-string v0, "WfdsSession:Controller"

    const-string v1, "STATE : DefaultState - enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void
.end method

.method public exit()V
    .registers 1

    .prologue
    .line 244
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const v2, 0x90001f

    .line 204
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_86

    .line 236
    const-string v0, "WfdsSession:Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DefaultState - msg ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not handled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :goto_24
    const/4 v0, 0x1

    return v0

    .line 206
    :sswitch_26
    const-string v0, "WfdsSession:Controller"

    const-string v1, "EVT_P2P_GROUP_INFO_AVLBL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v1, p0, Lcom/lge/wfds/SessionController$DefaultState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-static {v1, v0}, Lcom/lge/wfds/SessionController;->access$0(Lcom/lge/wfds/SessionController;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    goto :goto_24

    .line 210
    :sswitch_37
    const-string v0, "WfdsSession:Controller"

    const-string v1, "DefaultState - SESSION_READY is not handled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/lge/wfds/SessionController$DefaultState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, p1, v2}, Lcom/lge/wfds/SessionController;->access$1(Lcom/lge/wfds/SessionController;Landroid/os/Message;I)V

    goto :goto_24

    .line 214
    :sswitch_44
    const-string v0, "WfdsSession:Controller"

    const-string v1, "DefaultState - CLOSE_SESSION is not handled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/lge/wfds/SessionController$DefaultState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, p1, v2}, Lcom/lge/wfds/SessionController;->access$1(Lcom/lge/wfds/SessionController;Landroid/os/Message;I)V

    goto :goto_24

    .line 218
    :sswitch_51
    const-string v0, "WfdsSession:Controller"

    const-string v1, "DefaultState - BOUND_PORT is not handled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcom/lge/wfds/SessionController$DefaultState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, p1, v2}, Lcom/lge/wfds/SessionController;->access$1(Lcom/lge/wfds/SessionController;Landroid/os/Message;I)V

    goto :goto_24

    .line 222
    :sswitch_5e
    const-string v0, "WfdsSession:Controller"

    const-string v1, "DefaultState - RELEASE_PORT is not handled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/lge/wfds/SessionController$DefaultState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, p1, v2}, Lcom/lge/wfds/SessionController;->access$1(Lcom/lge/wfds/SessionController;Landroid/os/Message;I)V

    goto :goto_24

    .line 226
    :sswitch_6b
    const-string v0, "WfdsSession:Controller"

    const-string v1, "DefaultState - REJECT_SESSION is not handled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/lge/wfds/SessionController$DefaultState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, p1, v2}, Lcom/lge/wfds/SessionController;->access$1(Lcom/lge/wfds/SessionController;Landroid/os/Message;I)V

    goto :goto_24

    .line 232
    :sswitch_78
    const-string v0, "WfdsSession:Controller"

    const-string v1, "ASP_ACK_RECEIVED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/lge/wfds/SessionController$DefaultState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->stopAspSessionRequest()V
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$2(Lcom/lge/wfds/SessionController;)V

    goto :goto_24

    .line 204
    nop

    :sswitch_data_86
    .sparse-switch
        0x900006 -> :sswitch_37
        0x900007 -> :sswitch_44
        0x900008 -> :sswitch_51
        0x900009 -> :sswitch_5e
        0x90000b -> :sswitch_6b
        0x90104a -> :sswitch_26
        0x901063 -> :sswitch_78
        0x901064 -> :sswitch_78
        0x901065 -> :sswitch_78
    .end sparse-switch
.end method
