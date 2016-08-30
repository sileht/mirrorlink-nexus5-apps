.class final Landroid/telecom/LGVideoCallImpl$MessageHandler;
.super Landroid/os/Handler;
.source "LGVideoCallImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/LGVideoCallImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MessageHandler"
.end annotation


# static fields
.field public static final MSG_CHANGE_MEDIA_DEBUG_INFO:I = 0x65

.field public static final MSG_CHANGE_PEER_DISPLAY_ORIENTATION:I = 0x66

.field public static final MSG_HANDLE_CALL_SESSION_EVENT_EX:I = 0x67

.field public static final MSG_HANDLE_CALL_SESSION_RESULT_EVENT:I = 0x68


# instance fields
.field final synthetic this$0:Landroid/telecom/LGVideoCallImpl;


# direct methods
.method public constructor <init>(Landroid/telecom/LGVideoCallImpl;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 294
    iput-object p1, p0, Landroid/telecom/LGVideoCallImpl$MessageHandler;->this$0:Landroid/telecom/LGVideoCallImpl;

    .line 295
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 296
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 300
    iget-object v0, p0, Landroid/telecom/LGVideoCallImpl$MessageHandler;->this$0:Landroid/telecom/LGVideoCallImpl;

    # getter for: Landroid/telecom/LGVideoCallImpl;->mCallback:Landroid/telecom/LGVideoCall$Callback;
    invoke-static {v0}, Landroid/telecom/LGVideoCallImpl;->access$2(Landroid/telecom/LGVideoCallImpl;)Landroid/telecom/LGVideoCall$Callback;

    move-result-object v0

    if-nez v0, :cond_e

    .line 301
    const-string v0, "No callback"

    # invokes: Landroid/telecom/LGVideoCallImpl;->log(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/telecom/LGVideoCallImpl;->access$3(Ljava/lang/String;)V

    .line 325
    :goto_d
    return-void

    .line 305
    :cond_e
    # getter for: Landroid/telecom/LGVideoCallImpl;->DBG:Z
    invoke-static {}, Landroid/telecom/LGVideoCallImpl;->access$4()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ims >> tc] handleMessage :: msg="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Landroid/telecom/LGVideoCallImpl;->log(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/telecom/LGVideoCallImpl;->access$3(Ljava/lang/String;)V

    .line 309
    :cond_28
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_62

    goto :goto_d

    .line 311
    :pswitch_2e
    iget-object v0, p0, Landroid/telecom/LGVideoCallImpl$MessageHandler;->this$0:Landroid/telecom/LGVideoCallImpl;

    # getter for: Landroid/telecom/LGVideoCallImpl;->mCallback:Landroid/telecom/LGVideoCall$Callback;
    invoke-static {v0}, Landroid/telecom/LGVideoCallImpl;->access$2(Landroid/telecom/LGVideoCallImpl;)Landroid/telecom/LGVideoCall$Callback;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/LGImsCallMediaDebugInfo;

    invoke-virtual {v1, v0}, Landroid/telecom/LGVideoCall$Callback;->onMediaDebugInfoChanged(Lcom/android/ims/LGImsCallMediaDebugInfo;)V

    goto :goto_d

    .line 314
    :pswitch_3c
    iget-object v0, p0, Landroid/telecom/LGVideoCallImpl$MessageHandler;->this$0:Landroid/telecom/LGVideoCallImpl;

    # getter for: Landroid/telecom/LGVideoCallImpl;->mCallback:Landroid/telecom/LGVideoCall$Callback;
    invoke-static {v0}, Landroid/telecom/LGVideoCallImpl;->access$2(Landroid/telecom/LGVideoCallImpl;)Landroid/telecom/LGVideoCall$Callback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/telecom/LGVideoCall$Callback;->onPeerDisplayOrientationChanged(I)V

    goto :goto_d

    .line 317
    :pswitch_48
    iget-object v0, p0, Landroid/telecom/LGVideoCallImpl$MessageHandler;->this$0:Landroid/telecom/LGVideoCallImpl;

    # getter for: Landroid/telecom/LGVideoCallImpl;->mCallback:Landroid/telecom/LGVideoCall$Callback;
    invoke-static {v0}, Landroid/telecom/LGVideoCallImpl;->access$2(Landroid/telecom/LGVideoCallImpl;)Landroid/telecom/LGVideoCall$Callback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/telecom/LGVideoCall$Callback;->onCallSessionEventEx(I)V

    goto :goto_d

    .line 320
    :pswitch_54
    iget-object v0, p0, Landroid/telecom/LGVideoCallImpl$MessageHandler;->this$0:Landroid/telecom/LGVideoCallImpl;

    # getter for: Landroid/telecom/LGVideoCallImpl;->mCallback:Landroid/telecom/LGVideoCall$Callback;
    invoke-static {v0}, Landroid/telecom/LGVideoCallImpl;->access$2(Landroid/telecom/LGVideoCallImpl;)Landroid/telecom/LGVideoCall$Callback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Landroid/telecom/LGVideoCall$Callback;->onCallSessionResultEvent(II)V

    goto :goto_d

    .line 309
    :pswitch_data_62
    .packed-switch 0x65
        :pswitch_2e
        :pswitch_3c
        :pswitch_48
        :pswitch_54
    .end packed-switch
.end method
