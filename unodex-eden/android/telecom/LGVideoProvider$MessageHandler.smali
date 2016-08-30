.class final Landroid/telecom/LGVideoProvider$MessageHandler;
.super Landroid/os/Handler;
.source "LGVideoProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/LGVideoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/LGVideoProvider;


# direct methods
.method public constructor <init>(Landroid/telecom/LGVideoProvider;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 209
    iput-object p1, p0, Landroid/telecom/LGVideoProvider$MessageHandler;->this$0:Landroid/telecom/LGVideoProvider;

    .line 210
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 211
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[tc >> ims] handleMessage :: msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Landroid/telecom/LGVideoProvider;->log(Ljava/lang/String;)V
    invoke-static {v1}, Landroid/telecom/LGVideoProvider;->access$0(Ljava/lang/String;)V

    .line 219
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_96

    .line 272
    :goto_19
    return-void

    .line 221
    :pswitch_1a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    .line 222
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Landroid/telecom/LGVideoProvider$MessageHandler;->this$0:Landroid/telecom/LGVideoProvider;

    # invokes: Landroid/telecom/LGVideoProvider;->addCallback(Landroid/os/IBinder;)V
    invoke-static {v1, v0}, Landroid/telecom/LGVideoProvider;->access$1(Landroid/telecom/LGVideoProvider;Landroid/os/IBinder;)V

    goto :goto_19

    .line 226
    .end local v0    # "binder":Landroid/os/IBinder;
    :pswitch_24
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    .line 227
    .restart local v0    # "binder":Landroid/os/IBinder;
    iget-object v1, p0, Landroid/telecom/LGVideoProvider$MessageHandler;->this$0:Landroid/telecom/LGVideoProvider;

    # invokes: Landroid/telecom/LGVideoProvider;->removeCallback(Landroid/os/IBinder;)V
    invoke-static {v1, v0}, Landroid/telecom/LGVideoProvider;->access$2(Landroid/telecom/LGVideoProvider;Landroid/os/IBinder;)V

    goto :goto_19

    .line 231
    .end local v0    # "binder":Landroid/os/IBinder;
    :pswitch_2e
    iget-object v1, p0, Landroid/telecom/LGVideoProvider$MessageHandler;->this$0:Landroid/telecom/LGVideoProvider;

    invoke-virtual {v1}, Landroid/telecom/LGVideoProvider;->onStopAudio()V

    goto :goto_19

    .line 234
    :pswitch_34
    iget-object v1, p0, Landroid/telecom/LGVideoProvider$MessageHandler;->this$0:Landroid/telecom/LGVideoProvider;

    invoke-virtual {v1}, Landroid/telecom/LGVideoProvider;->onStartBackground()V

    goto :goto_19

    .line 237
    :pswitch_3a
    iget-object v1, p0, Landroid/telecom/LGVideoProvider$MessageHandler;->this$0:Landroid/telecom/LGVideoProvider;

    invoke-virtual {v1}, Landroid/telecom/LGVideoProvider;->onStopBackground()V

    goto :goto_19

    .line 240
    :pswitch_40
    iget-object v2, p0, Landroid/telecom/LGVideoProvider$MessageHandler;->this$0:Landroid/telecom/LGVideoProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v1, v3}, Landroid/telecom/LGVideoProvider;->onCaptureVideo(Ljava/lang/String;I)V

    goto :goto_19

    .line 243
    :pswitch_4c
    iget-object v2, p0, Landroid/telecom/LGVideoProvider$MessageHandler;->this$0:Landroid/telecom/LGVideoProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/telecom/LGVideoProvider;->onSetAlternativeImage(Ljava/lang/String;)V

    goto :goto_19

    .line 246
    :pswitch_56
    iget-object v1, p0, Landroid/telecom/LGVideoProvider$MessageHandler;->this$0:Landroid/telecom/LGVideoProvider;

    invoke-virtual {v1}, Landroid/telecom/LGVideoProvider;->onClearAlternativeImage()V

    goto :goto_19

    .line 249
    :pswitch_5c
    iget-object v1, p0, Landroid/telecom/LGVideoProvider$MessageHandler;->this$0:Landroid/telecom/LGVideoProvider;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/telecom/LGVideoProvider;->onSetCameraBrightness(I)V

    goto :goto_19

    .line 252
    :pswitch_64
    iget-object v1, p0, Landroid/telecom/LGVideoProvider$MessageHandler;->this$0:Landroid/telecom/LGVideoProvider;

    invoke-virtual {v1}, Landroid/telecom/LGVideoProvider;->onSwapDisplay()V

    goto :goto_19

    .line 255
    :pswitch_6a
    iget-object v1, p0, Landroid/telecom/LGVideoProvider$MessageHandler;->this$0:Landroid/telecom/LGVideoProvider;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/telecom/LGVideoProvider;->onUpdateDisplay(I)V

    goto :goto_19

    .line 258
    :pswitch_72
    iget-object v1, p0, Landroid/telecom/LGVideoProvider$MessageHandler;->this$0:Landroid/telecom/LGVideoProvider;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, v3}, Landroid/telecom/LGVideoProvider;->onSetDisplaySize(II)V

    goto :goto_19

    .line 261
    :pswitch_7c
    iget-object v1, p0, Landroid/telecom/LGVideoProvider$MessageHandler;->this$0:Landroid/telecom/LGVideoProvider;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, v3}, Landroid/telecom/LGVideoProvider;->onSetDisplayOrientation(II)V

    goto :goto_19

    .line 264
    :pswitch_86
    iget-object v1, p0, Landroid/telecom/LGVideoProvider$MessageHandler;->this$0:Landroid/telecom/LGVideoProvider;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/telecom/LGVideoProvider;->onSetCameraOnOff(I)V

    goto :goto_19

    .line 267
    :pswitch_8e
    iget-object v1, p0, Landroid/telecom/LGVideoProvider$MessageHandler;->this$0:Landroid/telecom/LGVideoProvider;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/telecom/LGVideoProvider;->onSetMultitaskingState(I)V

    goto :goto_19

    .line 219
    :pswitch_data_96
    .packed-switch 0x65
        :pswitch_1a
        :pswitch_2e
        :pswitch_34
        :pswitch_3a
        :pswitch_40
        :pswitch_4c
        :pswitch_56
        :pswitch_5c
        :pswitch_64
        :pswitch_6a
        :pswitch_72
        :pswitch_7c
        :pswitch_86
        :pswitch_8e
        :pswitch_24
    .end packed-switch
.end method
