.class Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventInjectHandler;
.super Landroid/os/Handler;
.source "EventInjectorThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventInjectHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;


# direct methods
.method public constructor <init>(Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventInjectHandler;->this$0:Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;

    .line 137
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 135
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    :try_start_2
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_52

    .line 141
    :goto_7
    return-void

    .line 146
    :pswitch_8
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$PointerEvent;

    .line 147
    .local v7, "evt":Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$PointerEvent;
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventInjectHandler;->this$0:Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;

    iget-wide v2, v7, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$PointerEvent;->time:J

    iget v4, v7, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$PointerEvent;->buttonMask:I

    iget v5, v7, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$PointerEvent;->x:F

    iget v6, v7, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$PointerEvent;->y:F

    invoke-static/range {v1 .. v6}, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->-wrap1(Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;JIFF)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_19} :catch_1a

    goto :goto_7

    .line 165
    .end local v7    # "evt":Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$PointerEvent;
    :catch_1a
    move-exception v0

    .line 166
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 151
    .end local v0    # "e":Ljava/io/IOException;
    :pswitch_1f
    :try_start_1f
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$PointerEvent;

    .line 152
    .restart local v7    # "evt":Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$PointerEvent;
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventInjectHandler;->this$0:Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;

    iget-wide v2, v7, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$PointerEvent;->time:J

    iget v5, v7, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$PointerEvent;->x:F

    iget v6, v7, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$PointerEvent;->y:F

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->-wrap1(Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;JIFF)V

    goto :goto_7

    .line 156
    .end local v7    # "evt":Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$PointerEvent;
    :pswitch_30
    iget-object v3, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventInjectHandler;->this$0:Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_3c

    :goto_36
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3, v1, v2}, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->-wrap0(Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;ZI)V

    goto :goto_7

    :cond_3c
    move v1, v2

    goto :goto_36

    .line 159
    :pswitch_3e
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventInjectHandler;->this$0:Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;

    iget v2, p1, Landroid/os/Message;->arg2:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->-wrap0(Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;ZI)V

    goto :goto_7

    .line 162
    :pswitch_47
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventInjectHandler;->this$0:Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$TouchData;

    invoke-static {v2, v1}, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->-wrap2(Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;[Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$TouchData;)V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_50} :catch_1a

    goto :goto_7

    .line 144
    nop

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_8
        :pswitch_1f
        :pswitch_30
        :pswitch_3e
        :pswitch_47
    .end packed-switch
.end method
