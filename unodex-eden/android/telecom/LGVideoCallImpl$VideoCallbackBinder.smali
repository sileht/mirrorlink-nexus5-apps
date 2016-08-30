.class final Landroid/telecom/LGVideoCallImpl$VideoCallbackBinder;
.super Lcom/android/internal/telecom/IVideoCallbackEx$Stub;
.source "LGVideoCallImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/LGVideoCallImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VideoCallbackBinder"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/LGVideoCallImpl;


# direct methods
.method private constructor <init>(Landroid/telecom/LGVideoCallImpl;)V
    .registers 2

    .prologue
    .line 237
    iput-object p1, p0, Landroid/telecom/LGVideoCallImpl$VideoCallbackBinder;->this$0:Landroid/telecom/LGVideoCallImpl;

    invoke-direct {p0}, Lcom/android/internal/telecom/IVideoCallbackEx$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/telecom/LGVideoCallImpl;Landroid/telecom/LGVideoCallImpl$VideoCallbackBinder;)V
    .registers 3

    .prologue
    .line 237
    invoke-direct {p0, p1}, Landroid/telecom/LGVideoCallImpl$VideoCallbackBinder;-><init>(Landroid/telecom/LGVideoCallImpl;)V

    return-void
.end method


# virtual methods
.method public changeMediaDebugInfo(Lcom/android/ims/LGImsCallMediaDebugInfo;)V
    .registers 4
    .param p1, "debugInfo"    # Lcom/android/ims/LGImsCallMediaDebugInfo;

    .prologue
    .line 241
    iget-object v0, p0, Landroid/telecom/LGVideoCallImpl$VideoCallbackBinder;->this$0:Landroid/telecom/LGVideoCallImpl;

    # getter for: Landroid/telecom/LGVideoCallImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/LGVideoCallImpl;->access$1(Landroid/telecom/LGVideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_9

    .line 248
    :goto_8
    return-void

    .line 245
    :cond_9
    iget-object v0, p0, Landroid/telecom/LGVideoCallImpl$VideoCallbackBinder;->this$0:Landroid/telecom/LGVideoCallImpl;

    # getter for: Landroid/telecom/LGVideoCallImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/LGVideoCallImpl;->access$1(Landroid/telecom/LGVideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    .line 246
    const/16 v1, 0x65

    .line 245
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_8
.end method

.method public changePeerDisplayOrientation(I)V
    .registers 5
    .param p1, "orientation"    # I

    .prologue
    .line 253
    iget-object v0, p0, Landroid/telecom/LGVideoCallImpl$VideoCallbackBinder;->this$0:Landroid/telecom/LGVideoCallImpl;

    # getter for: Landroid/telecom/LGVideoCallImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/LGVideoCallImpl;->access$1(Landroid/telecom/LGVideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_9

    .line 260
    :goto_8
    return-void

    .line 257
    :cond_9
    iget-object v0, p0, Landroid/telecom/LGVideoCallImpl$VideoCallbackBinder;->this$0:Landroid/telecom/LGVideoCallImpl;

    # getter for: Landroid/telecom/LGVideoCallImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/LGVideoCallImpl;->access$1(Landroid/telecom/LGVideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    .line 258
    const/16 v1, 0x66

    .line 259
    const/4 v2, 0x0

    .line 257
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_8
.end method

.method public handleCallSessionEventEx(I)V
    .registers 5
    .param p1, "event"    # I

    .prologue
    .line 265
    iget-object v0, p0, Landroid/telecom/LGVideoCallImpl$VideoCallbackBinder;->this$0:Landroid/telecom/LGVideoCallImpl;

    # getter for: Landroid/telecom/LGVideoCallImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/LGVideoCallImpl;->access$1(Landroid/telecom/LGVideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_9

    .line 272
    :goto_8
    return-void

    .line 269
    :cond_9
    iget-object v0, p0, Landroid/telecom/LGVideoCallImpl$VideoCallbackBinder;->this$0:Landroid/telecom/LGVideoCallImpl;

    # getter for: Landroid/telecom/LGVideoCallImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/LGVideoCallImpl;->access$1(Landroid/telecom/LGVideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    .line 270
    const/16 v1, 0x67

    .line 271
    const/4 v2, 0x0

    .line 269
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_8
.end method

.method public handleCallSessionResultEvent(II)V
    .registers 5
    .param p1, "event"    # I
    .param p2, "result"    # I

    .prologue
    .line 277
    iget-object v0, p0, Landroid/telecom/LGVideoCallImpl$VideoCallbackBinder;->this$0:Landroid/telecom/LGVideoCallImpl;

    # getter for: Landroid/telecom/LGVideoCallImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/LGVideoCallImpl;->access$1(Landroid/telecom/LGVideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_9

    .line 284
    :goto_8
    return-void

    .line 281
    :cond_9
    iget-object v0, p0, Landroid/telecom/LGVideoCallImpl$VideoCallbackBinder;->this$0:Landroid/telecom/LGVideoCallImpl;

    # getter for: Landroid/telecom/LGVideoCallImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/LGVideoCallImpl;->access$1(Landroid/telecom/LGVideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    .line 282
    const/16 v1, 0x68

    .line 281
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_8
.end method
