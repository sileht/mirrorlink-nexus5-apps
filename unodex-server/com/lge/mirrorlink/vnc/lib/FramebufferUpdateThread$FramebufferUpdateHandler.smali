.class Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$FramebufferUpdateHandler;
.super Landroid/os/Handler;
.source "FramebufferUpdateThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FramebufferUpdateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;


# direct methods
.method public constructor <init>(Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$FramebufferUpdateHandler;->this$0:Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;

    .line 174
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 172
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 180
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_8c

    .line 194
    :goto_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 178
    return-void

    .line 182
    :pswitch_9
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$FramebufferUpdateRequest;

    .line 183
    .local v7, "req":Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$FramebufferUpdateRequest;
    const-string/jumbo v0, "MirrorLink_VNC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handle Framebuffer Update:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v7, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$FramebufferUpdateRequest;->incremental:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "(x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$FramebufferUpdateRequest;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$FramebufferUpdateRequest;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", w:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$FramebufferUpdateRequest;->w:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", h:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$FramebufferUpdateRequest;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :try_start_64
    invoke-static {}, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->start()V

    .line 186
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$FramebufferUpdateHandler;->this$0:Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;

    iget-boolean v1, v7, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$FramebufferUpdateRequest;->incremental:Z

    iget v2, v7, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$FramebufferUpdateRequest;->x:I

    iget v3, v7, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$FramebufferUpdateRequest;->y:I

    iget v4, v7, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$FramebufferUpdateRequest;->w:I

    iget v5, v7, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$FramebufferUpdateRequest;->h:I

    invoke-static/range {v0 .. v5}, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->-wrap0(Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;ZIIII)V

    .line 187
    invoke-static {}, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->stop()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_79} :catch_7a

    goto :goto_5

    .line 188
    :catch_7a
    move-exception v6

    .line 189
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v0, "MirrorLink_VNC"

    const-string/jumbo v1, "framebuffer update request failed."

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$FramebufferUpdateHandler;->this$0:Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->quit()V

    goto/16 :goto_5

    .line 180
    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method
