.class Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$ContextUpdateHandler;
.super Landroid/os/Handler;
.source "FramebufferUpdateThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContextUpdateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;


# direct methods
.method public constructor <init>(Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$ContextUpdateHandler;->this$0:Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;

    .line 204
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 202
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 210
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    .line 215
    :goto_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 208
    return-void

    .line 212
    :pswitch_9
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$ContextUpdateHandler;->this$0:Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;

    invoke-static {v0}, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->-wrap1(Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;)V

    goto :goto_5

    .line 210
    nop

    :pswitch_data_10
    .packed-switch 0x2
        :pswitch_9
    .end packed-switch
.end method
